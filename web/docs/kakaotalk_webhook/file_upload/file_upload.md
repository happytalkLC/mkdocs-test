## Endpoint
[POST] /v1/file/upload

## Request (Json)
### Header
| Field Name       | Type   | Required | Description           |
|------------------|--------|----------|-----------------------|
| Content-type     | String | Y        | multipart/form-data   |
| HT-Client-Id     | String | Y        | 고객센터에서 발급 받은 key     |
| HT-Client-Secret | String | Y        | 고객센터에서 발급 받은 token   |

### Body
| Field Name | Type (Length) | Required | Description                                                                | Default |
|------------|---------------|----------|----------------------------------------------------------------------------|---------|
| sender_key | String        | Y        | 발신프로필 키                                                                    |         |
| file       | binary        | Y        | 업로드할 파일                                                                    |         |
** 주의사항 : 최대 20MB까지 전송 가능, 반드시 용량 체크 후 전송할 것 **

## Response (json)
| Field Name | Type   | Description              |
|------------|--------|--------------------------|
| code       | String | [결과 코드](./API%20코드%20정의) |
| file       | String | 업로드된 파일 URL              |
| name       | String | 업로드된 파일 이름               |
| size       | int    | 업로드된 파일 사이즈              |

### Example

#### Success
```json
{
  "code": "0000",
  "file": "http://mud-kage.kakao.com/dn/wulU3/o3lSqvGtSi/IrR4wviHArpITK2Esmjfr0/f_muope7.png",
  "name": "이미지.png",
  "size": 173083
}
```

#### Fail
[코드 정의 문서](./API%20코드%20정의)
