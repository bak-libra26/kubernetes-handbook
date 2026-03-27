#!/bin/bash
# HPA 동작 확인용 부하 생성 스크립트
# 사용법: ./load-test.sh
# 중지: Ctrl+C

# 서비스 노출 (별도 터미널에서 실행)
# kubectl expose deployment hpa-target --port=80 --type=ClusterIP

echo "부하 테스트 시작 (Ctrl+C로 중지)"
echo "별도 터미널에서 kubectl get hpa -w 로 스케일링 확인"

kubectl run load-generator \
  --image=busybox:1.36 \
  --restart=Never \
  --rm -it -- \
  sh -c "while true; do wget -q -O- http://hpa-target; done"

# 주의: 부하 중지 후 스케일 다운까지 약 5분 소요 (기본 쿨다운)
