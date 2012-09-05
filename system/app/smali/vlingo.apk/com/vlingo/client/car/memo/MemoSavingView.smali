.class public Lcom/vlingo/client/car/memo/MemoSavingView;
.super Lcom/vlingo/client/car/CarScrollableItem;
.source "MemoSavingView.java"

# interfaces
.implements Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/car/memo/MemoSavingView$MemoSendingActionListener;
    }
.end annotation


# instance fields
.field private cancelButton:Landroid/widget/Button;

.field private cancelled:Z

.field private listener:Lcom/vlingo/client/car/memo/MemoSavingView$MemoSendingActionListener;

.field private message:Ljava/lang/String;

.field private messageSentDemand:Lcom/vlingo/client/core/tts/TTSDemand;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/car/CarScrollableItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/car/memo/MemoSavingView;->messageSentDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/car/memo/MemoSavingView;->cancelled:Z

    .line 40
    return-void
.end method

.method static synthetic access$002(Lcom/vlingo/client/car/memo/MemoSavingView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/vlingo/client/car/memo/MemoSavingView;->cancelled:Z

    return p1
.end method

.method static synthetic access$102(Lcom/vlingo/client/car/memo/MemoSavingView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/vlingo/client/car/memo/MemoSavingView;->overloadingBottomContainer:Z

    return p1
.end method

.method static synthetic access$200(Lcom/vlingo/client/car/memo/MemoSavingView;)Lcom/vlingo/client/car/CarActivityDelegate;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoSavingView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    return-object v0
.end method

.method static synthetic access$302(Lcom/vlingo/client/car/memo/MemoSavingView;Landroid/widget/Button;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/vlingo/client/car/memo/MemoSavingView;->cancelButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$400(Lcom/vlingo/client/car/memo/MemoSavingView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/vlingo/client/car/memo/MemoSavingView;->saveMemo()V

    return-void
.end method

.method private checkDemand(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 3
    .parameter "demand"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoSavingView;->messageSentDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/tts/TTSDemand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 157
    invoke-direct {p0}, Lcom/vlingo/client/car/memo/MemoSavingView;->notifyComplete()V

    .line 159
    :cond_b
    return-void
.end method

.method private notifyComplete()V
    .registers 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoSavingView;->listener:Lcom/vlingo/client/car/memo/MemoSavingView$MemoSendingActionListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/vlingo/client/car/memo/MemoSavingView$MemoSendingActionListener;->onMemoSaved(Lcom/vlingo/client/car/memo/MemoSavingView;ZLjava/lang/String;)V

    .line 129
    return-void
.end method

.method private saveMemo()V
    .registers 4

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/vlingo/client/car/memo/MemoSavingView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Lcom/vlingo/client/car/memo/MemoSavingView;->cancelled:Z

    if-nez v0, :cond_43

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/car/memo/MemoSavingView;->overloadingBottomContainer:Z

    .line 113
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoSavingView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/vlingo/client/car/memo/MemoSavingView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lcom/vlingo/client/car/CarActivityDelegate;->overloadBottomContainerWithView(Landroid/view/View;)V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/car/memo/MemoSavingView;->cancelButton:Landroid/widget/Button;

    .line 116
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoSavingView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/car/memo/MemoSavingView;->message:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vlingo/client/ClientConfiguration;->trySamsungMemoDBSave(Landroid/content/Context;Ljava/lang/String;)Z

    .line 118
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoSavingView;->message:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/vlingo/client/car/memo/MemoSavingView;->sendAcceptedText(Ljava/lang/String;)V

    .line 119
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->MEMO_SAVED:Lcom/vlingo/client/core/tts/TTSDemand;

    iput-object v0, p0, Lcom/vlingo/client/car/memo/MemoSavingView;->messageSentDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 120
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoSavingView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->getTTSManager()Lcom/vlingo/client/car/tts/CarTTSManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vlingo/client/car/tts/CarTTSManager;->addListener(Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;)V

    .line 121
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoSavingView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    iget-object v1, p0, Lcom/vlingo/client/car/memo/MemoSavingView;->messageSentDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-interface {v0, v1}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 125
    :cond_42
    :goto_42
    return-void

    .line 122
    :cond_43
    iget-boolean v0, p0, Lcom/vlingo/client/car/memo/MemoSavingView;->cancelled:Z

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoSavingView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    if-eqz v0, :cond_42

    .line 123
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoSavingView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0, p0}, Lcom/vlingo/client/car/CarActivityDelegate;->removeItemFromTask(Lcom/vlingo/client/car/CarScrollableItem;)V

    goto :goto_42
.end method

.method private sendAcceptedText(Ljava/lang/String;)V
    .registers 6
    .parameter "memo"

    .prologue
    .line 96
    const-string v0, "memo:def"

    .line 97
    .local v0, acceptedType:Ljava/lang/String;
    new-instance v1, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;

    invoke-direct {v1}, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;-><init>()V

    .line 98
    .local v1, collection:Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 99
    .local v2, text:Ljava/lang/StringBuffer;
    const-string v3, "<AcceptedText pt=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    const-string v3, "\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    const-string v3, "<Tag u=\"text\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    const-string v3, "</Tag>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    const-string v3, "</AcceptedText>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;->setAcceptedText(Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/vlingo/client/android/core/asr/AndroidRecognitionManager;->getInstance()Lcom/vlingo/client/core/asr/RecognitionManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/vlingo/client/core/asr/RecognitionManager;->sendStatsToServer(Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;)V

    .line 108
    return-void
.end method


# virtual methods
.method public ignoreBackKey()Z
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public initialize(Lcom/vlingo/client/car/memo/MemoSavingView$MemoSendingActionListener;Ljava/lang/String;)V
    .registers 3
    .parameter "listener"
    .parameter "message"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/vlingo/client/car/memo/MemoSavingView;->listener:Lcom/vlingo/client/car/memo/MemoSavingView$MemoSendingActionListener;

    .line 52
    iput-object p2, p0, Lcom/vlingo/client/car/memo/MemoSavingView;->message:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public isRecognitionSupported()Z
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public onDelegateAttached()V
    .registers 6

    .prologue
    .line 56
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onDelegateAttached()V

    .line 58
    iget-object v2, p0, Lcom/vlingo/client/car/memo/MemoSavingView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2}, Lcom/vlingo/client/car/CarActivityDelegate;->getTTSManager()Lcom/vlingo/client/car/tts/CarTTSManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/vlingo/client/car/tts/CarTTSManager;->addListener(Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;)V

    .line 60
    const v1, 0x7f03003d

    .line 61
    .local v1, res:I
    invoke-virtual {p0}, Lcom/vlingo/client/car/memo/MemoSavingView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, buttonContainer:Landroid/view/View;
    const v2, 0x7f0f0044

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/vlingo/client/car/memo/MemoSavingView;->cancelButton:Landroid/widget/Button;

    .line 63
    iget-object v2, p0, Lcom/vlingo/client/car/memo/MemoSavingView;->cancelButton:Landroid/widget/Button;

    new-instance v3, Lcom/vlingo/client/car/memo/MemoSavingView$1;

    invoke-direct {v3, p0}, Lcom/vlingo/client/car/memo/MemoSavingView$1;-><init>(Lcom/vlingo/client/car/memo/MemoSavingView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/vlingo/client/car/memo/MemoSavingView;->overloadingBottomContainer:Z

    .line 72
    iget-object v2, p0, Lcom/vlingo/client/car/memo/MemoSavingView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2, v0}, Lcom/vlingo/client/car/CarActivityDelegate;->overloadBottomContainerWithView(Landroid/view/View;)V

    .line 74
    new-instance v2, Lcom/vlingo/client/car/memo/MemoSavingView$2;

    invoke-direct {v2, p0}, Lcom/vlingo/client/car/memo/MemoSavingView$2;-><init>(Lcom/vlingo/client/car/memo/MemoSavingView;)V

    const-wide/16 v3, 0x4e2

    invoke-static {v2, v3, v4}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;J)V

    .line 79
    return-void
.end method

.method public onDemandCancelled(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "demand"

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/memo/MemoSavingView;->checkDemand(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 142
    return-void
.end method

.method public onDemandDidPlay(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "demand"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/memo/MemoSavingView;->checkDemand(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 146
    return-void
.end method

.method public onDemandIgnored(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "demand"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/memo/MemoSavingView;->checkDemand(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 150
    return-void
.end method

.method public onDemandWillPlay(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "demand"

    .prologue
    .line 153
    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onFinishInflate()V

    .line 44
    return-void
.end method

.method public onHidden()V
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoSavingView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0, p0}, Lcom/vlingo/client/car/CarActivityDelegate;->removeItemFromTask(Lcom/vlingo/client/car/CarScrollableItem;)V

    .line 92
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onHidden()V

    .line 93
    return-void
.end method

.method public onRemoved()V
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoSavingView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->getTTSManager()Lcom/vlingo/client/car/tts/CarTTSManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vlingo/client/car/tts/CarTTSManager;->removeListener(Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;)V

    .line 87
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onRemoved()V

    .line 88
    return-void
.end method
