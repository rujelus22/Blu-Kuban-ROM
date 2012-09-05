.class public Lcom/syncmldstmo/network/smlNetworkTimer;
.super Ljava/lang/Object;
.source "smlNetworkTimer.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syncmldstmo/network/smlNetworkTimer$HttpTimerTask;
    }
.end annotation


# static fields
.field private static Timer:Ljava/util/Timer;

.field private static TimerID:Ljava/lang/String;

.field private static count:I

.field private static tptimer:Lcom/syncmldstmo/network/smlNetworkTimer$HttpTimerTask;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 13
    sput-object v0, Lcom/syncmldstmo/network/smlNetworkTimer;->tptimer:Lcom/syncmldstmo/network/smlNetworkTimer$HttpTimerTask;

    .line 14
    sput-object v0, Lcom/syncmldstmo/network/smlNetworkTimer;->Timer:Ljava/util/Timer;

    .line 15
    const/4 v0, 0x0

    sput v0, Lcom/syncmldstmo/network/smlNetworkTimer;->count:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "id"

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Lcom/syncmldstmo/network/smlNetworkTimer;->tptimer:Lcom/syncmldstmo/network/smlNetworkTimer$HttpTimerTask;

    if-nez v0, :cond_b

    sget-object v0, Lcom/syncmldstmo/network/smlNetworkTimer;->Timer:Ljava/util/Timer;

    if-eqz v0, :cond_e

    .line 22
    :cond_b
    invoke-static {}, Lcom/syncmldstmo/network/smlNetworkTimer;->smlEndTimer()V

    .line 25
    :cond_e
    sget-object v0, Lcom/syncmldstmo/network/smlNetworkTimer;->tptimer:Lcom/syncmldstmo/network/smlNetworkTimer$HttpTimerTask;

    if-nez v0, :cond_19

    .line 26
    new-instance v0, Lcom/syncmldstmo/network/smlNetworkTimer$HttpTimerTask;

    invoke-direct {v0, p0}, Lcom/syncmldstmo/network/smlNetworkTimer$HttpTimerTask;-><init>(Lcom/syncmldstmo/network/smlNetworkTimer;)V

    sput-object v0, Lcom/syncmldstmo/network/smlNetworkTimer;->tptimer:Lcom/syncmldstmo/network/smlNetworkTimer$HttpTimerTask;

    .line 27
    :cond_19
    sget-object v0, Lcom/syncmldstmo/network/smlNetworkTimer;->Timer:Ljava/util/Timer;

    if-nez v0, :cond_24

    .line 28
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/syncmldstmo/network/smlNetworkTimer;->Timer:Ljava/util/Timer;

    .line 30
    :cond_24
    invoke-static {p1}, Lcom/syncmldstmo/network/smlNetworkTimer;->smlStartTimer(Ljava/lang/String;)V

    .line 31
    sput-object p1, Lcom/syncmldstmo/network/smlNetworkTimer;->TimerID:Ljava/lang/String;

    .line 32
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 11
    sget-object v0, Lcom/syncmldstmo/network/smlNetworkTimer;->TimerID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 11
    sget v0, Lcom/syncmldstmo/network/smlNetworkTimer;->count:I

    return v0
.end method

.method static synthetic access$112(I)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 11
    sget v0, Lcom/syncmldstmo/network/smlNetworkTimer;->count:I

    add-int/2addr v0, p0

    sput v0, Lcom/syncmldstmo/network/smlNetworkTimer;->count:I

    return v0
.end method

.method public static smlEndTimer()V
    .registers 3

    .prologue
    .line 48
    const/4 v1, 0x0

    :try_start_1
    sput v1, Lcom/syncmldstmo/network/smlNetworkTimer;->count:I

    .line 49
    sget-object v1, Lcom/syncmldstmo/network/smlNetworkTimer;->Timer:Ljava/util/Timer;

    if-eqz v1, :cond_f

    .line 51
    sget-object v1, Lcom/syncmldstmo/network/smlNetworkTimer;->Timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 52
    const/4 v1, 0x0

    sput-object v1, Lcom/syncmldstmo/network/smlNetworkTimer;->Timer:Ljava/util/Timer;

    .line 54
    :cond_f
    sget-object v1, Lcom/syncmldstmo/network/smlNetworkTimer;->tptimer:Lcom/syncmldstmo/network/smlNetworkTimer$HttpTimerTask;

    if-eqz v1, :cond_1b

    .line 56
    sget-object v1, Lcom/syncmldstmo/network/smlNetworkTimer;->tptimer:Lcom/syncmldstmo/network/smlNetworkTimer$HttpTimerTask;

    invoke-virtual {v1}, Lcom/syncmldstmo/network/smlNetworkTimer$HttpTimerTask;->cancel()Z

    .line 57
    const/4 v1, 0x0

    sput-object v1, Lcom/syncmldstmo/network/smlNetworkTimer;->tptimer:Lcom/syncmldstmo/network/smlNetworkTimer$HttpTimerTask;

    .line 60
    :cond_1b
    const/16 v1, 0x8

    const-string v2, "=====================>> END Timer"

    invoke-static {v1, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_23

    .line 66
    .local v0, e:Ljava/lang/Exception;
    :goto_22
    return-void

    .line 62
    .end local v0           #e:Ljava/lang/Exception;
    :catch_23
    move-exception v0

    .line 64
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_22
.end method

.method public static smlStartTimer(Ljava/lang/String;)V
    .registers 6
    .parameter "id"

    .prologue
    .line 36
    const/4 v0, 0x0

    sput v0, Lcom/syncmldstmo/network/smlNetworkTimer;->count:I

    .line 37
    sget-object v0, Lcom/syncmldstmo/network/smlNetworkTimer;->Timer:Ljava/util/Timer;

    if-eqz v0, :cond_31

    sget-object v0, Lcom/syncmldstmo/network/smlNetworkTimer;->tptimer:Lcom/syncmldstmo/network/smlNetworkTimer$HttpTimerTask;

    if-eqz v0, :cond_31

    .line 39
    const/16 v0, 0x8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=====================>> START Timer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 40
    sget-object v0, Lcom/syncmldstmo/network/smlNetworkTimer;->Timer:Ljava/util/Timer;

    sget-object v1, Lcom/syncmldstmo/network/smlNetworkTimer;->tptimer:Lcom/syncmldstmo/network/smlNetworkTimer$HttpTimerTask;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V

    .line 42
    :cond_31
    return-void
.end method
