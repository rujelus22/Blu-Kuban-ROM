.class public Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;
.super Lcom/vlingo/client/car/CarScrollableItem;
.source "SafeReaderReadbackMessageItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem$SafeReaderMessageListener;
    }
.end annotation


# instance fields
.field private address:Ljava/lang/String;

.field private volatile autoCloseEnabled:Z

.field private volatile autoCloseStarted:Z

.field private autoCountdownHandler:Landroid/os/Handler;

.field private callbackButton:Landroid/widget/Button;

.field private countdown:I

.field private displayed:Z

.field private listener:Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem$SafeReaderMessageListener;

.field private message:Ljava/lang/String;

.field private messageObj:Lcom/vlingo/client/util/SMSUtil$TextMessage;

.field private nextButton:Landroid/widget/Button;

.field private readDemand:Lcom/vlingo/client/core/tts/TTSDemand;

.field private sender:Ljava/lang/String;

.field private speakAgainButton:Landroid/widget/Button;

.field private textMessage:Landroid/widget/TextView;

.field private textSender:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/car/CarScrollableItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-boolean v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->autoCloseEnabled:Z

    .line 46
    iput-boolean v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->autoCloseStarted:Z

    .line 123
    iput-boolean v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->displayed:Z

    .line 62
    new-instance v0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem$1;

    invoke-direct {v0, p0}, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem$1;-><init>(Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;)V

    iput-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->autoCountdownHandler:Landroid/os/Handler;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;)Lcom/vlingo/client/car/CarActivityDelegate;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->autoCloseEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->countdown:I

    return v0
.end method

.method static synthetic access$210(Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->countdown:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->countdown:I

    return v0
.end method

.method static synthetic access$300(Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;)Lcom/vlingo/client/car/CarActivityDelegate;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->autoCountdownHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->displayed:Z

    return v0
.end method

.method private removeTTSListener()V
    .registers 2

    .prologue
    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->autoCloseEnabled:Z

    .line 252
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->getTTSManager()Lcom/vlingo/client/car/tts/CarTTSManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vlingo/client/car/tts/CarTTSManager;->removeListener(Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;)V

    .line 253
    return-void
.end method

.method private speakItem()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 161
    invoke-virtual {p0}, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/vlingo/client/samsung/DrivingModeUtil;->isDrivingModeMessageNotificaitonEnabled(Landroid/content/Context;)Z

    move-result v2

    .line 163
    .local v2, readMessage:Z
    iget-object v3, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v3}, Lcom/vlingo/client/car/CarActivityDelegate;->getTTSManager()Lcom/vlingo/client/car/tts/CarTTSManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vlingo/client/car/tts/CarTTSManager;->cancel()V

    .line 164
    iget-object v3, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v3}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090251

    new-array v5, v8, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->sender:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->message:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, msgFormat:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v0, v3, [Lcom/vlingo/client/core/tts/TTSDemand;

    .line 166
    .local v0, demands:[Lcom/vlingo/client/core/tts/TTSDemand;
    sget-object v3, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SMS_MESSAGE_FROM:Lcom/vlingo/client/core/tts/TTSDemand;

    aput-object v3, v0, v9

    .line 167
    if-eqz v2, :cond_5c

    .line 168
    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v3

    aput-object v3, v0, v8

    .line 171
    :goto_52
    aget-object v3, v0, v8

    iput-object v3, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->readDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 172
    iget-object v3, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v3, v0}, Lcom/vlingo/client/car/CarActivityDelegate;->speak([Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 173
    return-void

    .line 170
    :cond_5c
    iget-object v3, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->sender:Ljava/lang/String;

    invoke-static {v3}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v3

    aput-object v3, v0, v8

    goto :goto_52
.end method


# virtual methods
.method public disableNext()V
    .registers 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->nextButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 81
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->nextButton:Landroid/widget/Button;

    const v1, -0x7f7f80

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 82
    return-void
.end method

.method public getMessageObj()Lcom/vlingo/client/util/SMSUtil$TextMessage;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->messageObj:Lcom/vlingo/client/util/SMSUtil$TextMessage;

    return-object v0
.end method

.method public getRandomHint()Ljava/lang/String;
    .registers 2

    .prologue
    .line 193
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/vlingo/client/car/Hints;->getRandomHintForType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;
    .registers 3

    .prologue
    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->autoCloseEnabled:Z

    .line 181
    new-instance v0, Lcom/vlingo/client/asr/AndroidSRContext;

    const-string v1, "vp_car_safereader_msgidle"

    invoke-direct {v0, v1}, Lcom/vlingo/client/asr/AndroidSRContext;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getShownPrompt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 201
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->MESSAGE_NEXT_REPLY:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {v0}, Lcom/vlingo/client/core/tts/TTSDemand;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpokenPrompt()Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 2

    .prologue
    .line 197
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->MESSAGE_NEXT_REPLY:Lcom/vlingo/client/core/tts/TTSDemand;

    return-object v0
.end method

.method public handleLPAction(Ljava/lang/String;)Z
    .registers 5
    .parameter "action"

    .prologue
    const/4 v0, 0x1

    .line 256
    if-eqz p1, :cond_3d

    .line 257
    const-string v1, "safereader:read"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 258
    invoke-direct {p0}, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->speakItem()V

    .line 274
    :goto_e
    return v0

    .line 261
    :cond_f
    const-string v1, "safereader:reply"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 262
    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->listener:Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem$SafeReaderMessageListener;

    iget-object v2, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->messageObj:Lcom/vlingo/client/util/SMSUtil$TextMessage;

    invoke-interface {v1, v2}, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem$SafeReaderMessageListener;->onReply(Lcom/vlingo/client/util/SMSUtil$TextMessage;)V

    goto :goto_e

    .line 265
    :cond_1f
    const-string v1, "safereader:call"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 266
    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->listener:Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem$SafeReaderMessageListener;

    iget-object v2, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->messageObj:Lcom/vlingo/client/util/SMSUtil$TextMessage;

    invoke-interface {v1, v2}, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem$SafeReaderMessageListener;->onDial(Lcom/vlingo/client/util/SMSUtil$TextMessage;)V

    goto :goto_e

    .line 269
    :cond_2f
    const-string v1, "safereader:next"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 270
    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v1}, Lcom/vlingo/client/car/CarActivityDelegate;->scrollForward()V

    goto :goto_e

    .line 274
    :cond_3d
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public initialize(Lcom/vlingo/client/util/SMSUtil$TextMessage;Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem$SafeReaderMessageListener;)V
    .registers 4
    .parameter "message"
    .parameter "listener"

    .prologue
    .line 102
    iget-object v0, p1, Lcom/vlingo/client/util/SMSUtil$TextMessage;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->sender:Ljava/lang/String;

    .line 103
    iget-object v0, p1, Lcom/vlingo/client/util/SMSUtil$TextMessage;->body:Ljava/lang/String;

    iput-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->message:Ljava/lang/String;

    .line 104
    iget-object v0, p1, Lcom/vlingo/client/util/SMSUtil$TextMessage;->address:Ljava/lang/String;

    iput-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->address:Ljava/lang/String;

    .line 105
    iput-object p1, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->messageObj:Lcom/vlingo/client/util/SMSUtil$TextMessage;

    .line 106
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->sender:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->sender:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1e

    .line 107
    :cond_1a
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->address:Ljava/lang/String;

    iput-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->sender:Ljava/lang/String;

    .line 108
    :cond_1e
    iput-object p2, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->listener:Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem$SafeReaderMessageListener;

    .line 109
    return-void
.end method

.method public lockScreenOnStartListen()Z
    .registers 2

    .prologue
    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->autoCloseEnabled:Z

    .line 149
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->speakAgainButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_b

    .line 150
    invoke-direct {p0}, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->speakItem()V

    .line 158
    :cond_a
    :goto_a
    return-void

    .line 152
    :cond_b
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->nextButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_15

    .line 153
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->scrollForward()V

    goto :goto_a

    .line 155
    :cond_15
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->callbackButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_a

    .line 156
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->listener:Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem$SafeReaderMessageListener;

    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->messageObj:Lcom/vlingo/client/util/SMSUtil$TextMessage;

    invoke-interface {v0, v1}, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem$SafeReaderMessageListener;->onDial(Lcom/vlingo/client/util/SMSUtil$TextMessage;)V

    goto :goto_a
.end method

.method public onDelegateAttached()V
    .registers 3

    .prologue
    .line 112
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onDelegateAttached()V

    .line 113
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->getTTSManager()Lcom/vlingo/client/car/tts/CarTTSManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vlingo/client/car/tts/CarTTSManager;->addListener(Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;)V

    .line 114
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->textSender:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->sender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->textMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->message:Ljava/lang/String;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->message:Ljava/lang/String;

    const-string v1, "Who Is My Speaker?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 119
    invoke-virtual {p0}, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vlingo/client/car/CarEasterEggManager;->doEasterEgg(Landroid/content/Context;)V

    .line 121
    :cond_2f
    return-void
.end method

.method public onDemandCancelled(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "demand"

    .prologue
    .line 205
    return-void
.end method

.method public onDemandDidPlay(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 8
    .parameter "demand"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 210
    const-string v1, ""

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarPrompt(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v0

    .line 212
    .local v0, nullDemand:Lcom/vlingo/client/core/tts/TTSDemand;
    iget-boolean v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->autoCloseEnabled:Z

    if-eqz v1, :cond_1b

    iget-boolean v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->autoCloseStarted:Z

    if-nez v1, :cond_1b

    .line 213
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->autoCloseStarted:Z

    .line 214
    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->autoCountdownHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 232
    .end local v0           #nullDemand:Lcom/vlingo/client/core/tts/TTSDemand;
    :cond_1a
    :goto_1a
    return-void

    .line 216
    .restart local v0       #nullDemand:Lcom/vlingo/client/core/tts/TTSDemand;
    :cond_1b
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSDemand;->getType()Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    move-result-object v1

    sget-object v2, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->READBACK_SMS:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    if-ne v1, v2, :cond_55

    .line 218
    const-string v1, "car_safereader_read_message"

    invoke-static {v1, v5}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 219
    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    new-instance v2, Lcom/vlingo/client/asr/AndroidSRContext;

    const-string v3, "vp_car_safereader_readbackmsg"

    invoke-direct {v2, v3}, Lcom/vlingo/client/asr/AndroidSRContext;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isTTSCarModePromptEnabled()Z

    move-result v3

    if-eqz v3, :cond_3c

    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SAFEREADER_NEW_SMS_CMD_REPLY:Lcom/vlingo/client/core/tts/TTSDemand;

    .end local v0           #nullDemand:Lcom/vlingo/client/core/tts/TTSDemand;
    :cond_3c
    invoke-interface {v1, v2, v0, v4}, Lcom/vlingo/client/car/CarActivityDelegate;->startRecognition(Lcom/vlingo/client/core/recognizer/SRContext;Lcom/vlingo/client/core/tts/TTSDemand;Ljava/lang/String;)V

    goto :goto_1a

    .line 223
    .restart local v0       #nullDemand:Lcom/vlingo/client/core/tts/TTSDemand;
    :cond_40
    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    new-instance v2, Lcom/vlingo/client/asr/AndroidSRContext;

    const-string v3, "vp_car_safereader_readbackmsg"

    invoke-direct {v2, v3}, Lcom/vlingo/client/asr/AndroidSRContext;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isTTSCarModePromptEnabled()Z

    move-result v3

    if-eqz v3, :cond_51

    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SAFEREADER_NEW_SMS_CMD_READ:Lcom/vlingo/client/core/tts/TTSDemand;

    .end local v0           #nullDemand:Lcom/vlingo/client/core/tts/TTSDemand;
    :cond_51
    invoke-interface {v1, v2, v0, v4}, Lcom/vlingo/client/car/CarActivityDelegate;->startRecognition(Lcom/vlingo/client/core/recognizer/SRContext;Lcom/vlingo/client/core/tts/TTSDemand;Ljava/lang/String;)V

    goto :goto_1a

    .line 227
    .restart local v0       #nullDemand:Lcom/vlingo/client/core/tts/TTSDemand;
    :cond_55
    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->readDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->readDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v1}, Lcom/vlingo/client/core/tts/TTSDemand;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 228
    iput-object v4, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->readDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 229
    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    new-instance v2, Lcom/vlingo/client/asr/AndroidSRContext;

    const-string v3, "vp_car_safereader_readbackmsg"

    invoke-direct {v2, v3}, Lcom/vlingo/client/asr/AndroidSRContext;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isTTSCarModePromptEnabled()Z

    move-result v3

    if-eqz v3, :cond_74

    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->MESSAGE_NEXT_REPLY:Lcom/vlingo/client/core/tts/TTSDemand;

    .end local v0           #nullDemand:Lcom/vlingo/client/core/tts/TTSDemand;
    :cond_74
    invoke-interface {v1, v2, v0, v4}, Lcom/vlingo/client/car/CarActivityDelegate;->startRecognition(Lcom/vlingo/client/core/recognizer/SRContext;Lcom/vlingo/client/core/tts/TTSDemand;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public onDemandIgnored(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "demand"

    .prologue
    .line 235
    return-void
.end method

.method public onDemandWillPlay(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "demand"

    .prologue
    .line 238
    return-void
.end method

.method protected onDisplayed()V
    .registers 3

    .prologue
    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->displayed:Z

    .line 129
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->listener:Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem$SafeReaderMessageListener;

    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->messageObj:Lcom/vlingo/client/util/SMSUtil$TextMessage;

    invoke-interface {v0, v1}, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem$SafeReaderMessageListener;->onDisplayed(Lcom/vlingo/client/util/SMSUtil$TextMessage;)V

    .line 131
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->isRecoActive()Z

    move-result v0

    if-nez v0, :cond_15

    .line 132
    invoke-direct {p0}, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->speakItem()V

    .line 133
    :cond_15
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 85
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onFinishInflate()V

    .line 87
    const v0, 0x7f0f002a

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->textSender:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f0f002d

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->textMessage:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f0f0123

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->callbackButton:Landroid/widget/Button;

    .line 91
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->callbackButton:Landroid/widget/Button;

    if-eqz v0, :cond_2d

    .line 92
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->callbackButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    :cond_2d
    const v0, 0x7f0f002e

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->speakAgainButton:Landroid/widget/Button;

    .line 94
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->speakAgainButton:Landroid/widget/Button;

    if-eqz v0, :cond_41

    .line 95
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->speakAgainButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    :cond_41
    const v0, 0x7f0f0122

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->nextButton:Landroid/widget/Button;

    .line 97
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->nextButton:Landroid/widget/Button;

    if-eqz v0, :cond_55

    .line 98
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    :cond_55
    return-void
.end method

.method public onHidden()V
    .registers 1

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->removeTTSListener()V

    .line 242
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onHidden()V

    .line 243
    return-void
.end method

.method public onRemoved()V
    .registers 1

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;->removeTTSListener()V

    .line 247
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onRemoved()V

    .line 248
    return-void
.end method

.method public onShown()V
    .registers 4

    .prologue
    .line 137
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onShown()V

    .line 138
    new-instance v0, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem$2;

    invoke-direct {v0, p0}, Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem$2;-><init>(Lcom/vlingo/client/car/safereader/SafeReaderReadbackMessageItem;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;J)V

    .line 145
    return-void
.end method

.method public supportsHints()Z
    .registers 2

    .prologue
    .line 189
    const/4 v0, 0x1

    return v0
.end method
