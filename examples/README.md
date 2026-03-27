# Kubernetes 핸드북 예제

## 실행 방법

```bash
# kind로 클러스터 생성 (Docker 필요)
cd ../docker
docker compose up -d

# 또는 로컬 클러스터가 있으면 바로 사용
kubectl apply -f 01-pod/basic-pod.yaml
kubectl apply -f 02-deployment/rolling-update.yaml
```

## 예제 목록

| 디렉토리 | 주제 |
|----------|------|
| 01-pod | 기본 Pod, Probe 설정 |
| 02-deployment | 롤링 업데이트 |
| 03-service | ClusterIP, NodePort |
| 04-configmap-secret | ConfigMap, Secret, 환경변수 주입 |
| 05-storage | PV/PVC, StorageClass |
| 06-hpa | HPA 오토스케일링 |
| 07-rbac | Role, RoleBinding |
| 08-network-policy | 네트워크 정책 |
| 09-helm | Helm 차트 예제 |
