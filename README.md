# terraform-test

## Getting Started

## Memo

初期化
`terraform init`

変更適用
`terraform apply`
`terraform apply -auto-approve`
カレントディレクトリ内の.tf ファイルを読み込む
サブディレクトリは読み込まない

削除
`terraform destroy`

実行計画の確認
`terraform plan`

組み込み関数実行環境
`terraform console`

ファイル整形
`terraform fmt`

リソース一覧
`terraform state list`

リソース詳細
`terraform state show <ADDRESS>`

`terraform state mv`

`terraform import <ADDRESS>`

リソース削除
`terraform state rm <ADDRESS>`

`terraform refresh`

tfstate ファイル
instance の状態を記録
差分のみを適用可能

## terraform の構文

### HCL2

Docs
https://www.terraform.io/docs/language/index.html

- コメント書ける
- ヒアドキュメントかける
- ブロックタイプ
  - locals
    外部から変更できない
  - variables
    外部から変更可能
  - terraform
  - provider
  - data
  - resource
  - output
- リソース参照は.(ドット)でつなぐ
- 関数ドキュメント
  https://www.terraform.io/docs/language/functions/index.html
-

### CLI

Docs
https://www.terraform.io/docs/cli/index.html

### Provider

Docs
https://www.terraform.io/docs/language/providers/index.html

#### AWS

https://registry.terraform.io/providers/hashicorp/aws/latest

Example Usage
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
