# やること

Rubyの勉強がてら、リクルートコミュニケーションズのコーディング試験を試しにやってみる

# 問題

```
「相手の思考を推理する」過程をプログラムで表現してください。
```

## 詳細

```
A,B,Cの3人が1～5の5枚のカードを使ってインディアンポーカーをします。
3人は、ランダムに1枚のカードを引いて額にかざします。相手のカードは見えますが、自分のカードは見えません。
この状態で、A->B->Cの順番に、自分が1番大きい（MAX）、自分は2番目に大きい（MID）自分が1番小さい（MIN）、わからない （?）、を答えます。
1人でも答えがわかった場合、そこで終了となります。「わからない」と答えた場合、回答権が次の人に移ります。 Cもわからない場合、再度Aに回答権が移ります。3人ともウソを言ったり、適当に答えてはいけません。
例1）「A=1 B=4 C=5」だった場合、「A => MIN」で終了します。
例2）「A=1 B=2 C=4」だった場合、「A => ?, B => MID」で終了します。
Bは「Aがわからないなら、自分は5ではない」と考えるからです。
以上を踏まえて、
引数で「A=1 B=4 C=5」で実行すると「A =>MIN」を出力
引数で「A=1 B=2 C=4」で実行すると「A =>?, B =>MID」
を出力するようなコマンドラインのプログラムを作成してください。
なお、人数やカードの枚数がパラメーター化されていて、さまざまなケースがシミュレーションできるコードが望ましいです。
```