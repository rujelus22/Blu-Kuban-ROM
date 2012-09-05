.class public Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;
.super Ljava/lang/Object;
.source "ChainedTTSRequestHandler.java"

# interfaces
.implements Lcom/vlingo/client/core/tts/LocalTTSListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler$2;
    }
.end annotation


# static fields
.field private static final TIMEOUT_LONG:I = 0xbb8

.field private static final TIMEOUT_NORM:I = 0x1f4


# instance fields
.field private volatile cancelled:Z

.field private final previousRequest:Lcom/vlingo/client/core/tts/TTSRequest2;

.field private final request:Lcom/vlingo/client/core/tts/TTSRequest2;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/core/tts/TTSRequest2;Lcom/vlingo/client/core/tts/TTSRequest2;)V
    .registers 4
    .parameter "previousRequest"
    .parameter "request"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->cancelled:Z

    .line 30
    iput-object p1, p0, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->previousRequest:Lcom/vlingo/client/core/tts/TTSRequest2;

    .line 31
    iput-object p2, p0, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->request:Lcom/vlingo/client/core/tts/TTSRequest2;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->cancelled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;)Lcom/vlingo/client/core/tts/TTSRequest2;
    .registers 2
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->request:Lcom/vlingo/client/core/tts/TTSRequest2;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->unregisterListener()V

    return-void
.end method

.method private getIntNetworkTimeoutValue(Ljava/lang/String;)I
    .registers 6
    .parameter "v"

    .prologue
    .line 135
    const/4 v1, 0x0

    .line 137
    .local v1, ttsTimeout:I
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_4} :catch_6

    move-result v1

    .line 141
    :goto_5
    return v1

    .line 138
    :catch_6
    move-exception v0

    .line 139
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v2, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private registerListener()V
    .registers 2

    .prologue
    .line 54
    invoke-static {}, Lcom/vlingo/client/core/tts/TTSEngine;->getInstance()Lcom/vlingo/client/core/tts/TTSEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vlingo/client/core/tts/TTSEngine;->addLocalListener(Lcom/vlingo/client/core/tts/LocalTTSListener;)V

    .line 55
    return-void
.end method

.method private unregisterListener()V
    .registers 2

    .prologue
    .line 60
    invoke-static {}, Lcom/vlingo/client/core/tts/TTSEngine;->getInstance()Lcom/vlingo/client/core/tts/TTSEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vlingo/client/core/tts/TTSEngine;->removeLocalListener(Lcom/vlingo/client/core/tts/LocalTTSListener;)V

    .line 61
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->cancelled:Z

    .line 50
    invoke-direct {p0}, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->unregisterListener()V

    .line 51
    return-void
.end method

.method public init()V
    .registers 3

    .prologue
    .line 35
    sget-object v0, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler$2;->$SwitchMap$com$vlingo$client$core$tts$TTSDemand$TTSBehavior:[I

    iget-object v1, p0, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->request:Lcom/vlingo/client/core/tts/TTSRequest2;

    invoke-virtual {v1}, Lcom/vlingo/client/core/tts/TTSRequest2;->getDemand()Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->getBehavior()Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/core/tts/TTSDemand$TTSBehavior;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 44
    :goto_15
    :pswitch_15
    return-void

    .line 41
    :pswitch_16
    invoke-direct {p0}, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->registerListener()V

    goto :goto_15

    .line 35
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public onCancel(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 3
    .parameter "request"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->request:Lcom/vlingo/client/core/tts/TTSRequest2;

    invoke-virtual {v0}, Lcom/vlingo/client/core/tts/TTSRequest2;->getDemand()Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/tts/TTSDemand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->previousRequest:Lcom/vlingo/client/core/tts/TTSRequest2;

    invoke-virtual {v0}, Lcom/vlingo/client/core/tts/TTSRequest2;->getDemand()Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/tts/TTSDemand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 77
    :cond_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->cancelled:Z

    .line 78
    invoke-direct {p0}, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->unregisterListener()V

    .line 80
    :cond_1e
    return-void
.end method

.method public onIgnore(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 3
    .parameter "request"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->request:Lcom/vlingo/client/core/tts/TTSRequest2;

    invoke-virtual {v0}, Lcom/vlingo/client/core/tts/TTSRequest2;->getDemand()Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/tts/TTSDemand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->previousRequest:Lcom/vlingo/client/core/tts/TTSRequest2;

    invoke-virtual {v0}, Lcom/vlingo/client/core/tts/TTSRequest2;->getDemand()Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vlingo/client/core/tts/TTSDemand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 86
    :cond_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->cancelled:Z

    .line 87
    invoke-direct {p0}, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->unregisterListener()V

    .line 89
    :cond_1e
    return-void
.end method

.method public onStart(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 2
    .parameter "request"

    .prologue
    .line 71
    return-void
.end method

.method public onStop(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 7
    .parameter "request"

    .prologue
    .line 95
    iget-boolean v1, p0, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->cancelled:Z

    if-eqz v1, :cond_5

    .line 131
    :cond_4
    :goto_4
    return-void

    .line 98
    :cond_5
    iget-object v1, p0, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->request:Lcom/vlingo/client/core/tts/TTSRequest2;

    invoke-virtual {v1}, Lcom/vlingo/client/core/tts/TTSRequest2;->getDemand()Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/vlingo/client/core/tts/TTSDemand;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 99
    invoke-direct {p0}, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->unregisterListener()V

    goto :goto_4

    .line 101
    :cond_15
    iget-object v1, p0, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->previousRequest:Lcom/vlingo/client/core/tts/TTSRequest2;

    invoke-virtual {v1}, Lcom/vlingo/client/core/tts/TTSRequest2;->getDemand()Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/vlingo/client/core/tts/TTSDemand;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 102
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->getNetworkTimeout()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->getIntNetworkTimeoutValue(Ljava/lang/String;)I

    move-result v0

    .line 103
    .local v0, timeout:I
    if-gtz v0, :cond_2d

    .line 104
    const/16 v0, 0x1f4

    .line 106
    :cond_2d
    iget-object v1, p0, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;->request:Lcom/vlingo/client/core/tts/TTSRequest2;

    invoke-virtual {v1}, Lcom/vlingo/client/core/tts/TTSRequest2;->getDemand()Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3c

    if-le v1, v2, :cond_45

    const/16 v1, 0xbb8

    if-le v1, v0, :cond_45

    .line 108
    const/16 v0, 0xbb8

    .line 112
    :cond_45
    invoke-static {}, Lcom/vlingo/client/core/util/TimerSingleton;->getTimer()Ljava/util/Timer;

    move-result-object v1

    new-instance v2, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler$1;

    invoke-direct {v2, p0}, Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler$1;-><init>(Lcom/vlingo/client/core/tts/ChainedTTSRequestHandler;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_4
.end method
