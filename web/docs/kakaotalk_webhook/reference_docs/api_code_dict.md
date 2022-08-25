### <a id="happytalk-webhook-code-dict"></a>해피톡 상담톡 웹훅 코드 정의
| code | message                                                                                                                                                      | description                                                                                                                     |
|------|--------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------|
| 0    |                                                                                                                                                              | [정상코드](#happytalk-webhook-code-example-code_0)                                                                                  |
| -400 | ForbiddenException                                                                                                                                           | [권한 없음](#happytalk-webhook-code-example-code_-400)                                                                              |
| -500 | UnauthorizedException                                                                                                                                        | [인증 실패](#happytalk-webhook-code-example-code_-500)                                                                              |
| -501 | InvalidSenderException(InvalidSenderIdException, InvalidSenderConsultStatusException)                                                                        | [발신 프로필 키가 유효하지 않거나 상담을 진행할 수 없음](#happytalk-webhook-code-example-code_-501)<br>(플러스친구가 activated 상태가 아닌 경우 상담톡 이용 중 상태가 아닌 경우) |
| -502 | InvalidSessionException                                                                                                                                      | [세션이 만료되었거나 존재하지 않음](#happytalk-webhook-code-example-code_-502)                                                                 |
| -503 | InvalidUserKeyException                                                                                                                                      | [잘못된 형식의 유저키 요청](#happytalk-webhook-code-example-code_-503)                                                                     |
| -504 | DuplicateSerialNumberException                                                                                                                               | [메시지 일련번호가 중복됨](#happytalk-webhook-code-example-code_-504)<br>(메시지 일련번호는 CS처리를 위해 고유한 값이 부여되어야 함.)                              |
| -505 | InvalidImageException(InvalidImageFormatException,InvalidImageMaxLengthException)                                                                            | [잘못된 이미지 전송 요청](#happytalk-webhook-code-example-code_-505)                                                                      |
| -506 | MessageLengthOverLimitException                                                                                                                              | [메시지 길이 제한 오류 1000자 초과](#happytalk-webhook-code-example-code_-506)                                                              |
| -507 | InvalidHubPartnerException                                                                                                                                   | [허브 파트너 키가 유효하지 않음](#happytalk-webhook-code-example-code_-507)                                                                  |
| -508 | InvalidProfileChatStatusException                                                                                                                            | [채팅 기능이 비활성 상태인 경우](#happytalk-webhook-code-example-code_0-508)                                                                 |
| -509 | InvalidJsonException(NoJsonBodyException, JsonParseException, NoValueJsonElementException)                                                                   | [잘못된 파라메터 요청](#happytalk-webhook-code-example-code_-509)                                                                        |
| -510 | InvalidMessageException(NoImageException, NoTextException, FailedToReadButtonLinkException, NoMatchedButtonUrlException, NoMandatoryButtonPropertyException) | [잘못된 형식의 메시지 타입 요청](#happytalk-webhook-code-example-code_-510)                                                                  |
| -511 | BlockedUserMessageException                                                                                                                                  | [차단된 사용자에게 메시지 전송 요청](#happytalk-webhook-code-example-code_-511)                                                                |
| -512 | ContractNotFoundException                                                                                                                                    | [유효한 상담톡 계약이 존재하지 않음](#happytalk-webhook-code-example-code_-512)                                                                |
| -600 | FailedToSendMessageException                                                                                                                                 | [메시지 전송 실패](#happytalk-webhook-code-example-code_-600)                                                                          |
| -601 | InternalSystemErrorException                                                                                                                                 | [내부 시스템 에러](#happytalk-webhook-code-example-code_-601)                                                                          |

### <a id="kakaotalk-bizcenter-code-dict"></a>카카오톡 비즈센터 코드 정의
| code      | description                 |
|-----------|-----------------------------|
| 200       | 요청 성공                       |
| 403       | 	권한 없음                      |
| 405       | 	파라미터 오류                    |
| 507       | 	유효하지 않은 발신 프로필             |
| 508       | 	요청한 데이터가 없음                |
| 509       | 요청을 처리할수 있는 상태가 아님          |
| 510       | 유효하지 않은 버튼 형식               |
| 514       | 비즈니스 인증이 필요한 카카오톡 채널        |
| 515       | 	상담톡 프로필이 존재하지 않음           |
| 516       | 	상담톡 계약이 없음                 |
| 517       | 	프로필 정보를 찾을 수 없음            |
| 520       | 	유효하지 않은 시스템 메시지 내용         |
| 810 ~ 805 | 	발신프로필 등록이 차단된 상태           |
| 811       | 	발신프로필 등록이 차단된 허브파트너        |
| 4060      | 다른 파트너에 의해 이미 상담톡을 이용중인 프로필 |


### <a id="happytalk-webhook-code-example"></a>해피톡 상담톡 웹훅 코드 정의 출력 예시
- <a id="happytalk-webhook-code-example-code_0"></a>정상코드
```json
{
    "code" : 0
}
```
- <a id="happytalk-webhook-code-example-code_-400"></a>권한 없음
```json
{
    "code" : -400,
    "message" : "ForbiddenException"
}
```
- <a id="happytalk-webhook-code-example-code_-500"></a>인증 실패
```json
{
    "code" : -500,
    "message" : "ForbiddenException"
}
```
- <a id="happytalk-webhook-code-example-code_-501"></a>발신 프로필 키가 유효하지 않거나 상담을 진행할 수 없음
```json
{
    "code" : -501,
    "message" : "ForbiddenException"
}
```
- <a id="happytalk-webhook-code-example-code_-502"></a>세션이 만료되었거나 존재하지 않음
```json
{
    "code" : -502,
    "message" : "InvalidSessionException"
}
```
- <a id="happytalk-webhook-code-example-code_-503"></a>잘못된 형식의 유저키 요청
```json
{
    "code" : -503,
    "message" : "InvalidUserKeyException"
}
```
- <a id="happytalk-webhook-code-example-code_-504"></a>메시지 일련번호가 중복됨
```json
{
    "code" : -504,
    "message" : "DuplicateSerialNumberException"
}
```
- <a id="happytalk-webhook-code-example-code_-505"></a>잘못된 이미지 전송 요청
```json
{
    "code" : -505,
    "message" : "InvalidImageException(InvalidImageFormatException,InvalidImageMaxLengthException)"
}
```
- <a id="happytalk-webhook-code-example-code_-506"></a>메시지 길이 제한 오류 1000자 초과
```json
{
    "code" : -506,
    "message" : "MessageLengthOverLimitException"
}
```
- <a id="happytalk-webhook-code-example-code_-507"></a>허브 파트너 키가 유효하지 않음
```json
{
    "code" : -507,
    "message" : "InvalidHubPartnerException"
}
```
ㅍ
- <a id="happytalk-webhook-code-example-code_-508"></a>채팅 기능이 비활성 상태인 경우
```json
{
    "code" : -508,
    "message" : "InvalidProfileChatStatusException"
}
```
- <a id="happytalk-webhook-code-example-code_-509"></a>잘못된 파라메터 요청
```json
{
    "code" : -509,
    "message" : "InvalidJsonException(NoJsonBodyException, JsonParseException, NoValueJsonElementException)"
}
```
- <a id="happytalk-webhook-code-example-code_-510"></a>잘못된 형식의 메시지 타입 요청
```json
{
    "code" : -510,
    "message" : "InvalidMessageException(NoImageException, NoTextException, FailedToReadButtonLinkException, NoMatchedButtonUrlException, NoMandatoryButtonPropertyException)"
}
```
- <a id="happytalk-webhook-code-example-code_-511"></a>차단된 사용자에게 메시지 전송 요청
```json
{
    "code" : -511,
    "message" : "BlockedUserMessageException"
}
```
- <a id="happytalk-webhook-code-example-code_-512"></a>유효한 상담톡 계약이 존재하지 않음
```json
{
    "code" : -512,
    "message" : "ContractNotFoundException"
}
```
- <a id="happytalk-webhook-code-example-code_-600"></a>메시지 전송 실패
```json
{
    "code" : -600,
    "message" : "FailedToSendMessageException"
}
```
- <a id="happytalk-webhook-code-example-code_-601"></a>내부 시스템 에러
```json
{
    "code" : -601,
    "message" : "InternalSystemErrorException"
}
```
