---
hide:
  - footer
---

## Endpoint
[POST] /user/api/set_user_info/format/json

## Description
token 값은 [서비스 관리](https://patch.happytalk.io/site_manager/manage/plan) 에서 확인하실 수 있습니다.<br>(`설정 > 계정&시스템 관리 > 서비스 관리 > 시스템 정보 탭 > TOKEN`)


## Request (Json)

### Body
| Field Name    | Type (Length) | Required | Description                           | Default |
|---------------|---------------|----------|---------------------------------------|---------|
| token         | String        | Y        | 고객사 토큰                                |         |
| uuid          | String        | Y        | 고객 UUID                               |         |
| room_id       | String        | Y        | 상담방 번호                                |         |
| users_id      | String        | N        | 고객 ID (고객 ID 변경시 고객 UUID는 변경되지 않습니다.) |         |
| username      | String        | N        | 고객 이름                                 |         |
| phone         | String        | N        | 전화번호                                  |         |
| email         | String        | N        | 이메일                                   |         |
| sex           | String        | N        | 성별                                    |         |
| birthday      | String        | N        | 생일 (Y-m-d)                            |         |
| birth_type    | String        | N        | 0 : 양력 / 1 : 음력                       |         |
| category_id   | String        | N        | 대분류 ID                                |         |
| division_id   | String        | N        | 중분류 ID                                |         |
| order_number  | String        | N        | 주문번호                                  |         |
| parcel_number | String        | N        | 운송장 번호                                |         |
| parameter1    | String        | N        | parameter1                            |         |
| parameter2    | String        | N        | parameter2                            |         |
| parameter3    | String        | N        | parameter3                            |         |
| parameter4    | String        | N        | parameter4                            |         |
| parameter5    | String        | N        | parameter5                            |         |
| parameter6    | String        | N        | parameter6                            |         |
| parameter7    | String        | N        | parameter7                            |         |
| parameter8    | String        | N        | parameter8                            |         |
| parameter9    | String        | N        | parameter9                            |         |
| parameter10   | String        | N        | parameter10                           |         |
| scenario_next | String        | N        | 챗봇 다음 시나리오 호출 여부 (Y/N)                | N       |

#### \* uuid 추가설명 : 고객 ID(users_id)를 커스텀하여 사용하는 경우에 한하여 고객 ID(users_id)가 아닌 고객식별번호(uuid)로 데이터를 받아야 함.\*

## Response (json)
| Field Name | Type    | Description              |
|------------|---------|--------------------------|
| result     | String  | success : 성공 , fail : 실패 |
| code       | Int     | 결과 코드                    |
| message    | String  | 오류 사유                    |

### Example

#### Success
```json
{
  "result": "success"
}
```

#### Fail
- 토큰 값 누락 및 유효하지 않은 토큰 값
```json
{
  "result": "fail",
  "code": -501,
  "message": "token"
}
```

- 고객 ID 혹은 고객 UUID 누락 
```json
{
  "result": "fail",
  "code": -501,
  "message": "uuid"
}
```

- 권한 없음
```json
{
  "result": "fail",
  "code": -502,
  "message": "unAuthorized"
}
```

- UUID에 해당하는 고객을 찾을 수 없음
```json
{
  "result": "fail",
  "code": -503,
  "message": "users"
}
```

- 일치하는 방정보가 없음
```json
{
  "result": "fail",
  "code": -503,
  "message": "room"
}
```
