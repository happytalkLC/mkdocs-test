---
hide:
  - footer
---

## Endpoint
!!! example "<strong style="color:red; opacity: 0.80;">[POST]</strong> API URL 정보"
    === "<strong style="color:green; opacity: 0.80;">개발 및 테스트용 API</strong>"
        ```json
        https://patch-customer.happytalk.io/user/api/chat_data/format/json
        ```
    === "<strong style="color:red; opacity: 0.80;">운영 API</strong>"
        ```json
        https://customer.happytalk.io/user/api/chat_data/format/json
        ```

## Request (Json)

### Body
| Field Name | Type (Length) | Required | Description | Default   |
|------------|---------------|----------|-------------|-----------|
| token      | String        | Y        | 고객사 토큰   |           |
| room_id    | String        | Y        | 상담방 번호   |           |

## Response (Json)
| Field Name | Type   | Description                                    |
|------------|--------|------------------------------------------------|
| result     | String | success : 성공 , fail : 실패                    |
| data       | object | 상담 내역 (chat(상담방 정보), message(메시지 정보))|

### chat (상담방 정보)
| Field Name         | Type     | Description                                                                              |
|--------------------|----------|------------------------------------------------------------------------------------------|
| id                 | String   | 상담방 ID                                                                                   |
| title              | String   | 상담방 제목                                                                                   |
| counselor_name     | String   | 상담사 이름                                                                                   |
| counselor_nickname | String   | 상담사 별명                                                                                   |
| customer_uuid      | String   | 고객 식별 번호                                                                                 |
| users_id           | String   | 고객 ID                                                                                    |
| category_id        | String   | 대분류 ID                                                                                   |
| division_id        | String   | 중분류 ID                                                                                   |
| cate_name1         | String   | 대분류 명칭                                                                                   |
| cate_name2         | String   | 중분류 명칭                                                                                   |
| etc_assign         | String   | 소분류 명칭                                                                                   |
| reg_date           | datetime | 상담방 등록 일시                                                                                |
| complate_date      | datetime | 상담방 종료 일시                                                                                |
| out_api            | String   | [상담 환경 분류](#happytalk-customer-counselinglist_chatlistid-response-chat-out_api)          |
| status             | String   | [상담방 상태](#happytalk-customer-counselinglist_chatlistid-response-chat-status)             |
| order_number       | String   | 상품 주문 번호                                                                                 |
| product_number     | String   | 상품 번호                                                                                    |
| parcel_number      | String   | 운송장 번호                                                                                   |
| parcel_companycode | String   | [택배사 코드](#happytalk-customer-counselinglist_chatlistid-response-chat-parcel_companycode) |
| app_ver            | String   | 앱 버전                                                                                     |
| phone_os           | String   | [휴대전화 OS](#happytalk-customer-counselinglist_chatlistid-response-chat-phone_os)          |
| phone_model        | String   | 휴대전화 모델명                                                                                 |
| phone_osver        | String   | 휴대전화 OS 구분 값                                                                             |
| phone_telecomm     | String   | 통신사 정보                                                                                   |
| app_hash           | String   | 앱 식별 번호                                                                                  |
| parameter1         | String   | 커스텀 파라미터                                                                                 |
| parameter2         | String   | 커스텀 파라미터                                                                                 |
| parameter3         | String   | 커스텀 파라미터                                                                                 |
| parameter4         | String   | 커스텀 파라미터                                                                                 |
| parameter5         | String   | 커스텀 파라미터                                                                                 |
| parameter6         | String   | 커스텀 파라미터                                                                                 |
| parameter7         | String   | 커스텀 파라미터                                                                                 |
| parameter8         | String   | 커스텀 파라미터                                                                                 |
| parameter9         | String   | 커스텀 파라미터                                                                                 |
| parameter10        | String   | 커스텀 파라미터                                                                                 |
| vote_score         | String   | 상담 평가 점수                                                                                 |
| vote_comment       | String   | 상담 평가 내용                                                                                 |

### message (메시지 정보)
| Field Name    | Type     | Description                                                                               |
|---------------|----------|-------------------------------------------------------------------------------------------|
| id            | String   | 메시지 ID                                                                                    |
| from_id       | String   | 메시지 발송 ID                                                                                 |
| to_id         | String   | 메시지 수신 ID                                                                                 |
| type          | String   | [메시지 타입](#happytalk-customer-counselinglist_chatlistid-response-message-type)             |
| user_type     | String   | [발송자 구분 타입](#happytalk-customer-counselinglist_chatlistid-response-message-user_type)     |
| contents_type | String   | [메시지 내용 타입](#happytalk-customer-counselinglist_chatlistid-response-message-contents_type) |
| contents      | String   | 메시지 내용                                                                                    |
| send_date     | datetime | 메시지 발송 일시                                                                                 |
| read_date     | datetime | 메시지 확인 일시                                                                                 |

#### Body Data Dictionary (Response)

<a id=happytalk-customer-counselinglist_chatlistid-response-chat-out_api></a>- out_api

| Type | Description |
|------|-------------|
| 0    | 해피톡         |
| 1    | 네이버 톡톡      |
| 2    | 카카오톡        |

<a id=happytalk-customer-counselinglist_chatlistid-response-chat-status></a>- status

| Type | Description  |
|------|--------------|
| 0    | 접수대기         |
| 1    | 진행중          |
| 2    | 완료           |
| 3    | 삭제           |
| 4    | 챗봇종료         |

<a id=happytalk-customer-counselinglist_chatlistid-response-chat-parcel_companycode></a>- parcel_companycode

| Code	 | 택배사명         |
|-------|--------------|
| 1     | 우체국택배        |
| 4	    | 대한통운         |
| 5	    | 한진택배         |
| 6	    | 로젠택배         |
| 8	    | 롯데택배         |
| 11	   | 일양로지스        |
| 12	   | EMS          |
| 13	   | DHL          |
| 18	   | 건영택배         |
| 21	   | Fedex        |
| 22	   | 대신택배         |
| 23	   | 경동택배         |
| 24	   | CVSnet 편의점택배 |
| 25	   | TNT Express  |
| 42    | CJ대한통운 국제특송  |
| 45	   | 호남택배         |
| 53    | 	농협택배        |
| 99	   | 롯데글로벌 로지스    |

<a id=happytalk-customer-counselinglist_chatlistid-response-chat-phone_os></a>- phone_os

| Type | Description |
|------|-------------|
| A    | 안드로이드       |
| I    | 아이폰         |
| W    | 웹           |

<a id=happytalk-customer-counselinglist_chatlistid-response-message-type></a>- type

| Type | Description |
|------|-------------|
| C    | 메시지         |
| M    | 메모          |

<a id=happytalk-customer-counselinglist_chatlistid-response-message-user_type></a>- user_type

| Type | Description |
|------|-------------|
| C    | 고객          |
| H    | 상담원         |
| B    | 로봇          |

<a id=happytalk-customer-counselinglist_chatlistid-response-message-contents_type></a>- contents_type

| Type  | Description |
|-------|-------------|
| text  | 단순 글자       |
| image | 이미지 파일      |
| nomal | 이미지 버튼      |

### Example

#### Success
```json
{
  "result": "success",
  "data": [
    {
      "chat": {
        "id": "uvR3XrI8jtybTq6ZfploAOxJcKNLCG",
        "title": "1:1 채팅 상담 문의 드립니다.",
        "counselor_name": "test-lc",
        "counselor_nickname": "test-lc",
        "customer_uuid": "1000225570_testuser",
        "users_id": "testuser",
        "category_id": "75345",
        "division_id": "75346",
        "cate_name1": "상품문의(샘플)",
        "cate_name2": "일반상담(샘플)",
        "etc_assign": "",
        "reg_date": "2022-05-26 10:26:31",
        "complate_date": "2022-05-26 10:31:06",
        "out_api": "0",
        "status": "2",
        "order_number": "",
        "product_number": "",
        "parcel_number": "",
        "parcel_companycode": "W",
        "app_ver": "",
        "phone_os": "",
        "phone_model": "",
        "phone_osver": "",
        "phone_telecomm": "",
        "app_hash": "",
        "parameter1": "",
        "parameter2": "",
        "parameter3": "",
        "parameter4": "",
        "parameter5": "",
        "parameter6": "",
        "parameter7": "",
        "parameter8": "",
        "parameter9": "",
        "parameter10": "",
        "vote_score": null,
        "vote_comment": null
      },
      "message": [
        {
          "id": "562834",
          "from_id": "1000225570_testuser",
          "to_id": "test-lc",
          "type": "C",
          "user_type": "C",
          "contents_type": "text",
          "contents": "고객님이 종료하였습니다.",
          "send_date": "2022-05-26 10:31:06",
          "read_date": "2022-05-26 10:31:06"
        }
      ]
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
