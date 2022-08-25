## Endpoint (카카오톡 -> 고객사)

[POST] 수신도메인/reference

## Description
해당 API는 카카오톡에서 발신된 API이며, 고객사에서 관리되는 커스텀한 메타 정보를 고객사 수신도메인으로 수신되는 API입니다.

## Request (Json)

None

## Response (json)

| Field Name     | Type   | Description                                |
|----------------|--------|--------------------------------------------|
| user_key       | String | 메시지를 발송한 사용자의 고유 키                         |
| session_id     | String | 세션 아이디                                     |
| sender_key     | String | 메시지를 수신한 발신프로필 키                           |
| app_user_id    | Int    | 메시지를 발신한 사용자의 앱 유저 아이디 (없을 경우 NULL로 표기)    |
| time           | Int    | 메타데이터가 전달될 때 상담톡 서버 시각 (실제 유저가 입력한 시각은 아님) |
| reference      | String | 고객사에서 설정한 메타정보                             |
| last_reference | String | 고객사에서 설정한 메타 정보가 없을 경우 가장 마지막 정보           |

- reference

| Field Name   | Type    | Description                             |
|--------------|---------|-----------------------------------------|
| extra        | String  | 버튼을 통해 전달된 메타 정보                        |
| text         | String  | 세션 아이디                                  |
| lastText     | String  | 메시지를 수신한 발신프로필 키                        |
| lastTextDate | String  | 메시지 전달 상담톡 서버 시각 (실제 유저가 입력한 시각은 아님)    |
| appUserId    | String  | 메시지를 발신한 사용자의 앱 유저 아이디 (없을 경우 NULL로 표기) |

- last_reference

| Field Name | Type   | Description             |
|------------|--------|-------------------------|
| extra      | String | 버튼을 통해 전달된 메타 정보        |
| bot        | String | 상담을 어떻게 시작했는지 값         |
| bot_event  | String | 봇으로 상담 시작 시, 봇 블럭 이벤트 값 |
| created_at | String | 마지막 메타 정보 생성일           |

### Example (수신된 파라미터 기준)
```json
{
  "user_key":"Xj1bW5wlE5SR",
  "session_id":"163755146",
  "sender_key":"4c9591f37822ae1ed5b781582af08b1e2d922cea",
  "app_user_id":null,
  "time":1654738690219,
  "reference":
  {
    "extra":"메타 정보",
    "text":"",
    "lastText":"",
    "lastTextDate":"2022-06-07T11:53:32.431",
    "appUserId":null
  },
  "last_reference":{
    "extra":"메타 정보",
    "bot":"true",
    "bot_event":"",
    "created_at":"2022-06-07T11:53:32.431"
  }
}
```