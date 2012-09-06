.class public LZD;
.super Ljava/lang/Object;
.source "NetworkUtilitiesImpl.java"

# interfaces
.implements LZC;


# instance fields
.field private final a:LFX;


# direct methods
.method public constructor <init>(LFX;)V
    .registers 2
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, LZD;->a:LFX;

    .line 31
    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 59
    if-nez p0, :cond_5

    .line 60
    const-string v0, ""

    .line 62
    :goto_4
    return-object v0

    :cond_5
    const-string v0, "([/~])"

    const-string v1, "/$1"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, LZD;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, LZD;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    return-object v0
.end method

.method private a()Z
    .registers 5

    .prologue
    .line 75
    iget-object v0, p0, LZD;->a:LFX;

    const-string v1, "wifiLockWorkaroundDeviceRegex"

    const-string v2, "ZTE~(SmartTab7|SmartTab10)~13"

    invoke-interface {v0, v1, v2}, LFX;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1, v2, v3}, LZD;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;LcI;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 36
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 39
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 40
    const/4 v1, 0x0

    .line 42
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 43
    invoke-direct {p0}, LZD;->a()Z

    move-result v3

    if-nez v3, :cond_3c

    .line 44
    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 48
    :goto_26
    :try_start_26
    invoke-virtual {p3}, LcI;->a()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_32

    .line 50
    if-eqz v0, :cond_2e

    .line 51
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 53
    :cond_2e
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 55
    return-void

    .line 50
    :catchall_32
    move-exception v1

    if-eqz v0, :cond_38

    .line 51
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 53
    :cond_38
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v1

    :cond_3c
    move-object v0, v1

    goto :goto_26
.end method
