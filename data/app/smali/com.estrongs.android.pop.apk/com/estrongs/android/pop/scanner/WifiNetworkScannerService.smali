.class public Lcom/estrongs/android/pop/scanner/WifiNetworkScannerService;
.super Landroid/app/Service;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private volatile a:Landroid/os/Looper;

.field private volatile b:Lcom/estrongs/android/pop/scanner/i;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/scanner/WifiNetworkScannerService;Ljava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/scanner/WifiNetworkScannerService;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)I
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    :try_start_4
    new-instance v1, Ljcifs/smb/ba;

    invoke-direct {v1, p1}, Ljcifs/smb/ba;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljcifs/smb/ba;->A()[Ljcifs/smb/ba;

    move-result-object v2

    if-eqz v2, :cond_3

    array-length v1, v2

    if-lez v1, :cond_3

    move v1, v0

    :goto_13
    array-length v3, v2

    if-ge v1, v3, :cond_3

    const-string v3, "WifiNetworkScannerService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MACHINE:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljcifs/smb/ba;->q()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3c

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3c

    const/16 v4, 0x8

    if-ne v3, v4, :cond_58

    :cond_3c
    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v3

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljcifs/smb/ba;->n()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v2, v1

    invoke-virtual {v5}, Ljcifs/smb/ba;->n()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/estrongs/android/pop/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/estrongs/android/pop/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    :cond_55
    :goto_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_58
    const/4 v4, 0x2

    if-ne v3, v4, :cond_55

    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljcifs/smb/ba;->n()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/estrongs/android/pop/scanner/WifiNetworkScannerService;->a(Ljava/lang/String;)I
    :try_end_64
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_64} :catch_6c
    .catch Ljcifs/smb/SmbException; {:try_start_4 .. :try_end_64} :catch_67

    move-result v3

    add-int/2addr v0, v3

    goto :goto_55

    :catch_67
    move-exception v1

    invoke-virtual {v1}, Ljcifs/smb/SmbException;->printStackTrace()V

    goto :goto_3

    :catch_6c
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    const-string v2, "WifiNetworkScannerService"

    invoke-direct {v0, v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/scanner/WifiNetworkScannerService;->a:Landroid/os/Looper;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/pop/scanner/WifiNetworkScannerService;->a:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void

    :cond_a
    monitor-enter p0

    const-wide/16 v0, 0x64

    :try_start_d
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_10} :catch_15

    :goto_10
    :try_start_10
    monitor-exit p0

    goto :goto_0

    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_12

    throw v0

    :catch_15
    move-exception v0

    goto :goto_10
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 5

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/scanner/WifiNetworkScannerService;->b:Lcom/estrongs/android/pop/scanner/i;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/estrongs/android/pop/scanner/WifiNetworkScannerService;->b:Lcom/estrongs/android/pop/scanner/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/scanner/i;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/pop/scanner/WifiNetworkScannerService;->b:Lcom/estrongs/android/pop/scanner/i;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/scanner/i;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_18
    monitor-enter p0

    const-wide/16 v0, 0x64

    :try_start_1b
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_20
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1e} :catch_23

    :goto_1e
    :try_start_1e
    monitor-exit p0

    goto :goto_0

    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_20

    throw v0

    :catch_23
    move-exception v0

    goto :goto_1e
.end method

.method public run()V
    .registers 3

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/scanner/WifiNetworkScannerService;->a:Landroid/os/Looper;

    new-instance v0, Lcom/estrongs/android/pop/scanner/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/pop/scanner/i;-><init>(Lcom/estrongs/android/pop/scanner/WifiNetworkScannerService;Lcom/estrongs/android/pop/scanner/i;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/scanner/WifiNetworkScannerService;->b:Lcom/estrongs/android/pop/scanner/i;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
