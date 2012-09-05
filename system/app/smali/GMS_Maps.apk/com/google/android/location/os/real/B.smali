.class final Lcom/google/android/location/os/real/B;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Z

.field final synthetic b:Lcom/google/android/location/os/real/u;


# direct methods
.method private constructor <init>(Lcom/google/android/location/os/real/u;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/location/os/real/B;->b:Lcom/google/android/location/os/real/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/os/real/B;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/os/real/u;Lcom/google/android/location/os/real/v;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/location/os/real/B;-><init>(Lcom/google/android/location/os/real/u;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v7, 0x1

    const/4 v0, -0x4

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/google/android/location/os/real/B;->b:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->j(Lcom/google/android/location/os/real/u;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_f
    iget-object v0, p0, Lcom/google/android/location/os/real/B;->b:Lcom/google/android/location/os/real/u;

    new-instance v2, Lcom/google/android/location/os/real/y;

    iget-object v3, p0, Lcom/google/android/location/os/real/B;->b:Lcom/google/android/location/os/real/u;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/location/os/real/y;-><init>(Lcom/google/android/location/os/real/u;Lcom/google/android/location/os/real/v;)V

    invoke-static {v0, v2}, Lcom/google/android/location/os/real/u;->a(Lcom/google/android/location/os/real/u;Landroid/os/Handler;)Landroid/os/Handler;

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_18b

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.google.android.location.ALARM_WAKEUP_LOCATOR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.google.android.location.ALARM_WAKEUP_ACTIVE_COLLECTOR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.google.android.location.ALARM_WAKEUP_BURST_COLLECTOR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.google.android.location.ALARM_WAKEUP_PASSIVE_COLLECTOR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.google.android.location.ALARM_WAKEUP_CACHE_UPDATER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.google.android.location.ALARM_WAKEUP_CALIBRATION_COLLECTOR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.google.android.location.ALARM_WAKEUP_S_COLLECTOR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.google.android.location.ALARM_WAKEUP_SENSOR_UPLOADER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/location/os/real/B;->b:Lcom/google/android/location/os/real/u;

    invoke-static {v1}, Lcom/google/android/location/os/real/u;->j(Lcom/google/android/location/os/real/u;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_74
    iget-object v2, p0, Lcom/google/android/location/os/real/B;->b:Lcom/google/android/location/os/real/u;

    invoke-static {v2}, Lcom/google/android/location/os/real/u;->k(Lcom/google/android/location/os/real/u;)Z

    move-result v2

    if-nez v2, :cond_98

    iget-object v2, p0, Lcom/google/android/location/os/real/B;->b:Lcom/google/android/location/os/real/u;

    new-instance v3, Lcom/google/android/location/os/real/w;

    iget-object v4, p0, Lcom/google/android/location/os/real/B;->b:Lcom/google/android/location/os/real/u;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/android/location/os/real/w;-><init>(Lcom/google/android/location/os/real/u;Lcom/google/android/location/os/real/v;)V

    invoke-static {v2, v3}, Lcom/google/android/location/os/real/u;->a(Lcom/google/android/location/os/real/u;Lcom/google/android/location/os/real/w;)Lcom/google/android/location/os/real/w;

    iget-object v2, p0, Lcom/google/android/location/os/real/B;->b:Lcom/google/android/location/os/real/u;

    invoke-static {v2}, Lcom/google/android/location/os/real/u;->a(Lcom/google/android/location/os/real/u;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/location/os/real/B;->b:Lcom/google/android/location/os/real/u;

    invoke-static {v3}, Lcom/google/android/location/os/real/u;->l(Lcom/google/android/location/os/real/u;)Lcom/google/android/location/os/real/w;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_98
    monitor-exit v1
    :try_end_99
    .catchall {:try_start_74 .. :try_end_99} :catchall_18e

    iget-object v0, p0, Lcom/google/android/location/os/real/B;->b:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->a(Lcom/google/android/location/os/real/u;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/google/android/location/os/real/B;->b:Lcom/google/android/location/os/real/u;

    invoke-static {v1}, Lcom/google/android/location/os/real/u;->d(Lcom/google/android/location/os/real/u;)Lcom/google/android/location/os/real/A;

    move-result-object v1

    const/16 v2, 0x150

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/google/android/location/os/real/B;->b:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->a(Lcom/google/android/location/os/real/u;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/android/location/os/real/B;->b:Lcom/google/android/location/os/real/u;

    invoke-static {v1}, Lcom/google/android/location/os/real/u;->h(Lcom/google/android/location/os/real/u;)Lcom/google/android/location/os/real/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    const-string v1, "passive"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/location/os/real/B;->b:Lcom/google/android/location/os/real/u;

    invoke-static {v5}, Lcom/google/android/location/os/real/u;->g(Lcom/google/android/location/os/real/u;)Lcom/google/android/location/os/real/z;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_dd
    iput-boolean v0, p0, Lcom/google/android/location/os/real/B;->a:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_e3
    .catchall {:try_start_dd .. :try_end_e3} :catchall_191

    iget-object v0, p0, Lcom/google/android/location/os/real/B;->b:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->b(Lcom/google/android/location/os/real/u;)Li/f;

    move-result-object v0

    sget-object v1, Li/d;->a:Li/d;

    invoke-virtual {v0, v1}, Li/f;->a(Li/d;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/B;->b:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->c(Lcom/google/android/location/os/real/u;)Li/a;

    move-result-object v0

    invoke-interface {v0}, Li/a;->a()V

    iget-object v0, p0, Lcom/google/android/location/os/real/B;->b:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->a(Lcom/google/android/location/os/real/u;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_194

    move v0, v7

    :goto_10d
    iget-object v1, p0, Lcom/google/android/location/os/real/B;->b:Lcom/google/android/location/os/real/u;

    invoke-static {v1}, Lcom/google/android/location/os/real/u;->b(Lcom/google/android/location/os/real/u;)Li/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Li/f;->d(Z)V

    iget-object v1, p0, Lcom/google/android/location/os/real/B;->b:Lcom/google/android/location/os/real/u;

    invoke-static {v1}, Lcom/google/android/location/os/real/u;->c(Lcom/google/android/location/os/real/u;)Li/a;

    move-result-object v1

    invoke-interface {v1, v0}, Li/a;->b(Z)V

    iget-object v0, p0, Lcom/google/android/location/os/real/B;->b:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->a(Lcom/google/android/location/os/real/u;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/location/os/real/B;->b:Lcom/google/android/location/os/real/u;

    invoke-static {v1}, Lcom/google/android/location/os/real/u;->b(Lcom/google/android/location/os/real/u;)Li/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Li/f;->c(Z)V

    iget-object v1, p0, Lcom/google/android/location/os/real/B;->b:Lcom/google/android/location/os/real/u;

    invoke-static {v1}, Lcom/google/android/location/os/real/u;->c(Lcom/google/android/location/os/real/u;)Li/a;

    move-result-object v1

    invoke-interface {v1, v0}, Li/a;->c(Z)V

    iget-object v0, p0, Lcom/google/android/location/os/real/B;->b:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->a(Lcom/google/android/location/os/real/u;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->a(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/location/os/real/B;->b:Lcom/google/android/location/os/real/u;

    invoke-static {v1}, Lcom/google/android/location/os/real/u;->b(Lcom/google/android/location/os/real/u;)Li/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Li/f;->a(Z)V

    iget-object v1, p0, Lcom/google/android/location/os/real/B;->b:Lcom/google/android/location/os/real/u;

    invoke-static {v1}, Lcom/google/android/location/os/real/u;->c(Lcom/google/android/location/os/real/u;)Li/a;

    move-result-object v1

    invoke-interface {v1, v0}, Li/a;->d(Z)V

    iget-object v1, p0, Lcom/google/android/location/os/real/B;->b:Lcom/google/android/location/os/real/u;

    iget-object v0, p0, Lcom/google/android/location/os/real/B;->b:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->a(Lcom/google/android/location/os/real/u;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/google/android/location/os/real/B;->b:Lcom/google/android/location/os/real/u;

    invoke-static {v2}, Lcom/google/android/location/os/real/u;->c(Lcom/google/android/location/os/real/u;)Li/a;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/google/android/location/os/real/u;->a(Lcom/google/android/location/os/real/u;Landroid/net/ConnectivityManager;Li/a;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/B;->b:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->c(Lcom/google/android/location/os/real/u;)Li/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/os/real/B;->b:Lcom/google/android/location/os/real/u;

    invoke-static {v1}, Lcom/google/android/location/os/real/u;->m(Lcom/google/android/location/os/real/u;)Li/C;

    move-result-object v1

    invoke-interface {v0, v1}, Li/a;->a(Li/C;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_18b
    move-exception v0

    :try_start_18c
    monitor-exit v1
    :try_end_18d
    .catchall {:try_start_18c .. :try_end_18d} :catchall_18b

    throw v0

    :catchall_18e
    move-exception v0

    :try_start_18f
    monitor-exit v1
    :try_end_190
    .catchall {:try_start_18f .. :try_end_190} :catchall_18e

    throw v0

    :catchall_191
    move-exception v0

    :try_start_192
    monitor-exit p0
    :try_end_193
    .catchall {:try_start_192 .. :try_end_193} :catchall_191

    throw v0

    :cond_194
    const/4 v0, 0x0

    goto/16 :goto_10d
.end method
