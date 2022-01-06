# Exact-method

종속변수가 카테고리형일 때, 표본수가 적으면 회귀계수의 표본오차가 폭발하는 것을 야기시키는 separation과 같은 현상이 발생할 수 있다.
이에 대한 대비책으로 소표본 검정법을 사용한다. 우리가 익히 알고 있는 소표본 검정은 피셔의 차 검정으로 알려져 있는 피셔 정확 검정 (Fisher Exact Test)이다.
본 프로젝트는 피셔 정확 검정의 일반화된 버전과 통계학자 David Firth가 제안한 Firth bias reduction 방법을 비교실험한다.

실험결과, Firth의 방법에서 profile likelihood를 적용하였을 때, 추정치의 안정성이 가장 좋음을 확인하였다.

