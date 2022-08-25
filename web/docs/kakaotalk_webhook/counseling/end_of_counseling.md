## Endpoint
[POST] /v1/chat/end

## Description
본 API는 [상담 메시지 수신](./상담%20메시지%20수신) 으로 받은 데이터를 사용하여 동작하는 API입니다.

## Request (Json)
### Header
| Field Name       | Type   | Required | Description            |
|------------------|--------|----------|------------------------|
| Content-type     | String | Y        | application/json       |
| HT-Client-Id     | String | Y        | 고객센터에서 발급 받은 key      |
| HT-Client-Secret | String | Y        | 고객센터에서 발급 받은 token    |

### Body
| Field Name | Type (Length) | Required | Description         | Default |
|------------|---------------|----------|---------------------|---------|
| user_key   | String        | Y        | 수신한 사용자 키           |         |
| sender_key | String        | Y        | 발신프로필 키             |         |

## Response (json)
| Field Name | Type   | Description               |
|------------|--------|---------------------------|
| code       | String | [결과 코드](./API%20코드%20정의)  |
| sessionId  | String | 종료된 session ID값           |

### Example

#### Success
```json
{
  "code": 0,
  "sessionId": "163477524"
}
```

#### Fail
[코드 정의 문서](./API%20코드%20정의)
