.class public Lcom/google/android/apps/common/time/ClockUtilsImpl;
.super Ljava/lang/Object;
.source "ClockUtilsImpl.java"

# interfaces
.implements Lcom/google/android/apps/common/time/ClockUtils;


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field private static final PST_TIME_ZONE:Ljava/lang/String; = "GMT-08:00"


# instance fields
.field private final dateFormatter:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/common/time/ClockUtilsImpl;->dateFormatter:Ljava/text/SimpleDateFormat;

    .line 25
    iget-object v0, p0, Lcom/google/android/apps/common/time/ClockUtilsImpl;->dateFormatter:Ljava/text/SimpleDateFormat;

    const-string v1, "GMT-08:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 26
    return-void
.end method


# virtual methods
.method public getCurrentTimeFormattedAsPst()Ljava/lang/String;
    .registers 6

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/apps/common/time/ClockUtilsImpl;->dateFormatter:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/google/android/apps/common/time/ClockUtilsImpl;->getCurrentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTimeMillis()J
    .registers 3

    .prologue
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public interruptableSleepMillis(J)Z
    .registers 5
    .parameter "time"

    .prologue
    .line 46
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_5

    .line 47
    const/4 v1, 0x1

    .line 50
    :goto_4
    return v1

    .line 48
    :catch_5
    move-exception v0

    .line 49
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 50
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public sleep(J)V
    .registers 3
    .parameter "millis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    .line 41
    return-void
.end method

.method public uninterruptableSleepMillis(J)V
    .registers 3
    .parameter "time"

    .prologue
    .line 56
    invoke-static {p1, p2}, Landroid/os/SystemClock;->sleep(J)V

    .line 57
    return-void
.end method

.method public uptimeMillis()J
    .registers 3

    .prologue
    .line 35
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
