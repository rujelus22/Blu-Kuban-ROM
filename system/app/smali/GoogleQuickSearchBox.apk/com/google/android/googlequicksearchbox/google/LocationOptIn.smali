.class public Lcom/google/android/googlequicksearchbox/google/LocationOptIn;
.super Ljava/lang/Object;
.source "LocationOptIn.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/google/LocationSettings;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mQueryStrategy:Lcom/google/android/googlequicksearchbox/QueryStrategy;

.field private mShouldUseLocationValid:Z

.field private final mUpdateHandler:Landroid/os/Handler;

.field private final mUpdateThread:Landroid/os/HandlerThread;

.field private mUseLocation:I

.field private final mUseLocationObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/QueryStrategy;)V
    .registers 5
    .parameter "context"
    .parameter "queryStrategy"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/LocationOptIn;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LocationOptIn-updater"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationOptIn;->mUpdateThread:Landroid/os/HandlerThread;

    .line 54
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationOptIn;->mUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 55
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/LocationOptIn;->mUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationOptIn;->mUpdateHandler:Landroid/os/Handler;

    .line 56
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationOptIn;->mUpdateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/googlequicksearchbox/google/LocationOptIn$1;

    invoke-direct {v1, p0}, Lcom/google/android/googlequicksearchbox/google/LocationOptIn$1;-><init>(Lcom/google/android/googlequicksearchbox/google/LocationOptIn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    new-instance v0, Lcom/google/android/googlequicksearchbox/google/LocationOptIn$2;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/LocationOptIn;->mUpdateHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/google/android/googlequicksearchbox/google/LocationOptIn$2;-><init>(Lcom/google/android/googlequicksearchbox/google/LocationOptIn;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationOptIn;->mUseLocationObserver:Landroid/database/ContentObserver;

    .line 66
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationOptIn;->mUseLocationObserver:Landroid/database/ContentObserver;

    invoke-static {p1, v0}, Lcom/google/android/gsf/UseLocationForServices;->registerUseLocationForServicesObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 68
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/google/LocationOptIn;->mQueryStrategy:Lcom/google/android/googlequicksearchbox/QueryStrategy;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/google/LocationOptIn;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/LocationOptIn;->getShouldSendLocation()V

    return-void
.end method

.method private declared-synchronized getLocationSetting()I
    .registers 4

    .prologue
    .line 101
    monitor-enter p0

    :goto_1
    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/googlequicksearchbox/google/LocationOptIn;->mShouldUseLocationValid:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-nez v1, :cond_15

    .line 103
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_12
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_1

    .line 104
    :catch_9
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_a
    const-string v1, "QSB.LocationOptIn"

    const-string v2, "Unexpected InterrupedException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_12

    goto :goto_1

    .line 101
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_12
    move-exception v1

    monitor-exit p0

    throw v1

    .line 108
    :cond_15
    :try_start_15
    iget v1, p0, Lcom/google/android/googlequicksearchbox/google/LocationOptIn;->mUseLocation:I
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_12

    monitor-exit p0

    return v1
.end method

.method private getOldUseLocationForServices()I
    .registers 4

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationOptIn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "use_location"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getShouldSendLocation()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 77
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/LocationOptIn;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gsf/UseLocationForServices;->getUseLocationForServices(Landroid/content/Context;)I

    move-result v0

    .line 78
    .local v0, setting:I
    if-nez v0, :cond_14

    .line 93
    :cond_9
    :goto_9
    monitor-enter p0

    .line 94
    :try_start_a
    iput v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationOptIn;->mUseLocation:I

    .line 95
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/googlequicksearchbox/google/LocationOptIn;->mShouldUseLocationValid:Z

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 97
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_3d

    .line 98
    return-void

    .line 80
    :cond_14
    if-eq v0, v1, :cond_9

    .line 84
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/LocationOptIn;->getOldUseLocationForServices()I

    move-result v0

    .line 85
    const/4 v2, 0x2

    if-eq v0, v2, :cond_9

    .line 86
    if-ne v0, v1, :cond_3b

    .line 87
    .local v1, value:Z
    :goto_1f
    const-string v2, "QSB.LocationOptIn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Copying location opt-in from old setting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/google/LocationOptIn;->doSetUseLocationForServices(Z)V

    goto :goto_9

    .line 86
    .end local v1           #value:Z
    :cond_3b
    const/4 v1, 0x0

    goto :goto_1f

    .line 97
    :catchall_3d
    move-exception v2

    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v2
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationOptIn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/LocationOptIn;->mUseLocationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 73
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationOptIn;->mUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 74
    return-void
.end method

.method public doSetUseLocationForServices(Z)V
    .registers 6
    .parameter "value"

    .prologue
    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/LocationOptIn;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gsf/UseLocationForServices;->setUseLocationForServices(Landroid/content/Context;Z)Z

    .line 131
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/LocationOptIn;->mQueryStrategy:Lcom/google/android/googlequicksearchbox/QueryStrategy;

    invoke-interface {v1}, Lcom/google/android/googlequicksearchbox/QueryStrategy;->setForceSuggestionFetch()V
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_a} :catch_b

    .line 135
    :goto_a
    return-void

    .line 132
    :catch_b
    move-exception v0

    .line 133
    .local v0, se:Ljava/lang/SecurityException;
    const-string v1, "QSB.LocationOptIn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set location preference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public isUseLocationSet()Z
    .registers 3

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/LocationOptIn;->getLocationSetting()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setUseLocationForServices(Z)V
    .registers 4
    .parameter "value"

    .prologue
    .line 138
    monitor-enter p0

    .line 139
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationOptIn;->mShouldUseLocationValid:Z

    if-eqz v0, :cond_a

    .line 143
    if-eqz p1, :cond_16

    const/4 v0, 0x1

    :goto_8
    iput v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationOptIn;->mUseLocation:I

    .line 148
    :cond_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_18

    .line 149
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationOptIn;->mUpdateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/googlequicksearchbox/google/LocationOptIn$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/googlequicksearchbox/google/LocationOptIn$3;-><init>(Lcom/google/android/googlequicksearchbox/google/LocationOptIn;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    return-void

    .line 143
    :cond_16
    const/4 v0, 0x0

    goto :goto_8

    .line 148
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public shouldSendLocation()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 116
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/LocationOptIn;->getLocationSetting()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public showLocationOptIn()V
    .registers 6

    .prologue
    .line 156
    const-string v2, "QSB.LocationOptIn"

    const-string v3, "Showing location opt-in."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gsf.action.SET_USE_LOCATION_FOR_SERVICES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 160
    :try_start_13
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/google/LocationOptIn;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_18
    .catch Landroid/content/ActivityNotFoundException; {:try_start_13 .. :try_end_18} :catch_19

    .line 164
    :goto_18
    return-void

    .line 161
    :catch_19
    move-exception v0

    .line 162
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "QSB.LocationOptIn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t start location opt-in: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method
