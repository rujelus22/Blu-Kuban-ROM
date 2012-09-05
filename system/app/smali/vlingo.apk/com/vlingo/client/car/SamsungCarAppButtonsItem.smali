.class public Lcom/vlingo/client/car/SamsungCarAppButtonsItem;
.super Lcom/vlingo/client/car/CarAppButtonsItem;
.source "SamsungCarAppButtonsItem.java"


# instance fields
.field private callBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

.field private context:Landroid/content/Context;

.field private memoBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

.field private musicBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

.field private navBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

.field private srBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

.field private textBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/car/CarAppButtonsItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput-object p1, p0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->context:Landroid/content/Context;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/car/SamsungCarAppButtonsItem;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->stopMusic()V

    return-void
.end method

.method static synthetic access$100(Lcom/vlingo/client/car/SamsungCarAppButtonsItem;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->updateSafeReaderToggleButton()V

    return-void
.end method

.method private final stopMusic()V
    .registers 4

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/vlingo/client/core/audio/AudioFocusManager;->getInstance(Landroid/content/Context;)Lcom/vlingo/client/core/audio/AudioFocusManager;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/vlingo/client/core/audio/AudioFocusManager;->requestAudioFocus(II)V

    .line 57
    return-void
.end method

.method private updateSafeReaderToggleButton()V
    .registers 3

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/samsung/DrivingModeUtil;->isDrivingModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_13

    const v0, 0x7f0200eb

    .line 159
    .local v0, res:I
    :goto_d
    iget-object v1, p0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->srBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

    invoke-virtual {v1, v0}, Lcom/vlingo/client/car/SamsungCarAppButtons;->setUnderImageViewResources(I)V

    .line 162
    return-void

    .line 158
    .end local v0           #res:I
    :cond_13
    const v0, 0x7f0200ea

    goto :goto_d
.end method


# virtual methods
.method public displayLabel()Z
    .registers 2

    .prologue
    .line 189
    const/4 v0, 0x1

    return v0
.end method

.method public displayTryAgain()Z
    .registers 2

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public getRandomHint()Ljava/lang/String;
    .registers 2

    .prologue
    .line 197
    invoke-static {}, Lcom/vlingo/client/car/Hints;->getRandomHint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;
    .registers 3

    .prologue
    .line 201
    new-instance v0, Lcom/vlingo/client/asr/AndroidSRContext;

    const-string v1, "vp_car_main_generic"

    invoke-direct {v0, v1}, Lcom/vlingo/client/asr/AndroidSRContext;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getShownPrompt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 205
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->HOME_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {v0}, Lcom/vlingo/client/core/tts/TTSDemand;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpokenPrompt()Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 3

    .prologue
    .line 209
    const-string v0, "car_first_run"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 210
    const-string v0, "car_first_run"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->setBoolean(Ljava/lang/String;Z)V

    .line 211
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->HOME_PROMPT_DEMAND_FIRST_TIME:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 213
    :goto_11
    return-object v0

    :cond_12
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->HOME_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    goto :goto_11
.end method

.method public lockScreenOnStartListen()Z
    .registers 2

    .prologue
    .line 181
    const/4 v0, 0x1

    return v0
.end method

.method protected onFinishInflate()V
    .registers 8

    .prologue
    const v6, 0x7f0f0111

    const v5, 0x7f0f0110

    const/16 v4, 0x8

    const v3, 0x7f0f0114

    const v2, 0x7f0f0112

    .line 59
    invoke-super {p0}, Lcom/vlingo/client/car/CarAppButtonsItem;->onFinishInflate()V

    .line 60
    const v0, 0x7f0f010d

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/SamsungCarAppButtons;

    iput-object v0, p0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->callBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

    .line 61
    iget-object v0, p0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->callBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

    new-instance v1, Lcom/vlingo/client/car/SamsungCarAppButtonsItem$1;

    invoke-direct {v1, p0}, Lcom/vlingo/client/car/SamsungCarAppButtonsItem$1;-><init>(Lcom/vlingo/client/car/SamsungCarAppButtonsItem;)V

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/SamsungCarAppButtons;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-virtual {p0, v5}, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/SamsungCarAppButtons;

    iput-object v0, p0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->textBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

    .line 69
    iget-object v0, p0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->textBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

    new-instance v1, Lcom/vlingo/client/car/SamsungCarAppButtonsItem$2;

    invoke-direct {v1, p0}, Lcom/vlingo/client/car/SamsungCarAppButtonsItem$2;-><init>(Lcom/vlingo/client/car/SamsungCarAppButtonsItem;)V

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/SamsungCarAppButtons;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v0, 0x7f0f0113

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/SamsungCarAppButtons;

    iput-object v0, p0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->memoBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

    .line 78
    invoke-static {}, Lcom/vlingo/client/ClientConfiguration;->isGaudiPhone()Z

    move-result v0

    if-nez v0, :cond_a3

    invoke-static {}, Lcom/vlingo/client/ClientConfiguration;->isEpic2Phone()Z

    move-result v0

    if-nez v0, :cond_a3

    .line 79
    iget-object v0, p0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->memoBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

    new-instance v1, Lcom/vlingo/client/car/SamsungCarAppButtonsItem$3;

    invoke-direct {v1, p0}, Lcom/vlingo/client/car/SamsungCarAppButtonsItem$3;-><init>(Lcom/vlingo/client/car/SamsungCarAppButtonsItem;)V

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/SamsungCarAppButtons;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    :goto_59
    invoke-virtual {p0, v3}, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/SamsungCarAppButtons;

    iput-object v0, p0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->srBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

    .line 94
    iget-object v0, p0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->srBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

    new-instance v1, Lcom/vlingo/client/car/SamsungCarAppButtonsItem$4;

    invoke-direct {v1, p0}, Lcom/vlingo/client/car/SamsungCarAppButtonsItem$4;-><init>(Lcom/vlingo/client/car/SamsungCarAppButtonsItem;)V

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/SamsungCarAppButtons;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-virtual {p0, v2}, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/SamsungCarAppButtons;

    iput-object v0, p0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->musicBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

    .line 104
    iget-object v0, p0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->musicBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

    new-instance v1, Lcom/vlingo/client/car/SamsungCarAppButtonsItem$5;

    invoke-direct {v1, p0}, Lcom/vlingo/client/car/SamsungCarAppButtonsItem$5;-><init>(Lcom/vlingo/client/car/SamsungCarAppButtonsItem;)V

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/SamsungCarAppButtons;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-virtual {p0, v6}, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/SamsungCarAppButtons;

    iput-object v0, p0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->navBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

    .line 119
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 120
    invoke-virtual {p0, v6}, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/SamsungCarAppButtons;

    iput-object v0, p0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->navBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

    .line 121
    iget-object v0, p0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->navBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

    new-instance v1, Lcom/vlingo/client/car/SamsungCarAppButtonsItem$6;

    invoke-direct {v1, p0}, Lcom/vlingo/client/car/SamsungCarAppButtonsItem$6;-><init>(Lcom/vlingo/client/car/SamsungCarAppButtonsItem;)V

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/SamsungCarAppButtons;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    :goto_9f
    invoke-direct {p0}, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->updateSafeReaderToggleButton()V

    .line 150
    return-void

    .line 87
    :cond_a3
    iget-object v0, p0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->memoBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

    invoke-virtual {v0, v4}, Lcom/vlingo/client/car/SamsungCarAppButtons;->setVisibility(I)V

    .line 88
    invoke-virtual {p0, v2}, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/SamsungCarAppButtons;

    iput-object v0, p0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->musicBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

    .line 89
    invoke-virtual {p0, v3}, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/SamsungCarAppButtons;

    iput-object v0, p0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->srBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

    .line 90
    iget-object v0, p0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->srBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

    invoke-virtual {v0, v2}, Lcom/vlingo/client/car/SamsungCarAppButtons;->setNextFocusLeftId(I)V

    .line 91
    iget-object v0, p0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->musicBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

    invoke-virtual {v0, v3}, Lcom/vlingo/client/car/SamsungCarAppButtons;->setNextFocusRightId(I)V

    goto :goto_59

    .line 129
    :cond_c3
    iget-object v0, p0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->navBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

    invoke-virtual {v0, v4}, Lcom/vlingo/client/car/SamsungCarAppButtons;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->textBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

    iget-object v1, p0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->navBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

    invoke-virtual {v1}, Lcom/vlingo/client/car/SamsungCarAppButtons;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/SamsungCarAppButtons;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    iget-object v0, p0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->textBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

    invoke-virtual {v0, v2}, Lcom/vlingo/client/car/SamsungCarAppButtons;->setNextFocusRightId(I)V

    .line 133
    iget-object v0, p0, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->musicBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

    invoke-virtual {v0, v5}, Lcom/vlingo/client/car/SamsungCarAppButtons;->setNextFocusLeftId(I)V

    goto :goto_9f
.end method

.method public onShown()V
    .registers 1

    .prologue
    .line 153
    invoke-super {p0}, Lcom/vlingo/client/car/CarAppButtonsItem;->onShown()V

    .line 154
    invoke-direct {p0}, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->updateSafeReaderToggleButton()V

    .line 155
    return-void
.end method

.method public supportsHints()Z
    .registers 2

    .prologue
    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public updateButtonStates()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/vlingo/client/car/SamsungCarAppButtonsItem;->updateSafeReaderToggleButton()V

    .line 51
    return-void
.end method
