.class Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TransferService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/transfer/TransferService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStateReceiver"
.end annotation


# instance fields
.field private connected:Z

.field private shouldLockWifi:Z

.field final synthetic this$0:Lcom/google/android/youtube/core/transfer/TransferService;

.field private wifi:Z

.field private wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/transfer/TransferService;)V
    .registers 4
    .parameter

    .prologue
    .line 606
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 607
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Lcom/google/android/youtube/core/transfer/TransferService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 609
    .local v0, manager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->update(Landroid/net/NetworkInfo;)V

    .line 610
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 598
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->wifi:Z

    return v0
.end method

.method private acquireWifiLock()V
    .registers 4

    .prologue
    .line 658
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v1, :cond_1c

    .line 659
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/transfer/TransferService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 660
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 662
    .end local v0           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_1c
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_29

    .line 663
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 665
    :cond_29
    return-void
.end method

.method private update(Landroid/net/NetworkInfo;)V
    .registers 4
    .parameter "info"

    .prologue
    const/4 v0, 0x1

    .line 634
    if-eqz p1, :cond_1c

    .line 635
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->connected:Z

    .line 636
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v0, :cond_1d

    :goto_f
    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->wifi:Z

    .line 637
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->wifi:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->shouldLockWifi:Z

    if-eqz v0, :cond_1c

    .line 638
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->acquireWifiLock()V

    .line 641
    :cond_1c
    return-void

    .line 636
    :cond_1d
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public isConnected()Z
    .registers 2

    .prologue
    .line 613
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->connected:Z

    return v0
.end method

.method public lockWifi()V
    .registers 2

    .prologue
    .line 644
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->shouldLockWifi:Z

    .line 645
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->wifi:Z

    if-eqz v0, :cond_a

    .line 646
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->acquireWifiLock()V

    .line 648
    :cond_a
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 628
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->update(Landroid/net/NetworkInfo;)V

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->connected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/TransferService;->ping()V

    .line 631
    return-void
.end method

.method public register()V
    .registers 3

    .prologue
    .line 617
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 618
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-virtual {v1, p0, v0}, Lcom/google/android/youtube/core/transfer/TransferService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 619
    return-void
.end method

.method public releaseWifi()V
    .registers 2

    .prologue
    .line 651
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->shouldLockWifi:Z

    .line 652
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 653
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 655
    :cond_14
    return-void
.end method

.method public unregister()V
    .registers 2

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->releaseWifi()V

    .line 623
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/transfer/TransferService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 624
    return-void
.end method
