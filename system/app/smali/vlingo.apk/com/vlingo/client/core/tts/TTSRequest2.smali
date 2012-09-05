.class public Lcom/vlingo/client/core/tts/TTSRequest2;
.super Ljava/lang/Object;
.source "TTSRequest2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/core/tts/TTSRequest2$1;,
        Lcom/vlingo/client/core/tts/TTSRequest2$State;
    }
.end annotation


# static fields
.field private static final READBACK_MSG:I = 0x1

.field private static final READBACK_TTS:I = 0x0

.field private static final TTS_TIMEOUT_LONG:I = 0x7530

.field private static final TTS_TIMEOUT_NORM:I = 0x2af8

.field private static s_Sequence:I


# instance fields
.field private allowShakeToSkip:Z

.field private body:Ljava/lang/String;

.field private bodyWordCount:I

.field private cacheable:Z

.field private volatile cancelled:Z

.field private demand:Lcom/vlingo/client/core/tts/TTSDemand;

.field private format:Ljava/lang/String;

.field private gender:Ljava/lang/String;

.field private headers:Ljava/lang/String;

.field private lang:Ljava/lang/String;

.field private m_Sequence:I

.field private messageContext:Lcom/vlingo/client/safereader/MessageContext;

.field private messageReadback:I

.field private msgType:Ljava/lang/String;

.field private volatile playing:Z

.field private sender:Ljava/lang/String;

.field private state:Lcom/vlingo/client/core/tts/TTSRequest2$State;

.field private subjWordCount:I

.field private subject:Ljava/lang/String;

.field private useOnboard:Z

.field private version:Ljava/lang/String;

.field private wordCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput v0, Lcom/vlingo/client/core/tts/TTSRequest2;->s_Sequence:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "from"
    .parameter "msg"
    .parameter "subj"
    .parameter "head"

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v2, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->cancelled:Z

    .line 33
    iput-boolean v2, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->playing:Z

    .line 40
    iput v2, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->messageReadback:I

    .line 46
    const/16 v0, 0x1e

    iput v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->wordCount:I

    .line 47
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->version:Ljava/lang/String;

    .line 52
    const-string v0, "Confirm"

    iput-object v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->msgType:Ljava/lang/String;

    .line 54
    iput v3, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->subjWordCount:I

    .line 55
    iput v3, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->bodyWordCount:I

    .line 61
    iput-boolean v2, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->cacheable:Z

    .line 62
    iput-boolean v2, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->useOnboard:Z

    .line 63
    iput-boolean v2, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->allowShakeToSkip:Z

    .line 67
    sget-object v0, Lcom/vlingo/client/core/tts/TTSRequest2$State;->NONE:Lcom/vlingo/client/core/tts/TTSRequest2$State;

    iput-object v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->state:Lcom/vlingo/client/core/tts/TTSRequest2$State;

    .line 83
    invoke-direct {p0}, Lcom/vlingo/client/core/tts/TTSRequest2;->init()V

    .line 84
    if-nez p1, :cond_42

    move-object v0, v1

    :goto_2c
    iput-object v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->sender:Ljava/lang/String;

    .line 85
    if-nez p3, :cond_47

    move-object v0, v1

    :goto_31
    iput-object v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->subject:Ljava/lang/String;

    .line 86
    if-nez p4, :cond_4c

    :goto_35
    iput-object v1, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->headers:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->body:Ljava/lang/String;

    .line 88
    sget v0, Lcom/vlingo/client/core/tts/TTSRequest2;->s_Sequence:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/vlingo/client/core/tts/TTSRequest2;->s_Sequence:I

    iput v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->m_Sequence:I

    .line 89
    return-void

    .line 84
    :cond_42
    invoke-static {p1}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    .line 85
    :cond_47
    invoke-static {p3}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    .line 86
    :cond_4c
    invoke-static {p4}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_35
.end method

.method public static genRequest(Lcom/vlingo/client/core/tts/TTSDemand;)Lcom/vlingo/client/core/tts/TTSRequest2;
    .registers 5
    .parameter "demand"

    .prologue
    const/4 v3, 0x1

    .line 114
    const/4 v0, 0x0

    .line 119
    .local v0, req:Lcom/vlingo/client/core/tts/TTSRequest2;
    if-eqz p0, :cond_18

    .line 120
    sget-object v1, Lcom/vlingo/client/core/tts/TTSRequest2$1;->$SwitchMap$com$vlingo$client$core$tts$TTSDemand$TTSType:[I

    invoke-virtual {p0}, Lcom/vlingo/client/core/tts/TTSDemand;->getType()Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_84

    .line 167
    :cond_13
    :goto_13
    if-eqz v0, :cond_18

    .line 168
    invoke-virtual {v0, p0}, Lcom/vlingo/client/core/tts/TTSRequest2;->setDemand(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 172
    :cond_18
    return-object v0

    .line 124
    :pswitch_19
    invoke-virtual {p0}, Lcom/vlingo/client/core/tts/TTSDemand;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSRequest2;->getSimpleCommand(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSRequest2;

    move-result-object v0

    .line 125
    invoke-virtual {v0, v3}, Lcom/vlingo/client/core/tts/TTSRequest2;->setCacheable(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/vlingo/client/core/tts/TTSDemand;->getBehavior()Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    move-result-object v1

    sget-object v2, Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;->HIGH_PRIORITY:Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    if-ne v1, v2, :cond_13

    invoke-static {}, Lcom/vlingo/client/core/tts/TTSEngine;->getInstance()Lcom/vlingo/client/core/tts/TTSEngine;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vlingo/client/core/tts/TTSEngine;->isCached(Lcom/vlingo/client/core/tts/TTSRequest2;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 127
    iput-boolean v3, v0, Lcom/vlingo/client/core/tts/TTSRequest2;->useOnboard:Z

    goto :goto_13

    .line 132
    :pswitch_39
    invoke-virtual {p0}, Lcom/vlingo/client/core/tts/TTSDemand;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSRequest2;->getSimpleCommand(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSRequest2;

    move-result-object v0

    .line 133
    invoke-virtual {v0, v3}, Lcom/vlingo/client/core/tts/TTSRequest2;->setCacheable(Z)V

    goto :goto_13

    .line 137
    :pswitch_45
    invoke-virtual {p0}, Lcom/vlingo/client/core/tts/TTSDemand;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSRequest2;->getSimpleCommand(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSRequest2;

    move-result-object v0

    .line 138
    goto :goto_13

    .line 141
    :pswitch_4e
    invoke-virtual {p0}, Lcom/vlingo/client/core/tts/TTSDemand;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSRequest2;->getSimpleCommand(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSRequest2;

    move-result-object v0

    .line 142
    iput-boolean v3, v0, Lcom/vlingo/client/core/tts/TTSRequest2;->allowShakeToSkip:Z

    goto :goto_13

    .line 148
    :pswitch_59
    invoke-virtual {p0}, Lcom/vlingo/client/core/tts/TTSDemand;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSRequest2;->getSimpleCommand(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSRequest2;

    move-result-object v0

    .line 149
    goto :goto_13

    .line 152
    :pswitch_62
    invoke-virtual {p0}, Lcom/vlingo/client/core/tts/TTSDemand;->getMsgContext()Lcom/vlingo/client/safereader/MessageContext;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSRequest2;->getEmailReadback(Lcom/vlingo/client/safereader/MessageContext;)Lcom/vlingo/client/core/tts/TTSRequest2;

    move-result-object v0

    .line 153
    iput-boolean v3, v0, Lcom/vlingo/client/core/tts/TTSRequest2;->allowShakeToSkip:Z

    goto :goto_13

    .line 157
    :pswitch_6d
    invoke-virtual {p0}, Lcom/vlingo/client/core/tts/TTSDemand;->getMsgContext()Lcom/vlingo/client/safereader/MessageContext;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSRequest2;->getSMSReadback(Lcom/vlingo/client/safereader/MessageContext;)Lcom/vlingo/client/core/tts/TTSRequest2;

    move-result-object v0

    .line 158
    iput-boolean v3, v0, Lcom/vlingo/client/core/tts/TTSRequest2;->allowShakeToSkip:Z

    goto :goto_13

    .line 162
    :pswitch_78
    invoke-virtual {p0}, Lcom/vlingo/client/core/tts/TTSDemand;->getMsgContext()Lcom/vlingo/client/safereader/MessageContext;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSRequest2;->getMMSReadback(Lcom/vlingo/client/safereader/MessageContext;)Lcom/vlingo/client/core/tts/TTSRequest2;

    move-result-object v0

    .line 163
    iput-boolean v3, v0, Lcom/vlingo/client/core/tts/TTSRequest2;->allowShakeToSkip:Z

    goto :goto_13

    .line 120
    nop

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_39
        :pswitch_45
        :pswitch_4e
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_62
        :pswitch_6d
        :pswitch_78
    .end packed-switch
.end method

.method private static getEmailReadback(Lcom/vlingo/client/safereader/MessageContext;)Lcom/vlingo/client/core/tts/TTSRequest2;
    .registers 6
    .parameter "context"

    .prologue
    .line 183
    new-instance v0, Lcom/vlingo/client/core/tts/TTSRequest2;

    invoke-virtual {p0}, Lcom/vlingo/client/safereader/MessageContext;->getSenderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vlingo/client/safereader/MessageContext;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vlingo/client/safereader/MessageContext;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vlingo/client/safereader/MessageContext;->getHeaders()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vlingo/client/core/tts/TTSRequest2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .local v0, reqOut:Lcom/vlingo/client/core/tts/TTSRequest2;
    invoke-virtual {v0, p0}, Lcom/vlingo/client/core/tts/TTSRequest2;->setMessageContext(Lcom/vlingo/client/safereader/MessageContext;)V

    .line 185
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/vlingo/client/core/tts/TTSRequest2;->setMessageReadback(I)V

    .line 186
    const-string v1, "Email"

    invoke-direct {v0, v1}, Lcom/vlingo/client/core/tts/TTSRequest2;->setMsgType(Ljava/lang/String;)V

    .line 187
    return-object v0
.end method

.method private static getMMSReadback(Lcom/vlingo/client/safereader/MessageContext;)Lcom/vlingo/client/core/tts/TTSRequest2;
    .registers 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 199
    new-instance v0, Lcom/vlingo/client/core/tts/TTSRequest2;

    invoke-virtual {p0}, Lcom/vlingo/client/safereader/MessageContext;->getSenderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vlingo/client/safereader/MessageContext;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/vlingo/client/core/tts/TTSRequest2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .local v0, reqOut:Lcom/vlingo/client/core/tts/TTSRequest2;
    invoke-virtual {v0, p0}, Lcom/vlingo/client/core/tts/TTSRequest2;->setMessageContext(Lcom/vlingo/client/safereader/MessageContext;)V

    .line 201
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/vlingo/client/core/tts/TTSRequest2;->setMessageReadback(I)V

    .line 202
    const-string v1, "MMS"

    invoke-direct {v0, v1}, Lcom/vlingo/client/core/tts/TTSRequest2;->setMsgType(Ljava/lang/String;)V

    .line 203
    return-object v0
.end method

.method private static getSMSReadback(Lcom/vlingo/client/safereader/MessageContext;)Lcom/vlingo/client/core/tts/TTSRequest2;
    .registers 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 191
    new-instance v0, Lcom/vlingo/client/core/tts/TTSRequest2;

    invoke-virtual {p0}, Lcom/vlingo/client/safereader/MessageContext;->getSenderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vlingo/client/safereader/MessageContext;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/vlingo/client/core/tts/TTSRequest2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .local v0, reqOut:Lcom/vlingo/client/core/tts/TTSRequest2;
    invoke-virtual {v0, p0}, Lcom/vlingo/client/core/tts/TTSRequest2;->setMessageContext(Lcom/vlingo/client/safereader/MessageContext;)V

    .line 193
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/vlingo/client/core/tts/TTSRequest2;->setMessageReadback(I)V

    .line 194
    const-string v1, "SMS"

    invoke-direct {v0, v1}, Lcom/vlingo/client/core/tts/TTSRequest2;->setMsgType(Ljava/lang/String;)V

    .line 195
    return-object v0
.end method

.method private static getSimpleCommand(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSRequest2;
    .registers 3
    .parameter "command"

    .prologue
    const/4 v1, 0x0

    .line 177
    new-instance v0, Lcom/vlingo/client/core/tts/TTSRequest2;

    invoke-direct {v0, v1, p0, v1, v1}, Lcom/vlingo/client/core/tts/TTSRequest2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .local v0, reqOut:Lcom/vlingo/client/core/tts/TTSRequest2;
    const-string v1, "Confirm"

    invoke-direct {v0, v1}, Lcom/vlingo/client/core/tts/TTSRequest2;->setMsgType(Ljava/lang/String;)V

    .line 179
    return-object v0
.end method

.method private init()V
    .registers 2

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/vlingo/client/core/tts/TTSRequest2;->setLang()V

    .line 93
    invoke-direct {p0}, Lcom/vlingo/client/core/tts/TTSRequest2;->setGender()V

    .line 101
    const-string v0, "MP3"

    iput-object v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->format:Ljava/lang/String;

    .line 103
    return-void
.end method

.method private nullSafeIsEmpty(Ljava/lang/String;)Z
    .registers 4
    .parameter "s"

    .prologue
    const/4 v0, 0x1

    .line 211
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v0, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private setGender()V
    .registers 2

    .prologue
    .line 358
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->getTTSVoice()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->gender:Ljava/lang/String;

    .line 360
    return-void
.end method

.method private setLang()V
    .registers 2

    .prologue
    .line 339
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 340
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->getVlingoLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->lang:Ljava/lang/String;

    .line 346
    :goto_d
    return-void

    .line 343
    :cond_e
    sget-object v0, Lcom/vlingo/client/settings/Settings;->DEFAULT_LANGUAGE:Ljava/lang/String;

    iput-object v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->lang:Ljava/lang/String;

    goto :goto_d
.end method

.method private setMessageReadback(I)V
    .registers 2
    .parameter "b"

    .prologue
    .line 375
    iput p1, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->messageReadback:I

    .line 376
    return-void
.end method

.method private setMsgType(Ljava/lang/String;)V
    .registers 2
    .parameter "type"

    .prologue
    .line 379
    iput-object p1, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->msgType:Ljava/lang/String;

    .line 380
    return-void
.end method


# virtual methods
.method public allowShakeToSkip()Z
    .registers 2

    .prologue
    .line 470
    iget-boolean v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->allowShakeToSkip:Z

    return v0
.end method

.method public getBody()Ljava/lang/String;
    .registers 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getBodyWordCount()I
    .registers 3

    .prologue
    .line 441
    iget v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->bodyWordCount:I

    if-gez v0, :cond_13

    .line 442
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->body:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 443
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->body:Ljava/lang/String;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/vlingo/client/core/util/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->bodyWordCount:I

    .line 449
    :cond_13
    :goto_13
    iget v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->bodyWordCount:I

    return v0

    .line 446
    :cond_16
    const/4 v0, 0x0

    iput v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->bodyWordCount:I

    goto :goto_13
.end method

.method public getDemand()Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->demand:Lcom/vlingo/client/core/tts/TTSDemand;

    return-object v0
.end method

.method public getMessageContext()Lcom/vlingo/client/safereader/MessageContext;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->messageContext:Lcom/vlingo/client/safereader/MessageContext;

    return-object v0
.end method

.method public getMsgTimeoutValue()I
    .registers 2

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/vlingo/client/core/tts/TTSRequest2;->isMessageReadback()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 292
    const/16 v0, 0x7530

    .line 293
    :goto_8
    return v0

    :cond_9
    const/16 v0, 0x2af8

    goto :goto_8
.end method

.method public getMsgType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->msgType:Ljava/lang/String;

    return-object v0
.end method

.method public getSender()Ljava/lang/String;
    .registers 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->sender:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getState()Lcom/vlingo/client/core/tts/TTSRequest2$State;
    .registers 2

    .prologue
    .line 110
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->state:Lcom/vlingo/client/core/tts/TTSRequest2$State;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSubjWordCount()I
    .registers 3

    .prologue
    .line 429
    iget v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->subjWordCount:I

    if-gez v0, :cond_13

    .line 430
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->subject:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 431
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->subject:Ljava/lang/String;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/vlingo/client/core/util/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->subjWordCount:I

    .line 437
    :cond_13
    :goto_13
    iget v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->subjWordCount:I

    return v0

    .line 434
    :cond_16
    const/4 v0, 0x0

    iput v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->subjWordCount:I

    goto :goto_13
.end method

.method public getSubject()Ljava/lang/String;
    .registers 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getXML()Ljava/lang/String;
    .registers 7

    .prologue
    .line 232
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 248
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v0, "0"

    .line 249
    .local v0, preSilence:Ljava/lang/String;
    invoke-static {}, Lcom/vlingo/client/core/audio/AudioUtil;->isAudioBluetooth()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 250
    const-string v0, "2000"

    .line 251
    const-string v4, "AMR"

    iput-object v4, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->format:Ljava/lang/String;

    .line 254
    :cond_13
    const/16 v3, 0x64

    .line 256
    .local v3, volume:I
    invoke-virtual {p0}, Lcom/vlingo/client/core/tts/TTSRequest2;->isMessageReadback()Z

    move-result v4

    if-eqz v4, :cond_20b

    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isReadMessageBody()Z

    move-result v4

    if-nez v4, :cond_20b

    const/4 v2, 0x1

    .line 257
    .local v2, senderOnly:Z
    :goto_22
    const-string v4, "<"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "TTSMessageRequest"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "Gender"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->gender:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\" "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "Language"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->lang:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\" "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "AudioFormat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->format:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\" "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "MessageType"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->msgType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\" "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "WordLimit"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->wordCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\" "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "Volume"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\" "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "Version"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\" "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "PreSilence"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\" "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "SenderOnly"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\" "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    iget-object v4, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->sender:Ljava/lang/String;

    if-eqz v4, :cond_148

    iget-object v4, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->sender:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_148

    .line 269
    const-string v4, "<"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "Sender"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->sender:Ljava/lang/String;

    invoke-static {v5}, Lcom/vlingo/client/core/util/XmlUtils;->wrapInCDATA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "Sender"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    :cond_148
    iget-object v4, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->subject:Ljava/lang/String;

    if-eqz v4, :cond_181

    iget-object v4, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->subject:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_181

    .line 272
    const-string v4, "<"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "Subject"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->subject:Ljava/lang/String;

    invoke-static {v5}, Lcom/vlingo/client/core/util/XmlUtils;->wrapInCDATA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "Subject"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    :cond_181
    iget-object v4, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->headers:Ljava/lang/String;

    if-eqz v4, :cond_1ba

    iget-object v4, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->headers:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1ba

    .line 275
    const-string v4, "<"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "Headers"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->headers:Ljava/lang/String;

    invoke-static {v5}, Lcom/vlingo/client/core/util/XmlUtils;->wrapInCDATA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "Headers"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 277
    :cond_1ba
    iget-object v4, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->body:Ljava/lang/String;

    if-eqz v4, :cond_1f5

    iget-object v4, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->body:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1f5

    if-nez v2, :cond_1f5

    .line 278
    const-string v4, "<"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "Body"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->body:Ljava/lang/String;

    invoke-static {v5}, Lcom/vlingo/client/core/util/XmlUtils;->wrapInCDATA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "Body"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 280
    :cond_1f5
    const-string v4, "</"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "TTSMessageRequest"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 284
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 256
    .end local v2           #senderOnly:Z
    :cond_20b
    const/4 v2, 0x0

    goto/16 :goto_22
.end method

.method public isCacheable()Z
    .registers 2

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->cacheable:Z

    return v0
.end method

.method public isCancelled()Z
    .registers 2

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->cancelled:Z

    return v0
.end method

.method public isEmail()Z
    .registers 3

    .prologue
    .line 453
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->msgType:Ljava/lang/String;

    const-string v1, "Email"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->subject:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/vlingo/client/core/tts/TTSRequest2;->nullSafeIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->sender:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/vlingo/client/core/tts/TTSRequest2;->nullSafeIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->body:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/vlingo/client/core/tts/TTSRequest2;->nullSafeIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public isMessageReadback()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 363
    iget v1, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->messageReadback:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->playing:Z

    return v0
.end method

.method public isSMS()Z
    .registers 3

    .prologue
    .line 457
    iget-object v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->msgType:Ljava/lang/String;

    const-string v1, "SMS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTTSReadback()Z
    .registers 2

    .prologue
    .line 367
    iget v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->messageReadback:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isUseOnboard()Z
    .registers 2

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->useOnboard:Z

    return v0
.end method

.method public reset()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 461
    iput-boolean v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->cancelled:Z

    .line 462
    iput-boolean v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->playing:Z

    .line 463
    return-void
.end method

.method public sequence()I
    .registers 2

    .prologue
    .line 466
    iget v0, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->m_Sequence:I

    return v0
.end method

.method public setCacheable(Z)V
    .registers 2
    .parameter "cacheable"

    .prologue
    .line 301
    iput-boolean p1, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->cacheable:Z

    .line 302
    return-void
.end method

.method public declared-synchronized setCancelled(Z)V
    .registers 3
    .parameter "b"

    .prologue
    .line 395
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->cancelled:Z

    .line 396
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 397
    monitor-exit p0

    return-void

    .line 395
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDemand(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "demand"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->demand:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 228
    return-void
.end method

.method public setMessageContext(Lcom/vlingo/client/safereader/MessageContext;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->messageContext:Lcom/vlingo/client/safereader/MessageContext;

    .line 216
    return-void
.end method

.method public declared-synchronized setPlaying(Z)V
    .registers 3
    .parameter "b"

    .prologue
    .line 404
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->playing:Z

    .line 405
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 406
    monitor-exit p0

    return-void

    .line 404
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setState(Lcom/vlingo/client/core/tts/TTSRequest2$State;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 106
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->state:Lcom/vlingo/client/core/tts/TTSRequest2$State;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 107
    monitor-exit p0

    return-void

    .line 106
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setUseOnboard(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 309
    iput-boolean p1, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->useOnboard:Z

    .line 310
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[TTSRequest@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": T="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->msgType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MRB="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->messageReadback:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " C="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->cancelled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " P="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vlingo/client/core/tts/TTSRequest2;->playing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " BODY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vlingo/client/core/tts/TTSRequest2;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
