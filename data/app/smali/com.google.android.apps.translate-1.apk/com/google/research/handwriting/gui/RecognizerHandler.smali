.class public Lcom/google/research/handwriting/gui/RecognizerHandler;
.super Ljava/lang/Object;
.source "RecognizerHandler.java"

# interfaces
.implements Lcom/google/research/handwriting/gui/RecognizerClient;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private mAutoSelect:Z

.field private mAutoSelectMilli:I

.field private mBusyDisplay:Landroid/view/View;

.field private mDebugTextView:Landroid/widget/TextView;

.field private mHandwritingOverlayView:Lcom/google/research/handwriting/gui/HandwritingOverlayView;

.field private mRecognitionResult:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

.field private mRecognizerInitialized:Z

.field private mShowDebugInformation:Z

.field private mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/google/research/handwriting/gui/RecognizerHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/research/handwriting/gui/RecognizerHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->EMPTY:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    iput-object v0, p0, Lcom/google/research/handwriting/gui/RecognizerHandler;->mRecognitionResult:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/google/research/handwriting/gui/RecognizerHandler;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/research/handwriting/gui/RecognizerHandler;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public delete()V
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/research/handwriting/gui/RecognizerHandler;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/UIHandler;->onKeyDelete()V

    .line 156
    return-void
.end method

.method public errorMessage(ILjava/lang/Exception;Ljava/lang/String;)V
    .registers 7
    .parameter "requestId"
    .parameter "e"
    .parameter "msg"

    .prologue
    .line 102
    sget-object v0, Lcom/google/research/handwriting/gui/RecognizerHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorMessage: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    iget-object v0, p0, Lcom/google/research/handwriting/gui/RecognizerHandler;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_30

    .line 108
    iget-object v0, p0, Lcom/google/research/handwriting/gui/RecognizerHandler;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    new-instance v1, Lcom/google/research/handwriting/gui/RecognizerHandler$1;

    invoke-direct {v1, p0, p3}, Lcom/google/research/handwriting/gui/RecognizerHandler$1;-><init>(Lcom/google/research/handwriting/gui/RecognizerHandler;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/research/handwriting/gui/UIHandler;->post(Ljava/lang/Runnable;)Z

    .line 116
    :cond_30
    return-void
.end method

.method public getRecognitionResult()Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/research/handwriting/gui/RecognizerHandler;->mRecognitionResult:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    return-object v0
.end method

.method public initializing()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 166
    iput-boolean v1, p0, Lcom/google/research/handwriting/gui/RecognizerHandler;->mRecognizerInitialized:Z

    .line 167
    iget-object v0, p0, Lcom/google/research/handwriting/gui/RecognizerHandler;->mBusyDisplay:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 168
    iget-object v0, p0, Lcom/google/research/handwriting/gui/RecognizerHandler;->mBusyDisplay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 170
    :cond_c
    return-void
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/google/research/handwriting/gui/RecognizerHandler;->mRecognizerInitialized:Z

    return v0
.end method

.method public isShowDebugInfo()Z
    .registers 2

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/google/research/handwriting/gui/RecognizerHandler;->mShowDebugInformation:Z

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .registers 5
    .parameter "logtext"

    .prologue
    .line 132
    new-instance v0, Lcom/google/research/handwriting/gui/LogToFileTask;

    invoke-direct {v0}, Lcom/google/research/handwriting/gui/LogToFileTask;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/research/handwriting/gui/LogToFileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 133
    return-void
.end method

.method public onInitialized(Z)V
    .registers 4
    .parameter "successful"

    .prologue
    .line 142
    if-eqz p1, :cond_11

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/research/handwriting/gui/RecognizerHandler;->mRecognizerInitialized:Z

    .line 145
    iget-object v0, p0, Lcom/google/research/handwriting/gui/RecognizerHandler;->mBusyDisplay:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 146
    iget-object v0, p0, Lcom/google/research/handwriting/gui/RecognizerHandler;->mBusyDisplay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    :cond_10
    :goto_10
    return-void

    .line 149
    :cond_11
    sget-object v0, Lcom/google/research/handwriting/gui/RecognizerHandler;->TAG:Ljava/lang/String;

    const-string v1, "Recognizer initialization unsuccessful."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public onRecognitionEnd(Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;Lcom/google/research/handwriting/base/StrokeList;)V
    .registers 8
    .parameter "result"
    .parameter "strokes"

    .prologue
    const/4 v4, 0x1

    .line 81
    sget-object v1, Lcom/google/research/handwriting/gui/RecognizerHandler;->TAG:Ljava/lang/String;

    const-string v2, "onRecognitionEnd"

    invoke-static {v4, v1, v2}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 82
    iput-object p1, p0, Lcom/google/research/handwriting/gui/RecognizerHandler;->mRecognitionResult:Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;

    .line 83
    invoke-virtual {p1}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->getWords()Lcom/google/research/handwriting/gui/SuggestedWords;

    move-result-object v0

    .line 84
    .local v0, suggestions:Lcom/google/research/handwriting/gui/SuggestedWords;
    sget-object v1, Lcom/google/research/handwriting/gui/RecognizerHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clickable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/SuggestedWords;->clickable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/google/research/handwriting/gui/RecognizerHandler;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    invoke-virtual {v1, v4}, Lcom/google/research/handwriting/gui/UIHandler;->showAskTheCloudButton(Z)V

    .line 87
    iget-object v1, p0, Lcom/google/research/handwriting/gui/RecognizerHandler;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    invoke-virtual {p1}, Lcom/google/research/handwriting/gui/ImeHandwritingRecognizer$RecognitionResult;->getCompletions()Lcom/google/research/handwriting/gui/SuggestedWords;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/research/handwriting/gui/UIHandler;->setResults(Lcom/google/research/handwriting/gui/SuggestedWords;Lcom/google/research/handwriting/gui/SuggestedWords;)V

    .line 88
    iget-boolean v1, p0, Lcom/google/research/handwriting/gui/RecognizerHandler;->mAutoSelect:Z

    if-eqz v1, :cond_68

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/SuggestedWords;->size()I

    move-result v1

    if-lez v1, :cond_68

    invoke-virtual {v0}, Lcom/google/research/handwriting/gui/SuggestedWords;->clickable()Z

    move-result v1

    if-eqz v1, :cond_68

    iget-object v1, p0, Lcom/google/research/handwriting/gui/RecognizerHandler;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    invoke-virtual {v1}, Lcom/google/research/handwriting/gui/UIHandler;->getEditingPreviouslyEnteredText()Z

    move-result v1

    if-nez v1, :cond_68

    .line 90
    sget-object v1, Lcom/google/research/handwriting/gui/RecognizerHandler;->TAG:Ljava/lang/String;

    const-string v2, "triggering auto select"

    invoke-static {v4, v1, v2}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/google/research/handwriting/gui/RecognizerHandler;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    iget v2, p0, Lcom/google/research/handwriting/gui/RecognizerHandler;->mAutoSelectMilli:I

    invoke-virtual {v1, v0, v2}, Lcom/google/research/handwriting/gui/UIHandler;->autoSelectSuggestion(Lcom/google/research/handwriting/gui/SuggestedWords;I)V

    .line 95
    :goto_5e
    sget-object v1, Lcom/google/research/handwriting/base/StrokeList;->EMPTY:Lcom/google/research/handwriting/base/StrokeList;

    if-eq p2, v1, :cond_67

    .line 96
    iget-object v1, p0, Lcom/google/research/handwriting/gui/RecognizerHandler;->mHandwritingOverlayView:Lcom/google/research/handwriting/gui/HandwritingOverlayView;

    invoke-virtual {v1, p2, v4}, Lcom/google/research/handwriting/gui/HandwritingOverlayView;->drawStrokeList(Lcom/google/research/handwriting/base/StrokeList;Z)V

    .line 98
    :cond_67
    return-void

    .line 93
    :cond_68
    sget-object v1, Lcom/google/research/handwriting/gui/RecognizerHandler;->TAG:Ljava/lang/String;

    const-string v2, "NOT triggering auto select"

    invoke-static {v4, v1, v2}, Lcom/google/research/handwriting/base/LogV;->i(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5e
.end method

.method public setApplicationContext(Landroid/content/Context;)V
    .registers 2
    .parameter "applicationContext"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/research/handwriting/gui/RecognizerHandler;->mApplicationContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method public setAutoSelect(Z)V
    .registers 2
    .parameter "autoSelect"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/google/research/handwriting/gui/RecognizerHandler;->mAutoSelect:Z

    .line 49
    return-void
.end method

.method public setAutoSelectMilli(I)V
    .registers 2
    .parameter "autoSelectMilli"

    .prologue
    .line 52
    iput p1, p0, Lcom/google/research/handwriting/gui/RecognizerHandler;->mAutoSelectMilli:I

    .line 53
    return-void
.end method

.method public setBusyDisplay(Landroid/view/View;)V
    .registers 2
    .parameter "busyDisplay"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/research/handwriting/gui/RecognizerHandler;->mBusyDisplay:Landroid/view/View;

    .line 73
    return-void
.end method

.method public setDebugView(Landroid/widget/TextView;)V
    .registers 2
    .parameter "debugTextView"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/research/handwriting/gui/RecognizerHandler;->mDebugTextView:Landroid/widget/TextView;

    .line 65
    return-void
.end method

.method public setHIHandler(Lcom/google/research/handwriting/gui/UIHandler;)V
    .registers 2
    .parameter "uiHandler"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/research/handwriting/gui/RecognizerHandler;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    .line 45
    return-void
.end method

.method public setHandwritingOverlayView(Lcom/google/research/handwriting/gui/HandwritingOverlayView;)V
    .registers 2
    .parameter "handwritingOverlayView"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/research/handwriting/gui/RecognizerHandler;->mHandwritingOverlayView:Lcom/google/research/handwriting/gui/HandwritingOverlayView;

    .line 57
    return-void
.end method

.method public setShowDebugInformation(Z)V
    .registers 2
    .parameter "showDebugInformation"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/google/research/handwriting/gui/RecognizerHandler;->mShowDebugInformation:Z

    .line 69
    return-void
.end method

.method public setStatusText(Ljava/lang/String;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/research/handwriting/gui/RecognizerHandler;->mDebugTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 126
    iget-object v0, p0, Lcom/google/research/handwriting/gui/RecognizerHandler;->mDebugTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :cond_9
    return-void
.end method

.method public space()V
    .registers 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/research/handwriting/gui/RecognizerHandler;->mUIHandler:Lcom/google/research/handwriting/gui/UIHandler;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/google/research/handwriting/gui/UIHandler;->onKeyNormal(I)V

    .line 162
    return-void
.end method
