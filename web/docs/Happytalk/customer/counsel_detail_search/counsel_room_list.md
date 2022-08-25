---
hide:
  - footer
---

## Endpoint
!!! example "<strong style="color:red; opacity: 0.80;">[POST]</strong> API URL 정보"
    === "<strong style="color:green; opacity: 0.80;">개발 및 테스트용 API</strong>"
        ```json
        https://patch-customer.happytalk.io/user/api/chat_room_lists/format/json
        ```
    === "<strong style="color:red; opacity: 0.80;">운영 API</strong>"
        ```json
        https://customer.happytalk.io/user/api/chat_room_lists/format/json
        ```

## Request (Json)
### Body
| Field Name | Type (Length) | Required | Description                                                                       | Default                 |
|------------|---------------|----------|-----------------------------------------------------------------------------------|-------------------------|
| token      | String        | Y        | 고객사 토큰                                                                         |                         |
| ndate      | String        | N        | 조회 일자 (Y-m-d)                                                                   | 당일 일자                |
| sdate      | String        | N        | 검색 시작일 (Y-m-d)                                                                 |                         |
| edate      | String        | N        | 검색 종료일 (Y-m-d)                                                                 |                         |
| status     | int           | N        | <a href="#data_dict" onclick="dict_move('request-dict', 'status')">상담방 상태</a>  | 99                      |
| sort_key   | String        | N        | 정렬 기준  (reg_date, complate_date))                                               | reg_date                |
| sort_value | String        | N        | 정렬 방식  (asc, desc)                                                              | desc                    |
| limit      | int           | N        | 한 페이지당 상담방 출력 수                                                            | 기본 : 10 <br> 최대 : 50 |
| page       | int           | N        | 페이지 번호                                                                         | 1                       |

!!! warning "참고 사항"
    ndate, sdate, edate 우선순위는 sdate,edate > ndate > null 이며, null로 넘길경우 당일날짜를 조회합니다.

### Example
??? abstract "REST API Sample"
    === "<strong style="color:green; opacity: 0.80;">개발 및 테스트용 API</strong>"
        ```json
        curl --location --request POST 'https://patch-customer.happytalk.io/user/api/chat_room_lists/format/json' \
        --header 'Content-Type: application/json' \
        --data-raw '{
            "token" : "고객사 토큰",
            "ndate" : "조회 일자",
            "status" : "상담방 상태"
        }'
        ```
    === "<strong style="color:red; opacity: 0.80;">운영 API</strong>"
        ```json
        curl --location --request POST 'https://customer.happytalk.io/user/api/chat_room_lists/format/json' \
        --header 'HT-Client-Id: 고객센터에서 발급 받은 key' \
        --header 'HT-Client-Secret: 고객센터에서 발급 받은 token' \
        --header 'Content-Type: application/json' \
        --data-raw '{
            "token" : "고객사 토큰",
            "ndate" : "조회 일자",
            "status" : "상담방 상태"
        }'
        ```

## Response (Json)
### Parameter
| Field Name | Type   | Description                                                                    |
|------------|--------|--------------------------------------------------------------------------------|
| result     | String | success : 성공 , fail : 실패                                                    |
| data       | object | <a href="#data_dict" onclick="dict_move('response-dict', 'data')">상담 내역</a> |

!!! warning "참고 사항"
    `data`는 세부 내용에 대한 Depth가 있는 관계로 Data Dictionary에 정의 하였습니다. 상담 내역 링크를 클릭하시면 이동됩니다.

### Example
???+ success
    ```json
    {
        "result": "success",
        "data": {
            "page": 1,
            "limit": 10,
            "total_count": 2,
            "chat_list": [
                  {
                    "id": "fi9LcAh16utMZEVpe5UYFvrkQgnBJT",
                    "title": "1:1 채팅 상담 문의 드립니다.",
                    "counselor_name": "test-lc",
                    "counselor_nickname": "test-lc",
                    "customer_uuid": "1000225570_lc_test1",
                    "users_id": null,
                    "category_id": "75345",
                    "division_id": "75346",
                    "cate_name1": "상품문의(샘플)",
                    "cate_name2": "일반상담(샘플)",
                    "etc_assign": "",
                    "reg_date": "2022-05-26 12:38:32",
                    "complate_date": "0000-00-00 00:00:00",
                    "out_api": "0",
                    "status": "0",
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
                    "last_message": "상담원이 종료하였습니다."
                },
                {
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
                    "last_message": "고객님이 종료하였습니다."
                }
            ]
        }
    }
    ```

???+ fail classes
    <a href="/Happytalk/reference_docs/customer-api_fail_code">Fail Code 정보</a>

## Data Dictionary
??? abstract "<a id='data_dict'></a>Data Dictionary"
    === "<a id="reqeust-dict"></a>Request Dictionary"
        === "<a id='request-dict-status'></a>status"
            | Type | Description |
            |------|-------------|
            | 99   | 전체        |
            | -2   | 상담 대기    |
            | -1   | 챗봇 진행중  |
            | 0    | 접수 대기    |
            | 1    | 진행중       |
            | 2    | 완료         |
            | 3    | 삭제         |
    === "<a id="response-dict"></a>Response Dictionary"
        === "<a id='response-dict-data'></a>data"
            | Field Name  | Type    | Description                                                          |
            |-------------|---------|----------------------------------------------------------------------|
            | page        | String  | 페이지 번호                                                            |
            | limit       | String  | 한 페이지당 상담방 출력 수                                               |
            | total_count | String  | 상담방 개수                                                            |
            | chat_list   | object  | <a onclick="dict_move('response-dict', 'chat_list')">상담방 리스트</a> |
        === "<a id='response-dict-chat_list'></a>chat_list"
            | Field Name         | Type     | Description                                                                 |
            |--------------------|----------|-----------------------------------------------------------------------------|
            | id                 | String   | 상담방 ID                                                                    |
            | title              | String   | 상담방 제목                                                                   |
            | counselor_name     | String   | 상담사 이름                                                                   |
            | counselor_nickname | String   | 상담사 별명                                                                   |
            | customer_uuid      | String   | 고객 식별 번호                                                                |
            | users_id           | String   | 고객 ID                                                                      |
            | category_id        | String   | 대분류 ID                                                                    |
            | division_id        | String   | 중분류 ID                                                                    |
            | cate_name1         | String   | 대분류 명칭                                                                   |
            | cate_name2         | String   | 중분류 명칭                                                                   |
            | etc_assign         | String   | 소분류 명칭                                                                   |
            | reg_date           | datetime | 상담방 등록 일시                                                               |
            | complate_date      | datetime | 상담방 종료 일시                                                               |
            | out_api            | String   | <a onclick="dict_move('response-dict', 'out_api')">상담 환경 분류</a>          |
            | status             | String   | <a onclick="dict_move('response-dict', 'status')">상담방 상태</a>              |
            | order_number       | String   | 상품 주문 번호                                                                 |
            | product_number     | String   | 상품 번호                                                                      |
            | parcel_number      | String   | 운송장 번호                                                                    |
            | parcel_companycode | String   | <a onclick="dict_move('response-dict', 'parcel_companycode')">택배사 코드</a>  |
            | app_ver            | String   | 앱 버전                                                                       |
            | phone_os           | String   | <a onclick="dict_move('response-dict', 'phone_os')">휴대전화 OS</a>            |
            | phone_model        | String   | 휴대전화 모델명                                                                 |
            | phone_osver        | String   | 휴대전화 OS 구분 값                                                             |
            | phone_telecomm     | String   | 통신사 정보                                                                    |
            | app_hash           | String   | 앱 식별 번호                                                                   |
            | parameter1         | String   | 커스텀 파라미터                                                                 |
            | parameter2         | String   | 커스텀 파라미터                                                                 |
            | parameter3         | String   | 커스텀 파라미터                                                                 |
            | parameter4         | String   | 커스텀 파라미터                                                                 |
            | parameter5         | String   | 커스텀 파라미터                                                                 |
            | parameter6         | String   | 커스텀 파라미터                                                                 |
            | parameter7         | String   | 커스텀 파라미터                                                                 |
            | parameter8         | String   | 커스텀 파라미터                                                                 |
            | parameter9         | String   | 커스텀 파라미터                                                                 |
            | parameter10        | String   | 커스텀 파라미터                                                                 |
            | last_message       | String   | 마지막 메시지                                                                   |
        === "<a id='response-dict-out_api'></a>out_api"
            | Type | Description |
            |------|-------------|
            | 0    | 해피톡       |
            | 1    | 네이버 톡톡   |
            | 2    | 카카오톡      |
        === "<a id='response-dict-status'></a>status"
            | Type | Description  |
            |------|--------------|
            | 0    | 접수대기      |
            | 1    | 진행중        |
            | 2    | 완료          |
            | 3    | 삭제          |
            | 4    | 챗봇종료       |
        === "<a id='response-dict-parcel_companycode'></a>parcel_companycode"
            | Code | 택배사명         |
            |------|-----------------|
            | 1    | 우체국택배        |
            | 4	   | 대한통운          |
            | 5	   | 한진택배          |
            | 6	   | 로젠택배          |
            | 8	   | 롯데택배          |
            | 11   | 일양로지스        |
            | 12   | EMS              |
            | 13   | DHL              |
            | 18   | 건영택배          |
            | 21   | Fedex            |
            | 22   | 대신택배          |
            | 23   | 경동택배          |
            | 24   | CVSnet 편의점택배  |
            | 25   | TNT Express      |
            | 42   | CJ대한통운 국제특송 |
            | 45   | 호남택배           |
            | 53   | 농협택배           |
            | 99   | 롯데글로벌 로지스   |
        === "<a id='response-dict-phone_os'></a>phone_os"
            | Type | Description |
            |------|-------------|
            | A    | 안드로이드    |
            | I    | 아이폰       |
            | W    | 웹          |