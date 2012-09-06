.class public interface abstract Lcom/google/android/apps/common/time/ClockUtils;
.super Ljava/lang/Object;
.source "ClockUtils.java"


# virtual methods
.method public abstract getCurrentTimeFormattedAsPst()Ljava/lang/String;
.end method

.method public abstract getCurrentTimeMillis()J
.end method

.method public abstract interruptableSleepMillis(J)Z
.end method

.method public abstract sleep(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract uninterruptableSleepMillis(J)V
.end method

.method public abstract uptimeMillis()J
.end method
