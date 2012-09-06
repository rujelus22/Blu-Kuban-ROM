.class public Lcom/google/android/apps/googlevoice/proxy/ContextProxyImpl;
.super Ljava/lang/Object;
.source "ContextProxyImpl.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/proxy/ContextProxy;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/proxy/ContextProxyImpl;->context:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public deleteDatabase(Ljava/lang/String;)Z
    .registers 3
    .parameter "name"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/ContextProxyImpl;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/ContextProxyImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getSystemServiceProxy(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .parameter "name"

    .prologue
    .line 55
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/proxy/ContextProxyImpl;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 56
    .local v0, service:Ljava/lang/Object;
    if-nez v0, :cond_a

    .line 57
    const/4 v1, 0x0

    .line 70
    .end local v0           #service:Ljava/lang/Object;
    :goto_9
    return-object v1

    .line 59
    .restart local v0       #service:Ljava/lang/Object;
    :cond_a
    const-string v1, "notification"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 60
    new-instance v1, Lcom/google/android/apps/googlevoice/proxy/NotificationManagerProxyImpl;

    check-cast v0, Landroid/app/NotificationManager;

    .end local v0           #service:Ljava/lang/Object;
    invoke-direct {v1, v0}, Lcom/google/android/apps/googlevoice/proxy/NotificationManagerProxyImpl;-><init>(Landroid/app/NotificationManager;)V

    goto :goto_9

    .line 61
    .restart local v0       #service:Ljava/lang/Object;
    :cond_1a
    const-string v1, "audio"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 62
    new-instance v1, Lcom/google/android/apps/googlevoice/proxy/AudioManagerProxyImpl;

    check-cast v0, Landroid/media/AudioManager;

    .end local v0           #service:Ljava/lang/Object;
    invoke-direct {v1, v0}, Lcom/google/android/apps/googlevoice/proxy/AudioManagerProxyImpl;-><init>(Landroid/media/AudioManager;)V

    goto :goto_9

    .line 63
    .restart local v0       #service:Ljava/lang/Object;
    :cond_2a
    const-string v1, "vibrator"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 64
    new-instance v1, Lcom/google/android/apps/googlevoice/proxy/VibratorProxyImpl;

    check-cast v0, Landroid/os/Vibrator;

    .end local v0           #service:Ljava/lang/Object;
    invoke-direct {v1, v0}, Lcom/google/android/apps/googlevoice/proxy/VibratorProxyImpl;-><init>(Landroid/os/Vibrator;)V

    goto :goto_9

    .line 65
    .restart local v0       #service:Ljava/lang/Object;
    :cond_3a
    const-string v1, "phone"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 66
    new-instance v1, Lcom/google/android/apps/googlevoice/proxy/TelephonyManagerProxyImpl;

    check-cast v0, Landroid/telephony/TelephonyManager;

    .end local v0           #service:Ljava/lang/Object;
    invoke-direct {v1, v0}, Lcom/google/android/apps/googlevoice/proxy/TelephonyManagerProxyImpl;-><init>(Landroid/telephony/TelephonyManager;)V

    goto :goto_9

    .line 67
    .restart local v0       #service:Ljava/lang/Object;
    :cond_4a
    const-string v1, "sensor"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 68
    new-instance v1, Lcom/google/android/apps/googlevoice/proxy/SensorManagerProxyImpl;

    check-cast v0, Landroid/hardware/SensorManager;

    .end local v0           #service:Ljava/lang/Object;
    invoke-direct {v1, v0}, Lcom/google/android/apps/googlevoice/proxy/SensorManagerProxyImpl;-><init>(Landroid/hardware/SensorManager;)V

    goto :goto_9

    .line 69
    .restart local v0       #service:Ljava/lang/Object;
    :cond_5a
    const-string v1, "wifi"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 70
    new-instance v1, Lcom/google/android/apps/googlevoice/proxy/WifiManagerProxyImpl;

    check-cast v0, Landroid/net/wifi/WifiManager;

    .end local v0           #service:Ljava/lang/Object;
    invoke-direct {v1, v0}, Lcom/google/android/apps/googlevoice/proxy/WifiManagerProxyImpl;-><init>(Landroid/net/wifi/WifiManager;)V

    goto :goto_9

    .line 72
    .restart local v0       #service:Ljava/lang/Object;
    :cond_6a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown proxy for service: name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .registers 4
    .parameter "receiver"
    .parameter "filter"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/ContextProxyImpl;->context:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/ContextProxyImpl;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 51
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 3
    .parameter "receiver"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/proxy/ContextProxyImpl;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 41
    return-void
.end method
