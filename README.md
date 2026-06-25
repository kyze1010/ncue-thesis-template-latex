# 國立彰化師範大學論文 LaTeX / Overleaf 範本

這是一份依照彰化師範大學論文 Word 範本重建的 LaTeX / Overleaf 論文模板。

完整教學、檔案說明、圖表、引用、字型與常見錯誤排除，請看 [README-detailed.md](README-detailed.md)。

> **完全不會 LaTeX 的捷徑**
>
> 如果你擔心 Overleaf 編譯時間限制或付費方案，也不想自己研究怎麼安裝 LaTeX，推薦直接使用 Codex 之類的 AI agent。把整個資料夾交給它，請它幫你安裝 LaTeX、設定 XeLaTeX、執行 `latexmk -xelatex main.tex`，遇到錯誤也直接請它修。簡單、無腦、很好用。

## 30 秒懶人包

1. 把整個資料夾壓縮成 ZIP。(或者下載ZIP)
2. 到 Overleaf 選 **New Project → Upload Project**。
3. 上傳 ZIP。
4. 到 **File → settings → compiler**，選 **XeLaTeX**。(這個藏有點深)
5. 打開 `metadata.tex`，改系所、題目、姓名、指導教授、日期、關鍵詞。
6. 打開 `frontmatter/`，改中文摘要、英文摘要、誌謝。
7. 打開 `chapters/`，開始寫正文。
8. 打開 `references.bib`，放你的參考文獻。
9. 按 **Recompile**。

## 你最常需要改的檔案

| 檔案 | 要改什麼 |
| --- | --- |
| `metadata.tex` | 封面資料、姓名、指導教授、日期、關鍵詞 |
| `frontmatter/abstract-zh.tex` | 中文摘要 |
| `frontmatter/abstract-en.tex` | 英文摘要 |
| `frontmatter/acknowledgements.tex` | 誌謝 |
| `chapters/chapter1.tex` | 第一章 |
| `chapters/chapter2.tex` | 第二章 |
| `references.bib` | 參考文獻 |
| `backmatter/appendix.tex` | 附錄 |

## 請一定要注意

> **引用格式**
>
> 不同科系可能採用不同引用格式，例如 IEEE、APA 或其他格式；本範本僅提供數字制範例，請依系所與指導教授規定自行調整。

> **審定書**
>
> 本範本不內建論文審定書。多數系所會提供自己的審定書，通常需要列印簽名後掃描，再自行合併回論文 PDF。

> **字型**
>
> 範本會優先使用中文標楷體、英數 Times New Roman。若編譯環境沒有這些字型，會自動 fallback 到接近字型。若系所嚴格要求字型，請自行確認。

## 本機編譯

如果不用 Overleaf，請用 XeLaTeX：

```bash
latexmk -xelatex main.tex
```

不要用 `pdflatex`，中文字型會出問題。

## 授權

本模板採用 [MIT License](LICENSE)。任何人都可以使用、修改、散布或改作，但請保留授權文字。

## 出問題怎麼辦

先確認：

- Overleaf 的 **File → settings → compiler** 是否選 **XeLaTeX**
- 參考文獻 key 是否拼對
- 圖片路徑與檔名是否正確
- AI可以救你

更完整的排錯方式請看 [README-detailed.md](README-detailed.md)。
