.class public Lcom/vlingo/client/car/CarAppButtonsItem;
.super Lcom/vlingo/client/car/CarScrollableItem;
.source "CarAppButtonsItem.java"


# instance fields
.field private callBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

.field private navBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

.field private srBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

.field private textBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/car/CarScrollableItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method private updateSafeReaderToggleButton()V
    .registers 1

    .prologue
    .line 106
    return-void
.end method


# virtual methods
.method public displayLabel()Z
    .registers 2

    .prologue
    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public displayTryAgain()Z
    .registers 2

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

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
    .line 145
    new-instance v0, Lcom/vlingo/client/asr/AndroidSRContext;

    const-string v1, "vp_car_main_generic"

    invoke-direct {v0, v1}, Lcom/vlingo/client/asr/AndroidSRContext;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getShownPrompt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->HOME_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {v0}, Lcom/vlingo/client/core/tts/TTSDemand;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpokenPrompt()Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 3

    .prologue
    .line 153
    const-string v0, "car_first_run"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 154
    const-string v0, "car_first_run"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->setBoolean(Ljava/lang/String;Z)V

    .line 155
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->HOME_PROMPT_DEMAND_FIRST_TIME:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 157
    :goto_11
    return-object v0

    :cond_12
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->HOME_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    goto :goto_11
.end method

.method public lockScreenOnStartListen()Z
    .registers 2

    .prologue
    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 48
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onFinishInflate()V

    .line 50
    const v0, 0x7f0f010d

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/CarAppButtonsItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/SamsungCarAppButtons;

    iput-object v0, p0, Lcom/vlingo/client/car/CarAppButtonsItem;->callBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

    .line 51
    iget-object v0, p0, Lcom/vlingo/client/car/CarAppButtonsItem;->callBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

    new-instance v1, Lcom/vlingo/client/car/CarAppButtonsItem$1;

    invoke-direct {v1, p0}, Lcom/vlingo/client/car/CarAppButtonsItem$1;-><init>(Lcom/vlingo/client/car/CarAppButtonsItem;)V

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/SamsungCarAppButtons;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v0, 0x7f0f0110

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/CarAppButtonsItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/SamsungCarAppButtons;

    iput-object v0, p0, Lcom/vlingo/client/car/CarAppButtonsItem;->textBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

    .line 60
    iget-object v0, p0, Lcom/vlingo/client/car/CarAppButtonsItem;->textBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

    new-instance v1, Lcom/vlingo/client/car/CarAppButtonsItem$2;

    invoke-direct {v1, p0}, Lcom/vlingo/client/car/CarAppButtonsItem$2;-><init>(Lcom/vlingo/client/car/CarAppButtonsItem;)V

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/SamsungCarAppButtons;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v0, 0x7f0f0111

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/CarAppButtonsItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/SamsungCarAppButtons;

    iput-object v0, p0, Lcom/vlingo/client/car/CarAppButtonsItem;->navBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

    .line 69
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 70
    iget-object v0, p0, Lcom/vlingo/client/car/CarAppButtonsItem;->navBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

    new-instance v1, Lcom/vlingo/client/car/CarAppButtonsItem$3;

    invoke-direct {v1, p0}, Lcom/vlingo/client/car/CarAppButtonsItem$3;-><init>(Lcom/vlingo/client/car/CarAppButtonsItem;)V

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/SamsungCarAppButtons;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    :goto_4a
    const v0, 0x7f0f0114

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/CarAppButtonsItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/SamsungCarAppButtons;

    iput-object v0, p0, Lcom/vlingo/client/car/CarAppButtonsItem;->srBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

    .line 82
    iget-object v0, p0, Lcom/vlingo/client/car/CarAppButtonsItem;->srBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

    new-instance v1, Lcom/vlingo/client/car/CarAppButtonsItem$4;

    invoke-direct {v1, p0}, Lcom/vlingo/client/car/CarAppButtonsItem$4;-><init>(Lcom/vlingo/client/car/CarAppButtonsItem;)V

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/SamsungCarAppButtons;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    invoke-direct {p0}, Lcom/vlingo/client/car/CarAppButtonsItem;->updateSafeReaderToggleButton()V

    .line 95
    return-void

    .line 79
    :cond_63
    iget-object v0, p0, Lcom/vlingo/client/car/CarAppButtonsItem;->navBtn:Lcom/vlingo/client/car/SamsungCarAppButtons;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/SamsungCarAppButtons;->setVisibility(I)V

    goto :goto_4a
.end method

.method public onShown()V
    .registers 1

    .prologue
    .line 98
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onShown()V

    .line 99
    invoke-direct {p0}, Lcom/vlingo/client/car/CarAppButtonsItem;->updateSafeReaderToggleButton()V

    .line 100
    return-void
.end method

.method public supportsHints()Z
    .registers 2

    .prologue
    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method public updateButtonStates()V
    .registers 1

    .prologue
    .line 45
    return-void
.end method
