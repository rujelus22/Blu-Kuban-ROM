.class public Lcom/estrongs/android/pop/scanner/WifiStateReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;II)V
    .registers 6

    const/4 v0, 0x2

    if-ne p3, v0, :cond_10

    const/4 v0, 0x3

    if-ne p2, v0, :cond_10

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SCAN_WIFINETWORK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_10
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/net/NetworkInfo;)V
    .registers 3

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const/4 v2, 0x4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "wifi_state"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "previous_wifi_state"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/estrongs/android/pop/scanner/WifiStateReceiver;->a(Landroid/content/Context;II)V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/pop/scanner/WifiStateReceiver;->a(Landroid/content/Context;Landroid/net/NetworkInfo;)V

    goto :goto_1c
.end method
