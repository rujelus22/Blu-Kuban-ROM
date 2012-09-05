.class public final Lcom/samsung/util/TimerUtil;
.super Ljava/lang/Object;
.source "TimerUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final waitRandom(I)V
    .registers 6
    .parameter "time"

    .prologue
    .line 36
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    int-to-double v3, p0

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 38
    .local v0, waitTime:I
    int-to-long v1, v0

    :try_start_8
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    .line 41
    :goto_b
    return-void

    .line 40
    :catch_c
    move-exception v1

    goto :goto_b
.end method
