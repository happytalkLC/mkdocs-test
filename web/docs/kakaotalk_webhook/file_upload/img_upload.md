## Endpoint
[POST] /v1/image/upload

## Request (Json)
### Header
| Field Name       | Type   | Required | Description           |
|------------------|--------|----------|-----------------------|
| Content-type     | String | Y        | multipart/form-data   |
| HT-Client-Id     | String | Y        | 고객센터에서 발급 받은 key     |
| HT-Client-Secret | String | Y        | 고객센터에서 발급 받은 token   |

### Body
| Field Name  | Type (Length) | Required | Description                                   | Default |
|-------------|---------------|----------|-----------------------------------------------|---------|
| sender_key  | String        | Y        | 발신프로필 키                                       |         |
| image       | binary        | Y        | 업로드할 이미지 파일                                   |         |
| image_type  | String        | Y / N    | 링크버튼 전용 이미지 [[참고사항](#)] ( image_type = link ) |         |

| 참고사항                                                                  |
|-----------------------------------------------------------------------|
| 이미지 타입, link 버튼용 이미지의 경우 내부 서버에 업로드된 이미지만 발송 가능하다.                    |
| 이미지 타입 확장자 : jpg, png, gif                                            |
| 이미지 타입 용량 : 최대 5MB                                                    |
| link 버튼용 확장자 : jpg, png                                               |
| link 버튼용 용량 : 0.5 MB                                                  |
| link 버튼용 권장사이즈 : 720px*720px                                          |
| link 버튼용 업로드 주의사항 : 가로 500px 미만 또는 가로:세로 비율이 2:1 미만 또는 3:4 초과시 업로드 불가 |

## Response (json)
| Field Name | Type    | Description                           |
|------------|---------|---------------------------------------|
| code       | String  | [결과 코드](./API%20코드%20정의) (성공 : 200)   |

### Example

#### Success
```json
{
  "code": "0000",
  "image": "http://dn-m.talk.kakao.com/talkm/oZabRlZIPB/97ICDfcxqsjcE0PVowTv11/i_rmubl2.png"
}
```

#### Fail
[코드 정의 문서](./API%20코드%20정의)
