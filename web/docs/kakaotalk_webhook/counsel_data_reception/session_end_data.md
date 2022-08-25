## Endpoint (카카오톡 -> 고객사)

[POST] 수신도메인/expired_session

## Description
해당 API는 카카오톡에서 발신된 API이며, 세션 종료시 종료된 세션 정보를 고객사 수신도메인으로 수신되는 API입니다.

## Request (Json)

None

## Response (json)

| Field Name     | Type   | Description                         |
|----------------|--------|-------------------------------------|
| user_key       | String | 메시지를 발송한 사용자의 고유 키                  |
| session_id     | String | 세션 아이디                              |
| sender_key     | String | 메시지를 수신한 발신프로필 키                    |
| time           | Int    | 종료될 때 상담톡 서버 시각 (실제 유저가 입력한 시각은 아님) |

### Example (수신된 파라미터 기준)
```json
{
  "user_key":"Xj1bW5wlE5SR",
  "sender_key":"4c9591f37822ae1ed5b781582af08b1e2d922cea",
  "session_id":"163760025",
  "time":1654740377038
}
```