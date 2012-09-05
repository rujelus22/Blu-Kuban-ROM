.class public Lcom/sprint/dsa/dss/StateManager;
.super Ljava/lang/Object;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/dsa/dss/StateManager$dsaBackgroundState;,
        Lcom/sprint/dsa/dss/StateManager$dsaUIState;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SprintZone_DSA"

.field public static final pingDelay:I = 0xfa0


# instance fields
.field private WATCHDOG_INTERVAL:J

.field private currentBGState:Lcom/sprint/dsa/dss/StateManager$dsaBackgroundState;

.field currentUIState:Lcom/sprint/dsa/dss/StateManager$dsaUIState;

.field public keepAliveTimer:Ljava/util/Timer;

.field private mDsaClient:Lcom/sprint/dsa/dss/DsaClient;

.field private stateTimer:I

.field public timer:Ljava/util/Timer;

.field public uiTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/sprint/dsa/dss/DsaClient;)V
    .registers 4
    .parameter "activity"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/dss/StateManager;->uiTimer:Ljava/util/Timer;

    .line 26
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/sprint/dsa/dss/StateManager;->WATCHDOG_INTERVAL:J

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprint/dsa/dss/StateManager;->stateTimer:I

    .line 40
    iput-object p1, p0, Lcom/sprint/dsa/dss/StateManager;->mDsaClient:Lcom/sprint/dsa/dss/DsaClient;

    .line 41
    sget-object v0, Lcom/sprint/dsa/dss/StateManager$dsaUIState;->DSA_START:Lcom/sprint/dsa/dss/StateManager$dsaUIState;

    iput-object v0, p0, Lcom/sprint/dsa/dss/StateManager;->currentUIState:Lcom/sprint/dsa/dss/StateManager$dsaUIState;

    .line 42
    sget-object v0, Lcom/sprint/dsa/dss/StateManager$dsaBackgroundState;->DSA_IDEAL:Lcom/sprint/dsa/dss/StateManager$dsaBackgroundState;

    iput-object v0, p0, Lcom/sprint/dsa/dss/StateManager;->currentBGState:Lcom/sprint/dsa/dss/StateManager$dsaBackgroundState;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/sprint/dsa/dss/StateManager;)V
    .registers 1
    .parameter

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/sprint/dsa/dss/StateManager;->pingServer()V

    return-void
.end method

.method private pingServer()V
    .registers 9

    .prologue
    .line 151
    :try_start_0
    const-string v2, "SprintZone_DSA"

    const-string v3, "PING SERVER.........................."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance v7, Ljava/net/DatagramSocket;

    invoke-direct {v7}, Ljava/net/DatagramSocket;-><init>()V

    .line 155
    .local v7, udpSocket:Ljava/net/DatagramSocket;
    const-string v2, "0"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 156
    .local v1, buf:[B
    const-string v2, "10.31.172.173"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 160
    .local v4, ip:Ljava/net/InetAddress;
    new-instance v0, Ljava/net/DatagramPacket;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v5, 0x50

    invoke-direct/range {v0 .. v5}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 162
    .local v0, dp:Ljava/net/DatagramPacket;
    invoke-virtual {v7, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 163
    invoke-virtual {v7}, Ljava/net/DatagramSocket;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_27} :catch_28

    .line 177
    .end local v0           #dp:Ljava/net/DatagramPacket;
    .end local v1           #buf:[B
    .end local v4           #ip:Ljava/net/InetAddress;
    .end local v7           #udpSocket:Ljava/net/DatagramSocket;
    :goto_27
    return-void

    .line 174
    :catch_28
    move-exception v6

    .line 175
    .local v6, e:Ljava/io/IOException;
    const-string v2, "SprintZone_DSA"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27
.end method

.method private terminatePaused()V
    .registers 4

    .prologue
    .line 76
    sget-object v0, Lcom/sprint/dsa/dss/StateManager$dsaUIState;->DSA_DONE:Lcom/sprint/dsa/dss/StateManager$dsaUIState;

    iput-object v0, p0, Lcom/sprint/dsa/dss/StateManager;->currentUIState:Lcom/sprint/dsa/dss/StateManager$dsaUIState;

    .line 77
    const-string v0, "SprintZone_DSA"

    const-string v1, "TerminatePaused"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/sprint/dsa/dss/StateManager;->currentBGState:Lcom/sprint/dsa/dss/StateManager$dsaBackgroundState;

    sget-object v1, Lcom/sprint/dsa/dss/StateManager$dsaBackgroundState;->DSA_IDEAL:Lcom/sprint/dsa/dss/StateManager$dsaBackgroundState;

    if-ne v0, v1, :cond_1f

    .line 79
    const-string v0, "SprintZone_DSA"

    const-string v1, "Shutdown and release of SLOT0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/sprint/dsa/dss/StateManager;->mDsaClient:Lcom/sprint/dsa/dss/DsaClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/dss/DsaClient;->close(I)V

    .line 87
    :goto_1e
    return-void

    .line 83
    :cond_1f
    const-string v0, "SprintZone_DSA"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current BG State is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sprint/dsa/dss/StateManager;->currentBGState:Lcom/sprint/dsa/dss/StateManager$dsaBackgroundState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/sprint/dsa/dss/StateManager;->mDsaClient:Lcom/sprint/dsa/dss/DsaClient;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sprint/dsa/dss/DsaClient;->exitAction:Z

    goto :goto_1e
.end method


# virtual methods
.method public done()V
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sprint/dsa/dss/StateManager;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sprint/dsa/dss/StateManager;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 183
    :cond_9
    iget-object v0, p0, Lcom/sprint/dsa/dss/StateManager;->keepAliveTimer:Ljava/util/Timer;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sprint/dsa/dss/StateManager;->keepAliveTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 184
    :cond_12
    return-void
.end method

.method public getBGState()Lcom/sprint/dsa/dss/StateManager$dsaBackgroundState;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sprint/dsa/dss/StateManager;->currentBGState:Lcom/sprint/dsa/dss/StateManager$dsaBackgroundState;

    return-object v0
.end method

.method public getUIState()Lcom/sprint/dsa/dss/StateManager$dsaUIState;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sprint/dsa/dss/StateManager;->currentUIState:Lcom/sprint/dsa/dss/StateManager$dsaUIState;

    return-object v0
.end method

.method public setBGState(Lcom/sprint/dsa/dss/StateManager$dsaBackgroundState;)V
    .registers 8
    .parameter "state"

    .prologue
    const-wide/16 v2, 0xfa0

    .line 133
    iput-object p1, p0, Lcom/sprint/dsa/dss/StateManager;->currentBGState:Lcom/sprint/dsa/dss/StateManager$dsaBackgroundState;

    .line 134
    sget-object v0, Lcom/sprint/dsa/dss/StateManager$dsaBackgroundState;->DSA_LOADING_URL:Lcom/sprint/dsa/dss/StateManager$dsaBackgroundState;

    if-ne v0, p1, :cond_1b

    .line 135
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/dss/StateManager;->keepAliveTimer:Ljava/util/Timer;

    .line 136
    iget-object v0, p0, Lcom/sprint/dsa/dss/StateManager;->keepAliveTimer:Ljava/util/Timer;

    new-instance v1, Lcom/sprint/dsa/dss/StateManager$2;

    invoke-direct {v1, p0}, Lcom/sprint/dsa/dss/StateManager$2;-><init>(Lcom/sprint/dsa/dss/StateManager;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 145
    :cond_1a
    :goto_1a
    return-void

    .line 141
    :cond_1b
    sget-object v0, Lcom/sprint/dsa/dss/StateManager$dsaBackgroundState;->DSA_IDEAL:Lcom/sprint/dsa/dss/StateManager$dsaBackgroundState;

    if-ne v0, p1, :cond_1a

    .line 142
    iget-object v0, p0, Lcom/sprint/dsa/dss/StateManager;->keepAliveTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/sprint/dsa/dss/StateManager;->keepAliveTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_1a
.end method

.method public setUIState(Lcom/sprint/dsa/dss/StateManager$dsaUIState;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 110
    iget-object v1, p0, Lcom/sprint/dsa/dss/StateManager;->currentUIState:Lcom/sprint/dsa/dss/StateManager$dsaUIState;

    sget-object v2, Lcom/sprint/dsa/dss/StateManager$dsaUIState;->DSA_PAUSSED:Lcom/sprint/dsa/dss/StateManager$dsaUIState;

    if-eq v1, v2, :cond_8

    iput-object p1, p0, Lcom/sprint/dsa/dss/StateManager;->currentUIState:Lcom/sprint/dsa/dss/StateManager$dsaUIState;

    .line 111
    :cond_8
    sget-object v1, Lcom/sprint/dsa/dss/StateManager$dsaUIState;->DSA_PAUSSED:Lcom/sprint/dsa/dss/StateManager$dsaUIState;

    if-eq p1, v1, :cond_1f

    .line 113
    sget-object v1, Lcom/sprint/dsa/dss/StateManager$dsaUIState;->DSA_RESUMED:Lcom/sprint/dsa/dss/StateManager$dsaUIState;

    if-ne p1, v1, :cond_29

    iget-object v1, p0, Lcom/sprint/dsa/dss/StateManager;->currentUIState:Lcom/sprint/dsa/dss/StateManager$dsaUIState;

    sget-object v2, Lcom/sprint/dsa/dss/StateManager$dsaUIState;->DSA_PAUSSED:Lcom/sprint/dsa/dss/StateManager$dsaUIState;

    if-ne v1, v2, :cond_29

    .line 116
    :try_start_16
    iget-object v1, p0, Lcom/sprint/dsa/dss/StateManager;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/sprint/dsa/dss/StateManager;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1f} :catch_20

    .line 124
    :cond_1f
    :goto_1f
    return-void

    .line 117
    :catch_20
    move-exception v0

    .line 118
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SprintZone_DSA"

    const-string v2, "Cancel Pause Watch"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 120
    .end local v0           #e:Ljava/lang/Exception;
    :cond_29
    sget-object v1, Lcom/sprint/dsa/dss/StateManager$dsaUIState;->DSA_DONE:Lcom/sprint/dsa/dss/StateManager$dsaUIState;

    if-ne p1, v1, :cond_1f

    .line 121
    sget-object v1, Lcom/sprint/dsa/dss/StateManager$dsaUIState;->DSA_DONE:Lcom/sprint/dsa/dss/StateManager$dsaUIState;

    iput-object v1, p0, Lcom/sprint/dsa/dss/StateManager;->currentUIState:Lcom/sprint/dsa/dss/StateManager$dsaUIState;

    goto :goto_1f
.end method

.method public startPauseWatch()V
    .registers 4

    .prologue
    .line 58
    :try_start_0
    const-string v1, "SprintZone_DSA"

    const-string v2, "Scheduled shutdown and release of SLOT0"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 71
    :goto_7
    return-void

    .line 67
    :catch_8
    move-exception v0

    .line 68
    .local v0, e:Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/sprint/dsa/dss/StateManager;->terminatePaused()V

    .line 69
    const-string v1, "SprintZone_DSA"

    const-string v2, "PauseWatch"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public startWDEnableUI(I)V
    .registers 7
    .parameter "interval"

    .prologue
    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/sprint/dsa/dss/StateManager;->uiTimer:Ljava/util/Timer;

    new-instance v2, Lcom/sprint/dsa/dss/StateManager$1;

    invoke-direct {v2, p0}, Lcom/sprint/dsa/dss/StateManager$1;-><init>(Lcom/sprint/dsa/dss/StateManager;)V

    .line 97
    int-to-long v3, p1

    .line 93
    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 101
    :goto_b
    return-void

    .line 98
    :catch_c
    move-exception v0

    .line 99
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SprintZone_DSA"

    const-string v2, "WatchDog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method
