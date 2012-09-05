.class public Lcom/google/android/apps/books/render/BasicTextReader;
.super Ljava/lang/Object;
.source "BasicTextReader.java"

# interfaces
.implements Lcom/google/android/apps/books/render/TextReader;


# instance fields
.field private final mEngine:Lcom/google/android/apps/books/render/JavaScriptExecutor;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/render/JavaScriptExecutor;)V
    .registers 2
    .parameter "engine"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/android/apps/books/render/BasicTextReader;->mEngine:Lcom/google/android/apps/books/render/JavaScriptExecutor;

    .line 23
    return-void
.end method


# virtual methods
.method public applySettings(Lcom/google/android/apps/books/render/ReaderSettings;FI)V
    .registers 9
    .parameter "settings"
    .parameter "displayDensity"
    .parameter "pageHeight"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicTextReader;->mEngine:Lcom/google/android/apps/books/render/JavaScriptExecutor;

    const-string v1, "applyPreferences"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p1, Lcom/google/android/apps/books/render/ReaderSettings;->isThemeNight:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/google/android/apps/books/render/ReaderSettings;->fontFamily:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/google/android/apps/books/render/ReaderSettings;->getTextZoom()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/google/android/apps/books/render/ReaderSettings;->getLineHeight()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p1, Lcom/google/android/apps/books/render/ReaderSettings;->textAlign:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/apps/books/util/JSUtils;->buildMethodInvoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/books/render/JavaScriptExecutor;->run(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public initializeJavascript(Landroid/accounts/Account;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .registers 10
    .parameter "account"
    .parameter "volumeId"
    .parameter "chapterJsonArray"
    .parameter "cssJsonArray"

    .prologue
    const/4 v4, 0x0

    .line 28
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicTextReader;->mEngine:Lcom/google/android/apps/books/render/JavaScriptExecutor;

    const-string v1, "initializeReader"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/apps/books/util/JSUtils;->buildMethodInvoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/books/render/JavaScriptExecutor;->run(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public loadPage(IILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;I)V
    .registers 12
    .parameter "chapter"
    .parameter "page"
    .parameter "offset"
    .parameter "highlightSearch"
    .parameter "nextHighlightChapterIndex"
    .parameter "requestId"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicTextReader;->mEngine:Lcom/google/android/apps/books/render/JavaScriptExecutor;

    const-string v1, "loadPage"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    const/4 v3, 0x4

    aput-object p4, v2, v3

    const/4 v3, 0x5

    aput-object p5, v2, v3

    const/4 v3, 0x6

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/apps/books/util/JSUtils;->buildMethodInvoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/books/render/JavaScriptExecutor;->run(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public loadPosition(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Integer;)V
    .registers 13
    .parameter "chapter"
    .parameter "position"
    .parameter "offset"
    .parameter "fallbackChapterIndex"
    .parameter "highlightSearch"
    .parameter "requestId"
    .parameter "nextHighlightChapterIndex"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicTextReader;->mEngine:Lcom/google/android/apps/books/render/JavaScriptExecutor;

    const-string v1, "loadPosition"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    const/4 v3, 0x4

    aput-object p4, v2, v3

    const/4 v3, 0x5

    aput-object p5, v2, v3

    const/4 v3, 0x6

    aput-object p7, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/apps/books/util/JSUtils;->buildMethodInvoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/books/render/JavaScriptExecutor;->run(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public loadRangeBounds(Lcom/google/android/apps/books/render/TextRange;I)V
    .registers 8
    .parameter "range"
    .parameter "requestId"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicTextReader;->mEngine:Lcom/google/android/apps/books/render/JavaScriptExecutor;

    const-string v1, "loadRangeBounds"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Lcom/google/android/apps/books/render/TextRange;->passageIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/google/android/apps/books/render/TextRange;->position:Lcom/google/android/apps/books/common/Position;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p1, Lcom/google/android/apps/books/render/TextRange;->startOffset:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p1, Lcom/google/android/apps/books/render/TextRange;->endOffset:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/apps/books/util/JSUtils;->buildMethodInvoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/books/render/JavaScriptExecutor;->run(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public requestPassageText(ILjava/lang/String;I)V
    .registers 9
    .parameter "passageIndex"
    .parameter "position"
    .parameter "requestId"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicTextReader;->mEngine:Lcom/google/android/apps/books/render/JavaScriptExecutor;

    const-string v1, "requestPassageText"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/apps/books/util/JSUtils;->buildMethodInvoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/books/render/JavaScriptExecutor;->run(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public setHighlight(Ljava/lang/String;)V
    .registers 6
    .parameter "highlight"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicTextReader;->mEngine:Lcom/google/android/apps/books/render/JavaScriptExecutor;

    const-string v1, "setHighlight"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/apps/books/util/JSUtils;->buildMethodInvoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/books/render/JavaScriptExecutor;->run(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public setPreviewContent(Ljava/lang/String;)V
    .registers 6
    .parameter "content"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicTextReader;->mEngine:Lcom/google/android/apps/books/render/JavaScriptExecutor;

    const-string v1, "setPreviewContent"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/apps/books/util/JSUtils;->buildMethodInvoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/books/render/JavaScriptExecutor;->run(Ljava/lang/String;)V

    .line 62
    return-void
.end method
