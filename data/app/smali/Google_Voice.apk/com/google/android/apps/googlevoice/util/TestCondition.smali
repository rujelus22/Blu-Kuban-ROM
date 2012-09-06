.class public abstract Lcom/google/android/apps/googlevoice/util/TestCondition;
.super Ljava/lang/Object;
.source "TestCondition.java"


# static fields
.field private static final SLEEP_TIME_MS:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static waitForConditionToBeMet(Lcom/google/android/apps/googlevoice/util/TestCondition;J)Z
    .registers 4
    .parameter "condition"
    .parameter "maxWaitTimeMs"

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/googlevoice/util/TestCondition;->waitForConditionToBeMet(J)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract conditionHasBeenMet()Z
.end method

.method public declared-synchronized waitForConditionToBeMet(J)Z
    .registers 11
    .parameter "maxWaitTimeMs"

    .prologue
    const-wide/16 v6, 0x1

    const/4 v3, 0x0

    .line 23
    monitor-enter p0

    const-wide/16 v1, 0x0

    .line 24
    .local v1, waitedSoFar:J
    :goto_6
    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/util/TestCondition;->conditionHasBeenMet()Z
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_1d

    move-result v4

    if-nez v4, :cond_1b

    .line 25
    cmp-long v4, v1, p1

    if-ltz v4, :cond_12

    .line 35
    :goto_10
    monitor-exit p0

    return v3

    .line 29
    :cond_12
    const-wide/16 v4, 0x1

    :try_start_14
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_1d
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_17} :catch_19

    .line 30
    add-long/2addr v1, v6

    goto :goto_6

    .line 31
    :catch_19
    move-exception v0

    .line 32
    .local v0, e:Ljava/lang/InterruptedException;
    goto :goto_10

    .line 35
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1b
    const/4 v3, 0x1

    goto :goto_10

    .line 23
    :catchall_1d
    move-exception v3

    monitor-exit p0

    throw v3
.end method
