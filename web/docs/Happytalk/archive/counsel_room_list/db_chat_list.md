## Description
<b>본 문서는 백업된 데이터에 대한 구조 설명 문서입니다.<br>
 - 데이터 이관 파라미터는 언제든지 신규로 추가될 수 있습니다. 고객사에서는 추가 파라미터들을 감안하고 연동하시기 바랍니다.<br>
 - Json 데이터를 [Json Viewer](http://json.parser.online.fr)로 사용하여 한글로 확인이 가능합니다.

## Data Structure
| Field Name                | Type     | Length | Description                                                     |
|---------------------------|----------|--------|-----------------------------------------------------------------|
| id                        | Char     | 30     | 상담방 ID                                                          |
| status                    | Tinyint  | 4      | [상담방 상태](#happytalk_archive-db_chat-dict-status)                |
| archive_status            | Tinyint  | 4      | [백업 여부](#happytalk_archive-db_chat-dict-archive_status)         |
| end_status                | Tinyint  | 4      | [상담방 종료 상태](#happytalk_archive-db_chat-dict-end_status)         |
| title                     | Tinyint  | 100    | 상담방 제목                                                          |
| ing_status                | Varchar  | 4      | [상담방 최종 채팅 구분](#happytalk_archive-db_chat-dict-ing_status)      |
| site_id                   | Tinyint  | 20     | 고객사 ID                                                          |
| manager_id                | Bigint   | 11     | 매니저 ID (상담원)                                                    |
| counselor_id_1st          | Int      | 11     | 첫번째 상담원 ID  (빈값일시 null)                                         |
| counselor_id              | Int      | 100    | 상담원 ID                                                          |
| customer_id               | Varchar  | 80     | UUID                                                            |
| category_id               | Varchar  | 11     | 상담 대분류 ID                                                       |
| division_id               | Int      | 11     | 상담 중분류 ID                                                       |
| etc_assign                | Int      | 8      | 소분류                                                             |
| last_message_description  | Text     |        | 최종 채팅 내용                                                        |
| last_message_date         | Datetime |        | 최종 채팅 내용 시간                                                     |
| reg_date                  | Datetime |        | 상담 등록 일시                                                        |
| complate_date             | Datetime |        | 상담 완료 일시                                                        |
| delete_date               | Datetime |        | 상담 삭제 일시                                                        |
| switch_counselor_date     | Datetime |        | 상담원 변경 일시                                                       |
| flag                      | Tinyint  | 4      | [깃발](#happytalk_archive-db_chat-dict-flag)                      |
| postback                  | Varchar  | 1024   | 리턴 받을 주소  (해피톡 사용 값)                                            |
| postback_only             | Tinyint  | 4      | 리턴 유무  (해피톡 사용 값)                                               |
| out_api                   | Tinyint  | 4      | [채널](#happytalk_archive-db_chat-dict-out_api)                   |
| today_init_counsel_time   | Time     |        | 당일 상담 초기화 시간  (해피톡 사용 값 / \*과금용\*)                              |
| today_lastst_counsel_date | Datetime |        | 상담원 마지막 상담 일시                                                   |
| scenario_info             | Text     |        | 시나리오 정보                                                         |
| company_type              | Char     | 5      | 고객사 타입  (해피톡 사용 값)                                              |
| company_code              | Char     | 10     | 고객사 코드  (해피톡 사용 값)                                              |
| parcel_number             | Varchar  | 40     | 운송장 번호                                                          |
| order_number              | Varchar  | 100    | 상품 주문 번호                                                        |
| parcel_company_code       | Char     | 2      | 택배사 코드   (해피톡 사용 값)                                             |
| parcel_company_type       | Char     | 2      | 택배사 종류   (해피톡 사용 값)                                             |
| product_number            | Text     |        | 상품 번호                                                           |
| payload                   | Text     |        | 고객 최초 인사말(자동입력메시지) (첫번째로전송할메세지, type에따라내용또는이미지주소)               |
| payload_type              | Char     | 20     | [고객 최초 인사말 type](#happytalk_archive-db_chat-dict-payload_type)  |
| userid                    | Int      | 11     | 해피톡 구분                                                          |
| usergb                    | Char     | 3      | [상담 신청 진입점](#happytalk_archive-db_chat-dict-usergb) (전송파라미터값기준) |
| quota_date                | Datetime |        | 등록일                                                             |
| user_parameter            | Varchar  | 200    | 커스텀 파라미터                                                        |
| push_company_id           | Int      | 11     | 푸시발송용 회사고유번호   (해피톡 사용 값)                                       |
| push_user_id              | Int      | 11     | 푸시발송용 사용자번호   (해피톡 사용 값)                                        |
| app_hash                  | Varchar  | 150    | 푸쉬암호화키  (해피톡 사용 값)                                              |
| app_ver                   | Varchar  | 20     | 푸쉬버전  (해피톡 사용 값)                                                |
| phone_os                  | Varchar  | 20     | 폰OS   (고객사 제공 값)                                                |
| phone_model               | Varchar  | 20     | 폰모델  (고객사 제공 값)                                                 |
| phone_os_ver              | Varchar  | 20     | 폰OS ver (고객사 제공 값)                                              |
| phone_telecomm            | Varchar  | 20     | 통신사  (고객사 제공 값)                                                 |
| parameter1                | Varchar  | 20     | 고객사 커스텀 파라미터                                                    |
| parameter2                | Varchar  | 20     | 고객사 커스텀 파라미터                                                    |
| parameter3                | Varchar  | 20     | 고객사 커스텀 파라미터                                                    |
| parameter4                | Varchar  | 20     | 고객사 커스텀 파라미터                                                    |
| parameter5                | Varchar  | 20     | 고객사 커스텀 파라미터                                                    |
| parameter6                | Varchar  | 20     | 고객사 커스텀 파라미터                                                    |
| parameter7                | Varchar  | 20     | 고객사 커스텀 파라미터                                                    |
| parameter8                | Varchar  | 20     | 고객사 커스텀 파라미터                                                    |
| parameter9                | Varchar  | 20     | 고객사 커스텀 파라미터                                                    |
| parameter10               | Varchar  | 20     | 고객사 커스텀 파라미터                                                    |
| vote_score                | Int      | 10     | 상담 평가 점수                                                        |
| vote_comment              | Varchar  | 255    | 상담 평가 내용                                                        |
| users_id                  | Varchar  | 255    | 고객사 유저 ID                                                       |
| tag_nms                   | Text     |        | 상담방 태그 (&#124;로 태그값 구분 / ex:(#태크1&#124;#태그2&#124;#태그3))         |
| counselor_nickname        | Varchar  | 60     | 상담원 이름                                                          |
| shr_uuid                  | Varchar  | 255    | 연동 프로필                                                          |

- 개인정보 사용하는 고객 전용 추가 파라미터

| Field Name          | Type    | Length | Description  |
|---------------------|---------|--------|--------------|
| cus_extra_username  | Varchar | 255    | 고객 이름        |
| cus_extra_phone     | Varchar | 255    | 고객 휴대폰번호     |
| cus_extra_tel_phone | Varchar | 255    | 고객 전화번호      |
| cus_extra_email     | Varchar | 255    | 고객 email     |

## Data
- <a id=happytalk_archive-db_chat-dict-status></a> status (상담방 상태)

| Type | Description |
|------|-------------|
| -2   | 봇 상담 대기     |
| -1   | 봇 상담        |
| 0    | 접수 대기       |
| 1    | 진행중         |
| 2    | 완료          |
| 3    | 삭제          |
| 4    | 봇 상담 종료     |

- <a id=happytalk_archive-db_chat-dict-archive_status></a> archive_status (백업 여부)

| Type | Description |
|------|-------------|
| 0    | 백업 전        |
| 1    | 백업 완료       |

- <a id=happytalk_archive-db_chat-dict-end_status></a> end_status (상담방 종료 상태)

| Type | Description |
|------|-------------|
| 0    | 상담원 종료      |
| 1    | 고객 종료       |
| 2    | 매니저 종료      |
| 3    | 상담 종료       |
- 
- <a id=happytalk_archive-db_chat-dict-ing_status></a> ing_status (상담방 최종 채팅 구분)

| Type | Description |
|------|-------------|
| 0    | 상담원 발화      |
| 1    | 고객 발화       |

- <a id=happytalk_archive-db_chat-dict-flag></a> flag (깃발)

| Type | Description      |
|------|------------------|
| 1    | red              |
| 2    | orange           |
| 3    | yellow           |
| 4    | green            |
| 5    | blue             |
| 6    | purple           |
| 7    | none             |
| 8    | warning          |
| 9    | exclamation mark |

- <a id=happytalk_archive-db_chat-dict-out_api></a> out_api (채널)

| Type | Description |
|------|-------------|
| 0    | 해피톡         |
| 1    | 네이버 톡톡      |
| 2    | 카카오톡        |
| 7    | 인스타그램       |

- <a id=happytalk_archive-db_chat-dict-payload_type></a> payload_type (인사말 종류)

| Type  | Description  |
|-------|--------------|
| text  | 일반 텍스트 인사말   |
| image | 이미지를 포함한 인사말 |

- <a id=happytalk_archive-db_chat-dict-usergb></a> usergb (상담 신청 진입점)

| Type | Description |
|------|-------------|
| I    | 아이폰         |
| S    | 스마트 택배      |
| A    | 안드로이드       |
| W    | 브라우저        |

## Example
```json
{
  "id": "W8IdV3MSwzdNJ0KbE624276fd8e67b",
  "status": "2",
  "archive_status": "0",
  "end_status": "1",
  "title": "1:1 213\ucc44\ud305 \uc0c1\ub2f4 \ubb38\uc758 \ub4dc\ub9bd\ub2c8\ub2e4.",
  "ing_status": "1",
  "site_id": "3000000137",
  "manager_id": "36006",
  "counselor_id_1st": "36007",
  "counselor_id": "robot1559285457",
  "customer_id": "3000000137_bz_N3vhED_4Y",
  "category_id": "73278",
  "division_id": "73280",
  "etc_assign": "",
  "last_message_description": "\uace0\uac1d\ub2d8\uc774 \uc885\ub8cc\ud558\uc600\uc2b5\ub2c8\ub2e4.",
  "last_message_date": "2022-03-29 12:05:09",
  "reg_date": "2022-03-29 12:03:25",
  "complate_date": "2022-03-29 12:05:09",
  "delete_date": "0000-00-00 00:00:00",
  "switch_counselor_date": null,
  "flag": "7",
  "postback_only": "0",
  "out_api": "2",
  "today_init_counsel_time": "04:00:00",
  "today_lastst_counsel_date": null,
  "scenario_info": null,
  "company_type": "T",
  "company_code": "137",
  "parcel_number": "",
  "order_number": "",
  "parcel_company_code": "W",
  "parcel_company_type": "W",
  "product_number": "",
  "payload": "1:1 213\ucc44\ud305 \uc0c1\ub2f4 \ubb38\uc758 \ub4dc\ub9bd\ub2c8\ub2e4.",
  "payload_type": "text",
  "userid": "0",
  "usergb": "A",
  "quota_date": "2022-03-29 12:03:25",
  "user_parameter": "",
  "push_company_id": "0",
  "push_user_id": "0",
  "app_hash": "",
  "app_ver": "",
  "phone_os": "",
  "phone_model": "",
  "phone_os_ver": "",
  "phone_telecomm": "",
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
  "vote_score": "",
  "vote_comment": "",
  "users_id": "2174034",
  "tag_nms": "",
  "counselor_nickname": "\ub85c\ubd07-3000000137",
  "cus_extra_username": "cnkakao",    // 개인정보 사용하는 사이트만 해당함
  "cus_extra_phone": "01012341234",    // 개인정보 사용하는 사이트만 해당함
  "cus_extra_tel_phone": "0212345678",    // 개인정보 사용하는 사이트만 해당함
  "cus_extra_email": "cn@happytalk.io",    // 개인정보 사용하는 사이트만 해당함
  "shr_uuid": "@otg5mdg2mg1iav9"
}
```