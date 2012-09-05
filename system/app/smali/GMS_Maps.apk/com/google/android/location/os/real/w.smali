.class final Lcom/google/android/location/os/real/w;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/google/android/location/os/real/u;

.field private final b:Landroid/net/wifi/WifiManager;


# direct methods
.method private constructor <init>(Lcom/google/android/location/os/real/u;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/location/os/real/w;->a:Lcom/google/android/location/os/real/u;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iget-object v0, p0, Lcom/google/android/location/os/real/w;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->a(Lcom/google/android/location/os/real/u;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/google/android/location/os/real/w;->b:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/os/real/u;Lcom/google/android/location/os/real/v;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/location/os/real/w;-><init>(Lcom/google/android/location/os/real/u;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    const/16 v4, 0x13

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v0, p0, Lcom/google/android/location/os/real/w;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0, v4, v2, v5}, Lcom/google/android/location/os/real/u;->a(Lcom/google/android/location/os/real/u;III)V

    :cond_16
    :goto_16
    return-void

    :cond_17
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    iget-object v0, p0, Lcom/google/android/location/os/real/w;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0, v4, v1, v5}, Lcom/google/android/location/os/real/u;->a(Lcom/google/android/location/os/real/u;III)V

    goto :goto_16

    :cond_25
    const-string v3, "com.google.android.location.ALARM_WAKEUP_LOCATOR"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    iget-object v0, p0, Lcom/google/android/location/os/real/w;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->i(Lcom/google/android/location/os/real/u;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/android/location/os/real/w;->a:Lcom/google/android/location/os/real/u;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/android/location/os/real/u;->a(Lcom/google/android/location/os/real/u;I)V

    goto :goto_16

    :cond_3d
    const-string v3, "com.google.android.location.ALARM_WAKEUP_ACTIVE_COLLECTOR"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    iget-object v0, p0, Lcom/google/android/location/os/real/w;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->i(Lcom/google/android/location/os/real/u;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/android/location/os/real/w;->a:Lcom/google/android/location/os/real/u;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/google/android/location/os/real/u;->a(Lcom/google/android/location/os/real/u;I)V

    goto :goto_16

    :cond_55
    const-string v3, "com.google.android.location.ALARM_WAKEUP_BURST_COLLECTOR"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    iget-object v0, p0, Lcom/google/android/location/os/real/w;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->i(Lcom/google/android/location/os/real/u;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/android/location/os/real/w;->a:Lcom/google/android/location/os/real/u;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/google/android/location/os/real/u;->a(Lcom/google/android/location/os/real/u;I)V

    goto :goto_16

    :cond_6e
    const-string v3, "com.google.android.location.ALARM_WAKEUP_PASSIVE_COLLECTOR"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    iget-object v0, p0, Lcom/google/android/location/os/real/w;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->i(Lcom/google/android/location/os/real/u;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/android/location/os/real/w;->a:Lcom/google/android/location/os/real/u;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/google/android/location/os/real/u;->a(Lcom/google/android/location/os/real/u;I)V

    goto :goto_16

    :cond_87
    const-string v3, "com.google.android.location.ALARM_WAKEUP_CACHE_UPDATER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    iget-object v0, p0, Lcom/google/android/location/os/real/w;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->i(Lcom/google/android/location/os/real/u;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/android/location/os/real/w;->a:Lcom/google/android/location/os/real/u;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/google/android/location/os/real/u;->a(Lcom/google/android/location/os/real/u;I)V

    goto/16 :goto_16

    :cond_a1
    const-string v3, "com.google.android.location.ALARM_WAKEUP_CALIBRATION_COLLECTOR"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bb

    iget-object v0, p0, Lcom/google/android/location/os/real/w;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->i(Lcom/google/android/location/os/real/u;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/android/location/os/real/w;->a:Lcom/google/android/location/os/real/u;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/google/android/location/os/real/u;->a(Lcom/google/android/location/os/real/u;I)V

    goto/16 :goto_16

    :cond_bb
    const-string v3, "com.google.android.location.ALARM_WAKEUP_S_COLLECTOR"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d5

    iget-object v0, p0, Lcom/google/android/location/os/real/w;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->i(Lcom/google/android/location/os/real/u;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/android/location/os/real/w;->a:Lcom/google/android/location/os/real/u;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/google/android/location/os/real/u;->a(Lcom/google/android/location/os/real/u;I)V

    goto/16 :goto_16

    :cond_d5
    const-string v3, "com.google.android.location.ALARM_WAKEUP_SENSOR_UPLOADER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ef

    iget-object v0, p0, Lcom/google/android/location/os/real/w;->a:Lcom/google/android/location/os/real/u;

    invoke-static {v0}, Lcom/google/android/location/os/real/u;->i(Lcom/google/android/location/os/real/u;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/android/location/os/real/w;->a:Lcom/google/android/location/os/real/u;

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lcom/google/android/location/os/real/u;->a(Lcom/google/android/location/os/real/u;I)V

    goto/16 :goto_16

    :cond_ef
    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_110

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/location/os/real/w;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-static {v0, v1, v2}, Lcom/google/android/location/os/real/M;->a(JLjava/util/List;)Lcom/google/android/location/os/real/M;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/os/real/w;->a:Lcom/google/android/location/os/real/u;

    const/16 v2, 0xf

    invoke-static {v1, v2, v0}, Lcom/google/android/location/os/real/u;->a(Lcom/google/android/location/os/real/u;ILjava/lang/Object;)V

    goto/16 :goto_16

    :cond_110
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_134

    const-string v0, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_12e

    move v0, v1

    :goto_123
    iget-object v3, p0, Lcom/google/android/location/os/real/w;->a:Lcom/google/android/location/os/real/u;

    const/16 v4, 0x10

    if-eqz v0, :cond_132

    :goto_129
    invoke-static {v3, v4, v1, v5}, Lcom/google/android/location/os/real/u;->a(Lcom/google/android/location/os/real/u;III)V

    goto/16 :goto_16

    :cond_12e
    if-ne v0, v1, :cond_16

    move v0, v2

    goto :goto_123

    :cond_132
    move v1, v2

    goto :goto_129

    :cond_134
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_149

    iget-object v0, p0, Lcom/google/android/location/os/real/w;->a:Lcom/google/android/location/os/real/u;

    const/16 v1, 0x11

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/location/os/real/u;->a(Lcom/google/android/location/os/real/u;ILjava/lang/Object;)V

    goto/16 :goto_16

    :cond_149
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_162

    iget-object v0, p0, Lcom/google/android/location/os/real/w;->a:Lcom/google/android/location/os/real/u;

    const/16 v3, 0x15

    invoke-static {p1}, Lcom/google/android/location/os/real/u;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_160

    :goto_15b
    invoke-static {v0, v3, v1, v5}, Lcom/google/android/location/os/real/u;->a(Lcom/google/android/location/os/real/u;III)V

    goto/16 :goto_16

    :cond_160
    move v1, v2

    goto :goto_15b

    :cond_162
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/location/os/real/w;->a:Lcom/google/android/location/os/real/u;

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lcom/google/android/location/os/real/u;->a(Lcom/google/android/location/os/real/u;I)V

    goto/16 :goto_16
.end method
