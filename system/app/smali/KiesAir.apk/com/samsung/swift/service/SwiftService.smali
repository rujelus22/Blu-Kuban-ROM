.class public Lcom/samsung/swift/service/SwiftService;
.super Landroid/app/Service;
.source "SwiftService.java"


# static fields
.field public static final START_EVENT:Ljava/lang/String;

.field public static final STOP_EVENT:Ljava/lang/String;

.field private static final TAGNAME:Ljava/lang/String;

.field private static instance:Lcom/samsung/swift/service/SwiftService;


# instance fields
.field private binder:Lcom/samsung/swift/service/ISwiftService$Stub;

.field private installer:Lcom/samsung/swift/service/Installer;

.field private isRunning:Z

.field private final restart:Ljava/lang/Runnable;

.field private final startServer:Ljava/lang/Runnable;

.field private final stopServer:Ljava/lang/Runnable;

.field private thread:Ljava/lang/Thread;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;

.field private webServer:Lcom/samsung/swift/service/webserver/WebServer;

.field private wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 117
    const-class v0, Lcom/samsung/swift/service/SwiftService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/SwiftService;->TAGNAME:Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/swift/service/SwiftService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Stop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/SwiftService;->STOP_EVENT:Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/swift/service/SwiftService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/SwiftService;->START_EVENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/swift/service/SwiftService;->isRunning:Z

    .line 372
    new-instance v0, Lcom/samsung/swift/service/SwiftService$3;

    invoke-direct {v0, p0}, Lcom/samsung/swift/service/SwiftService$3;-><init>(Lcom/samsung/swift/service/SwiftService;)V

    iput-object v0, p0, Lcom/samsung/swift/service/SwiftService;->startServer:Ljava/lang/Runnable;

    .line 389
    new-instance v0, Lcom/samsung/swift/service/SwiftService$4;

    invoke-direct {v0, p0}, Lcom/samsung/swift/service/SwiftService$4;-><init>(Lcom/samsung/swift/service/SwiftService;)V

    iput-object v0, p0, Lcom/samsung/swift/service/SwiftService;->restart:Ljava/lang/Runnable;

    .line 406
    new-instance v0, Lcom/samsung/swift/service/SwiftService$5;

    invoke-direct {v0, p0}, Lcom/samsung/swift/service/SwiftService$5;-><init>(Lcom/samsung/swift/service/SwiftService;)V

    iput-object v0, p0, Lcom/samsung/swift/service/SwiftService;->stopServer:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/swift/service/SwiftService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/samsung/swift/service/SwiftService;->doGetRootUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/swift/service/SwiftService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/samsung/swift/service/SwiftService;->doGetCurrentNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/swift/service/SwiftService;)V
    .registers 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/swift/exception/InstallationCorruptException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/samsung/swift/service/SwiftService;->doRestartServer()V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/swift/service/SwiftService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/samsung/swift/service/SwiftService;->doStop()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/swift/service/SwiftService;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftService;->startServer:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/swift/service/SwiftService;Ljava/lang/Runnable;Ljava/lang/String;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/samsung/swift/service/SwiftService;->startJob(Ljava/lang/Runnable;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/swift/service/SwiftService;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftService;->stopServer:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/swift/service/SwiftService;)Lcom/samsung/swift/service/Installer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftService;->installer:Lcom/samsung/swift/service/Installer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/swift/service/SwiftService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/samsung/swift/service/SwiftService;->isRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/swift/service/SwiftService;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftService;->restart:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/swift/service/SwiftService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/samsung/swift/service/SwiftService;->resetThread()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/swift/service/SwiftService;)V
    .registers 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/swift/exception/InstallationCorruptException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/samsung/swift/service/SwiftService;->doStart()V

    return-void
.end method

.method private native doDeleteSSLCertificate(Ljava/lang/String;)V
.end method

.method private native doGenerateSSLCertificate()V
.end method

.method private native doGetCurrentNetworkName()Ljava/lang/String;
.end method

.method private native doGetRootUrl()Ljava/lang/String;
.end method

.method private doRestartServer()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/swift/exception/InstallationCorruptException;
        }
    .end annotation

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/samsung/swift/service/SwiftService;->doStop()V

    .line 419
    invoke-direct {p0}, Lcom/samsung/swift/service/SwiftService;->doStart()V

    .line 420
    return-void
.end method

.method private doStart()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/swift/exception/InstallationCorruptException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 424
    invoke-direct {p0}, Lcom/samsung/swift/service/SwiftService;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 504
    :goto_7
    return-void

    .line 430
    :cond_8
    sget-object v4, Lcom/samsung/swift/service/SwiftService;->TAGNAME:Ljava/lang/String;

    const-string v5, "aquire wake locks"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v4, p0, Lcom/samsung/swift/service/SwiftService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v4, :cond_23

    .line 434
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/samsung/swift/service/SwiftService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    const-string v5, "swift CPU"

    invoke-virtual {v4, v8, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/swift/service/SwiftService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 436
    :cond_23
    iget-object v4, p0, Lcom/samsung/swift/service/SwiftService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v4, :cond_37

    .line 438
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/samsung/swift/service/SwiftService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    const-string v5, "swift WiFi"

    invoke-virtual {v4, v8, v5}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/swift/service/SwiftService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 441
    :cond_37
    iget-object v4, p0, Lcom/samsung/swift/service/SwiftService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 442
    iget-object v4, p0, Lcom/samsung/swift/service/SwiftService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 444
    invoke-static {}, Lcom/samsung/swift/service/NativeComponents;->instance()Lcom/samsung/swift/service/NativeComponents;

    .line 447
    invoke-static {}, Lcom/samsung/swift/security/SecurityManager;->instance()Lcom/samsung/swift/security/SecurityManager;

    .line 450
    invoke-static {}, Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;->instance()Lcom/samsung/swift/service/livenotifications/LiveNotificationsManager;

    .line 455
    iget-object v4, p0, Lcom/samsung/swift/service/SwiftService;->webServer:Lcom/samsung/swift/service/webserver/WebServer;

    if-nez v4, :cond_55

    .line 457
    new-instance v4, Lcom/samsung/swift/service/webserver/WebServerJNI;

    invoke-direct {v4}, Lcom/samsung/swift/service/webserver/WebServerJNI;-><init>()V

    iput-object v4, p0, Lcom/samsung/swift/service/SwiftService;->webServer:Lcom/samsung/swift/service/webserver/WebServer;

    .line 462
    :cond_55
    iget-object v4, p0, Lcom/samsung/swift/service/SwiftService;->webServer:Lcom/samsung/swift/service/webserver/WebServer;

    invoke-interface {v4}, Lcom/samsung/swift/service/webserver/WebServer;->isRunning()Z

    move-result v4

    if-nez v4, :cond_69

    .line 464
    sget-object v4, Lcom/samsung/swift/service/SwiftService;->TAGNAME:Ljava/lang/String;

    const-string v5, "Start webserver"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v4, p0, Lcom/samsung/swift/service/SwiftService;->webServer:Lcom/samsung/swift/service/webserver/WebServer;

    invoke-interface {v4}, Lcom/samsung/swift/service/webserver/WebServer;->start()V

    .line 468
    :cond_69
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    add-long v2, v4, v6

    .line 469
    .local v2, timeout:J
    :goto_76
    iget-object v4, p0, Lcom/samsung/swift/service/SwiftService;->webServer:Lcom/samsung/swift/service/webserver/WebServer;

    invoke-interface {v4}, Lcom/samsung/swift/service/webserver/WebServer;->isRunning()Z

    move-result v4

    if-nez v4, :cond_97

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gez v4, :cond_97

    .line 472
    const-wide/16 v4, 0x32

    :try_start_8d
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_90
    .catch Ljava/lang/InterruptedException; {:try_start_8d .. :try_end_90} :catch_91

    goto :goto_76

    .line 473
    :catch_91
    move-exception v1

    .line 474
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_7

    .line 478
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_97
    iget-object v4, p0, Lcom/samsung/swift/service/SwiftService;->webServer:Lcom/samsung/swift/service/webserver/WebServer;

    invoke-interface {v4}, Lcom/samsung/swift/service/webserver/WebServer;->isRunning()Z

    move-result v4

    if-nez v4, :cond_a7

    .line 480
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Could not start web server"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 483
    :cond_a7
    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "discoverable"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 484
    .local v0, discoverable:Z
    if-eqz v0, :cond_c0

    .line 487
    invoke-static {}, Lcom/samsung/swift/service/discovery/Discovery;->getInstance()Lcom/samsung/swift/service/discovery/Discovery;

    move-result-object v4

    if-eqz v4, :cond_c0

    .line 489
    invoke-static {}, Lcom/samsung/swift/service/discovery/Discovery;->getInstance()Lcom/samsung/swift/service/discovery/Discovery;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/swift/service/discovery/Discovery;->startService()V

    .line 494
    :cond_c0
    const/16 v4, 0x1a86

    invoke-static {v4}, Lcom/samsung/swift/service/fx/UploadServer;->getInstance(I)Lcom/samsung/swift/service/fx/UploadServer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/swift/service/fx/UploadServer;->startup()V

    .line 498
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->getInstance()Lcom/samsung/swift/service/systemstate/SystemStatePlugin;

    .line 500
    sget-object v4, Lcom/samsung/swift/service/SwiftService;->TAGNAME:Ljava/lang/String;

    const-string v5, "************** SWIFT IS RUNNING **************"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-direct {p0, v8}, Lcom/samsung/swift/service/SwiftService;->setRunning(Z)V

    goto/16 :goto_7
.end method

.method private doStop()V
    .registers 3

    .prologue
    .line 509
    invoke-direct {p0}, Lcom/samsung/swift/service/SwiftService;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7

    .line 551
    :goto_6
    return-void

    .line 514
    :cond_7
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 516
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 518
    :cond_14
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 520
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 523
    :cond_21
    sget-object v0, Lcom/samsung/swift/service/SwiftService;->TAGNAME:Ljava/lang/String;

    const-string v1, "release wake locks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    sget-object v0, Lcom/samsung/swift/service/SwiftService;->TAGNAME:Ljava/lang/String;

    const-string v1, "doStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-static {}, Lcom/samsung/swift/service/discovery/Discovery;->getInstance()Lcom/samsung/swift/service/discovery/Discovery;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 529
    invoke-static {}, Lcom/samsung/swift/service/discovery/Discovery;->getInstance()Lcom/samsung/swift/service/discovery/Discovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/swift/service/discovery/Discovery;->isServiceStarted()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 531
    invoke-static {}, Lcom/samsung/swift/service/discovery/Discovery;->getInstance()Lcom/samsung/swift/service/discovery/Discovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/swift/service/discovery/Discovery;->stopService()V

    .line 535
    :cond_46
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftService;->webServer:Lcom/samsung/swift/service/webserver/WebServer;

    invoke-interface {v0}, Lcom/samsung/swift/service/webserver/WebServer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 537
    sget-object v0, Lcom/samsung/swift/service/SwiftService;->TAGNAME:Ljava/lang/String;

    const-string v1, "Stopping webserver..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftService;->webServer:Lcom/samsung/swift/service/webserver/WebServer;

    invoke-interface {v0}, Lcom/samsung/swift/service/webserver/WebServer;->stop()V

    .line 539
    sget-object v0, Lcom/samsung/swift/service/SwiftService;->TAGNAME:Ljava/lang/String;

    const-string v1, "Joining webserver..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftService;->webServer:Lcom/samsung/swift/service/webserver/WebServer;

    invoke-interface {v0}, Lcom/samsung/swift/service/webserver/WebServer;->join()V

    .line 542
    :cond_66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/swift/service/SwiftService;->webServer:Lcom/samsung/swift/service/webserver/WebServer;

    .line 545
    invoke-static {}, Lcom/samsung/swift/service/fx/UploadServer;->getInstance()Lcom/samsung/swift/service/fx/UploadServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/swift/service/fx/UploadServer;->shutdown()V

    .line 547
    sget-object v0, Lcom/samsung/swift/service/SwiftService;->TAGNAME:Ljava/lang/String;

    const-string v1, "************** SWIFT IS SHUTDOWN **************"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/swift/service/SwiftService;->setRunning(Z)V

    goto :goto_6
.end method

.method public static instance()Lcom/samsung/swift/service/SwiftService;
    .registers 1

    .prologue
    .line 163
    sget-object v0, Lcom/samsung/swift/service/SwiftService;->instance:Lcom/samsung/swift/service/SwiftService;

    if-nez v0, :cond_b

    .line 165
    new-instance v0, Lcom/samsung/swift/service/SwiftService;

    invoke-direct {v0}, Lcom/samsung/swift/service/SwiftService;-><init>()V

    sput-object v0, Lcom/samsung/swift/service/SwiftService;->instance:Lcom/samsung/swift/service/SwiftService;

    .line 168
    :cond_b
    sget-object v0, Lcom/samsung/swift/service/SwiftService;->instance:Lcom/samsung/swift/service/SwiftService;

    return-object v0
.end method

.method private declared-synchronized isRunning()Z
    .registers 2

    .prologue
    .line 323
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/swift/service/SwiftService;->isRunning:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static makeIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 157
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/samsung/swift/service/SwiftService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized resetThread()V
    .registers 2

    .prologue
    .line 338
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/samsung/swift/service/SwiftService;->thread:Ljava/lang/Thread;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 339
    monitor-exit p0

    return-void

    .line 338
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setRunning(Z)V
    .registers 3
    .parameter "isRunning"

    .prologue
    .line 330
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/samsung/swift/service/SwiftService;->isRunning:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 331
    monitor-exit p0

    return-void

    .line 330
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized startJob(Ljava/lang/Runnable;Ljava/lang/String;)Z
    .registers 5
    .parameter "runnable"
    .parameter "broadcast"

    .prologue
    .line 349
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftService;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_f

    .line 351
    sget-object v0, Lcom/samsung/swift/service/SwiftService;->TAGNAME:Ljava/lang/String;

    const-string v1, "Ignored impatient click"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_22

    .line 352
    const/4 v0, 0x0

    .line 369
    :goto_d
    monitor-exit p0

    return v0

    .line 354
    :cond_f
    :try_start_f
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/swift/service/SwiftService$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/swift/service/SwiftService$2;-><init>(Lcom/samsung/swift/service/SwiftService;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/swift/service/SwiftService;->thread:Ljava/lang/Thread;

    .line 368
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftService;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_22

    .line 369
    const/4 v0, 0x1

    goto :goto_d

    .line 349
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .parameter "intent"

    .prologue
    .line 181
    const-class v0, Lcom/samsung/swift/service/ISwiftService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 183
    iget-object v0, p0, Lcom/samsung/swift/service/SwiftService;->binder:Lcom/samsung/swift/service/ISwiftService$Stub;

    .line 185
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 196
    sget-object v0, Lcom/samsung/swift/service/SwiftService;->TAGNAME:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 199
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_17

    .line 201
    invoke-virtual {p0}, Lcom/samsung/swift/service/SwiftService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/swift/Swift;->setApplicationContext(Landroid/content/Context;)V

    .line 204
    :cond_17
    sput-object p0, Lcom/samsung/swift/service/SwiftService;->instance:Lcom/samsung/swift/service/SwiftService;

    .line 207
    new-instance v0, Lcom/samsung/swift/service/Installer;

    invoke-direct {v0}, Lcom/samsung/swift/service/Installer;-><init>()V

    iput-object v0, p0, Lcom/samsung/swift/service/SwiftService;->installer:Lcom/samsung/swift/service/Installer;

    .line 210
    new-instance v0, Lcom/samsung/swift/service/SwiftService$1;

    invoke-direct {v0, p0}, Lcom/samsung/swift/service/SwiftService$1;-><init>(Lcom/samsung/swift/service/SwiftService;)V

    iput-object v0, p0, Lcom/samsung/swift/service/SwiftService;->binder:Lcom/samsung/swift/service/ISwiftService$Stub;

    .line 285
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 311
    sget-object v0, Lcom/samsung/swift/service/SwiftService;->TAGNAME:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iput-object v2, p0, Lcom/samsung/swift/service/SwiftService;->binder:Lcom/samsung/swift/service/ISwiftService$Stub;

    .line 313
    invoke-direct {p0}, Lcom/samsung/swift/service/SwiftService;->doStop()V

    .line 314
    sput-object v2, Lcom/samsung/swift/service/SwiftService;->instance:Lcom/samsung/swift/service/SwiftService;

    .line 315
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 316
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 5
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 304
    sget-object v0, Lcom/samsung/swift/service/SwiftService;->TAGNAME:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 306
    return-void
.end method
