# Solo CEO Stack（日本語版）

> AIエージェントからなる仮想組織をClaude Codeで運営するための、
> ソロ起業家向けスターターパック。

**バージョン: v0.2.0** — ベーシックパック

## これは何？

Solo CEO StackはCLAUDE.mdテンプレートとAIエージェントプロンプトのコレクションです。
1人の人間が多数のAIエージェントからなる仮想組織を運営できるよう設計されています。

このリポジトリは**無料スターター版**で、コアCxO 3名のみを含みます。
ベーシックパック（v0.2.0）では16名のCxOフルセットと運用テンプレートを追加します。
69名フル組織は有料パックで提供しています。

## なぜこれが必要か

既存の「AIアシスタント」テンプレートのほとんどは「人間1名＋AI 1名」を前提としています。
Solo CEO Stackは「人間1名＋AIエージェント多数の組織」を前提とします。

これにより：
- **明確な委任**：各AIエージェントに定義された役割と権限の境界
- **構成可能性**：CLAUDE.md編集で「採用」「解雇」が可能
- **スケーラビリティ**：人を増やさず組織を成長させる

## 含まれるもの

### 無料版（このリポジトリ）

- `prompts/cxo/CEO.md` - 最高経営責任者
- `prompts/cxo/CTO.md` - 最高技術責任者
- `prompts/cxo/CFO.md` - 最高財務責任者
- `templates/claude_md/CLAUDE.md` - 最小構成のCLAUDE.md
- `templates/claude_md/CLAUDE.local.md.template` - 機密情報テンプレート

### ベーシックパック — v0.2.0（今回リリース）

**CxOプロンプト（16名分）**

| ファイル | 役職 |
|---------|------|
| `prompts/cxo/CEO.md` | 最高経営責任者 |
| `prompts/cxo/COO.md` | 最高執行責任者 |
| `prompts/cxo/CTO.md` | 最高技術責任者 |
| `prompts/cxo/CFO.md` | 最高財務責任者 |
| `prompts/cxo/CMO.md` | 最高マーケティング責任者 |
| `prompts/cxo/CSO.md` | 最高営業責任者 |
| `prompts/cxo/CPO.md` | 最高プロダクト責任者 |
| `prompts/cxo/CCO.md` | 最高コンテンツ責任者 |
| `prompts/cxo/CHRO.md` | 最高人事責任者 |
| `prompts/cxo/CLO.md` | 最高法務責任者 |
| `prompts/cxo/CIO.md` | 最高情報責任者 |
| `prompts/cxo/CISO.md` | 最高情報セキュリティ責任者 |
| `prompts/cxo/CDO.md` | 最高データ責任者 |
| `prompts/cxo/CBO.md` | 最高事業責任者 |
| `prompts/cxo/CAO.md` | 最高管理責任者 |
| `prompts/cxo/CRO.md` | 最高リスク管理責任者 |

**テンプレート**

| ファイル | 用途 |
|---------|------|
| `templates/claude_md/CLAUDE.md` | 最小構成のCLAUDE.md |
| `templates/claude_md/CLAUDE.local.md.template` | 機密情報テンプレート |
| `templates/dri_mapping.md` | 6事業ライン×担当CxO マッピング |
| `templates/operations_manual.md` | 日次・週次・月次運用マニュアル |

**ドキュメント**

| ファイル | 用途 |
|---------|------|
| `docs/org_chart.md` | 4階層組織図（Mermaid、英日両版） |
| `docs/booth_listing_draft.md` | BOOTH商品説明文下書き |
| `docs/x_announcement_drafts.md` | X告知文下書き |

## 有料版の内容

| Tier | 価格 | 内容 |
|------|------|------|
| 無料（このリポジトリ） | 0円 | コアCxO 3名、最小CLAUDE.md |
| ベーシックパック | 5,000円 | CxO 16名＋組織図＋DRIマッピング＋業務マニュアル |
| 完全パック | 30,000円 | 69名フル＋6事業ライン運用ガイド＋Discord 30日サポート |
| エンタープライズ | 100,000円〜 | カスタム設計＋3ヶ月サポート |

→ BOOTHで有料版を入手（リンクは近日公開）

## 使い方

### Step 1: クローンしてCLAUDE.mdをコピー

```bash
git clone https://github.com/nikkun22/solo-ceo-stack.git
cd your-project
cp solo-ceo-stack/templates/claude_md/CLAUDE.md ./CLAUDE.md
cp solo-ceo-stack/templates/claude_md/CLAUDE.local.md.template ./CLAUDE.local.md
```

### Step 2: 使用するCxOを選択

使いたいエージェントプロンプトをプロジェクトの `.claude/` フォルダにコピー、
またはCLAUDE.mdに直接埋め込みます。

```bash
# 例：CEO、COO、CFOを有効化
cp solo-ceo-stack/prompts/cxo/CEO.md ./.claude/CEO.md
cp solo-ceo-stack/prompts/cxo/COO.md ./.claude/COO.md
cp solo-ceo-stack/prompts/cxo/CFO.md ./.claude/CFO.md
```

### Step 3: DRIマッピングを設定

`templates/dri_mapping.md` を開き、`[Business Line N]` プレースホルダーを
自社の実際のプロダクトや収益ラインに置き換えてください。
各事業ラインに対してプライマリDRI（担当CxO）を割り当てます。

### Step 4: 運用サイクルを設定

`templates/operations_manual.md` を開き、以下をカスタマイズします：
- 使用するツールとコミュニケーションチャネル
- エスカレーション閾値（予算上限など）
- レビュースケジュール

### Step 5: Claude Codeを開いて開始

```bash
claude
```

Claude Codeが起動するとCLAUDE.mdを自動的に読み込みます。
プロンプトで直接CxOを呼び出せます：

```
@CEO: 今週のトップ3優先事項は何ですか？
@CFO: 今日のP&Lレポートを生成してください。
@COO: マーケティングキャンペーンの何がブロックされていますか？
```

## 含まれないもの

Solo CEO StackはAIエージェント設計に特化しています。
以下は意図的に除外しています：

- 配信プラットフォーム統合
- ライブ配信AIニュースシステム
- プラットフォーム別監視スクリプト
- TTSパイプライン
- 独自用途向けMCP統合

## ライセンス

MIT — 自由に利用可能。クレジット表記は任意です。

作者：[nikkun22](https://github.com/nikkun22)

---

🌐 [English version](../../README.md)
