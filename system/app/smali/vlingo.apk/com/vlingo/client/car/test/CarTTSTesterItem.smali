.class public Lcom/vlingo/client/car/test/CarTTSTesterItem;
.super Lcom/vlingo/client/car/CarScrollableItem;
.source "CarTTSTesterItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private cancel:Landroid/widget/Button;

.field private cancelAll:Landroid/widget/Button;

.field private final handler:Landroid/os/Handler;

.field private final mBinder:Lcom/vlingo/client/core/tts/ITTSListener$Stub;

.field private playCached:Landroid/widget/Button;

.field private playComp:Landroid/widget/Button;

.field private playFetched:Landroid/widget/Button;

.field private playHP:Landroid/widget/Button;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/car/CarScrollableItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem;->handler:Landroid/os/Handler;

    .line 106
    new-instance v0, Lcom/vlingo/client/car/test/CarTTSTesterItem$1;

    invoke-direct {v0, p0}, Lcom/vlingo/client/car/test/CarTTSTesterItem$1;-><init>(Lcom/vlingo/client/car/test/CarTTSTesterItem;)V

    iput-object v0, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem;->mBinder:Lcom/vlingo/client/core/tts/ITTSListener$Stub;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/car/test/CarTTSTesterItem;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vlingo/client/car/test/CarTTSTesterItem;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getFieldID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    const-string v0, "vp_car_main_generic"

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 85
    iget-object v2, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem;->playCached:Landroid/widget/Button;

    if-ne p1, v2, :cond_e

    .line 86
    iget-object v2, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    sget-object v3, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->HOME_PROMPT_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-interface {v2, v3}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 103
    :cond_d
    :goto_d
    return-void

    .line 87
    :cond_e
    iget-object v2, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem;->playFetched:Landroid/widget/Button;

    if-ne p1, v2, :cond_33

    .line 88
    iget-object v2, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "This is a fetched request with time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    goto :goto_d

    .line 89
    :cond_33
    iget-object v2, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem;->playComp:Landroid/widget/Button;

    if-ne p1, v2, :cond_61

    .line 90
    const/4 v2, 0x2

    new-array v1, v2, [Lcom/vlingo/client/core/tts/TTSDemand;

    .line 91
    .local v1, demands:[Lcom/vlingo/client/core/tts/TTSDemand;
    sget-object v2, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SMS_SEND_CONFIRM_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    aput-object v2, v1, v3

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This is a serial fetched request with time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v2

    aput-object v2, v1, v5

    .line 93
    iget-object v2, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2, v1}, Lcom/vlingo/client/car/CarActivityDelegate;->speak([Lcom/vlingo/client/core/tts/TTSDemand;)V

    goto :goto_d

    .line 94
    .end local v1           #demands:[Lcom/vlingo/client/core/tts/TTSDemand;
    :cond_61
    iget-object v2, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem;->cancel:Landroid/widget/Button;

    if-ne p1, v2, :cond_6d

    .line 95
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/vlingo/client/safereader/SafeReaderAPI;->cancel(Z)V

    goto :goto_d

    .line 96
    :cond_6d
    iget-object v2, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem;->cancelAll:Landroid/widget/Button;

    if-ne p1, v2, :cond_79

    .line 97
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/vlingo/client/safereader/SafeReaderAPI;->cancel(Z)V

    goto :goto_d

    .line 98
    :cond_79
    iget-object v2, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem;->playHP:Landroid/widget/Button;

    if-ne p1, v2, :cond_d

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This is a test of the native TTS engine with time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v0

    .line 100
    .local v0, demand:Lcom/vlingo/client/core/tts/TTSDemand;
    sget-object v2, Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;->HIGH_PRIORITY:Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    invoke-virtual {v0, v2}, Lcom/vlingo/client/core/tts/TTSDemand;->setBehavior(Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;)V

    .line 101
    iget-object v2, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2, v0}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    goto/16 :goto_d
.end method

.method public onDelegateAttached()V
    .registers 4

    .prologue
    .line 73
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onDelegateAttached()V

    .line 74
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem;->mBinder:Lcom/vlingo/client/core/tts/ITTSListener$Stub;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vlingo/client/safereader/SafeReaderAPI;->addTTSListener(Lcom/vlingo/client/core/tts/ITTSListener;I)V

    .line 75
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 45
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onFinishInflate()V

    .line 56
    const v0, 0x7f0f002f

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/test/CarTTSTesterItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem;->textView:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem;->playCached:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem;->playFetched:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem;->cancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem;->cancelAll:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem;->playComp:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/vlingo/client/car/test/CarTTSTesterItem;->playHP:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void
.end method

.method public onRemoved()V
    .registers 3

    .prologue
    .line 80
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onRemoved()V

    .line 81
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/safereader/SafeReaderAPI;->removeTTSListener(I)V

    .line 82
    return-void
.end method
