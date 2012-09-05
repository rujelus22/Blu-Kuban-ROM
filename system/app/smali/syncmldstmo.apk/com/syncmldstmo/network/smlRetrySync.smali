.class public Lcom/syncmldstmo/network/smlRetrySync;
.super Ljava/lang/Object;
.source "smlRetrySync.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syncmldstmo/network/smlRetrySync$smlRetryTimerTask;
    }
.end annotation


# static fields
.field private static retryCount:I

.field private static retryStartTime:I

.field private static retrySync:Z

.field private static retryTask:Lcom/syncmldstmo/network/smlRetrySync$smlRetryTimerTask;

.field private static retryTimecount:I

.field private static retryTimer:Ljava/util/Timer;

.field public static sim_exist_for_retry:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 19
    sput-object v1, Lcom/syncmldstmo/network/smlRetrySync;->retryTask:Lcom/syncmldstmo/network/smlRetrySync$smlRetryTimerTask;

    .line 20
    sput-object v1, Lcom/syncmldstmo/network/smlRetrySync;->retryTimer:Ljava/util/Timer;

    .line 21
    sput v0, Lcom/syncmldstmo/network/smlRetrySync;->retryStartTime:I

    .line 23
    sput-boolean v0, Lcom/syncmldstmo/network/smlRetrySync;->retrySync:Z

    .line 24
    sput v0, Lcom/syncmldstmo/network/smlRetrySync;->retryCount:I

    .line 25
    sput v0, Lcom/syncmldstmo/network/smlRetrySync;->retryTimecount:I

    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lcom/syncmldstmo/network/smlRetrySync;->sim_exist_for_retry:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lcom/syncmldstmo/network/smlRetrySync;->retryTask:Lcom/syncmldstmo/network/smlRetrySync$smlRetryTimerTask;

    if-nez v0, :cond_e

    .line 32
    new-instance v0, Lcom/syncmldstmo/network/smlRetrySync$smlRetryTimerTask;

    invoke-direct {v0, p0}, Lcom/syncmldstmo/network/smlRetrySync$smlRetryTimerTask;-><init>(Lcom/syncmldstmo/network/smlRetrySync;)V

    sput-object v0, Lcom/syncmldstmo/network/smlRetrySync;->retryTask:Lcom/syncmldstmo/network/smlRetrySync$smlRetryTimerTask;

    .line 34
    :cond_e
    sget-object v0, Lcom/syncmldstmo/network/smlRetrySync;->retryTimer:Ljava/util/Timer;

    if-nez v0, :cond_19

    .line 35
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/syncmldstmo/network/smlRetrySync;->retryTimer:Ljava/util/Timer;

    .line 37
    :cond_19
    invoke-static {}, Lcom/syncmldstmo/network/smlRetrySync;->smlRetryStartTimer()V

    .line 38
    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 17
    sget v0, Lcom/syncmldstmo/network/smlRetrySync;->retryTimecount:I

    return v0
.end method

.method static synthetic access$012(I)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 17
    sget v0, Lcom/syncmldstmo/network/smlRetrySync;->retryTimecount:I

    add-int/2addr v0, p0

    sput v0, Lcom/syncmldstmo/network/smlRetrySync;->retryTimecount:I

    return v0
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 17
    sget v0, Lcom/syncmldstmo/network/smlRetrySync;->retryStartTime:I

    return v0
.end method

.method public static smlGetExistSIMforRetry()Z
    .registers 3

    .prologue
    .line 206
    const/16 v0, 0x8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM Exist : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/syncmldstmo/network/smlRetrySync;->sim_exist_for_retry:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 207
    sget-boolean v0, Lcom/syncmldstmo/network/smlRetrySync;->sim_exist_for_retry:Z

    return v0
.end method

.method public static smlGetRetryCount()I
    .registers 3

    .prologue
    .line 185
    const/16 v0, 0x8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retryCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/syncmldstmo/network/smlRetrySync;->retryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 186
    sget v0, Lcom/syncmldstmo/network/smlRetrySync;->retryCount:I

    return v0
.end method

.method public static smlGetRetrySync()Z
    .registers 3

    .prologue
    .line 173
    const/16 v0, 0x8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retrySync : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/syncmldstmo/network/smlRetrySync;->retrySync:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 174
    sget-boolean v0, Lcom/syncmldstmo/network/smlRetrySync;->retrySync:Z

    return v0
.end method

.method public static smlRetryEndTimer()V
    .registers 3

    .prologue
    .line 51
    const/4 v1, 0x0

    :try_start_1
    sput v1, Lcom/syncmldstmo/network/smlRetrySync;->retryTimecount:I

    .line 52
    const/4 v1, 0x0

    sput v1, Lcom/syncmldstmo/network/smlRetrySync;->retryStartTime:I

    .line 54
    sget-object v1, Lcom/syncmldstmo/network/smlRetrySync;->retryTask:Lcom/syncmldstmo/network/smlRetrySync$smlRetryTimerTask;

    if-eqz v1, :cond_12

    .line 56
    sget-object v1, Lcom/syncmldstmo/network/smlRetrySync;->retryTask:Lcom/syncmldstmo/network/smlRetrySync$smlRetryTimerTask;

    invoke-virtual {v1}, Lcom/syncmldstmo/network/smlRetrySync$smlRetryTimerTask;->cancel()Z

    .line 57
    const/4 v1, 0x0

    sput-object v1, Lcom/syncmldstmo/network/smlRetrySync;->retryTask:Lcom/syncmldstmo/network/smlRetrySync$smlRetryTimerTask;

    .line 59
    :cond_12
    sget-object v1, Lcom/syncmldstmo/network/smlRetrySync;->retryTimer:Ljava/util/Timer;

    if-eqz v1, :cond_1e

    .line 61
    sget-object v1, Lcom/syncmldstmo/network/smlRetrySync;->retryTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 62
    const/4 v1, 0x0

    sput-object v1, Lcom/syncmldstmo/network/smlRetrySync;->retryTimer:Ljava/util/Timer;

    .line 65
    :cond_1e
    const/16 v1, 0x8

    const-string v2, "=====================>> END Retry Timer"

    invoke-static {v1, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_26

    .line 71
    .local v0, e:Ljava/lang/Exception;
    :goto_25
    return-void

    .line 67
    .end local v0           #e:Ljava/lang/Exception;
    :catch_26
    move-exception v0

    .line 69
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_25
.end method

.method public static smlRetryStartTimer()V
    .registers 5

    .prologue
    .line 42
    const/4 v0, 0x0

    sput v0, Lcom/syncmldstmo/network/smlRetrySync;->retryTimecount:I

    .line 43
    const/16 v0, 0x8

    const-string v1, "=====================>> START Retry Timer"

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 44
    sget-object v0, Lcom/syncmldstmo/network/smlRetrySync;->retryTimer:Ljava/util/Timer;

    sget-object v1, Lcom/syncmldstmo/network/smlRetrySync;->retryTask:Lcom/syncmldstmo/network/smlRetrySync$smlRetryTimerTask;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;Ljava/util/Date;J)V

    .line 45
    return-void
.end method

.method public static smlSetExistSIMforRetry(Z)V
    .registers 4
    .parameter "bState"

    .prologue
    .line 199
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_1e

    .line 200
    const/16 v0, 0x8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM checking : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 201
    :cond_1e
    sput-boolean p0, Lcom/syncmldstmo/network/smlRetrySync;->sim_exist_for_retry:Z

    .line 202
    return-void
.end method

.method public static smlSetRetryCount(I)V
    .registers 4
    .parameter "nCount"

    .prologue
    .line 179
    sput p0, Lcom/syncmldstmo/network/smlRetrySync;->retryCount:I

    .line 180
    const/16 v0, 0x8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retryCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/syncmldstmo/network/smlRetrySync;->retryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 181
    return-void
.end method

.method public static smlSetRetrySync(Z)V
    .registers 4
    .parameter "bRetrySync"

    .prologue
    .line 167
    sput-boolean p0, Lcom/syncmldstmo/network/smlRetrySync;->retrySync:Z

    .line 168
    const/16 v0, 0x8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retrySync : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/syncmldstmo/network/smlRetrySync;->retrySync:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 169
    return-void
.end method

.method public static smlSetRetrySyncReset()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 191
    const/16 v0, 0x8

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/syncmldstmo/network/smlRetrySync;->smlRetryEndTimer()V

    .line 193
    invoke-static {v2}, Lcom/syncmldstmo/network/smlRetrySync;->smlSetRetrySync(Z)V

    .line 194
    invoke-static {v2}, Lcom/syncmldstmo/network/smlRetrySync;->smlSetRetryCount(I)V

    .line 195
    return-void
.end method

.method public static smlStartRetrySync()V
    .registers 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x2

    const/16 v2, 0x8

    .line 119
    const-string v1, ""

    invoke-static {v2, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/syncmldstmo/network/smlRetrySync;->smlRetryEndTimer()V

    .line 133
    invoke-static {}, Lcom/syncmldstmo/network/smlRetrySync;->smlGetRetrySync()Z

    move-result v1

    if-nez v1, :cond_19

    .line 135
    const-string v1, "retrySync false. return"

    invoke-static {v2, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 163
    .local v0, retryCount:I
    :cond_18
    :goto_18
    return-void

    .line 139
    .end local v0           #retryCount:I
    :cond_19
    invoke-static {}, Lcom/syncmldstmo/network/smlRetrySync;->smlGetRetryCount()I

    move-result v0

    .line 140
    .restart local v0       #retryCount:I
    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/syncmldstmo/network/smlRetrySync;->smlSetRetryCount(I)V

    .line 142
    if-le v0, v4, :cond_2d

    .line 144
    const-string v1, "retryCount > SML_SYNC_RETRY_MAX. return"

    invoke-static {v2, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/syncmldstmo/network/smlRetrySync;->smlSetRetrySyncReset()V

    goto :goto_18

    .line 149
    :cond_2d
    if-lez v0, :cond_40

    if-gt v0, v3, :cond_40

    .line 152
    const/16 v1, 0x3c

    sput v1, Lcom/syncmldstmo/network/smlRetrySync;->retryStartTime:I

    .line 153
    const-string v1, "Retry sync Ready. Sync will start after 1 min"

    invoke-static {v2, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 154
    new-instance v1, Lcom/syncmldstmo/network/smlRetrySync;

    invoke-direct {v1}, Lcom/syncmldstmo/network/smlRetrySync;-><init>()V

    goto :goto_18

    .line 156
    :cond_40
    if-ge v3, v0, :cond_18

    if-gt v0, v4, :cond_18

    .line 159
    const/16 v1, 0xec4

    sput v1, Lcom/syncmldstmo/network/smlRetrySync;->retryStartTime:I

    .line 160
    const-string v1, "Retry sync Ready. Sync will start after 3 hour"

    invoke-static {v2, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 161
    new-instance v1, Lcom/syncmldstmo/network/smlRetrySync;

    invoke-direct {v1}, Lcom/syncmldstmo/network/smlRetrySync;-><init>()V

    goto :goto_18
.end method
