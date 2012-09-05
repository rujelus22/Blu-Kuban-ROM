.class public Lcom/vlingo/client/car/CarSystemEventManager;
.super Landroid/content/BroadcastReceiver;
.source "CarSystemEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/car/CarSystemEventManager$1;,
        Lcom/vlingo/client/car/CarSystemEventManager$PhoneStateListenerImpl;
    }
.end annotation


# instance fields
.field private activity:Lcom/vlingo/client/car/CarActivity;

.field private final battFilter:Landroid/content/IntentFilter;

.field private isAttached:Z

.field private phoneStateListener:Lcom/vlingo/client/car/CarSystemEventManager$PhoneStateListenerImpl;

.field private phraseSpotOnScreenOn:Z

.field private powerManager:Landroid/os/PowerManager;

.field private telephonyManager:Landroid/telephony/TelephonyManager;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/car/CarActivity;)V
    .registers 5
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vlingo/client/car/CarSystemEventManager;->battFilter:Landroid/content/IntentFilter;

    .line 24
    iput-boolean v2, p0, Lcom/vlingo/client/car/CarSystemEventManager;->isAttached:Z

    .line 25
    iput-boolean v2, p0, Lcom/vlingo/client/car/CarSystemEventManager;->phraseSpotOnScreenOn:Z

    .line 33
    iput-object p1, p0, Lcom/vlingo/client/car/CarSystemEventManager;->activity:Lcom/vlingo/client/car/CarActivity;

    .line 34
    const-string v0, "power"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/car/CarActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/vlingo/client/car/CarSystemEventManager;->powerManager:Landroid/os/PowerManager;

    .line 35
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Lcom/vlingo/client/car/CarActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/vlingo/client/car/CarSystemEventManager;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 37
    return-void
.end method

.method static synthetic access$100(Lcom/vlingo/client/car/CarSystemEventManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/vlingo/client/car/CarSystemEventManager;->isAttached:Z

    return v0
.end method

.method static synthetic access$200(Lcom/vlingo/client/car/CarSystemEventManager;)Lcom/vlingo/client/car/CarActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vlingo/client/car/CarSystemEventManager;->activity:Lcom/vlingo/client/car/CarActivity;

    return-object v0
.end method

.method private declared-synchronized attach()V
    .registers 5

    .prologue
    .line 40
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/vlingo/client/car/CarSystemEventManager;->isAttached:Z

    if-nez v1, :cond_50

    .line 42
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 43
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    const-string v1, "com.vlingo.client.samsung.phrasespotter.CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/vlingo/client/car/CarSystemEventManager;->activity:Lcom/vlingo/client/car/CarActivity;

    invoke-virtual {v1, p0, v0}, Lcom/vlingo/client/car/CarActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 52
    iget-object v1, p0, Lcom/vlingo/client/car/CarSystemEventManager;->powerManager:Landroid/os/PowerManager;

    const/4 v2, 0x6

    const-string v3, "Vlingo InCar"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/car/CarSystemEventManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 53
    iget-object v1, p0, Lcom/vlingo/client/car/CarSystemEventManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_3c

    .line 54
    iget-object v1, p0, Lcom/vlingo/client/car/CarSystemEventManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 58
    :cond_3c
    new-instance v1, Lcom/vlingo/client/car/CarSystemEventManager$PhoneStateListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vlingo/client/car/CarSystemEventManager$PhoneStateListenerImpl;-><init>(Lcom/vlingo/client/car/CarSystemEventManager;Lcom/vlingo/client/car/CarSystemEventManager$1;)V

    iput-object v1, p0, Lcom/vlingo/client/car/CarSystemEventManager;->phoneStateListener:Lcom/vlingo/client/car/CarSystemEventManager$PhoneStateListenerImpl;

    .line 59
    iget-object v1, p0, Lcom/vlingo/client/car/CarSystemEventManager;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/vlingo/client/car/CarSystemEventManager;->phoneStateListener:Lcom/vlingo/client/car/CarSystemEventManager$PhoneStateListenerImpl;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 61
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vlingo/client/car/CarSystemEventManager;->isAttached:Z
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_52

    .line 63
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_50
    monitor-exit p0

    return-void

    .line 40
    :catchall_52
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized detach()V
    .registers 4

    .prologue
    .line 66
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/vlingo/client/car/CarSystemEventManager;->isAttached:Z

    if-eqz v0, :cond_1d

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/car/CarSystemEventManager;->isAttached:Z

    .line 71
    iget-object v0, p0, Lcom/vlingo/client/car/CarSystemEventManager;->activity:Lcom/vlingo/client/car/CarActivity;

    invoke-virtual {v0, p0}, Lcom/vlingo/client/car/CarActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 74
    iget-object v0, p0, Lcom/vlingo/client/car/CarSystemEventManager;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/vlingo/client/car/CarSystemEventManager;->phoneStateListener:Lcom/vlingo/client/car/CarSystemEventManager$PhoneStateListenerImpl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 77
    iget-object v0, p0, Lcom/vlingo/client/car/CarSystemEventManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/car/CarSystemEventManager;->wakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 80
    :cond_1d
    monitor-exit p0

    return-void

    .line 66
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized handlePause()V
    .registers 2

    .prologue
    .line 83
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/vlingo/client/car/CarSystemEventManager;->detach()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 84
    monitor-exit p0

    return-void

    .line 83
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized handleResume()V
    .registers 5

    .prologue
    .line 88
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/vlingo/client/car/CarSystemEventManager;->attach()V

    .line 92
    iget-object v1, p0, Lcom/vlingo/client/car/CarSystemEventManager;->activity:Lcom/vlingo/client/car/CarActivity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vlingo/client/car/CarSystemEventManager;->battFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Lcom/vlingo/client/car/CarActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 93
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/vlingo/client/car/CarSystemEventManager;->activity:Lcom/vlingo/client/car/CarActivity;

    invoke-virtual {v1}, Lcom/vlingo/client/car/CarActivity;->getWakeupPhraseSpotter()Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->HandleBatteryChange(Landroid/content/Intent;)V

    .line 95
    iget-object v1, p0, Lcom/vlingo/client/car/CarSystemEventManager;->activity:Lcom/vlingo/client/car/CarActivity;

    invoke-virtual {v1}, Lcom/vlingo/client/car/CarActivity;->getWakeupPhraseSpotter()Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->onConfigChanged()V

    .line 96
    iget-object v1, p0, Lcom/vlingo/client/car/CarSystemEventManager;->activity:Lcom/vlingo/client/car/CarActivity;

    invoke-virtual {v1}, Lcom/vlingo/client/car/CarActivity;->setHeaderBasedOnCurrentItem()V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 97
    monitor-exit p0

    return-void

    .line 88
    .end local v0           #i:Landroid/content/Intent;
    :catchall_26
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 101
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/vlingo/client/car/CarSystemEventManager;->isAttached:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1d

    if-nez v1, :cond_7

    .line 128
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 105
    :cond_7
    :try_start_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 108
    iget-object v1, p0, Lcom/vlingo/client/car/CarSystemEventManager;->activity:Lcom/vlingo/client/car/CarActivity;

    invoke-virtual {v1}, Lcom/vlingo/client/car/CarActivity;->getWakeupPhraseSpotter()Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->HandleBatteryChange(Landroid/content/Intent;)V
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1d

    goto :goto_5

    .line 101
    .end local v0           #action:Ljava/lang/String;
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1

    .line 110
    .restart local v0       #action:Ljava/lang/String;
    :cond_20
    :try_start_20
    const-string v1, "com.vlingo.client.samsung.phrasespotter.CONFIG_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 111
    iget-object v1, p0, Lcom/vlingo/client/car/CarSystemEventManager;->activity:Lcom/vlingo/client/car/CarActivity;

    invoke-virtual {v1}, Lcom/vlingo/client/car/CarActivity;->getWakeupPhraseSpotter()Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->onConfigChanged()V

    .line 112
    iget-object v1, p0, Lcom/vlingo/client/car/CarSystemEventManager;->activity:Lcom/vlingo/client/car/CarActivity;

    invoke-virtual {v1}, Lcom/vlingo/client/car/CarActivity;->updateControlButtons()V

    goto :goto_5

    .line 114
    :cond_37
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 115
    iget-object v1, p0, Lcom/vlingo/client/car/CarSystemEventManager;->activity:Lcom/vlingo/client/car/CarActivity;

    invoke-virtual {v1}, Lcom/vlingo/client/car/CarActivity;->getWakeupPhraseSpotter()Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->isListening()Z

    move-result v1

    iput-boolean v1, p0, Lcom/vlingo/client/car/CarSystemEventManager;->phraseSpotOnScreenOn:Z

    .line 116
    iget-object v1, p0, Lcom/vlingo/client/car/CarSystemEventManager;->activity:Lcom/vlingo/client/car/CarActivity;

    invoke-virtual {v1}, Lcom/vlingo/client/car/CarActivity;->getPhraseSpotterHandler()Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->stopPhraseSpotting()V

    goto :goto_5

    .line 118
    :cond_55
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 119
    iget-boolean v1, p0, Lcom/vlingo/client/car/CarSystemEventManager;->phraseSpotOnScreenOn:Z

    if-eqz v1, :cond_6a

    .line 120
    iget-object v1, p0, Lcom/vlingo/client/car/CarSystemEventManager;->activity:Lcom/vlingo/client/car/CarActivity;

    invoke-virtual {v1}, Lcom/vlingo/client/car/CarActivity;->getPhraseSpotterHandler()Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->startPhraseSpotting()V

    .line 122
    :cond_6a
    iget-object v1, p0, Lcom/vlingo/client/car/CarSystemEventManager;->activity:Lcom/vlingo/client/car/CarActivity;

    invoke-virtual {v1}, Lcom/vlingo/client/car/CarActivity;->setHeaderBasedOnCurrentItem()V

    goto :goto_5

    .line 124
    :cond_70
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 125
    iget-object v1, p0, Lcom/vlingo/client/car/CarSystemEventManager;->activity:Lcom/vlingo/client/car/CarActivity;

    invoke-virtual {v1}, Lcom/vlingo/client/car/CarActivity;->updateControlButtons()V
    :try_end_7d
    .catchall {:try_start_20 .. :try_end_7d} :catchall_1d

    goto :goto_5
.end method
