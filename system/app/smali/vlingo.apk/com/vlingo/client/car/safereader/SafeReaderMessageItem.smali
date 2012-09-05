.class public Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;
.super Lcom/vlingo/client/car/CarScrollableItem;
.source "SafeReaderMessageItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/car/safereader/SafeReaderMessageItem$SafeReaderMessageListener;
    }
.end annotation


# instance fields
.field private address:Ljava/lang/String;

.field private volatile autoCloseEnabled:Z

.field private volatile autoCloseStarted:Z

.field private autoCountdownHandler:Landroid/os/Handler;

.field private callbackButton:Landroid/widget/Button;

.field private countdown:I

.field private isMMS:Z

.field private listener:Lcom/vlingo/client/car/safereader/SafeReaderMessageItem$SafeReaderMessageListener;

.field private message:Ljava/lang/String;

.field private messageHeaderView:Landroid/widget/TextView;

.field private readDemand:Lcom/vlingo/client/core/tts/TTSDemand;

.field private readoutButton:Landroid/widget/Button;

.field private replyButton:Landroid/widget/Button;

.field private scrollView:Landroid/widget/ScrollView;

.field private sender:Ljava/lang/String;

.field private textMessage:Landroid/widget/TextView;

.field private textMessageHidden:Landroid/widget/TextView;

.field private textSender:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/car/CarScrollableItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    iput-boolean v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->autoCloseEnabled:Z

    .line 53
    iput-boolean v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->autoCloseStarted:Z

    .line 65
    new-instance v0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem$1;

    invoke-direct {v0, p0}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem$1;-><init>(Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;)V

    iput-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->autoCountdownHandler:Landroid/os/Handler;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;)Lcom/vlingo/client/car/CarActivityDelegate;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->autoCloseEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->countdown:I

    return v0
.end method

.method static synthetic access$210(Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->countdown:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->countdown:I

    return v0
.end method

.method static synthetic access$300(Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;)Lcom/vlingo/client/car/CarActivityDelegate;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->autoCountdownHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private haveConnection()Z
    .registers 9

    .prologue
    .line 239
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v6

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Lcom/vlingo/client/VlingoApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 240
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v5

    .line 241
    .local v5, ni:[Landroid/net/NetworkInfo;
    move-object v0, v5

    .local v0, arr$:[Landroid/net/NetworkInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_13
    if-ge v2, v3, :cond_46

    aget-object v4, v0, v2

    .line 242
    .local v4, n:Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MOBILE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3b

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WIFI"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3b

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WIMAX"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 243
    :cond_3b
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_43

    .line 244
    const/4 v6, 0x1

    .line 246
    .end local v4           #n:Landroid/net/NetworkInfo;
    :goto_42
    return v6

    .line 241
    .restart local v4       #n:Landroid/net/NetworkInfo;
    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 246
    .end local v4           #n:Landroid/net/NetworkInfo;
    :cond_46
    const/4 v6, 0x0

    goto :goto_42
.end method

.method private readOut()V
    .registers 1

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->setShown()V

    .line 291
    invoke-direct {p0}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->speakMessage()V

    .line 292
    return-void
.end method

.method private removeTTSListener()V
    .registers 2

    .prologue
    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->autoCloseEnabled:Z

    .line 267
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v0}, Lcom/vlingo/client/car/CarActivityDelegate;->getTTSManager()Lcom/vlingo/client/car/tts/CarTTSManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vlingo/client/car/tts/CarTTSManager;->removeListener(Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;)V

    .line 268
    return-void
.end method

.method private setHidden()V
    .registers 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 295
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->replyButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->readoutButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 298
    iget-boolean v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->isMMS:Z

    if-eqz v0, :cond_24

    .line 299
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->textMessageHidden:Landroid/widget/TextView;

    const v1, 0x7f09020a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 304
    :goto_1e
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->textMessageHidden:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    return-void

    .line 302
    :cond_24
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->textMessageHidden:Landroid/widget/TextView;

    const v1, 0x7f090209

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1e
.end method

.method private setMessage(Ljava/lang/String;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 315
    if-nez p1, :cond_22

    .line 316
    const-string p1, ""

    .line 321
    :goto_4
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->textMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_30

    .line 324
    iget-boolean v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->isMMS:Z

    if-eqz v0, :cond_27

    .line 325
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->messageHeaderView:Landroid/widget/TextView;

    const v1, 0x7f0901fb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 330
    :goto_1b
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->messageHeaderView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    :goto_21
    return-void

    .line 319
    :cond_22
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 328
    :cond_27
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->messageHeaderView:Landroid/widget/TextView;

    const v1, 0x7f090211

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1b

    .line 334
    :cond_30
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->messageHeaderView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_21
.end method

.method private setShown()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 308
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->replyButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->readoutButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->textMessageHidden:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    return-void
.end method

.method private speakMessage()V
    .registers 7

    .prologue
    .line 156
    iget-object v4, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v4}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 158
    .local v2, resources:Landroid/content/res/Resources;
    const/4 v3, 0x0

    .line 159
    .local v3, textToSpeak:Ljava/lang/String;
    iget-object v4, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->message:Ljava/lang/String;

    if-eqz v4, :cond_1b

    iget-object v4, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->message:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_35

    :cond_1b
    const/4 v1, 0x1

    .line 161
    .local v1, isEmpty:Z
    :goto_1c
    if-eqz v1, :cond_3f

    .line 162
    iget-boolean v4, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->isMMS:Z

    if-eqz v4, :cond_37

    const v4, 0x7f0901fc

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 170
    :goto_29
    invoke-static {v3}, Lcom/vlingo/client/core/tts/TTSDemand;->genCarConfirmation(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v0

    .line 171
    .local v0, demand:Lcom/vlingo/client/core/tts/TTSDemand;
    iput-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->readDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 172
    iget-object v4, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v4, v0}, Lcom/vlingo/client/car/CarActivityDelegate;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 173
    return-void

    .line 159
    .end local v0           #demand:Lcom/vlingo/client/core/tts/TTSDemand;
    .end local v1           #isEmpty:Z
    :cond_35
    const/4 v1, 0x0

    goto :goto_1c

    .line 162
    .restart local v1       #isEmpty:Z
    :cond_37
    const v4, 0x7f09020e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_29

    .line 166
    :cond_3f
    iget-boolean v4, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->isMMS:Z

    if-eqz v4, :cond_64

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f090279

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_63
    goto :goto_29

    :cond_64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0900dd

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_63
.end method


# virtual methods
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

    iput-boolean v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->autoCloseEnabled:Z

    .line 181
    new-instance v0, Lcom/vlingo/client/asr/AndroidSRContext;

    const-string v1, "vp_car_safereader_msgidle"

    invoke-direct {v0, v1}, Lcom/vlingo/client/asr/AndroidSRContext;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getShownPrompt()Ljava/lang/String;
    .registers 3

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpokenPrompt()Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 2

    .prologue
    .line 197
    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SAFEREADER_NEW_SMS_CMD_REPLY_OR_READ:Lcom/vlingo/client/core/tts/TTSDemand;

    return-object v0
.end method

.method public handleLPAction(Ljava/lang/String;)Z
    .registers 6
    .parameter "action"

    .prologue
    const/4 v0, 0x1

    .line 271
    if-eqz p1, :cond_3c

    .line 272
    const-string v1, "safereader:read"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 273
    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v1}, Lcom/vlingo/client/car/CarActivityDelegate;->getTTSManager()Lcom/vlingo/client/car/tts/CarTTSManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/car/tts/CarTTSManager;->cancel()V

    .line 274
    invoke-direct {p0}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->readOut()V

    .line 286
    :goto_17
    return v0

    .line 277
    :cond_18
    const-string v1, "safereader:reply"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 278
    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->listener:Lcom/vlingo/client/car/safereader/SafeReaderMessageItem$SafeReaderMessageListener;

    iget-object v2, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->sender:Ljava/lang/String;

    iget-object v3, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->address:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem$SafeReaderMessageListener;->onReply(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 281
    :cond_2a
    const-string v1, "safereader:call"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 282
    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->listener:Lcom/vlingo/client/car/safereader/SafeReaderMessageItem$SafeReaderMessageListener;

    iget-object v2, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->sender:Ljava/lang/String;

    iget-object v3, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->address:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem$SafeReaderMessageListener;->onDial(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 286
    :cond_3c
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/vlingo/client/car/safereader/SafeReaderMessageItem$SafeReaderMessageListener;)V
    .registers 9
    .parameter "contact"
    .parameter "message"
    .parameter "address"
    .parameter "hiddenBody"
    .parameter "isMMS"
    .parameter "listener"

    .prologue
    const/4 v0, 0x1

    .line 111
    invoke-virtual {p0}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->setupAutoClose()V

    .line 112
    const-string v1, "car_safereader_prompt"

    invoke-static {v1, v0}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1e

    :goto_c
    iput-boolean v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->autoCloseEnabled:Z

    .line 113
    iput-object p1, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->sender:Ljava/lang/String;

    .line 114
    iput-object p2, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->message:Ljava/lang/String;

    .line 115
    iput-boolean p5, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->isMMS:Z

    .line 116
    if-eqz p4, :cond_20

    .line 117
    invoke-direct {p0}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->setHidden()V

    .line 122
    :goto_19
    iput-object p3, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->address:Ljava/lang/String;

    .line 123
    iput-object p6, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->listener:Lcom/vlingo/client/car/safereader/SafeReaderMessageItem$SafeReaderMessageListener;

    .line 124
    return-void

    .line 112
    :cond_1e
    const/4 v0, 0x0

    goto :goto_c

    .line 120
    :cond_20
    invoke-direct {p0}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->setShown()V

    goto :goto_19
.end method

.method public lockScreenOnStartListen()Z
    .registers 2

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 139
    iput-boolean v2, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->autoCloseEnabled:Z

    .line 140
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->readoutButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_b

    .line 141
    invoke-direct {p0}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->readOut()V

    .line 153
    :cond_a
    :goto_a
    return-void

    .line 143
    :cond_b
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->replyButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2e

    .line 144
    invoke-direct {p0}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->haveConnection()Z

    move-result v0

    if-nez v0, :cond_24

    .line 145
    invoke-virtual {p0}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09031f

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_a

    .line 147
    :cond_24
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->listener:Lcom/vlingo/client/car/safereader/SafeReaderMessageItem$SafeReaderMessageListener;

    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->sender:Ljava/lang/String;

    iget-object v2, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->address:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem$SafeReaderMessageListener;->onReply(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 150
    :cond_2e
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->callbackButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_a

    .line 151
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->listener:Lcom/vlingo/client/car/safereader/SafeReaderMessageItem$SafeReaderMessageListener;

    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->sender:Ljava/lang/String;

    iget-object v2, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->address:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem$SafeReaderMessageListener;->onDial(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public onDelegateAttached()V
    .registers 4

    .prologue
    .line 127
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onDelegateAttached()V

    .line 128
    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    invoke-interface {v1}, Lcom/vlingo/client/car/CarActivityDelegate;->getTTSManager()Lcom/vlingo/client/car/tts/CarTTSManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/vlingo/client/car/tts/CarTTSManager;->addListener(Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;)V

    .line 129
    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->textSender:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->sender:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->message:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->setMessage(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090208

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, easterEggTrigger:Ljava/lang/String;
    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->message:Ljava/lang/String;

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->message:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 134
    invoke-virtual {p0}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/car/CarEasterEggManager;->doEasterEgg(Landroid/content/Context;)V

    .line 136
    :cond_36
    return-void
.end method

.method public onDemandCancelled(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "demand"

    .prologue
    .line 207
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

    .line 211
    .local v0, nullDemand:Lcom/vlingo/client/core/tts/TTSDemand;
    iget-boolean v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->autoCloseEnabled:Z

    if-eqz v1, :cond_1b

    iget-boolean v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->autoCloseStarted:Z

    if-nez v1, :cond_1b

    .line 212
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->autoCloseStarted:Z

    .line 213
    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->autoCountdownHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 236
    .end local v0           #nullDemand:Lcom/vlingo/client/core/tts/TTSDemand;
    :cond_1a
    :goto_1a
    return-void

    .line 215
    .restart local v0       #nullDemand:Lcom/vlingo/client/core/tts/TTSDemand;
    :cond_1b
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSDemand;->getType()Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    move-result-object v1

    sget-object v2, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->READBACK_SMS:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    if-eq v1, v2, :cond_2b

    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSDemand;->getType()Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    move-result-object v1

    sget-object v2, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->READBACK_MMS:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    if-ne v1, v2, :cond_63

    .line 217
    :cond_2b
    invoke-direct {p0}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->haveConnection()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 219
    const-string v1, "car_safereader_read_message"

    invoke-static {v1, v5}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 220
    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    new-instance v2, Lcom/vlingo/client/asr/AndroidSRContext;

    const-string v3, "vp_car_safereader_postmsg"

    invoke-direct {v2, v3}, Lcom/vlingo/client/asr/AndroidSRContext;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isTTSCarModePromptEnabled()Z

    move-result v3

    if-eqz v3, :cond_4a

    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SAFEREADER_NEW_SMS_CMD_REPLY:Lcom/vlingo/client/core/tts/TTSDemand;

    .end local v0           #nullDemand:Lcom/vlingo/client/core/tts/TTSDemand;
    :cond_4a
    invoke-interface {v1, v2, v0, v4}, Lcom/vlingo/client/car/CarActivityDelegate;->startRecognition(Lcom/vlingo/client/core/recognizer/SRContext;Lcom/vlingo/client/core/tts/TTSDemand;Ljava/lang/String;)V

    goto :goto_1a

    .line 224
    .restart local v0       #nullDemand:Lcom/vlingo/client/core/tts/TTSDemand;
    :cond_4e
    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    new-instance v2, Lcom/vlingo/client/asr/AndroidSRContext;

    const-string v3, "vp_car_safereader_newmsg"

    invoke-direct {v2, v3}, Lcom/vlingo/client/asr/AndroidSRContext;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isTTSCarModePromptEnabled()Z

    move-result v3

    if-eqz v3, :cond_5f

    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SAFEREADER_NEW_SMS_CMD_READ:Lcom/vlingo/client/core/tts/TTSDemand;

    .end local v0           #nullDemand:Lcom/vlingo/client/core/tts/TTSDemand;
    :cond_5f
    invoke-interface {v1, v2, v0, v4}, Lcom/vlingo/client/car/CarActivityDelegate;->startRecognition(Lcom/vlingo/client/core/recognizer/SRContext;Lcom/vlingo/client/core/tts/TTSDemand;Ljava/lang/String;)V

    goto :goto_1a

    .line 229
    .restart local v0       #nullDemand:Lcom/vlingo/client/core/tts/TTSDemand;
    :cond_63
    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->readDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->readDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {p1, v1}, Lcom/vlingo/client/core/tts/TTSDemand;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 230
    iput-object v4, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->readDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 231
    invoke-direct {p0}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->haveConnection()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 232
    iget-object v1, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;

    new-instance v2, Lcom/vlingo/client/asr/AndroidSRContext;

    const-string v3, "vp_car_safereader_postmsg"

    invoke-direct {v2, v3}, Lcom/vlingo/client/asr/AndroidSRContext;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isTTSCarModePromptEnabled()Z

    move-result v3

    if-eqz v3, :cond_88

    sget-object v0, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->SAFEREADER_NEW_SMS_CMD_REPLY:Lcom/vlingo/client/core/tts/TTSDemand;

    .end local v0           #nullDemand:Lcom/vlingo/client/core/tts/TTSDemand;
    :cond_88
    invoke-interface {v1, v2, v0, v4}, Lcom/vlingo/client/car/CarActivityDelegate;->startRecognition(Lcom/vlingo/client/core/recognizer/SRContext;Lcom/vlingo/client/core/tts/TTSDemand;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public onDemandIgnored(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "demand"

    .prologue
    .line 250
    return-void
.end method

.method public onDemandWillPlay(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "demand"

    .prologue
    .line 253
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 89
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onFinishInflate()V

    .line 91
    const v0, 0x7f0f0127

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->scrollView:Landroid/widget/ScrollView;

    .line 92
    const v0, 0x7f0f0125

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->textSender:Landroid/widget/TextView;

    .line 93
    const v0, 0x7f0f0128

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->textMessage:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f0f0121

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->messageHeaderView:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f0f0126

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->textMessageHidden:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f0f0123

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->callbackButton:Landroid/widget/Button;

    .line 98
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->callbackButton:Landroid/widget/Button;

    if-eqz v0, :cond_4e

    .line 99
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->callbackButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    :cond_4e
    const v0, 0x7f0f0129

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->readoutButton:Landroid/widget/Button;

    .line 101
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->readoutButton:Landroid/widget/Button;

    if-eqz v0, :cond_62

    .line 102
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->readoutButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    :cond_62
    const v0, 0x7f0f012a

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->replyButton:Landroid/widget/Button;

    .line 104
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->replyButton:Landroid/widget/Button;

    if-eqz v0, :cond_76

    .line 105
    iget-object v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->replyButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    :cond_76
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->setMessage(Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->setHidden()V

    .line 108
    return-void
.end method

.method public onHidden()V
    .registers 1

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->removeTTSListener()V

    .line 257
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onHidden()V

    .line 258
    return-void
.end method

.method public onRemoved()V
    .registers 1

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->removeTTSListener()V

    .line 262
    invoke-super {p0}, Lcom/vlingo/client/car/CarScrollableItem;->onRemoved()V

    .line 263
    return-void
.end method

.method public setupAutoClose()V
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x6

    iput v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->countdown:I

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->autoCloseEnabled:Z

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/car/safereader/SafeReaderMessageItem;->autoCloseStarted:Z

    .line 86
    return-void
.end method

.method public supportsHints()Z
    .registers 2

    .prologue
    .line 189
    const/4 v0, 0x1

    return v0
.end method
