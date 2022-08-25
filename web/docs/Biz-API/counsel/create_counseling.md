---
hide:
  - footer
---

## Endpoint
!!! example "<strong style="color:red; opacity: 0.80;">[POST]</strong> API URL 정보"
    === "<strong style="color:green; opacity: 0.80;">개발 및 테스트용 API</strong>"
        ```json
        https://patch-biz-api.happytalk.io/v1/chat/open
        ```
    === "<strong style="color:red; opacity: 0.80;">운영 API</strong>"
        ```json
        https://biz-api.happytalk.io/v1/chat/open
        ```

## Request (Json)
### Header
| Field Name       | Type   | Required | Description             |
|------------------|--------|----------|-------------------------|
| HT-Client-Id     | String | Y        | 고객센터에서 발급 받은 key  |
| HT-Client-Secret | String | Y        | 고객센터에서 발급 받은 token|

### Body
| Field Name          | Type (Length) | Required | Description                            | Default               |
|---------------------|---------------|----------|----------------------------------------|-----------------------|
| uuid                | String (20)   | Y        | 고객사 고객 식별 정보 (최소 5자 ~ 최대 20자)|                       |
| site_uid            | String (100)  | N        | 고객사 회원 고유 식별번호                  |                       |
| category_id         | Int (11)      | N        | 상담 대분류 번호                          | 첫번째 상담 대분류 아이디|
| division_id         | Int (11)      | N        | 상담 중분류 번호                          | 첫번째 상담 중분류 아이디|
| title               | String (100)  | N        | 상담방 제목                              |                       |
| phone_os            | String (1)    | N        | 기기 구분                                | W                     |
| phone_model         | String (20)   | N        | 기기 모델                                |                       |
| phone_os_ver        | String (20)   | N        | 기기 OS 버전                             |                       |
| phone_telecomm      | String (20)   | N        | 이용중인 이동 통신사                       |                       |
| app_hash            | String (150)  | N        | 앱 식별번호                               |                       |
| order_number        | String (100)  | N        | 주문 번호                                 |                       |
| product_number      | String (100)  | N        | 상품 번호                                 |                       |
| parcel_numver       | String (40)   | N        | 배송 운송장 번호                           |                       |
| parcel_company_type | String (2)    | N        | 택배사 타입                               |                       |
| parcel_company_code | String (2)    | N        | 택배사 코드                               |                       |
| parameter1~10       | String (20)   | N        | 고객사 커스텀 파라미터                      |                       |

### Example
??? abstract "REST API Sample"
    === "<strong style="color:green; opacity: 0.80;">개발 및 테스트용 API</strong>"
        ```json
        curl --location --request POST 'https://patch-biz-api.happytalk.io/v1/chat/open' \
        --header 'HT-Client-Id: 고객센터에서 발급 받은 key' \
        --header 'HT-Client-Secret: 고객센터에서 발급 받은 token' \
        --header 'Content-Type: application/json' \
        --data-raw '{
            "uuid":"happytalk_id",
            "site_uid":"",
            "category_id":"",
            "division_id":"",
            "title":"",
            "phone_os":"",
            "phone_model":"",
            "phone_os_ver":"",
            "phone_telecomm":"",
            "app_hash":"",
            "order_number":"",
            "product_number":"",
            "parcel_number":"",
            "parcel_company_type":"",
            "parcel_company_code":"",
            "parameter1":""
        }'
        ```
    === "<strong style="color:red; opacity: 0.80;">운영 API</strong>"
        ```json
        curl --location --request POST 'https://biz-api.happytalk.io/v1/chat/open' \
        --header 'HT-Client-Id: 고객센터에서 발급 받은 key' \
        --header 'HT-Client-Secret: 고객센터에서 발급 받은 token' \
        --header 'Content-Type: application/json' \
        --data-raw '{
            "uuid":"happytalk_id",
            "site_uid":"",
            "category_id":"",
            "division_id":"",
            "title":"",
            "phone_os":"",
            "phone_model":"",
            "phone_os_ver":"",
            "phone_telecomm":"",
            "app_hash":"",
            "order_number":"",
            "product_number":"",
            "parcel_number":"",
            "parcel_company_type":"",
            "parcel_company_code":"",
            "parameter1":""
        }'
        ```

## Response (Json)
### Parameter
| Field Name     | Type   | Description              |
|----------------|--------|--------------------------|
| code           | Int    | 성공, 실패여부             |
| room_id        | String | 생성된 방 아이디           |
| uuid           | String | 관리자 로그인 아이디        |
| type           | String | 발송된 상담 시작 메시지 타입 |
| content        | String | 발송된 상담 시작 메시지     |
| counselor_name | String | 배정된 상담원              |

### Example
???+ success
    ```json
    {
      "code": 0,
      "room_id": "생성된 방 아이디",
      "uuid": "고객사 고객 식별 정보",
      "type": "상담 시작 메시지 타입",
      "content": "상담 시작 메시지", 
      "counselor_name": "배정된 상담원"
    }
    ```

???+ fail classes
    <a href="/Biz-API/reference_docs/api_fail_code">Fail Code 정보</a>

## Data Dictionary
??? abstract "Data Dictionary"
    === "Response"
        === "phone_os"
            | Type | Description |
            |------|-------------|
            | A    | 안드로이드    |
            | I    | 아이폰       |
            | W    | 웹          |