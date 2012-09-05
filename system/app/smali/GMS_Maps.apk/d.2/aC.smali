.class Ld/aC;
.super Ld/al;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroid/net/wifi/WifiManager;

.field private final e:Ld/aB;

.field private f:Landroid/net/wifi/WifiManager$WifiLock;

.field private final g:Landroid/content/BroadcastReceiver;

.field private volatile h:I

.field private i:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Ld/y;Ld/aB;Ld/C;Lm/c;)V
    .registers 7

    invoke-direct {p0, p1, p2, p4, p5}, Ld/al;-><init>(Landroid/content/Context;Ld/y;Ld/C;Lm/c;)V

    new-instance v0, Ld/aD;

    invoke-direct {v0, p0}, Ld/aD;-><init>(Ld/aC;)V

    iput-object v0, p0, Ld/aC;->g:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    iput v0, p0, Ld/aC;->h:I

    new-instance v0, Ld/aE;

    invoke-direct {v0, p0}, Ld/aE;-><init>(Ld/aC;)V

    iput-object v0, p0, Ld/aC;->i:Ljava/lang/Runnable;

    invoke-static {p1}, Ld/ax;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Ld/aC;->c:Landroid/content/Context;

    iput-object p3, p0, Ld/aC;->e:Ld/aB;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Ld/aC;->d:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method static synthetic a(Ld/aC;)V
    .registers 1

    invoke-direct {p0}, Ld/aC;->c()V

    return-void
.end method

.method static synthetic b(Ld/aC;)Landroid/net/wifi/WifiManager;
    .registers 2

    iget-object v0, p0, Ld/aC;->d:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic c(Ld/aC;)Ld/aB;
    .registers 2

    iget-object v0, p0, Ld/aC;->e:Ld/aB;

    return-object v0
.end method

.method private c()V
    .registers 5

    invoke-virtual {p0}, Ld/aC;->f()Ld/y;

    move-result-object v0

    iget-object v1, p0, Ld/aC;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ld/y;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Ld/aC;->i()V

    invoke-virtual {p0}, Ld/aC;->f()Ld/y;

    move-result-object v0

    iget-object v1, p0, Ld/aC;->i:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Ld/y;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private i()V
    .registers 3

    iget-object v0, p0, Ld/aC;->d:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    iget-object v0, p0, Ld/aC;->b:Ld/C;

    if-eqz v0, :cond_10

    iget-object v0, p0, Ld/aC;->b:Ld/C;

    iget v1, p0, Ld/aC;->h:I

    invoke-interface {v0, v1}, Ld/C;->a(I)V

    :cond_10
    iget v0, p0, Ld/aC;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ld/aC;->h:I

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 5

    iget-object v0, p0, Ld/aC;->d:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x2

    const-string v2, "WifiScanner"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Ld/aC;->f:Landroid/net/wifi/WifiManager$WifiLock;

    iget-object v0, p0, Ld/aC;->f:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Ld/aC;->f:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    iget-object v0, p0, Ld/aC;->c:Landroid/content/Context;

    iget-object v1, p0, Ld/aC;->g:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Ld/aC;->c()V

    return-void
.end method

.method protected b()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Ld/aC;->f:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_11

    iget-object v0, p0, Ld/aC;->f:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Ld/aC;->f:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_11
    iget-object v0, p0, Ld/aC;->c:Landroid/content/Context;

    iget-object v1, p0, Ld/aC;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_18} :catch_22

    :goto_18
    iget-object v0, p0, Ld/aC;->b:Ld/C;

    if-eqz v0, :cond_21

    iget-object v0, p0, Ld/aC;->b:Ld/C;

    invoke-interface {v0}, Ld/C;->f()V

    :cond_21
    return-void

    :catch_22
    move-exception v0

    goto :goto_18
.end method
