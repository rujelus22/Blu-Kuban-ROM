.class final Lcom/estrongs/android/pop/scanner/i;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/scanner/WifiNetworkScannerService;


# direct methods
.method private constructor <init>(Lcom/estrongs/android/pop/scanner/WifiNetworkScannerService;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/scanner/i;->a:Lcom/estrongs/android/pop/scanner/WifiNetworkScannerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/pop/scanner/WifiNetworkScannerService;Lcom/estrongs/android/pop/scanner/i;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/scanner/i;-><init>(Lcom/estrongs/android/pop/scanner/WifiNetworkScannerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    :try_start_0
    const-string v0, "WifiNetworkScannerService"

    const-string v1, "start scanning wifi network"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/estrongs/android/pop/scanner/i;->a:Lcom/estrongs/android/pop/scanner/WifiNetworkScannerService;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/scanner/i;->a:Lcom/estrongs/android/pop/scanner/WifiNetworkScannerService;

    const-string v1, "smb://"

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/scanner/WifiNetworkScannerService;->a(Lcom/estrongs/android/pop/scanner/WifiNetworkScannerService;Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    if-eqz v1, :cond_25

    if-lez v0, :cond_25

    const-string v0, "smb://"

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e(Ljava/lang/String;)V

    :cond_25
    const-string v0, "WifiNetworkScannerService"

    const-string v1, "done scanning wifi network"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_34

    :goto_2c
    iget-object v0, p0, Lcom/estrongs/android/pop/scanner/i;->a:Lcom/estrongs/android/pop/scanner/WifiNetworkScannerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/scanner/WifiNetworkScannerService;->stopSelf(I)V

    return-void

    :catch_34
    move-exception v0

    const-string v1, "WifiNetworkScannerService"

    const-string v2, "Exception in handleMessage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c
.end method
