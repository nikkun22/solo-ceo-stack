\# Solo CEO Stack（日本語版）



> AI従業員数十名の仮想組織をClaude Codeで運営するための、

> ソロ起業家向け無料スターターパック。



\## これは何？



Solo CEO Stackは、CLAUDE.mdテンプレートとAI従業員プロンプトのコレクションです。

1人の人間が数十名のAI従業員からなる仮想組織を運営できるよう設計されています。



このリポジトリは\*\*無料スターター版\*\*で、コアCxO 3名のみを含みます。

69名フル組織は有料パックで提供しています。



\## なぜこれが必要か



既存の「AIアシスタント」テンプレートのほとんどは「人間1名＋AI 1名」を前提としています。

Solo CEO Stackは「人間1名＋AI多数の組織」を前提とします。



これにより：

\- \*\*明確な委任\*\*：各AIに定義された役割

\- \*\*構成可能性\*\*：CLAUDE.md編集で「採用」「解雇」

\- \*\*スケーラビリティ\*\*：人を増やさず組織を成長



\## 無料版に含まれるもの



\- `prompts/cxo/CEO.md` - 最高経営責任者

\- `prompts/cxo/CTO.md` - 最高技術責任者

\- `prompts/cxo/CFO.md` - 最高財務責任者

\- `templates/claude\_md/CLAUDE.md` - 最小構成のCLAUDE.md

\- `templates/claude\_md/CLAUDE.local.md.template` - 機密情報テンプレート



\## 有料版の内容



| Tier | 価格 | 内容 |

|---|---|---|

| 無料（このリポジトリ） | 0円 | コアCxO 3名、最小CLAUDE.md |

| 基本パック | 5,000円 | CxO 16名フル＋組織図＋DRIマッピング |

| 完全パック | 30,000円 | 69名フル＋6事業ライン運用ガイド＋Discord 30日サポート |

| エンタープライズ | 100,000円〜 | カスタム設計＋3ヶ月サポート |



→ BOOTHで有料版を入手（リンクは近日公開）



\## 含まれないもの



Solo CEO StackはAI従業員設計に特化しています。以下は意図的に除外しています：



\- 配信プラットフォーム統合

\- ライブ配信AIニュースシステム

\- プラットフォーム別監視スクリプト

\- TTSパイプライン

\- 独自用途向けMCP統合



\## クイックスタート



```bash

git clone https://github.com/nikkun22/solo-ceo-stack.git

cp solo-ceo-stack/templates/claude\_md/CLAUDE.md ./CLAUDE.md

cp solo-ceo-stack/prompts/cxo/CEO.md ./.claude/

```



Claude Codeで開いて開始。



\## ライセンス



MIT - 自由に利用可能。クレジット表記は任意です。

