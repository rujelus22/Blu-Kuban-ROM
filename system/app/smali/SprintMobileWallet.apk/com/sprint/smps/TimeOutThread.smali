.class public Lcom/sprint/smps/TimeOutThread;
.super Landroid/os/AsyncTask;
.source "TimeOutThread.java"


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static TAG:Ljava/lang/String;

.field private static final msg:[Ljava/lang/String;

.field private static timeoutBumped:Z

.field private static timeoutThread:Lcom/sprint/smps/TimeOutThread;


# instance fields
.field private listener:Lcom/sprint/smps/TimeoutListener;

.field private running:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 17
    const-class v0, Lcom/sprint/smps/TimeOutThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/TimeOutThread;->TAG:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/smps/TimeOutThread;->timeoutThread:Lcom/sprint/smps/TimeOutThread;

    .line 20
    sput-boolean v2, Lcom/sprint/smps/TimeOutThread;->timeoutBumped:Z

    .line 23
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Timeout: 0"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "Timeout: 1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Timeout: 2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Timeout: 3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Timeout: 4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Timeout: 5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 24
    const-string v2, "Timeout: 6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Timeout: 7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Timeout: 8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Timeout: 9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Timeout: 10"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Timeout: 11"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 25
    const-string v2, "Timeout: 12"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Timeout: 13"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Timeout: 14"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Timeout: 15"

    aput-object v2, v0, v1

    .line 23
    sput-object v0, Lcom/sprint/smps/TimeOutThread;->msg:[Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/smps/TimeOutThread;->running:Z

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/smps/TimeOutThread;->listener:Lcom/sprint/smps/TimeoutListener;

    .line 29
    sput-object p0, Lcom/sprint/smps/TimeOutThread;->timeoutThread:Lcom/sprint/smps/TimeOutThread;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/sprint/smps/TimeOutThread;)Lcom/sprint/smps/TimeoutListener;
    .registers 2
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sprint/smps/TimeOutThread;->listener:Lcom/sprint/smps/TimeoutListener;

    return-object v0
.end method

.method static synthetic access$1()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/sprint/smps/TimeOutThread;->msg:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Z)V
    .registers 1
    .parameter

    .prologue
    .line 20
    sput-boolean p0, Lcom/sprint/smps/TimeOutThread;->timeoutBumped:Z

    return-void
.end method

.method public static bumpTimout()V
    .registers 8

    .prologue
    const-wide/16 v6, 0xbb8

    const-wide/16 v4, 0x3e8

    .line 43
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sprint/smps/TimeOutThread;->timeoutBumped:Z

    .line 45
    sget-boolean v0, Lcom/sprint/smps/properties/Properties;->loggedIn:Z

    if-eqz v0, :cond_17

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/sprint/smps/properties/Properties;->timeoutPeriodSec:J

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v0, v6

    sput-wide v0, Lcom/sprint/smps/properties/Properties;->lastReferenced:J

    .line 49
    :goto_16
    return-void

    .line 48
    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/sprint/smps/properties/Properties;->preLogintimeoutPeriodSec:J

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    add-long/2addr v0, v6

    sput-wide v0, Lcom/sprint/smps/properties/Properties;->lastReferenced:J

    goto :goto_16
.end method

.method private doCallback(J)V
    .registers 7
    .parameter "remainingTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 116
    move-wide v0, p1

    .line 117
    .local v0, rt:J
    iget-object v3, p0, Lcom/sprint/smps/TimeOutThread;->listener:Lcom/sprint/smps/TimeoutListener;

    if-eqz v3, :cond_11

    .line 119
    new-instance v2, Lcom/sprint/smps/TimeOutThread$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/sprint/smps/TimeOutThread$1;-><init>(Lcom/sprint/smps/TimeOutThread;J)V

    .line 137
    .local v2, runnable:Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/sprint/smps/TimeOutThread;->listener:Lcom/sprint/smps/TimeoutListener;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 139
    .end local v2           #runnable:Ljava/lang/Runnable;
    :cond_11
    return-void
.end method

.method private exitSomething()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 145
    sget-boolean v0, Lcom/sprint/smps/TimeOutThread;->timeoutBumped:Z

    if-nez v0, :cond_25

    const-string v0, "Login"

    invoke-static {v0}, Lcom/sprint/smps/activities/ActivityHelper;->onBookmark(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 146
    const-string v0, "Welcome"

    invoke-static {v0}, Lcom/sprint/smps/activities/ActivityHelper;->onBookmark(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 147
    const-string v0, "Partners"

    invoke-static {v0}, Lcom/sprint/smps/activities/ActivityHelper;->onBookmark(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 148
    const-string v0, "Forgot Password"

    invoke-static {v0}, Lcom/sprint/smps/activities/ActivityHelper;->onBookmark(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 151
    :cond_25
    const-string v0, ""

    invoke-static {v0}, Lcom/sprint/smps/activities/ActivityHelper;->dismissActivities(Ljava/lang/String;)V

    .line 152
    iput-boolean v1, p0, Lcom/sprint/smps/TimeOutThread;->running:Z

    .line 153
    sget-object v0, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    invoke-virtual {v0}, Lcom/Localytics/android/LocalyticsSession;->upload()V

    .line 154
    sget-object v0, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    invoke-virtual {v0}, Lcom/Localytics/android/LocalyticsSession;->close()V

    .line 173
    :goto_36
    return-void

    .line 159
    :cond_37
    sget-boolean v0, Lcom/sprint/smps/properties/Properties;->loggedIn:Z

    if-eqz v0, :cond_46

    .line 162
    sput-boolean v1, Lcom/sprint/smps/properties/Properties;->loggedIn:Z

    .line 163
    const-string v0, "Login"

    invoke-static {v0}, Lcom/sprint/smps/activities/ActivityHelper;->dismissActivities(Ljava/lang/String;)V

    .line 171
    :goto_42
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    goto :goto_36

    .line 168
    :cond_46
    const-string v0, "Welcome"

    invoke-static {v0}, Lcom/sprint/smps/activities/ActivityHelper;->dismissActivities(Ljava/lang/String;)V

    goto :goto_42
.end method

.method public static isRunning()Z
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, isRunning:Z
    sget-object v1, Lcom/sprint/smps/TimeOutThread;->timeoutThread:Lcom/sprint/smps/TimeOutThread;

    if-eqz v1, :cond_c

    sget-object v1, Lcom/sprint/smps/TimeOutThread;->timeoutThread:Lcom/sprint/smps/TimeOutThread;

    iget-boolean v1, v1, Lcom/sprint/smps/TimeOutThread;->running:Z

    if-eqz v1, :cond_c

    .line 36
    const/4 v0, 0x1

    .line 38
    :cond_c
    return v0
.end method

.method public static listener(Lcom/sprint/smps/TimeoutListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 53
    sget-object v0, Lcom/sprint/smps/TimeOutThread;->timeoutThread:Lcom/sprint/smps/TimeOutThread;

    if-eqz v0, :cond_8

    .line 54
    sget-object v0, Lcom/sprint/smps/TimeOutThread;->timeoutThread:Lcom/sprint/smps/TimeOutThread;

    iput-object p0, v0, Lcom/sprint/smps/TimeOutThread;->listener:Lcom/sprint/smps/TimeoutListener;

    .line 55
    :cond_8
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14
    .parameter "arg0"

    .prologue
    const/4 v11, 0x0

    const-wide/16 v9, 0x3e8

    .line 60
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sprint/smps/TimeOutThread;->running:Z

    .line 61
    sget-wide v7, Lcom/sprint/smps/properties/Properties;->timeoutPeriodSec:J

    mul-long v5, v7, v9

    .line 62
    .local v5, timeoutPeriod:J
    sget-boolean v7, Lcom/sprint/smps/properties/Properties;->loggedIn:Z

    if-nez v7, :cond_12

    .line 63
    sget-wide v7, Lcom/sprint/smps/properties/Properties;->preLogintimeoutPeriodSec:J

    mul-long v5, v7, v9

    .line 65
    :cond_12
    :goto_12
    iget-boolean v7, p0, Lcom/sprint/smps/TimeOutThread;->running:Z

    if-nez v7, :cond_1a

    .line 108
    iput-boolean v11, p0, Lcom/sprint/smps/TimeOutThread;->running:Z

    .line 110
    const/4 v7, 0x0

    return-object v7

    .line 70
    :cond_1a
    :try_start_1a
    sget-wide v7, Lcom/sprint/smps/properties/Properties;->timeoutPeriodSec:J

    mul-long v5, v7, v9

    .line 71
    sget-boolean v7, Lcom/sprint/smps/properties/Properties;->loggedIn:Z

    if-nez v7, :cond_26

    .line 72
    sget-wide v7, Lcom/sprint/smps/properties/Properties;->preLogintimeoutPeriodSec:J

    mul-long v5, v7, v9

    .line 74
    :cond_26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 75
    .local v0, now:J
    sget-wide v7, Lcom/sprint/smps/properties/Properties;->lastReferenced:J

    add-long/2addr v7, v5

    sub-long v2, v7, v0

    .line 76
    .local v2, remainingTime:J
    cmp-long v7, v2, v5

    if-lez v7, :cond_36

    .line 78
    sput-wide v0, Lcom/sprint/smps/properties/Properties;->lastReferenced:J

    .line 79
    move-wide v2, v5

    .line 83
    :cond_36
    invoke-direct {p0, v2, v3}, Lcom/sprint/smps/TimeOutThread;->doCallback(J)V

    .line 86
    sget-boolean v7, Lcom/sprint/smps/properties/Properties;->apiCallInProgress:Z

    if-eqz v7, :cond_40

    .line 87
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 92
    :cond_40
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-gtz v7, :cond_5d

    .line 93
    invoke-direct {p0}, Lcom/sprint/smps/TimeOutThread;->exitSomething()V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_49} :catch_4a

    goto :goto_12

    .line 97
    .end local v0           #now:J
    .end local v2           #remainingTime:J
    :catch_4a
    move-exception v4

    .line 99
    .local v4, t:Ljava/lang/Throwable;
    if-eqz v4, :cond_63

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_63

    .line 100
    sget-object v7, Lcom/sprint/smps/TimeOutThread;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 95
    .end local v4           #t:Ljava/lang/Throwable;
    .restart local v0       #now:J
    .restart local v2       #remainingTime:J
    :cond_5d
    const-wide/16 v7, 0x3e8

    :try_start_5f
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_62} :catch_4a

    goto :goto_12

    .line 103
    .end local v0           #now:J
    .end local v2           #remainingTime:J
    .restart local v4       #t:Ljava/lang/Throwable;
    :cond_63
    iput-boolean v11, p0, Lcom/sprint/smps/TimeOutThread;->running:Z

    goto :goto_12
.end method
