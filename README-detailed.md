# 國立彰化師範大學論文 LaTeX / Overleaf 範本：詳細版

這是一份依照「國立彰化師範大學論文格式中文範本」Word 檔重建的 LaTeX 論文範本。目標是讓想用 LaTeX 或 Overleaf 寫論文的人，不必從零開始調封面、摘要、目錄、章節、圖表目錄與參考文獻。

如果你完全沒有用過 LaTeX，也可以先照著本 README 的順序操作。先讓範例編譯成功，再慢慢把內容換成自己的論文。

## 重要提醒

本範本不是學校或系所官方釋出的檔案，也不保證每個系所都會直接接受。正式送出前，請務必再確認：

- 系所或圖書館最新公告的論文格式規定
- 指導教授或系辦是否有額外要求
- 頁碼、字型、邊界、參考文獻格式是否符合你的系所規定
- 審定書、授權書、浮水印、電子檔上傳規則等行政文件是否已另外處理

這份範本會盡量貼近提供的 Word 範本，但 LaTeX 與 Word 的排版引擎不同，某些細節不會完全一模一樣。

## 範本包含什麼

- A4 紙張
- 上、下、左、右邊界皆為 2.54 公分
- 封面
- 中文摘要
- 英文摘要
- 誌謝
- 自動產生目錄
- 自動產生表目錄
- 自動產生圖目錄
- 章、節格式
- 「壹、」、「一、」、「(一)」三層內文標題命令
- 圖表依章編號，例如 `表 2-1`、`圖 2-1`
- 參考文獻範例
- 附錄範例
- 前置頁大寫羅馬頁碼，例如 `I`、`II`、`III`
- 正文阿拉伯數字頁碼，例如 `1`、`2`、`3`

## 範本不包含什麼

本範本不內建論文審定書。請同學們口試完畢之後，自行掃描加入pdf。

## 完全不會 LaTeX 怎麼辦

如果你完全不想研究 LaTeX 怎麼安裝、怎麼設定，又擔心 Overleaf 編譯時間限制或付費方案，可以考慮改用本機編譯，並請 Codex 之類的 AI coding agent 協助。

最簡單的做法是直接把整個專案資料夾交給 AI agent，請它幫你做這些事：

1. 安裝 LaTeX 環境，例如 TeX Live、MiKTeX 或 MacTeX。
2. 確認可以使用 XeLaTeX。
3. 執行 `latexmk -xelatex main.tex`。
4. 如果編譯失敗，讀取錯誤訊息並協助修正。
5. 重新編譯直到產生 PDF。

這種方式對完全不熟命令列或 LaTeX 的人最省事。你只要把錯誤訊息貼給 AI agent，或直接請它在專案資料夾裡操作即可。

## 最快開始方式：使用 Overleaf

Overleaf 是線上的 LaTeX 編輯器，不需要先在電腦安裝 LaTeX。第一次使用建議先用 Overleaf，因為最省事。

1. 將整個專案資料夾壓縮成 ZIP。
2. 到 Overleaf。
3. 選擇 **New Project**。
4. 選擇 **Upload Project**。
5. 上傳剛剛的 ZIP 檔。
6. 進入專案後，打開 **File → settings → compiler**。
7. 選擇 **XeLaTeX**。這個設定藏得有點深，但一定要改。
8. 回到編輯畫面，打開 `main.tex`。
9. 按下 **Recompile**。

如果一開始就能產生 PDF，代表環境基本正常。接下來再開始修改自己的資料。

## 第一次修改請照這個順序

建議不要一開始就大改全部檔案。比較穩的做法是一次改一小塊，改完就重新編譯。

1. 修改 `metadata.tex`。
2. 重新編譯，確認封面資料正確。
3. 修改 `frontmatter/abstract-zh.tex`。
4. 修改 `frontmatter/abstract-en.tex`。
5. 修改 `frontmatter/acknowledgements.tex`。
6. 修改 `chapters/chapter1.tex` 與 `chapters/chapter2.tex`。
7. 修改或新增章節檔案。
8. 修改 `references.bib`。
9. 修改 `backmatter/appendix.tex`。
10. 最後檢查目錄、表目錄、圖目錄與參考文獻。

每次改完如果 PDF 有怪怪的地方，先回想剛剛改了哪一個檔案，通常問題就在那裡。

## 專案檔案說明

```text
.
├── main.tex
├── metadata.tex
├── ncue-thesis.cls
├── references.bib
├── frontmatter/
│   ├── abstract-zh.tex
│   ├── abstract-en.tex
│   └── acknowledgements.tex
├── chapters/
│   ├── chapter1.tex
│   └── chapter2.tex
├── backmatter/
│   └── appendix.tex
└── figures/
```

各檔案用途如下：

| 檔案 | 用途 |
| --- | --- |
| `main.tex` | 論文主檔。控制整份論文的載入順序。 |
| `metadata.tex` | 論文基本資料，例如系所、題目、姓名、指導教授、日期、關鍵詞。 |
| `ncue-thesis.cls` | 論文格式設定。邊界、字型、章節樣式、封面、頁碼都在這裡。一般使用者不需要改。 |
| `references.bib` | 參考文獻資料庫。BibTeX / BibLaTeX 格式。 |
| `frontmatter/abstract-zh.tex` | 中文摘要。 |
| `frontmatter/abstract-en.tex` | 英文摘要。 |
| `frontmatter/acknowledgements.tex` | 誌謝。 |
| `chapters/chapter1.tex` | 第一章範例。 |
| `chapters/chapter2.tex` | 第二章範例，包含圖、表、引用範例。 |
| `backmatter/appendix.tex` | 附錄範例。 |
| `figures/` | 建議放圖片的資料夾。 |

## 修改基本資料

請先打開 `metadata.tex`，把範例資料改成自己的資料。

```tex
\thesisuniversity{國立彰化師範大學}
\thesisdepartment{資訊管理學系}
\thesisdegree{碩士論文}

\thesistitlezh{大型語言模型回答品質之評估研究}
\thesistitleen{An Evaluation Study of Large Language Model Response Quality}

\thesisstudent{王小明}
\thesisadvisor{陳大文}
\thesisadvisorcredential{博士}

\thesisyear{115}
\thesismonth{7}

\thesiskeywordszh{大型語言模型、單次推論、LLM 評審}
\thesiskeywordsen{large language models, single inference, LLM judge}
```

常用欄位說明：

| 命令 | 說明 |
| --- | --- |
| `\thesisuniversity{...}` | 學校名稱，通常不用改。 |
| `\thesisdepartment{...}` | 系所名稱。 |
| `\thesisdegree{...}` | 論文類型，例如 `碩士論文` 或 `博士論文`。 |
| `\thesistitlezh{...}` | 中文論文題目。 |
| `\thesistitleen{...}` | 英文論文題目。 |
| `\thesisstudent{...}` | 研究生姓名。 |
| `\thesisadvisor{...}` | 指導教授姓名。 |
| `\thesisadvisorcredential{...}` | 指導教授職稱或學位，例如 `博士`。 |
| `\thesisyear{...}` | 中華民國年。 |
| `\thesismonth{...}` | 月份。 |
| `\thesiskeywordszh{...}` | 中文關鍵詞。 |
| `\thesiskeywordsen{...}` | 英文關鍵詞。 |

如果題目太長，可以用 `\\` 手動換行：

```tex
\thesistitlezh{大型語言模型回答品質之評估研究\\以單次推論設定為例}
```

## 修改摘要與誌謝

中文摘要在：

```text
frontmatter/abstract-zh.tex
```

英文摘要在：

```text
frontmatter/abstract-en.tex
```

誌謝在：

```text
frontmatter/acknowledgements.tex
```

請只替換中間的文字，保留檔案裡的環境命令。例如中文摘要應維持：

```tex
\begin{chineseabstract}
這裡放你的中文摘要。

\zhkeywordsfrommetadata
\end{chineseabstract}
```

英文摘要應維持：

```tex
\begin{englishabstract}
This is your English abstract.

\enkeywordsfrommetadata
\end{englishabstract}
```

誌謝應維持：

```tex
\begin{acknowledgements}
這裡放你的誌謝。

\acknowledgementsignature
\end{acknowledgements}
```

## 修改正文

正文範例放在 `chapters/` 資料夾。

章使用：

```tex
\chapter{緒論}
```

節使用：

```tex
\section{研究背景}
```

如果需要 Word 範本裡常見的內文層級，可以使用：

```tex
\levelone{研究面向}
\leveltwo{資料來源}
\levelthree{問卷資料}
```

輸出會接近：

```text
壹、研究面向
  一、資料來源
    (一) 問卷資料
```

如果要新增第三章，可以在 `chapters/` 裡新增檔案，例如：

```text
chapters/chapter3.tex
```

內容可以先寫：

```tex
\chapter{研究方法}

這裡開始寫第三章內容。
```

然後回到 `main.tex`，在第二章後面加入：

```tex
\input{chapters/chapter3}
```

## 插入圖片

建議把圖片放進 `figures/` 資料夾，例如：

```text
figures/workflow.png
```

在正文中插入圖片：

```tex
\begin{figure}[H]
  \centering
  \includegraphics[width=0.8\textwidth]{figures/workflow.png}
  \caption{研究流程圖}
  \label{fig:workflow}
\end{figure}
```

在文字中引用這張圖：

```tex
如圖~\ref{fig:workflow} 所示，本研究流程分為三個階段。
```

注意事項：

- 圖片檔名盡量使用英文、數字、底線或連字號。
- 不建議在檔名使用空白或中文。
- 常見圖片格式包含 `png`、`jpg`、`pdf`。
- 圖片太大時，Overleaf 可能編譯比較慢。

## 插入表格

簡單表格可以參考：

```tex
\begin{table}[H]
  \caption{評分規準示例}
  \label{tab:rubric}
  \centering
  \begin{tabular}{ccc}
    \toprule
    題號 & LLM 評分 & 人工評分 \\
    \midrule
    Q01 & 4 & 4 \\
    Q02 & 3 & 4 \\
    Q03 & 5 & 5 \\
    \bottomrule
  \end{tabular}
\end{table}
```

在文字中引用表格：

```tex
評分結果整理如表~\ref{tab:rubric}。
```

本範本已設定表格標題在表格上方，圖片標題在圖片下方。

## 參考文獻

參考文獻放在 `references.bib`。範例：

```bibtex
@article{zheng2023judging,
  author  = {Zheng, Lianmin and Chiang, Wei-Lin and Sheng, Ying},
  title   = {Judging LLM-as-a-Judge with MT-Bench and Chatbot Arena},
  journal = {Advances in Neural Information Processing Systems},
  year    = {2023}
}
```

在正文引用：

```tex
LLM-as-a-judge 已被應用於多種模型評估情境~\autocite{zheng2023judging}。
```

如果參考文獻沒有出現，通常只需要重新編譯。Overleaf 通常會自動跑多次；本機編譯則可以使用：

```bash
latexmk -xelatex main.tex
```

目前 `main.tex` 使用 `biblatex`，設定為數字制並依引用順序排列：

```tex
\usepackage[
  backend=biber,
  style=numeric,
  sorting=none,
  giveninits=true,
  maxbibnames=99
]{biblatex}
```

> **請注意**
>
> 不同科系可能採用不同引用格式，例如 IEEE、APA 或其他格式；本範本僅提供數字制範例，請依系所與指導教授規定自行調整。

## 附錄

附錄放在：

```text
backmatter/appendix.tex
```

目前範例只會把「附錄」列入目錄。如果你想讓附錄內的小節也出現在目錄，可以手動加入：

```tex
\section*{附錄內容示例}
\addcontentsline{toc}{section}{附錄內容示例}
```

如果不想讓附錄小節出現在目錄，就只保留：

```tex
\section*{附錄內容示例}
```

## 字型說明

Word 範本建議：

- 中文使用標楷體
- 英文與數字使用 Times New Roman

本範本會優先使用這兩套字型。若目前編譯環境沒有安裝，會自動使用接近字型，讓文件至少能順利編譯。

目前字型優先順序大致如下：

中文：

1. 標楷體
2. DFKai-SB
3. Windows 的 `kaiu.ttf`
4. macOS 的 Kaiti TC
5. macOS 的 BiauKai
6. macOS 的 STKaiti
7. AR PL KaitiM Big5
8. Noto Serif CJK TC
9. TeX 內建的 FandolKai

英文與數字：

1. Times New Roman
2. TeX Gyre Termes

如果你在 Overleaf 上編譯，可能不會有標楷體或 Times New Roman，因為這些字型不一定能自由散布。此時 PDF 仍可編譯，但外觀可能和學校 Word 範本不完全相同。

如果系所強制要求標楷體與 Times New Roman，請確認字型授權後，再把字型檔上傳到 Overleaf，並修改 `ncue-thesis.cls` 的字型設定。

## 頁碼說明

本範本預設顯示頁碼：

- 封面不顯示頁碼
- 前置頁使用大寫羅馬數字，例如 `I`、`II`、`III`
- 正文使用阿拉伯數字，從 `1` 開始

如果你想完全仿照原 Word 範本畫面，也就是不顯示頁碼，可以把 `main.tex` 開頭：

```tex
\documentclass{ncue-thesis}
```

改成：

```tex
\documentclass[nopagenumbers]{ncue-thesis}
```

## 邊界說明

Word 範本使用說明列明：

```text
上下左右為 2.54 公分
```

因此本範本全文件採用：

```tex
\geometry{top=2.54cm,bottom=2.54cm,left=2.54cm,right=2.54cm}
```

原 DOCX 內部部分前置頁 section 有不同邊界設定，但這裡以使用說明的 2.54 公分為準。

如果你的系所要求不同邊界，請修改 `ncue-thesis.cls` 裡的 `\geometry{...}`。

## 本機編譯方式

如果你不使用 Overleaf，也可以在自己的電腦安裝 LaTeX。

Windows 可使用 MiKTeX 或 TeX Live。macOS 可使用 MacTeX。

如果你不熟安裝流程，可以直接請 Codex 之類的 AI coding agent 幫你安裝與設定。請它確認 `xelatex`、`biber`、`latexmk` 都能正常執行，之後再請它幫你編譯 `main.tex`。

安裝完成後，在專案資料夾執行：

```bash
latexmk -xelatex main.tex
```

成功後會產生：

```text
main.pdf
```

請不要使用 `pdflatex`，因為本範本使用 XeLaTeX 處理中文字型。

## 授權

本模板採用 [MIT License](LICENSE)。任何人都可以使用、複製、修改、散布、改作或商業使用，但請保留授權文字。

## 常見問題

### 編譯失敗，出現中文字型錯誤

請先確認編譯器是不是 XeLaTeX。Overleaf 請到 **File → settings → compiler** 裡把編譯器改成 **XeLaTeX**。

如果仍然失敗，可能是目前環境找不到任何可用中文字型。可以先改用 Overleaf，或在本機安裝常見中文字型。

### PDF 出現亂碼

請確認所有 `.tex` 與 `.bib` 檔案都是 UTF-8 編碼。不要用 Big5 或 ANSI 儲存。

### 目錄、圖表編號或引用顯示問號

LaTeX 需要多次編譯才能更新目錄和交叉引用。請重新編譯幾次，或使用：

```bash
latexmk -xelatex main.tex
```

### 參考文獻沒有出現

請檢查：

- `references.bib` 裡是否真的有該筆資料
- 正文是否有使用 `\autocite{引用鍵}`
- 引用鍵是否拼錯
- 是否已重新編譯

### 圖片沒有出現

請檢查：

- 圖片是否真的放在 `figures/` 資料夾
- 檔名是否拼對
- 副檔名是否正確
- 檔名是否有空白或特殊符號

### Overleaf 編譯很慢

可能原因：

- 圖片檔案太大
- 章節內容很多
- 第一次編譯需要建立目錄和參考文獻

可以先把大型圖片壓縮，或暫時註解掉部分章節測試。

### 想刪掉某一章

到 `main.tex` 找到該章的 `\input{...}`，把那一行刪掉或註解掉。

例如：

```tex
% \input{chapters/chapter2}
```

### 想新增章節檔案

在 `chapters/` 裡新增檔案，例如：

```text
chapter3.tex
```

然後在 `main.tex` 加入：

```tex
\input{chapters/chapter3}
```

### 想改參考文獻格式

請修改 `main.tex` 裡的 `biblatex` 設定。常見格式例如：

```tex
style=numeric
```

或：

```tex
style=apa
```

實際可用格式取決於你的 LaTeX 環境是否已安裝相關套件。
