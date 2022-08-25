## Endpoint
[POST] /v1/profile/chat/deactivate

## Request (Json)
### Header
| Field Name       | Type   | Required | Description          |
|------------------|--------|----------|----------------------|
| Content-type     | String | Y        | application/json     |
| HT-Client-Id     | String | Y        | 고객센터에서 발급 받은 key    |
| HT-Client-Secret | String | Y        | 고객센터에서 발급 받은 token  |

### Body
| Field Name | Type (Length) | Required | Description    | Default |
|------------|---------------|----------|----------------|---------|
| sender_key | String        | Y        | 발신프로필 키        |         |

## Response (json)
| Field Name | Type    | Description                           |
|------------|---------|---------------------------------------|
| code       | String  | [결과 코드](./API%20코드%20정의) (성공 : 200)   |

### Example

#### Success
```json
{
  "code": "200"
}
```

#### Fail
[코드 정의 문서](./API%20코드%20정의)
