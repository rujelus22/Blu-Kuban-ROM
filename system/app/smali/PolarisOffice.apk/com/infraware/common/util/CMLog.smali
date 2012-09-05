.class public Lcom/infraware/common/util/CMLog;
.super Ljava/lang/Object;
.source "CMLog.java"


# static fields
.field static final DEBUG_EXTRACT:Z = false

.field static final TAG:Ljava/lang/String; = "[EvUI]"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 14
    return-void
.end method

.method public static debugStackTrace()V
    .registers 5

    .prologue
    .line 42
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][debug stack trace]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_1f

    .line 43
    :catch_1f
    move-exception v0

    .line 44
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DocViewer_d"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 19
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 28
    return-void
.end method

.method public static endTimeTrace(Ljava/lang/String;J)V
    .registers 3
    .parameter "tag"
    .parameter "startTime"

    .prologue
    .line 59
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 38
    return-void
.end method

.method public static startTimeTrace(Ljava/lang/String;)J
    .registers 3
    .parameter "tag"

    .prologue
    .line 53
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 33
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 24
    return-void
.end method
