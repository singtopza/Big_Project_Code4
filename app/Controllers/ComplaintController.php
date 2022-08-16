<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\UsersModel;
use App\Models\ComplaintModel;
use App\Models\ComplaintTypeModel;

class ComplaintController extends Controller
{
  public function complaint()
  {
    $session = session();
    $ses_userid = $session->get('ses_id');
    $data_sending = [];
    $model_comtype = new ComplaintTypeModel();
    $data_comtype = $model_comtype->view_all_complaint_type();
    if ($data_comtype) {
      $data_sending['com_type'] = $data_comtype;
      if (isset($ses_userid)) {
        $model = new UsersModel();
        require_once(APPPATH . 'Controllers/components/user_connect.php');
        return view('complaint', $data_sending);
      } else {
        return view('complaint', $data_sending);
      }
    } else {

    }
  }

  public function add_report()
  {
    $session = session();
    $data_sending = [];
    $model = new UsersModel();
    $rules = [
      'title' => [
        'rules' => 'required|min_length[5]|max_length[50]',
        'errors' => [
          'required' => 'โปรดระบุชื่อเรื่องของการร้องเรียน',
          'min_length' => 'หัวข้อต้องมีอย่างน้อย 5 ตัวอักษร',
          'max_length' => 'หัวข้อต้องไม่เกิน 50 ตัวอักษร',
        ],
      ],
      'type' => [
        'rules' => 'required',
        'errors' => [
          'required' => 'โปรดเลือกประเภทของการร้องเรียน',
        ]
      ],
      'message' => [
        'rules' => 'required|min_length[5]|max_length[1000]',
        'errors' => [
          'required' => 'โปรดระบุรายละเอียดสำหรับการร้องเรียน',
          'min_length' => 'ข้อความต้องมีอย่างน้อย 5 ตัวอักษร',
          'max_length' => 'ข้อความต้องไม่เกิน 1,000 ตัวอักษร',
        ],
      ],
    ];
    $title = $this->request->getVar('title');
    $type = $this->request->getVar('type');
    $message = $this->request->getVar('message');
    if ($this->validate($rules)) {
      $model = new ComplaintModel();
      $data = [
        'Com_Topic' => $title,
        'Com_Type_ID' => $type,
        'Com_Content' => $message,
      ];
      $data_model_com = $model->save($data);
      if ($data_model_com) {
        $session->setFlashdata('success_report', 'รายงานปัญหาสำเร็จ!');
        return redirect()->to('/complaint');
      } else {
        $session->setFlashdata('error_report', 'เกิดข้อผิดพลาด: ไม่สามารถติดต่อกับระบบได้ โปรดลองใหม่อีกครั้ง!');
        return redirect()->to('/complaint');
      }
    } else {
      $validation = $this->validator->listErrors();
      $session->setFlashdata('error_report', $validation);
      $session->setFlashdata('flash_com_title', $title);
      $session->setFlashdata('flash_com_type', $type);
      $session->setFlashdata('flash_com_message', $message);
      return redirect()->to('/complaint');
    }
  }
}
