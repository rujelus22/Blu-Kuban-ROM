.class public Lcom/android/email/EmailConnectivityManager;
.super Landroid/content/BroadcastReceiver;
.source "EmailConnectivityManager.java"


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mName:Ljava/lang/String;

.field private mRegistered:Z

.field private mStop:Z

.field private mWaitThread:Ljava/lang/Thread;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .parameter "context"
    .parameter "name"

    .prologue
    const/4 v2, 0x1

    .line 69
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 55
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/email/EmailConnectivityManager;->mLock:Ljava/lang/Object;

    .line 63
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/email/EmailConnectivityManager;->mStop:Z

    .line 67
    iput-boolean v2, p0, Lcom/android/email/EmailConnectivityManager;->mRegistered:Z

    .line 70
    iput-object p1, p0, Lcom/android/email/EmailConnectivityManager;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/android/email/EmailConnectivityManager;->mName:Ljava/lang/String;

    .line 72
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/email/EmailConnectivityManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 74
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 75
    .local v0, pm:Landroid/os/PowerManager;
    invoke-virtual {v0, v2, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 76
    iget-object v1, p0, Lcom/android/email/EmailConnectivityManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    return-void
.end method

.method public static getActiveNetworkType(Landroid/content/Context;)I
    .registers 3
    .parameter "context"

    .prologue
    .line 156
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 158
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->getActiveNetworkType(Landroid/net/ConnectivityManager;)I

    move-result v1

    return v1
.end method

.method public static getActiveNetworkType(Landroid/net/ConnectivityManager;)I
    .registers 3
    .parameter "cm"

    .prologue
    .line 162
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 163
    .local v0, info:Landroid/net/NetworkInfo;
    if-nez v0, :cond_8

    const/4 v1, -0x1

    .line 164
    :goto_7
    return v1

    :cond_8
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    goto :goto_7
.end method


# virtual methods
.method public getActiveNetworkType()I
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/email/EmailConnectivityManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lcom/android/email/EmailConnectivityManager;->getActiveNetworkType(Landroid/net/ConnectivityManager;)I

    move-result v0

    return v0
.end method

.method public hasConnectivity()Z
    .registers 3

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/email/EmailConnectivityManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 144
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_a

    const/4 v1, 0x1

    :goto_9
    return v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public isAutoSyncAllowed()Z
    .registers 2

    .prologue
    .line 80
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    return v0
.end method

.method public onConnectivityLost(I)V
    .registers 2
    .parameter "networkType"

    .prologue
    .line 105
    return-void
.end method

.method public onConnectivityRestored(I)V
    .registers 2
    .parameter "networkType"

    .prologue
    .line 97
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 120
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 121
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_1c

    .line 122
    const-string v3, "networkInfo"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 124
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-nez v1, :cond_1d

    .line 136
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    :cond_1c
    :goto_1c
    return-void

    .line 125
    .restart local v0       #extras:Landroid/os/Bundle;
    .restart local v1       #networkInfo:Landroid/net/NetworkInfo;
    :cond_1d
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 126
    .local v2, state:Landroid/net/NetworkInfo$State;
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_39

    .line 127
    iget-object v4, p0, Lcom/android/email/EmailConnectivityManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 128
    :try_start_28
    iget-object v3, p0, Lcom/android/email/EmailConnectivityManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 129
    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_36

    .line 130
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/email/EmailConnectivityManager;->onConnectivityRestored(I)V

    goto :goto_1c

    .line 129
    :catchall_36
    move-exception v3

    :try_start_37
    monitor-exit v4
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v3

    .line 131
    :cond_39
    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_1c

    .line 132
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/email/EmailConnectivityManager;->onConnectivityLost(I)V

    goto :goto_1c
.end method

.method public unregister()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 109
    :try_start_1
    iget-object v0, p0, Lcom/android/email/EmailConnectivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_d
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_6} :catch_9

    .line 113
    iput-boolean v1, p0, Lcom/android/email/EmailConnectivityManager;->mRegistered:Z

    .line 115
    :goto_8
    return-void

    .line 110
    :catch_9
    move-exception v0

    .line 113
    iput-boolean v1, p0, Lcom/android/email/EmailConnectivityManager;->mRegistered:Z

    goto :goto_8

    :catchall_d
    move-exception v0

    iput-boolean v1, p0, Lcom/android/email/EmailConnectivityManager;->mRegistered:Z

    throw v0
.end method

.method public waitForConnectivity()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 169
    iget-boolean v2, p0, Lcom/android/email/EmailConnectivityManager;->mRegistered:Z

    if-nez v2, :cond_d

    .line 170
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "ConnectivityManager not registered"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    :cond_d
    const/4 v1, 0x0

    .line 173
    .local v1, waiting:Z
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWaitThread:Ljava/lang/Thread;

    .line 175
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 177
    :goto_19
    :try_start_19
    iget-boolean v2, p0, Lcom/android/email/EmailConnectivityManager;->mStop:Z

    if-nez v2, :cond_a1

    .line 178
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 179
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_55

    .line 181
    if-eqz v1, :cond_45

    .line 182
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_45

    .line 183
    const-string v2, "EmailConnectivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/email/EmailConnectivityManager;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Connectivity wait ended"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_19 .. :try_end_45} :catchall_90

    .line 210
    :cond_45
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 211
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 213
    :cond_52
    iput-object v6, p0, Lcom/android/email/EmailConnectivityManager;->mWaitThread:Ljava/lang/Thread;

    .line 215
    .end local v0           #info:Landroid/net/NetworkInfo;
    :goto_54
    return-void

    .line 188
    .restart local v0       #info:Landroid/net/NetworkInfo;
    :cond_55
    if-nez v1, :cond_76

    .line 189
    :try_start_57
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_75

    .line 190
    const-string v2, "EmailConnectivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/email/EmailConnectivityManager;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Connectivity waiting..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_75
    const/4 v1, 0x1

    .line 195
    :cond_76
    iget-object v3, p0, Lcom/android/email/EmailConnectivityManager;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_79
    .catchall {:try_start_57 .. :try_end_79} :catchall_90

    .line 197
    :try_start_79
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_7e
    .catchall {:try_start_79 .. :try_end_7e} :catchall_8d

    .line 199
    :try_start_7e
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mLock:Ljava/lang/Object;

    const-wide/32 v4, 0x927c0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_86
    .catchall {:try_start_7e .. :try_end_86} :catchall_8d
    .catch Ljava/lang/InterruptedException; {:try_start_7e .. :try_end_86} :catch_b1

    .line 204
    :goto_86
    :try_start_86
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 205
    monitor-exit v3

    goto :goto_19

    :catchall_8d
    move-exception v2

    monitor-exit v3
    :try_end_8f
    .catchall {:try_start_86 .. :try_end_8f} :catchall_8d

    :try_start_8f
    throw v2
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_90

    .line 210
    .end local v0           #info:Landroid/net/NetworkInfo;
    :catchall_90
    move-exception v2

    iget-object v3, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 211
    iget-object v3, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 213
    :cond_9e
    iput-object v6, p0, Lcom/android/email/EmailConnectivityManager;->mWaitThread:Ljava/lang/Thread;

    throw v2

    .line 210
    :cond_a1
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 211
    iget-object v2, p0, Lcom/android/email/EmailConnectivityManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 213
    :cond_ae
    iput-object v6, p0, Lcom/android/email/EmailConnectivityManager;->mWaitThread:Ljava/lang/Thread;

    goto :goto_54

    .line 200
    .restart local v0       #info:Landroid/net/NetworkInfo;
    :catch_b1
    move-exception v2

    goto :goto_86
.end method
