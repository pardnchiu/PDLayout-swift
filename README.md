# PDLayout

簡化設定AutoLayout 步驟

不只設定更加便利，更讓您的代碼容易閱讀

***

```
X -> CenterXAnchor
Y -> CenterYAnchor
T -> TopAnchor
L -> LeftAnchor
B -> BottomAnchor
R -> RightAnchor
W -> WidthAnchor
H -> HeightAnchor

eq -> Equal
ge -> GreaterThanOrEqual
le -> LessThanOrEqual
```

***

```
// 簡化前
let label = UILabel();
label.text = "測試文字";
view.addSubview(label);

label.translatesAutoresizingMaskIntoConstraints = false;
label.topAnchor.constraint(equalTo: view.topAnchor).isActive = true;
label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true;
label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true;
label.heightAnchor.constraint(equalToConstant: 50).isActive = true;
```

***

```
// 簡化後
let label = UILabel();
label.text = "測試文字";
view.addSubview(label);

label
    .Teq(T: view)
    .Leq(L: view, 20)
    .Req(R: view, -20)
    .Heq(50)
    .end();
```
