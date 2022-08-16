<?php
// Data
  // OTP API
    // OTP Sender
      $otp_name = "Now";
    // OTP Token
      // $otp_token = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC90aHNtcy5jb21cL21hbmFnZVwvYXBpLWtleSIsImlhdCI6MTY1NjgzNjMwNiwibmJmIjoxNjU2ODM2MzA2LCJqdGkiOiIyZTdXamRKblRsTTJVUEJ2Iiwic3ViIjoxMDYxNzUsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.Hm3GFETQxd51p3g-9Ocj_Mzb2WqVZABoCjlJN_cK6K4";
      $otp_token = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC90aHNtcy5jb21cL2FwaS1rZXkiLCJpYXQiOjE2NTMzMDEyNzQsIm5iZiI6MTY1MzMwMTI3NCwianRpIjoiT0pvTEd1VFpaSE0yUjVVUyIsInN1YiI6MTA1NDkzLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.SmgMVehzDRjRiKXnOx4IOYXG1810Mbdeq66SoOlfTuI";
    // เวลาการหมดอายุของ OTP (Default 900)
      $st_otp_time_out_otp = 900; // วินาที
    // เวลาการหมดอายุของ Key (Default 900)
      $st_otp_time_out_key = 900; // วินาที
  // Time
    // เวลาที่เซสชั่นจะเตะออกหลังจากเข้าสู่ระบบ (Default 6400)
    // -1 คือว่าที่ไม่จำกัดเวลาเซสชั่น
      $st_ses_time_out = 6400; // วินาที
    // เวลาในการชำระเงิน (Default 15)
      $st_time_to_pay = 15; // นาที
  // Facebook Auth
    // Key
      $st_fb_app_id = "610041970537938";
      $st_fb_app_secret = "8b014dd5a63e6349a7509e6c7e5ae4ea";
      $st_fb_default_graph_version = "v14.0";
    //
// Message
  // Customer Zone
    // เข้าสู่ระบบอยู่แล้ว (Sweed Alert)
      $st_sw_title_alreadlogin = "คุณได้เข้าสู่ระบบอยู่แล้ว";
      $st_sw_text_alreadlogin = "คุณได้เข้าสู่ระบบอยู่แล้ว จะไม่สามารถเข้าสู่ระบบในระหว่างนี้ได้";
      $st_sw_icon_alreadlogin = "error";
      $st_sw_button_alreadlogin = "กลับสู่หน้าหลัก";

    // ยังไม่ได้เข้าสู่ระบบ (Sweed Alert)
      $st_sw_title_unlogin = "เกิดข้อผิดพลาด";
      $st_sw_text_unlogin = "โปรดลงชื่อเข้าใช้งานระบบก่อนดำเนินรายการ";
      $st_sw_icon_unlogin = "error";
      $st_sw_button_unlogin = "ลงชื่อเข้าใช้";

  //Employee Zone
    // ปิดกั้นเพจ (Sweed Alert)
      $st_sw_title_blockpage = "เกิดข้อผิดพลาด!";
      $st_sw_text_blockpage = "คุณไม่ได้รับอนุญาตให้เข้าสู่หน้านี้";
      $st_sw_icon_blockpage = "error";
      $st_sw_button_blockpage = "กลับสู่หน้าหลัก";