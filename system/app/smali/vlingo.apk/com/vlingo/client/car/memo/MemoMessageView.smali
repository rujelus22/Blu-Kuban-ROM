.class public Lcom/vlingo/client/car/memo/MemoMessageView;
.super Lcom/vlingo/client/car/CarScrollableItem;
.source "MemoMessageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/car/memo/MemoMessageView$MemoMessageViewActionListener;
    }
.end annotation


# instance fields
.field private cmdView:Landroid/widget/TextView;

.field private listener:Lcom/vlingo/client/car/memo/MemoMessageView$MemoMessageViewActionListener;

.field private messageContainer:Landroid/widget/ScrollView;

.field private messageHeaderView:Landroid/widget/TextView;

.field private messageView:Landroid/widget/TextView;

.field private sendButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/car/CarScrollableItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method private getMessageText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoMessageView;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 125
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoMessageView;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 126
    :goto_16
    return-object v0

    :cond_17
    const-string v0, ""

    goto :goto_16
.end method

.method private read(Z)V
    .registers 7
    .parameter "includeType"

    .prologue
    const/4 v4, 0x1

    .line 78
    const/4 v1, 0x2

    new-array v0, v1, [Lcom/vlingo/client/core/tts/TTSDemand;

    .line 79
    .local v0, demands:[Lcom/vlingo/client/core/tts/TTSDemand;
    const/4 v1, 0x0

    sget-object v2, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->MEMO_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    aput-object v2, v0, v1

    .line 81
    invoke-direct {p0}, Lcom/vlingo/client/car/memo/MemoMessageView;->getMessageText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_59

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/vlingo/client/car/memo/MemoMessageView;->getMessageText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vlingo/client/car/memo/MemoMessageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    aput-object v1, v0, v4

    .line 86
    :goto_4b
    iget-object v1, p0, Lcom/vlingo/client/car/memo/MemoMessageView;->autoListenDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    if-nez v1, :cond_53

    .line 87
    aget-object v1, v0, v4

    iput-object v1, p0, Lcom/vlingo/client/car/memo/MemoMessageView;->autoListenDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 88
    :cond_53
    iget-object v1, p0, Lcom/vlingo/client/car/memo/MemoMessageView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v1, v0}, Lcom/vlingo/client/car/CarActivityDelegate;->speak([Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 89
    return-void

    .line 84
    :cond_59
    invoke-virtual {p0}, Lcom/vlingo/client/car/memo/MemoMessageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    aput-object v1, v0, v4

    goto :goto_4b
.end method

.method private save()V
    .registers 3

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/vlingo/client/car/memo/MemoMessageView;->getMessageText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    .line 167
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoMessageView;->listener:Lcom/vlingo/client/car/memo/MemoMessageView$MemoMessageViewActionListener;

    invoke-direct {p0}, Lcom/vlingo/client/car/memo/MemoMessageView;->getMessageText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/vlingo/client/car/memo/MemoMessageView$MemoMessageViewActionListener;->onSaveMemo(Lcom/vlingo/client/car/memo/MemoMessageView;Ljava/lang/String;)V

    .line 171
    :goto_13
    return-void

    .line 169
    :cond_14
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoMessageView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    sget-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SMS_MESSAGE_BLANK_DEMAND:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-interface {v0, v1}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    goto :goto_13
.end method

.method private setMessage(Ljava/lang/String;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 106
    if-nez p1, :cond_16

    .line 107
    const-string p1, ""

    .line 112
    :goto_4
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoMessageView;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1b

    .line 115
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoMessageView;->messageHeaderView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    :goto_15
    return-void

    .line 110
    :cond_16
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 119
    :cond_1b
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoMessageView;->messageHeaderView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_15
.end method


# virtual methods
.method public getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;
    .registers 3

    .prologue
    .line 135
    new-instance v0, Lcom/vlingo/client/asr/AndroidSRContext;

    const-string v1, "vp_car_memo_msg"

    invoke-direct {v0, v1}, Lcom/vlingo/client/asr/AndroidSRContext;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public handleLPAction(Ljava/lang/String;)Z
    .registers 3
    .parameter "action"

    .prologue
    .line 143
    if-eqz p1, :cond_17

    .line 144
    const-string v0, "send"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "save"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 145
    :cond_12
    invoke-direct {p0}, Lcom/vlingo/client/car/memo/MemoMessageView;->save()V

    .line 146
    const/4 v0, 0x1

    .line 149
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public handleUpdatePage(Lcom/vlingo/client/core/vlservice/response/Action;)Z
    .registers 8
    .parameter "action"

    .prologue
    const/4 v5, 0x1

    .line 154
    const-string v2, "Message"

    invoke-virtual {p1, v2}, Lcom/vlingo/client/core/vlservice/response/Action;->getStringParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, msg:Ljava/lang/String;
    if-eqz v1, :cond_46

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_46

    .line 156
    invoke-direct {p0, v1}, Lcom/vlingo/client/car/memo/MemoMessageView;->setMessage(Ljava/lang/String;)V

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vlingo/client/car/memo/MemoMessageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09005b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v0

    .line 158
    .local v0, demand:Lcom/vlingo/client/core/tts/TTSDemand;
    invoke-virtual {p0, v5}, Lcom/vlingo/client/car/memo/MemoMessageView;->setAutoListenShouldTrigger(Z)V

    .line 159
    iput-object v0, p0, Lcom/vlingo/client/car/memo/MemoMessageView;->autoListenDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 160
    iget-object v2, p0, Lcom/vlingo/client/car/memo/MemoMessageView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v2, v0}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 162
    .end local v0           #demand:Lcom/vlingo/client/core/tts/TTSDemand;
    :cond_46
    return v5
.end method

.method public initialize(Ljava/lang/String;Lcom/vlingo/client/car/memo/MemoMessageView$MemoMessageViewActionListener;)V
    .registers 3
    .parameter "message"
    .parameter "listener"

    .prologue
    .line 67
    iput-object p2, p0, Lcom/vlingo/client/car/memo/MemoMessageView;->listener:Lcom/vlingo/client/car/memo/MemoMessageView$MemoMessageViewActionListener;

    .line 68
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/memo/MemoMessageView;->setMessage(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoMessageView;->messageContainer:Landroid/widget/ScrollView;

    if-ne p1, v0, :cond_39

    .line 93
    invoke-direct {p0}, Lcom/vlingo/client/car/memo/MemoMessageView;->getMessageText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_20

    .line 94
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoMessageView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-direct {p0}, Lcom/vlingo/client/car/memo/MemoMessageView;->getMessageText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 103
    :cond_1f
    :goto_1f
    return-void

    .line 97
    :cond_20
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoMessageView;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-virtual {p0}, Lcom/vlingo/client/car/memo/MemoMessageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    goto :goto_1f

    .line 100
    :cond_39
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoMessageView;->sendButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1f

    .line 101
    invoke-direct {p0}, Lcom/vlingo/client/car/memo/MemoMessageView;->save()V

    goto :goto_1f
.end method

.method public onDelegateAttached()V
    .registers 2

    .prologue
    .line 72
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onDelegateAttached()V

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vlingo/client/car/memo/MemoMessageView;->read(Z)V

    .line 75
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 46
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onFinishInflate()V

    .line 48
    const v0, 0x7f0f002c

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/memo/MemoMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/car/memo/MemoMessageView;->cmdView:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f0f0116

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/memo/MemoMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/vlingo/client/car/memo/MemoMessageView;->messageContainer:Landroid/widget/ScrollView;

    .line 50
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoMessageView;->messageContainer:Landroid/widget/ScrollView;

    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v0, 0x7f0f0031

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/memo/MemoMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/car/memo/MemoMessageView;->messageView:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0f0121

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/memo/MemoMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/car/memo/MemoMessageView;->messageHeaderView:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f0f00a1

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/memo/MemoMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vlingo/client/car/memo/MemoMessageView;->sendButton:Landroid/widget/Button;

    .line 54
    iget-object v0, p0, Lcom/vlingo/client/car/memo/MemoMessageView;->sendButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vlingo/client/car/memo/MemoMessageView;->setMessage(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 63
    invoke-super/range {p0 .. p5}, Lcom/vlingo/client/car/CarScrollableItem;->onLayout(ZIIII)V

    .line 64
    return-void
.end method

.method protected onMeasure(II)V
    .registers 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Lcom/vlingo/client/car/CarScrollableItem;->onMeasure(II)V

    .line 60
    return-void
.end method
