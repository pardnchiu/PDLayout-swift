### PDLayout.swift

簡化設定 AutoLayout 步驟
透過預先整理好的項目，更能簡易設定 AutoLayout

***

#### 簡化前

```
let label = UILabel();
label.text = "測試文字";
label.translatesAutoresizingMaskIntoConstraints = false;
label.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true;
label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true;
label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true;
label.heightAnchor.constraint(equalToConstant: 50).isActive = true;
```

***

####簡化後

```
let label = UILabel();
label.text = "測試文字";
label.PDLayout([
    Teq(T: view.topAnchor, 20),
    Leq(L: view.leftAnchor, 20),
    Req(T: view.rightAnchor, -20),
    Heq(50)
])
```
