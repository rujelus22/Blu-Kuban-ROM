.class public Lcom/google/android/apps/reader/app/ConnectivityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static isNetworkConnected(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 35
    invoke-static {p0}, Lcom/google/android/apps/reader/util/SystemService;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 36
    .local v0, manager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 37
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    :goto_11
    return v2

    :cond_12
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public static setEnabled(Landroid/content/Context;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 53
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/android/apps/reader/app/ConnectivityBroadcastReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    if-eqz p1, :cond_13

    move v2, v3

    :goto_f
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 59
    return-void

    .line 56
    :cond_13
    const/4 v2, 0x2

    goto :goto_f
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 64
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {p1}, Lcom/google/android/apps/reader/app/ConnectivityBroadcastReceiver;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/reader/app/ReaderConnectService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 68
    :cond_1c
    return-void
.end method
