.class public Lcom/estrongs/android/pop/ftp/ESFtpService;
.super Landroid/app/Service;


# static fields
.field private static d:Z


# instance fields
.field a:Landroid/os/Handler;

.field b:Lcom/estrongs/android/pop/ftp/d;

.field private final c:Landroid/os/IBinder;

.field private e:Landroid/os/PowerManager;

.field private f:Landroid/net/wifi/WifiManager;

.field private g:Landroid/os/PowerManager$WakeLock;

.field private h:Landroid/net/wifi/WifiManager$WifiLock;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/android/pop/ftp/ESFtpService;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/estrongs/android/pop/ftp/g;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/ftp/g;-><init>(Lcom/estrongs/android/pop/ftp/ESFtpService;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->c:Landroid/os/IBinder;

    iput-object v1, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->e:Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->f:Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->g:Landroid/os/PowerManager$WakeLock;

    iput-object v1, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->h:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->i:I

    new-instance v0, Lcom/estrongs/android/pop/ftp/e;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/ftp/e;-><init>(Lcom/estrongs/android/pop/ftp/ESFtpService;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->a:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/pop/ftp/f;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/ftp/f;-><init>(Lcom/estrongs/android/pop/ftp/ESFtpService;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->b:Lcom/estrongs/android/pop/ftp/d;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/ftp/ESFtpService;)I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->i:I

    return v0
.end method

.method private a(I)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/estrongs/android/pop/ftp/ESFtpService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_14
    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/ftp/ESFtpService;I)V
    .registers 2

    iput p1, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->i:I

    return-void
.end method

.method static synthetic a(Z)V
    .registers 1

    sput-boolean p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->d:Z

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/ftp/ESFtpService;I)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/ftp/ESFtpService;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .registers 3

    invoke-static {}, Lcom/estrongs/android/pop/ftp/a;->e()Lcom/estrongs/android/pop/ftp/a;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/estrongs/android/pop/ftp/a;->e()Lcom/estrongs/android/pop/ftp/a;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/estrongs/android/pop/ftp/a;->j:Lcom/estrongs/android/pop/ftp/d;

    :cond_d
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/ftp/ESFtpService;->d()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/estrongs/android/pop/ftp/a;
    .registers 7

    invoke-static {p1, p2, p3, p4}, Lcom/estrongs/android/pop/ftp/a;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/estrongs/android/pop/ftp/a;

    invoke-static {}, Lcom/estrongs/android/pop/ftp/a;->e()Lcom/estrongs/android/pop/ftp/a;

    move-result-object v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Lcom/estrongs/android/pop/ftp/a;->e()Lcom/estrongs/android/pop/ftp/a;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->b:Lcom/estrongs/android/pop/ftp/d;

    iput-object v1, v0, Lcom/estrongs/android/pop/ftp/a;->j:Lcom/estrongs/android/pop/ftp/d;

    invoke-static {}, Lcom/estrongs/android/pop/ftp/a;->e()Lcom/estrongs/android/pop/ftp/a;

    move-result-object v0

    goto :goto_a
.end method

.method public declared-synchronized a()V
    .registers 6

    const/16 v4, 0xa

    const/4 v1, 0x0

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->e:Landroid/os/PowerManager;

    if-nez v0, :cond_13

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/ftp/ESFtpService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->e:Landroid/os/PowerManager;

    :cond_13
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->f:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_21

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/ftp/ESFtpService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->f:Landroid/net/wifi/WifiManager;

    :cond_21
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->g:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_d6

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_d6

    move v3, v1

    :goto_2e
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->h:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_d3

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->h:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_d3

    move v0, v1

    :goto_3b
    if-eqz v3, :cond_51

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->e:Landroid/os/PowerManager;

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->e:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "ES Wake Lock"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->g:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_51
    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->f:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_8a

    invoke-static {}, Lcom/estrongs/android/pop/b;->a()I
    :try_end_5a
    .catchall {:try_start_5 .. :try_end_5a} :catchall_bd

    move-result v0

    if-lt v0, v4, :cond_c0

    :try_start_5d
    const-string v1, "EEE"

    const-string v2, "acquire WIFI_MODE_FULL_HIGH_PERF lock"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->f:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x3

    const-string v3, "ES Wifi Lock"

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->h:Landroid/net/wifi/WifiManager$WifiLock;

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->h:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v1, :cond_85

    const-string v1, "EEE"

    const-string v2, "change to acquire WIFI_MODE_FULL lock"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->f:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    const-string v3, "ES Wifi Lock"

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->h:Landroid/net/wifi/WifiManager$WifiLock;
    :try_end_85
    .catchall {:try_start_5d .. :try_end_85} :catchall_bd
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_85} :catch_8c

    :cond_85
    :goto_85
    :try_start_85
    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->h:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V
    :try_end_8a
    .catchall {:try_start_85 .. :try_end_8a} :catchall_bd
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_8a} :catch_a0

    :cond_8a
    :goto_8a
    monitor-exit p0

    return-void

    :catch_8c
    move-exception v1

    :try_start_8d
    const-string v1, "EEE"

    const-string v2, "change to acquire WIFI_MODE_FULL lock"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->f:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    const-string v3, "ES Wifi Lock"

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->h:Landroid/net/wifi/WifiManager$WifiLock;
    :try_end_9f
    .catchall {:try_start_8d .. :try_end_9f} :catchall_bd
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_9f} :catch_a0

    goto :goto_85

    :catch_a0
    move-exception v1

    if-lt v0, v4, :cond_8a

    const/16 v1, 0xc

    if-ge v0, v1, :cond_8a

    :try_start_a7
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->f:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    const-string v2, "ES Wifi Lock"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->h:Landroid/net/wifi/WifiManager$WifiLock;

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->h:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V
    :try_end_b7
    .catchall {:try_start_a7 .. :try_end_b7} :catchall_bd
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_b7} :catch_b8

    goto :goto_8a

    :catch_b8
    move-exception v0

    const/4 v0, 0x0

    :try_start_ba
    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->h:Landroid/net/wifi/WifiManager$WifiLock;
    :try_end_bc
    .catchall {:try_start_ba .. :try_end_bc} :catchall_bd

    goto :goto_8a

    :catchall_bd
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_c0
    :try_start_c0
    const-string v1, "EEE"

    const-string v2, "acquire WIFI_MODE_FULL lock"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->f:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    const-string v3, "ES Wifi Lock"

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->h:Landroid/net/wifi/WifiManager$WifiLock;
    :try_end_d2
    .catchall {:try_start_c0 .. :try_end_d2} :catchall_bd
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_d2} :catch_a0

    goto :goto_85

    :cond_d3
    move v0, v2

    goto/16 :goto_3b

    :cond_d6
    move v3, v2

    goto/16 :goto_2e
.end method

.method public a(ILjava/lang/String;)V
    .registers 12

    const v4, 0x7f09029a

    const v8, 0x237ee9f

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/ftp/ESFtpService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/estrongs/android/pop/ftp/a;->e()Lcom/estrongs/android/pop/ftp/a;

    move-result-object v1

    if-eqz v1, :cond_1c

    sget-boolean v1, Lcom/estrongs/android/pop/ftp/ESFtpService;->d:Z

    if-eqz v1, :cond_22

    :cond_1c
    invoke-virtual {v0, v8}, Landroid/app/NotificationManager;->cancel(I)V

    iput v6, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->i:I

    :cond_21
    :goto_21
    return-void

    :cond_22
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    invoke-direct {p0, v4}, Lcom/estrongs/android/pop/ftp/ESFtpService;->a(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/app/Notification;->when:J

    if-nez p1, :cond_68

    const v2, 0x7f020061

    iput v2, v1, Landroid/app/Notification;->icon:I

    :cond_3a
    :goto_3a
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    invoke-direct {p0, v4}, Lcom/estrongs/android/pop/ftp/ESFtpService;->a(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/ftp/ESFtpService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "ftpserver"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v4, 0x1000

    invoke-static {p0, v6, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, p0, v2, p2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_21

    :cond_68
    if-ne p1, v7, :cond_70

    const v2, 0x7f020060

    iput v2, v1, Landroid/app/Notification;->icon:I

    goto :goto_3a

    :cond_70
    const/4 v2, 0x2

    if-ne p1, v2, :cond_79

    const v2, 0x7f020062

    iput v2, v1, Landroid/app/Notification;->icon:I

    goto :goto_3a

    :cond_79
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3a

    const v2, 0x7f020063

    iput v2, v1, Landroid/app/Notification;->icon:I

    goto :goto_3a
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/estrongs/android/pop/ftp/a;->e()Lcom/estrongs/android/pop/ftp/a;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-static {}, Lcom/estrongs/android/pop/ftp/a;->e()Lcom/estrongs/android/pop/ftp/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/ftp/a;->a(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/estrongs/android/pop/ftp/a;->e()Lcom/estrongs/android/pop/ftp/a;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-static {}, Lcom/estrongs/android/pop/ftp/a;->e()Lcom/estrongs/android/pop/ftp/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/pop/ftp/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public declared-synchronized b()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->h:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->h:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->h:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->h:Landroid/net/wifi/WifiManager$WifiLock;

    :cond_15
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->g:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->g:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->g:Landroid/os/PowerManager$WakeLock;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    :cond_29
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Lcom/estrongs/android/pop/ftp/a;
    .registers 2

    invoke-static {}, Lcom/estrongs/android/pop/ftp/a;->e()Lcom/estrongs/android/pop/ftp/a;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .registers 1

    invoke-static {}, Lcom/estrongs/android/pop/ftp/a;->j()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/ftp/ESFtpService;->f()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/ftp/ESFtpService;->b()V

    return-void
.end method

.method public e()Z
    .registers 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/ftp/a;->e()Lcom/estrongs/android/pop/ftp/a;

    move-result-object v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->aj()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/ftp/a;->f:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/android/pop/ftp/a;->e()Lcom/estrongs/android/pop/ftp/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ftp/a;->l()Z

    move-result v2

    if-eqz v2, :cond_73

    const/4 v0, 0x0

    :try_start_1e
    sput-boolean v0, Lcom/estrongs/android/pop/ftp/ESFtpService;->d:Z

    const/4 v0, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/ftp/a;->e()Lcom/estrongs/android/pop/ftp/a;

    move-result-object v3

    if-eqz v3, :cond_6b

    const-string v0, "preference_ftpsvr_visit"

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_38

    const v0, 0x7f09028e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/ftp/ESFtpService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "ftp:/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/estrongs/android/pop/ftp/a;->g()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/estrongs/android/pop/ftp/a;->h()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6b
    const/4 v3, 0x0

    if-eqz v0, :cond_78

    :goto_6e
    invoke-virtual {p0, v3, v0}, Lcom/estrongs/android/pop/ftp/ESFtpService;->a(ILjava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_71} :catch_93

    :goto_71
    iput v1, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->i:I

    :cond_73
    invoke-virtual {p0}, Lcom/estrongs/android/pop/ftp/ESFtpService;->a()V

    move v0, v2

    goto :goto_8

    :cond_78
    :try_start_78
    new-instance v0, Ljava/lang/StringBuilder;

    const v4, 0x7f09029d

    invoke-direct {p0, v4}, Lcom/estrongs/android/pop/ftp/ESFtpService;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "..."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_91} :catch_93

    move-result-object v0

    goto :goto_6e

    :catch_93
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_71
.end method

.method public f()V
    .registers 3

    :try_start_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/ftp/ESFtpService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x237ee9f

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_12

    :goto_e
    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->i:I

    return-void

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method

.method public g()Z
    .registers 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/android/pop/ftp/a;->i:Z

    return v0
.end method

.method public h()Z
    .registers 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/ftp/a;->i:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/ESFtpService;->c:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/ftp/ESFtpService;->d:Z

    return-void
.end method

.method public onDestroy()V
    .registers 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/android/pop/ftp/ESFtpService;->d:Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/ftp/ESFtpService;->i()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/ftp/ESFtpService;->d:Z

    const/4 v0, 0x1

    return v0
.end method
