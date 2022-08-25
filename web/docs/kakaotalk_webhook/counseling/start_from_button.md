## Endpoint
[GET] https://bizmessage.kakao.com/v1/chat/write
[POST] https://bizmessage.kakao.com/v1/chat/write

## Description
본 API는 고객사 홈페이지 내에서 버튼을 통하여 새창|새탭이 열려서 상담이 시작되는 API입니다.

## 주의사항
- PC/Mobile 페이지에서 버튼을 통해 상담을 요청 할 수 있다.
  - PC에서 상담버튼을 통해 메타정보 전달 시 요청 페이지는 새창 또는 팝업 형태로 요청하여야 한다.
  - 팝업의 최소 권장 사이즈는 W:1024 / H:800 이다.
  - 봇과 상담톡을 동시에 이용하는 프로필일 경우, 봇 파라미터(bot, event)를 추가하면, 버튼을 통해 봇으로 상담을 시작할 수 있다.
- 상담톡 버튼 클릭시 파트너사 페이지를 거쳐 상담이 시작되는 경우
  - 파트너사 페이지를 중간에 거쳐 카카오 로그인 페이지로 이동하는 경우에는 아래 코드를 파너사 페이지 내에 포함시켜 권장사이즈로 팝업창이 노출되게 한다.
  ```html
  <script src=“https://bizmessage.kakao.com/chat/includeScript"></script>
  ```

## Parameter
| Field Name | Type (Length) | Required | Description                                                                             | Default |
|------------|---------------|----------|-----------------------------------------------------------------------------------------|---------|
| uuid       | String        | Y        | 카카오톡 채널 UUID (@로 시작되는 아이디)                                                              |         |
| extra      | String (1000) | N        | 상담시 전달하고 싶은 [메타 정보](#kakao_counseloing_webhook-counseling-start_from_button-dict-extra) |         |
| bot        | String        | N        | [봇 상담 여부](#kakao_counseloing_webhook-counseling-start_from_button-dict-bot) (대문자 인식 불가) | false   |
| event      | String        | N        | 봇으로 상담 시작시 같이 실행될 봇 말블럭 이벤트 명칭                                                          |         |

#### Parameter Data Dictionary
- <a id="kakao_counseloing_webhook-counseling-start_from_button-dict-extra"></a> extra (메타 정보)
```text
- extra값이 1,000자가 초과할 경우 1,000자까지 자르며 특별한 에러 메시지를 리턴하지 않습니다. (레퍼런스 텍스트가 길어도 상담이 시작될 수 있게하기 위하여)
- extra 에는 개인정보를 포함하지 않아야 합니다. 불가피하게 개인정보가 포함되어야 할 경우, 암호화를 적용해야 합니다.
```

- <a id="kakao_counseloing_webhook-counseling-start_from_button-dict-bot"></a> bot (봇 상담 여부)

| VALUE | Description                    |
|-------|--------------------------------|
| true  | 봇으로 시작                         |
| false | 상담톡으로 시작                       |
| auto  | 봇으로 시작하되, 상담 세션이 있을 경우 상담모드 유지 |

