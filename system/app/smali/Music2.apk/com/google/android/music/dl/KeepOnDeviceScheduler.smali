.class public Lcom/google/android/music/dl/KeepOnDeviceScheduler;
.super Ljava/lang/Object;
.source "KeepOnDeviceScheduler.java"

# interfaces
.implements Lcom/google/android/music/dl/BufferProgress$VerboseProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/KeepOnDeviceScheduler$KeepOnEnabledStateListener;
    }
.end annotation


# static fields
.field private static final LOGV:Z

.field private static final MSG_REFRESH_KEEPON_ENABLED:I


# instance fields
.field private final mBufferProgress:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/google/android/music/dl/BufferProgress;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mHighSpeedAvailable:Z

.field private final mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private final mNetworkChangeListener:Lcom/google/android/music/dl/INetworkChangeListener;

.field private mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

.field private final mNotificationManager:Lcom/google/android/music/dl/KeepOnNotificationManager;

.field private mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mStateChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/dl/KeepOnDeviceScheduler$KeepOnEnabledStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSuccessivePassiveFailures:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-string v0, "KeepOnScheduler"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->LOGV:Z

    .line 59
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    invoke-static {v0}, Lcom/google/android/music/utils/async/AsyncWorkers;->getUniqueMessageType(Lcom/google/android/music/Worker;)I

    move-result v0

    sput v0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->MSG_REFRESH_KEEPON_ENABLED:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Service;Lcom/google/android/music/jumper/MusicPreferences;Lcom/google/android/music/dl/BufferProgress;)V
    .registers 6
    .parameter "context"
    .parameter "preferences"
    .parameter "bufferProgress"

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v0, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mSuccessivePassiveFailures:I

    .line 47
    iput-boolean v0, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mEnabled:Z

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mStateChangedListeners:Ljava/util/List;

    .line 249
    new-instance v0, Lcom/google/android/music/dl/KeepOnDeviceScheduler$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/KeepOnDeviceScheduler$3;-><init>(Lcom/google/android/music/dl/KeepOnDeviceScheduler;)V

    iput-object v0, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 291
    new-instance v0, Lcom/google/android/music/dl/KeepOnDeviceScheduler$4;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/KeepOnDeviceScheduler$4;-><init>(Lcom/google/android/music/dl/KeepOnDeviceScheduler;)V

    iput-object v0, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mNetworkChangeListener:Lcom/google/android/music/dl/INetworkChangeListener;

    .line 66
    iput-object p1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mContext:Landroid/content/Context;

    .line 67
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mBufferProgress:Ljava/lang/ref/SoftReference;

    .line 69
    invoke-virtual {p3, p0}, Lcom/google/android/music/dl/BufferProgress;->addVerboseProgressListener(Lcom/google/android/music/dl/BufferProgress$VerboseProgressListener;)V

    .line 70
    iput-object p2, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 71
    new-instance v0, Lcom/google/android/music/dl/KeepOnNotificationManager;

    invoke-direct {v0, p1, p3, p0}, Lcom/google/android/music/dl/KeepOnNotificationManager;-><init>(Landroid/app/Service;Lcom/google/android/music/dl/BufferProgress;Lcom/google/android/music/dl/KeepOnDeviceScheduler;)V

    iput-object v0, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mNotificationManager:Lcom/google/android/music/dl/KeepOnNotificationManager;

    .line 73
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 75
    new-instance v0, Lcom/google/android/music/NetworkMonitorServiceConnection;

    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mNetworkChangeListener:Lcom/google/android/music/dl/INetworkChangeListener;

    invoke-direct {v0, v1}, Lcom/google/android/music/NetworkMonitorServiceConnection;-><init>(Lcom/google/android/music/dl/INetworkChangeListener;)V

    iput-object v0, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    .line 77
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/music/NetworkMonitorServiceConnection;->bindToService(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/dl/KeepOnDeviceScheduler;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->refreshEnabledState()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/dl/KeepOnDeviceScheduler;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mHighSpeedAvailable:Z

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/music/dl/KeepOnDeviceScheduler;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mHighSpeedAvailable:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/music/dl/KeepOnDeviceScheduler;)Lcom/google/android/music/jumper/MusicPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/music/dl/KeepOnDeviceScheduler;ZZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->setEnabled(ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/music/dl/KeepOnDeviceScheduler;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->refreshEnabledStateAsync(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/music/dl/KeepOnDeviceScheduler;ZZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->refreshEnabledState(ZZ)V

    return-void
.end method

.method private notifyStateChanged(Z)V
    .registers 7
    .parameter "notifyHighSpeedLost"

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->isEnabled()Z

    move-result v1

    .line 260
    .local v1, isEnabled:Z
    iget-object v3, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mNotificationManager:Lcom/google/android/music/dl/KeepOnNotificationManager;

    invoke-virtual {p0}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->isDisabledFromExcessiveErrors()Z

    move-result v4

    invoke-virtual {v3, v1, v4, p1}, Lcom/google/android/music/dl/KeepOnNotificationManager;->notifyEnabledStateChanged(ZZZ)V

    .line 262
    iget-object v3, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mStateChangedListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/dl/KeepOnDeviceScheduler$KeepOnEnabledStateListener;

    .line 263
    .local v2, listener:Lcom/google/android/music/dl/KeepOnDeviceScheduler$KeepOnEnabledStateListener;
    invoke-interface {v2, v1}, Lcom/google/android/music/dl/KeepOnDeviceScheduler$KeepOnEnabledStateListener;->notifyEnabledStateChanged(Z)V

    goto :goto_13

    .line 265
    .end local v2           #listener:Lcom/google/android/music/dl/KeepOnDeviceScheduler$KeepOnEnabledStateListener;
    :cond_23
    return-void
.end method

.method private refreshEnabledState()V
    .registers 7

    .prologue
    .line 110
    iget-object v4, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-virtual {v4}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v3

    .line 111
    .local v3, networkMonitor:Lcom/google/android/music/dl/INetworkMonitor;
    if-nez v3, :cond_9

    .line 122
    :goto_8
    return-void

    .line 116
    :cond_9
    :try_start_9
    invoke-interface {v3}, Lcom/google/android/music/dl/INetworkMonitor;->hasMobileConnection()Z

    move-result v2

    .line 117
    .local v2, mobileAvailable:Z
    invoke-interface {v3}, Lcom/google/android/music/dl/INetworkMonitor;->hasHighSpeedConnection()Z

    move-result v1

    .line 118
    .local v1, highSpeedConnection:Z
    invoke-direct {p0, v2, v1}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->refreshEnabledState(ZZ)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_8

    .line 119
    .end local v1           #highSpeedConnection:Z
    .end local v2           #mobileAvailable:Z
    :catch_15
    move-exception v0

    .line 120
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "KeepOnScheduler"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method private refreshEnabledState(ZZ)V
    .registers 5
    .parameter "mobileOn"
    .parameter "highSpeedOn"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    new-instance v1, Lcom/google/android/music/dl/KeepOnDeviceScheduler$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/music/dl/KeepOnDeviceScheduler$2;-><init>(Lcom/google/android/music/dl/KeepOnDeviceScheduler;ZZ)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->runWithPreferenceService(Ljava/lang/Runnable;)V

    .line 137
    return-void
.end method

.method private refreshEnabledStateAsync(Z)V
    .registers 6
    .parameter "now"

    .prologue
    .line 92
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v2, Lcom/google/android/music/dl/KeepOnDeviceScheduler$1;

    invoke-direct {v2, p0}, Lcom/google/android/music/dl/KeepOnDeviceScheduler$1;-><init>(Lcom/google/android/music/dl/KeepOnDeviceScheduler;)V

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 98
    .local v0, msg:Landroid/os/Message;
    sget v1, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->MSG_REFRESH_KEEPON_ENABLED:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 99
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    sget v2, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->MSG_REFRESH_KEEPON_ENABLED:I

    invoke-virtual {v1, v2}, Lcom/google/android/music/Worker;->removeMessages(I)V

    .line 101
    if-eqz p1, :cond_1e

    .line 102
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    invoke-virtual {v1, v0}, Lcom/google/android/music/Worker;->sendMessage(Landroid/os/Message;)Z

    .line 107
    :goto_1d
    return-void

    .line 104
    :cond_1e
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    const-wide/32 v2, 0xdbba0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/music/Worker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1d
.end method

.method private setEnabled(ZZ)V
    .registers 7
    .parameter "enabled"
    .parameter "notifyHighSpeedLost"

    .prologue
    const/4 v3, 0x0

    .line 140
    iget-boolean v0, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mEnabled:Z

    if-ne p1, v0, :cond_6

    .line 154
    :goto_5
    return-void

    .line 143
    :cond_6
    sget-boolean v0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->LOGV:Z

    if-eqz v0, :cond_26

    .line 144
    const-string v1, "KeepOnScheduler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Predictive scheduler turned "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_30

    const-string v0, "on"

    :goto_1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_26
    iput-boolean p1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mEnabled:Z

    .line 147
    if-eqz p1, :cond_33

    .line 148
    iput v3, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mSuccessivePassiveFailures:I

    .line 153
    :goto_2c
    invoke-direct {p0, p2}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->notifyStateChanged(Z)V

    goto :goto_5

    .line 144
    :cond_30
    const-string v0, "off"

    goto :goto_1b

    .line 151
    :cond_33
    invoke-direct {p0, v3}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->refreshEnabledStateAsync(Z)V

    goto :goto_2c
.end method


# virtual methods
.method public addStateChangedListener(Lcom/google/android/music/dl/KeepOnDeviceScheduler$KeepOnEnabledStateListener;)V
    .registers 3
    .parameter "stateChangedListener"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mStateChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    return-void
.end method

.method public getNextDownload()[Lcom/google/android/music/dl/ContentIdentifier;
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 179
    iget-boolean v4, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mEnabled:Z

    if-nez v4, :cond_13

    .line 180
    sget-boolean v4, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->LOGV:Z

    if-eqz v4, :cond_12

    .line 181
    const-string v4, "KeepOnScheduler"

    const-string v5, "Not doing predictive downloading because KeepOnScheduler is disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_12
    :goto_12
    return-object v3

    .line 185
    :cond_13
    iget-object v4, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v4

    const-string v5, "1"

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "_id"

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6, v3}, Lcom/google/android/music/store/Store;->getNeedToKeepOn(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Collection;)Landroid/database/Cursor;

    move-result-object v0

    .line 187
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_2d

    .line 188
    iget-object v4, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mNotificationManager:Lcom/google/android/music/dl/KeepOnNotificationManager;

    invoke-virtual {v4}, Lcom/google/android/music/dl/KeepOnNotificationManager;->notifyAllDownloadsFinished()V

    goto :goto_12

    .line 193
    :cond_2d
    :try_start_2d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 194
    iget-object v3, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mNotificationManager:Lcom/google/android/music/dl/KeepOnNotificationManager;

    invoke-virtual {v3}, Lcom/google/android/music/dl/KeepOnNotificationManager;->notifyDownloadsStarting()V

    .line 195
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 196
    .local v1, id:J
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/music/dl/ContentIdentifier;

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/music/dl/ContentIdentifier;

    sget-object v6, Lcom/google/android/music/dl/ContentIdentifier$Domain;->DEFAULT:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    invoke-direct {v5, v1, v2, v6}, Lcom/google/android/music/dl/ContentIdentifier;-><init>(JLcom/google/android/music/dl/ContentIdentifier$Domain;)V

    aput-object v5, v3, v4
    :try_end_4a
    .catchall {:try_start_2d .. :try_end_4a} :catchall_57

    .line 203
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_12

    .line 200
    .end local v1           #id:J
    :cond_4e
    :try_start_4e
    iget-object v4, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mNotificationManager:Lcom/google/android/music/dl/KeepOnNotificationManager;

    invoke-virtual {v4}, Lcom/google/android/music/dl/KeepOnNotificationManager;->notifyAllDownloadsFinished()V
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_57

    .line 203
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_12

    :catchall_57
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method public getTotalNeedToKeepOn()Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 214
    iget-object v4, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "Size"

    aput-object v6, v5, v7

    invoke-virtual {v4, v3, v5, v3}, Lcom/google/android/music/store/Store;->getNeedToKeepOn(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Collection;)Landroid/database/Cursor;

    move-result-object v0

    .line 216
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_16

    .line 227
    :goto_15
    return-object v3

    .line 220
    :cond_16
    const-wide/16 v1, 0x0

    .line 222
    .local v1, totalSize:J
    :goto_18
    :try_start_18
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 223
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_18

    .line 225
    :cond_25
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_34
    .catchall {:try_start_18 .. :try_end_34} :catchall_39

    move-result-object v3

    .line 227
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_15

    :catchall_39
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method public isDisabledFromExcessiveErrors()Z
    .registers 3

    .prologue
    .line 161
    iget v0, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mSuccessivePassiveFailures:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mEnabled:Z

    return v0
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 81
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mNotificationManager:Lcom/google/android/music/dl/KeepOnNotificationManager;

    invoke-virtual {v1}, Lcom/google/android/music/dl/KeepOnNotificationManager;->onDestroy()V

    .line 82
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mBufferProgress:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/BufferProgress;

    .line 83
    .local v0, bufferProgress:Lcom/google/android/music/dl/BufferProgress;
    if-eqz v0, :cond_12

    .line 84
    invoke-virtual {v0, p0}, Lcom/google/android/music/dl/BufferProgress;->removeVerboseProgressListener(Lcom/google/android/music/dl/BufferProgress$VerboseProgressListener;)V

    .line 86
    :cond_12
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v2, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v1, v2}, Lcom/google/android/music/jumper/MusicPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 88
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    iget-object v2, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/music/NetworkMonitorServiceConnection;->unbindFromService(Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method public onDownloadProgress(Lcom/google/android/music/dl/DownloadOrder;)V
    .registers 6
    .parameter "order"

    .prologue
    const/4 v3, 0x0

    .line 268
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadStatus()Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v0

    .line 269
    .local v0, downloadStatus:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->hasKeeponPurpose()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->isFinishedStatus()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 270
    sget-object v1, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v0, v1, :cond_30

    .line 271
    iget v1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mSuccessivePassiveFailures:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mSuccessivePassiveFailures:I

    .line 272
    iget v1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mSuccessivePassiveFailures:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2a

    .line 273
    const-string v1, "KeepOnScheduler"

    const-string v2, "Experiencing exessive failures, turning off KeepOn scheduler"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-direct {p0, v3, v3}, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->setEnabled(ZZ)V

    .line 282
    :cond_2a
    :goto_2a
    iget-object v1, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mNotificationManager:Lcom/google/android/music/dl/KeepOnNotificationManager;

    invoke-virtual {v1, p1}, Lcom/google/android/music/dl/KeepOnNotificationManager;->notifyDownloadProgress(Lcom/google/android/music/dl/DownloadOrder;)V

    .line 283
    return-void

    .line 279
    :cond_30
    iput v3, p0, Lcom/google/android/music/dl/KeepOnDeviceScheduler;->mSuccessivePassiveFailures:I

    goto :goto_2a
.end method
