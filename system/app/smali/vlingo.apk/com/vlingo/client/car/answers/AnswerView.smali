.class public Lcom/vlingo/client/car/answers/AnswerView;
.super Lcom/vlingo/client/car/CarScrollableItem;
.source "AnswerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;


# instance fields
.field private answer:Ljava/lang/String;

.field private autoCloseEnabled:Z

.field private autoCloseStarted:Z

.field private autoCountdownHandler:Landroid/os/Handler;

.field private countdown:I

.field private question:Ljava/lang/String;

.field private speakAgainButton:Landroid/widget/Button;

.field private textAnswer:Landroid/widget/TextView;

.field private textQuestion:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/car/CarScrollableItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput-boolean v0, p0, Lcom/vlingo/client/car/answers/AnswerView;->autoCloseEnabled:Z

    .line 42
    iput-boolean v0, p0, Lcom/vlingo/client/car/answers/AnswerView;->autoCloseStarted:Z

    .line 48
    new-instance v0, Lcom/vlingo/client/car/answers/AnswerView$1;

    invoke-direct {v0, p0}, Lcom/vlingo/client/car/answers/AnswerView$1;-><init>(Lcom/vlingo/client/car/answers/AnswerView;)V

    iput-object v0, p0, Lcom/vlingo/client/car/answers/AnswerView;->autoCountdownHandler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/car/answers/AnswerView;)Lcom/vlingo/client/car/CarActivityDelegate;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vlingo/client/car/answers/AnswerView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vlingo/client/car/answers/AnswerView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/vlingo/client/car/answers/AnswerView;->autoCloseEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/vlingo/client/car/answers/AnswerView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/vlingo/client/car/answers/AnswerView;->countdown:I

    return v0
.end method

.method static synthetic access$210(Lcom/vlingo/client/car/answers/AnswerView;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/vlingo/client/car/answers/AnswerView;->countdown:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/vlingo/client/car/answers/AnswerView;->countdown:I

    return v0
.end method

.method static synthetic access$300(Lcom/vlingo/client/car/answers/AnswerView;)Lcom/vlingo/client/car/CarActivityDelegate;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vlingo/client/car/answers/AnswerView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vlingo/client/car/answers/AnswerView;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vlingo/client/car/answers/AnswerView;->autoCountdownHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private removeTTSListener()V
    .registers 2

    .prologue
    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/car/answers/AnswerView;->autoCloseEnabled:Z

    .line 173
    iget-object v0, p0, Lcom/vlingo/client/car/answers/AnswerView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->getTTSManager()Lcom/vlingo/client/car/tts/CarTTSManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vlingo/client/car/tts/CarTTSManager;->removeListener(Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;)V

    .line 174
    return-void
.end method

.method private speakAnswer()V
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/vlingo/client/car/answers/AnswerView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    iget-object v1, p0, Lcom/vlingo/client/car/answers/AnswerView;->answer:Ljava/lang/String;

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genAnswer(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 112
    return-void
.end method


# virtual methods
.method public getRandomHint()Ljava/lang/String;
    .registers 2

    .prologue
    .line 141
    invoke-static {}, Lcom/vlingo/client/car/Hints;->getRandomHint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;
    .registers 3

    .prologue
    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/car/answers/AnswerView;->autoCloseEnabled:Z

    .line 121
    new-instance v0, Lcom/vlingo/client/asr/AndroidSRContext;

    const-string v1, "vp_car_answers_main"

    invoke-direct {v0, v1}, Lcom/vlingo/client/asr/AndroidSRContext;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getShownPrompt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->HOME_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {v0}, Lcom/vlingo/client/core/tts/TTSDemand;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpokenPrompt()Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 2

    .prologue
    .line 125
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->HOME_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    return-object v0
.end method

.method public initialize(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "question"
    .parameter "answer"

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/car/answers/AnswerView;->autoCloseEnabled:Z

    .line 85
    iput-object p1, p0, Lcom/vlingo/client/car/answers/AnswerView;->question:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lcom/vlingo/client/car/answers/AnswerView;->answer:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public lockScreenOnStartListen()Z
    .registers 2

    .prologue
    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/car/answers/AnswerView;->autoCloseEnabled:Z

    .line 104
    iget-object v0, p0, Lcom/vlingo/client/car/answers/AnswerView;->speakAgainButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_13

    .line 105
    iget-object v0, p0, Lcom/vlingo/client/car/answers/AnswerView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->getTTSManager()Lcom/vlingo/client/car/tts/CarTTSManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/car/tts/CarTTSManager;->cancel()V

    .line 106
    invoke-direct {p0}, Lcom/vlingo/client/car/answers/AnswerView;->speakAnswer()V

    .line 108
    :cond_13
    return-void
.end method

.method public onDelegateAttached()V
    .registers 4

    .prologue
    .line 90
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onDelegateAttached()V

    .line 91
    iget-object v0, p0, Lcom/vlingo/client/car/answers/AnswerView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->getTTSManager()Lcom/vlingo/client/car/tts/CarTTSManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vlingo/client/car/tts/CarTTSManager;->addListener(Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;)V

    .line 92
    iget-object v0, p0, Lcom/vlingo/client/car/answers/AnswerView;->textQuestion:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/car/answers/AnswerView;->question:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/vlingo/client/car/answers/AnswerView;->textAnswer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vlingo/client/car/answers/AnswerView;->answer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v0

    const-string v1, "car-answer"

    invoke-virtual {v0, v1}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 97
    const-string v0, "car_vlingo_answers_enabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 98
    invoke-direct {p0}, Lcom/vlingo/client/car/answers/AnswerView;->speakAnswer()V

    .line 100
    :cond_48
    return-void
.end method

.method public onDemandCancelled(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "demand"

    .prologue
    .line 145
    return-void
.end method

.method public onDemandDidPlay(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 6
    .parameter "demand"

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/vlingo/client/car/answers/AnswerView;->autoCloseEnabled:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/vlingo/client/car/answers/AnswerView;->autoCloseStarted:Z

    if-nez v0, :cond_13

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/car/answers/AnswerView;->autoCloseStarted:Z

    .line 150
    iget-object v0, p0, Lcom/vlingo/client/car/answers/AnswerView;->autoCountdownHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 152
    :cond_13
    return-void
.end method

.method public onDemandIgnored(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "demand"

    .prologue
    .line 155
    return-void
.end method

.method public onDemandWillPlay(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "demand"

    .prologue
    .line 159
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 72
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onFinishInflate()V

    .line 74
    const v0, 0x7f0f002a

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/answers/AnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/car/answers/AnswerView;->textQuestion:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f0f002d

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/answers/AnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/car/answers/AnswerView;->textAnswer:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0f002e

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/answers/AnswerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vlingo/client/car/answers/AnswerView;->speakAgainButton:Landroid/widget/Button;

    .line 77
    iget-object v0, p0, Lcom/vlingo/client/car/answers/AnswerView;->speakAgainButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method

.method public onHidden()V
    .registers 1

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/vlingo/client/car/answers/AnswerView;->removeTTSListener()V

    .line 163
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onHidden()V

    .line 164
    return-void
.end method

.method public onRemoved()V
    .registers 1

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/vlingo/client/car/answers/AnswerView;->removeTTSListener()V

    .line 168
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onRemoved()V

    .line 169
    return-void
.end method

.method public setupAutoClose()V
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x6

    iput v0, p0, Lcom/vlingo/client/car/answers/AnswerView;->countdown:I

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/car/answers/AnswerView;->autoCloseEnabled:Z

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/car/answers/AnswerView;->autoCloseStarted:Z

    .line 69
    return-void
.end method

.method public supportsHints()Z
    .registers 2

    .prologue
    .line 137
    const/4 v0, 0x1

    return v0
.end method
