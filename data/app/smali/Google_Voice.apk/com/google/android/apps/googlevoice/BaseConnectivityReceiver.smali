.class public abstract Lcom/google/android/apps/googlevoice/BaseConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseConnectivityReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isConnected(Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 7
    .parameter "intent"
    .parameter "extra"

    .prologue
    const/4 v2, 0x0

    .line 20
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 22
    :try_start_7
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 23
    .local v1, info:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_10} :catch_12

    move-result v2

    .line 28
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_11
    :goto_11
    return v2

    .line 24
    :catch_12
    move-exception v0

    .line 25
    .local v0, ex:Ljava/lang/RuntimeException;
    goto :goto_11
.end method


# virtual methods
.method protected abstract onConnectionRestored(Landroid/content/Context;)V
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 34
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_9

    .line 35
    const-string v0, "ConnectivityReceiver.onReceive()"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 37
    :cond_9
    const-string v0, "networkInfo"

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/googlevoice/BaseConnectivityReceiver;->isConnected(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "otherNetwork"

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/googlevoice/BaseConnectivityReceiver;->isConnected(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 41
    :cond_19
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_22

    .line 42
    const-string v0, "ConnectivityReceiver.onReceive(): have network connection, requestinginbox notification registration."

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 45
    :cond_22
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/BaseConnectivityReceiver;->onConnectionRestored(Landroid/content/Context;)V

    .line 51
    :cond_25
    :goto_25
    return-void

    .line 47
    :cond_26
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_25

    .line 48
    const-string v0, "ConnectivityReceiver.onReceive(): no network connection, done."

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    goto :goto_25
.end method
