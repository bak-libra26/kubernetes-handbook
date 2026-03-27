# Kubernetes Handbook

> Pod부터 Service Mesh까지 — 공식 문서가 알려주지 않는 Why와 Pitfall을 다룹니다.

[![Blog](https://img.shields.io/badge/blog-bak--libra26.co.kr-green)](https://bak-libra26.co.kr)

## 시작하기

```bash
# kind로 로컬 Kubernetes 클러스터 생성
# (사전 요구: Docker, kind CLI 설치)
kind create cluster --name k8s-study

# 클러스터 확인
kubectl cluster-info
kubectl get nodes
```

## 목차

### 기초 — Pod과 워크로드

| # | 주제 | 블로그 |
|---|------|--------|
| 01 | Pod 심화 — 컨테이너의 최소 실행 단위가 노드에서 동작하는 방식 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/쿠버네티스/Pod%20심화%20—%20컨테이너의%20최소%20실행%20단위가%20노드에서%20동작하는%20방식) |
| 02 | Deployment 심화 — 롤링 업데이트와 롤백이 내부에서 동작하는 원리 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/쿠버네티스/Deployment%20심화%20—%20롤링%20업데이트와%20롤백이%20내부에서%20동작하는%20원리) |
| 03 | StatefulSet과 DaemonSet — Deployment만으로 안 되는 워크로드 유형 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/쿠버네티스/StatefulSet과%20DaemonSet%20—%20Deployment만으로%20안%20되는%20워크로드%20유형) |
| 04 | 리소스 관리 — requests와 limits가 실제로 하는 일 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/쿠버네티스/리소스%20관리%20—%20requests와%20limits가%20실제로%20하는%20일) |
| 05 | 스케줄러 — Pod이 어떤 노드에 배치되는지 결정하는 과정 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/쿠버네티스/스케줄러%20—%20Pod이%20어떤%20노드에%20배치되는지%20결정하는%20과정) |

### 네트워크

| # | 주제 | 블로그 |
|---|------|--------|
| 06 | Kubernetes 네트워크 모델 — Pod끼리 어떻게 통신하는가 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/쿠버네티스/Kubernetes%20네트워크%20모델%20—%20Pod끼리%20어떻게%20통신하는가) |
| 07 | Service 심화 — ClusterIP, NodePort, LoadBalancer가 트래픽을 라우팅하는 방식 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/쿠버네티스/Service%20심화%20—%20ClusterIP,%20NodePort,%20LoadBalancer가%20트래픽을%20라우팅하는%20방식) |
| 08 | DNS와 서비스 디스커버리 — Pod이 이름으로 서로를 찾는 원리 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/쿠버네티스/DNS와%20서비스%20디스커버리%20—%20Pod이%20이름으로%20서로를%20찾는%20원리) |
| 09 | Ingress 심화 — 외부 트래픽을 클러스터 내부로 라우팅하는 방법 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/쿠버네티스/Ingress%20심화%20—%20외부%20트래픽을%20클러스터%20내부로%20라우팅하는%20방법) |
| 10 | Network Policy — Pod 간 트래픽을 제어하는 방화벽 규칙 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/쿠버네티스/Network%20Policy%20—%20Pod%20간%20트래픽을%20제어하는%20방화벽%20규칙) |

### 스토리지

| # | 주제 | 블로그 |
|---|------|--------|
| 11 | PV와 PVC — Kubernetes에서 데이터를 영속적으로 저장하는 방법 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/쿠버네티스/PV와%20PVC%20—%20Kubernetes에서%20데이터를%20영속적으로%20저장하는%20방법) |
| 12 | StorageClass — 동적 프로비저닝으로 볼륨을 자동 생성하는 원리 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/쿠버네티스/StorageClass%20—%20동적%20프로비저닝으로%20볼륨을%20자동%20생성하는%20원리) |
| 13 | ephemeral 볼륨과 데이터 관리 패턴 — emptyDir부터 projected 볼륨까지 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/쿠버네티스/ephemeral%20볼륨과%20데이터%20관리%20패턴%20—%20emptyDir부터%20projected%20볼륨까지) |

### 설정과 보안

| # | 주제 | 블로그 |
|---|------|--------|
| 14 | ConfigMap과 Secret — 설정과 민감 정보를 코드와 분리하는 전략 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/쿠버네티스/ConfigMap과%20Secret%20—%20설정과%20민감%20정보를%20코드와%20분리하는%20전략) |
| 15 | 시크릿 관리 심화 — etcd 암호화부터 External Secrets Operator까지 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/쿠버네티스/시크릿%20관리%20심화%20—%20etcd%20암호화부터%20External%20Secrets%20Operator까지) |
| 16 | RBAC — 누가 어떤 리소스에 접근할 수 있는지 제어하는 방법 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/쿠버네티스/RBAC%20—%20누가%20어떤%20리소스에%20접근할%20수%20있는지%20제어하는%20방법) |
| 17 | Pod Security — 컨테이너 실행 권한을 제한하는 방법 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/쿠버네티스/Pod%20Security%20—%20컨테이너%20실행%20권한을%20제한하는%20방법) |
| 18 | Taints와 Tolerations — 특정 노드에 Pod을 제한하거나 허용하는 방법 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/쿠버네티스/Taints와%20Tolerations%20—%20특정%20노드에%20Pod을%20제한하거나%20허용하는%20방법) |

### 배포와 스케일링

| # | 주제 | 블로그 |
|---|------|--------|
| 19 | 배포 전략 — 롤링 업데이트, 카나리, Blue-Green을 Kubernetes에서 구현하기 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/쿠버네티스/배포%20전략%20—%20롤링%20업데이트,%20카나리,%20Blue-Green을%20Kubernetes에서%20구현하기) |
| 20 | HPA와 VPA — 트래픽에 따라 Pod을 자동으로 늘리고 줄이는 전략 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/쿠버네티스/HPA와%20VPA%20—%20트래픽에%20따라%20Pod을%20자동으로%20늘리고%20줄이는%20전략) |
| 21 | Helm 심화 — Chart 구조, 템플릿 문법, 릴리즈 관리까지 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/쿠버네티스/Helm%20심화%20—%20Chart%20구조,%20템플릿%20문법,%20릴리즈%20관리까지) |

### 운영과 모니터링

| # | 주제 | 블로그 |
|---|------|--------|
| 22 | Kubernetes 모니터링 — Prometheus와 Grafana로 클러스터 상태를 파악하는 방법 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/쿠버네티스/Kubernetes%20모니터링%20—%20Prometheus와%20Grafana로%20클러스터%20상태를%20파악하는%20방법) |
| 23 | Kubernetes 로깅 — 애플리케이션 로그를 수집하고 조회하는 전략 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/쿠버네티스/Kubernetes%20로깅%20—%20애플리케이션%20로그를%20수집하고%20조회하는%20전략) |
| 24 | Kubernetes 트러블슈팅 — CrashLoopBackOff부터 Pending까지, 에러별 대응법 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/쿠버네티스/Kubernetes%20트러블슈팅%20—%20CrashLoopBackOff부터%20Pending까지,%20에러별%20대응법) |
| 25 | Service Mesh 개요 — Istio, Linkerd로 서비스 간 통신을 관리하는 이유 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/쿠버네티스/Service%20Mesh%20개요%20—%20Istio,%20Linkerd로%20서비스%20간%20통신을%20관리하는%20이유) |

## Docker 환경

```bash
# kind 클러스터 생성
kind create cluster --name k8s-study

# 클러스터 삭제
kind delete cluster --name k8s-study
```

- **Kubernetes API**: localhost:6443
- **NodePort 범위**: 30000-30100

## 이 핸드북의 차별점

1. **Why** — 공식 문서가 "이렇게 쓰세요"라면, 여기서는 "왜 이렇게 동작하는지" 설명합니다
2. **Pitfall** — 실무에서 터지는 함정을 모든 글에 포함합니다
3. **한국어** — 한국어로 가장 체계적인 Kubernetes 시리즈를 목표로 합니다

## 저자

**sim.junghun** — Backend Engineer
- Blog: [bak-libra26.co.kr](https://bak-libra26.co.kr)
- GitHub: [@bak-libra26](https://github.com/bak-libra26)
