---
hide:
  - footer
---

## Endpoint
[POST] /user/api/chat_list_for_userid/format/json

## Description
token 값은 [서비스 관리](https://patch.happytalk.io/site_manager/manage/plan) 에서 확인하실 수 있습니다.<br>(`설정 > 계정&시스템 관리 > 서비스 관리 > 시스템 정보 탭 > TOKEN`)

## Request (Json)

### Body
| Field Name | Type (Length) | Required | Description             | Default |
|------------|---------------|----------|-------------------------|---------|
| token      | String        | Y        | 고객사 토큰                  |         |
| start_date | String        | Y        | 검색 시작 일시 (Y-m-d h:i:s)  |         |
| end_date   | String        | Y        | 검색 종료 일시 (Y-m-d h:i:s)  |         |

#### \* 조회시 주의사항 : 최대 조회기간은 하루입니다.\*

## Response (json)
| Field Name | Type   | Description              |
|------------|--------|--------------------------|
| result     | String | success : 성공 , fail : 실패 |
| data       | object | 서비스 이용내역                 |

### data (서비스 이용내역)
| Field Name      | Type     | Description                                                |
|-----------------|----------|------------------------------------------------------------|
| id              | String   | 이용내역 고유 ID                                                 |
| type            | String   | [이용내역 구분](#happytalk-customer-serviceuselog-response-type) |
| kind            | String   | [이용내역 종류](#happytalk-customer-serviceuselog-response-kind) |
| request_user    | String   | 이벤트 발생자                                                    |
| request_content | String   | 이벤트 내용                                                     |
| request_date    | String   | 이벤트 발생 일시                                                  |
| apply_id        | String   | 적용 ID                                                      |
| apply_content   | String   | 적용 내용                                                      |
| apply_date      | String   | 적용 일시                                                      |


#### Body Data Dictionary

<a id=happytalk-customer-serviceuselog-response-type></a>- type

| Type | Description |
|------|-------------|
| M    | 수동          |
| A    | 자동          |

<a id=happytalk-customer-serviceuselog-response-kind></a>- kind

| Type | Description |
|------|-------------|
| A    | 아카이브        |
| K    | 키 발급        |
| S    | 매니저 액션      |

### Example

#### Success
```json
{
  "result": "success",
  "data": [
    {
      "id": "146708",
      "type": "A",
      "kind": "S",
      "request_user": "test-lc",
      "request_content": "상담분류 변경 [628f30f25ecb0kr2t2PdFgGn030HL2번방] - 상품문의(샘플)>일반상담(샘플) → 상품문의(샘플)>불만접수(샘플)",
      "request_date": "2022-05-26 17:14:28",
      "apply_id": "37197",
      "apply_content": "성공",
      "apply_date": "2022-05-26 17:14:28"
    },
    {
      "id": "146665",
      "type": "A",
      "kind": "S",
      "request_user": "test-lc",
      "request_content": "[WEB] test-lc(37197)상담원 로그인. IP - (IP정보)",
      "request_date": "2022-05-26 16:35:41",
      "apply_id": "37197",
      "apply_content": "로그인",
      "apply_date": "2022-05-26 16:35:41"
    }
  ]
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

- 최대 조회기간 초과
```json
{
  "result": "fail",
  "code": -504,
  "message": "overDate"
}
```
