curl --request POST \
  --url https://api.brevo.com/v3/smtp/email \
  --header 'accept: application/json' \
  --header 'api-key: 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' \
  --header 'content-type: application/json' \
  --data '{  
   "sender":{  
      "name":"Marek Srnec",
      "email":"aureliust@seznam.cz"
   },
   "to":[  
      {  
         "email":"aureliust@seznam.cz",
         "name":"Aurelius T. Klíma"
      }
   ],
   "subject":"Hello world",
   "htmlContent":"<html><head></head><body><p>Hello,</p>This is my first transactional email sent from Brevo.</p></body></html>"
}'