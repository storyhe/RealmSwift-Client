# RealmSwift-Client

Realm 을 써보자 의견 나와서 테스트용으로 만듬.
왠지 모르겟지만 Realm 불러와서 pool 만들어놓고 쓸려니까 안되길래 구조 변경

1. 쓰기
```swift
if RealmClient.write(money) == true {
    print("write success")
} else {
  print("write fail")
}
```


2. 읽기
```swift
if let objects = RealmClient.find(Money.self) {
    for object in objects {
        print(object)
    }
}
```

do try catch 떡칠은 RealmClient 에 해놔서 밖에서는 그냥 쓰면된다.
