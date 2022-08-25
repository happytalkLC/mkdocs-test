## Endpoint (카카오톡 -> 고객사)

[POST] 수신도메인/message

## Description
해당 API는 카카오톡에서 발신된 API이며, 고객이 보낸 상담 메시지를 고객사 수신도메인으로 수신되는 API입니다.

## Request (Json)

None

## Response (json)

| Field Name                                                                                              | Type   | Description                                                                                                                         |
|---------------------------------------------------------------------------------------------------------|--------|-------------------------------------------------------------------------------------------------------------------------------------|
| user_key                                                                                                | String | 메시지를 발송한 사용자의 고유 키                                                                                                                  |
| sender_key                                                                                              | String | 메시지를 수신한 발신프로필 키                                                                                                                    |
| session_id                                                                                              | String | 세션 아이디                                                                                                                              |
| time                                                                                                    | Int    | 메시지 전달 상담톡 서버 시각 (실제 유저가 입력한 시각은 아님)                                                                                                |
| <a id="kakao_counseloing_webhook-counsel_data_reception-chat_reception-serial_number"></a>serial_number | Int    | 수신 메시지 고유 키                                                                                                                         |
| type                                                                                                    | String | [수신 메시지 타입](#kakao_counseloing_webhook-counsel_data_reception-chat_reception-dict-type)                                             |
| content                                                                                                 | String | 수신된 메시지 내용                                                                                                                          |
| attachment                                                                                              | String | 1000자 초과시에 300자 이상 메시지 파일 경로 (1000자 미만이시에 나오지 않음) / [예시](#kakao_counseloing_webhook-counsel_data_reception-chat_reception-1000more) |
| extra                                                                                                   | String | 사용자가 전송한 메시지의 extra 정보<br>- BK/MD 버튼을 클릭하여 전송한 메시지                                                                                  |

#### Body Data Dictionary
- <a id="kakao_counseloing_webhook-counsel_data_reception-chat_reception-dict-type"></a> type (수신 메시지 타입)

| Type  | Filename extension                                                                                                                                                                                                     | Maximum Volume            | Description           |
|-------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------|-----------------------|
| text  |                                                                                                                                                                                                                        |                           | 문자                    |
| photo | jpg, jpeg, gif, bmp, png, tiff, bmp                                                                                                                                                                                    | Mobile: 15MB / PC: 300MB  | 사진                    |
| video | mp4, m4v, avi, asf, wmv, mkv, ts, mpg, mpeg, mov, flv, ogv                                                                                                                                                             | 300MB                     | 동영상 (직접 촬영시 5분 제한)    |
| audio | mp3, wav, flac, tta, tak, aac, wma, ogg, m4a                                                                                                                                                                           | Mobile: 5분 / PC: 300MB    | 오디오                   |
| file  | pdf, odp, ppt, pptx, key, show, doc, docx, hwp, txt, rtf, xml, wks, wps, xps, md, odf, odt, pages, ods,<br> csv, tsv, xls, xlsx, numbers, cell, psd, ai, sketch, tif, tiff, tga, webp, zip, gz, bz2, rar, 7z, lzh, alz | 300MB                     | 파일 (Mobile_iOS는 미지원)  |

### Example (수신된 파라미터 기준)
#### 1000자 미만 메시지 수신
```json
{
  "user_key": "MZjEVK4x18_V",
  "session_id": "12345678",
  "sender_key": "07c2c1b0661cfa374ccc8a9fa9fa2adac1fe89ca",
  "time": 1653985613535,
  "serial_number": 1689884130894833200,
  "type": "text",
  "content": "상담문의 드립니다."
  
}
```
#### <a id="kakao_counseloing_webhook-counsel_data_reception-chat_reception-1000more"></a>1000자 이상 메시지 수신
```json
{
  "user_key": "MZjEVK4x18_V",
  "session_id": "162821231",
  "sender_key": "4c9591f37822ae1ed5b781582af08b1e2d922cea",
  "time": 1653986545306,
  "serial_number": 1689884130894833200,
  "type": "text",
  "content": "길이가 300자인 문자",
  "attachment": {
    "url": "http://dn-m.talk.kakao.com/talkm/MZjEVK4x18_V/bB3svuU9oxTb0kJfCvvKr1/t_e70444142ffe.txt"
  }
}
```