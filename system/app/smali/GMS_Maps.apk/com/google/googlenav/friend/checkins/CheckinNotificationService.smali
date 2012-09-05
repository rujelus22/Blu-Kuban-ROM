.class public Lcom/google/googlenav/friend/checkins/CheckinNotificationService;
.super Landroid/app/IntentService;


# instance fields
.field private a:Lax/bx;

.field private b:Landroid/net/wifi/WifiManager;

.field private c:Lcom/google/googlenav/friend/android/a;

.field private d:Lad/a;

.field private e:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "CheckinNotificationService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lam/b;)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    return-void

    :cond_f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    const/4 v2, 0x6

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Lam/b;->a(ILjava/lang/String;)V

    goto :goto_13
.end method

.method private b(Landroid/location/Location;)Lam/b;
    .registers 8

    const-wide v4, 0x412e848000000000L

    new-instance v0, Lam/b;

    sget-object v1, LbD/Z;->B:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    const/4 v1, 0x4

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    const/4 v1, 0x3

    invoke-static {p1}, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->c(Landroid/location/Location;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lam/b;->b(IJ)V

    return-object v0
.end method

.method private static c(Landroid/location/Location;)I
    .registers 3

    invoke-static {p0}, LaG/a;->a(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LaG/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x2

    :goto_b
    return v0

    :cond_c
    invoke-static {v0}, LaG/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_b

    :cond_14
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method a(Landroid/location/Location;)Lcom/google/googlenav/friend/checkins/c;
    .registers 8

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v3, Lcom/google/googlenav/friend/checkins/c;

    invoke-direct {v3}, Lcom/google/googlenav/friend/checkins/c;-><init>()V

    iput-object p1, v3, Lcom/google/googlenav/friend/checkins/c;->a:Landroid/location/Location;

    iget-object v0, p0, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->a:Lax/bx;

    if-nez v0, :cond_15

    new-instance v0, Lax/bx;

    invoke-direct {v0}, Lax/bx;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->a:Lax/bx;

    :cond_15
    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->b(Landroid/location/Location;)Lam/b;

    move-result-object v0

    iput-object v0, v3, Lcom/google/googlenav/friend/checkins/c;->b:Lam/b;

    iget-object v0, v3, Lcom/google/googlenav/friend/checkins/c;->b:Lam/b;

    invoke-direct {p0, v0}, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->a(Lam/b;)V

    iget-object v0, p0, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->a:Lax/bx;

    iget-object v4, v3, Lcom/google/googlenav/friend/checkins/c;->b:Lam/b;

    invoke-virtual {v0, v4}, Lax/bx;->a(Lam/b;)V

    invoke-static {p1}, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->c(Landroid/location/Location;)I

    move-result v0

    iput v0, v3, Lcom/google/googlenav/friend/checkins/c;->g:I

    iget v0, v3, Lcom/google/googlenav/friend/checkins/c;->g:I

    if-ne v0, v1, :cond_3c

    iget-object v0, v3, Lcom/google/googlenav/friend/checkins/c;->b:Lam/b;

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Lam/b;->l(I)I

    move-result v0

    if-nez v0, :cond_3c

    const/4 v0, 0x0

    :goto_3b
    return-object v0

    :cond_3c
    iget v0, v3, Lcom/google/googlenav/friend/checkins/c;->g:I

    invoke-static {p0, v0}, Lcom/google/googlenav/friend/checkins/a;->a(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, v3, Lcom/google/googlenav/friend/checkins/c;->c:Z

    iget-object v0, p0, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->a:Lax/bx;

    iget v4, v3, Lcom/google/googlenav/friend/checkins/c;->g:I

    invoke-virtual {v0, v4}, Lax/bx;->a(I)Z

    move-result v0

    iput-boolean v0, v3, Lcom/google/googlenav/friend/checkins/c;->d:Z

    iget v0, v3, Lcom/google/googlenav/friend/checkins/c;->g:I

    iget-boolean v4, v3, Lcom/google/googlenav/friend/checkins/c;->d:Z

    invoke-static {p0, v0, v4}, Lcom/google/googlenav/friend/checkins/a;->a(Landroid/content/Context;IZ)V

    iget-boolean v0, v3, Lcom/google/googlenav/friend/checkins/c;->c:Z

    if-nez v0, :cond_74

    iget-boolean v0, v3, Lcom/google/googlenav/friend/checkins/c;->d:Z

    if-eqz v0, :cond_74

    iget v0, v3, Lcom/google/googlenav/friend/checkins/c;->g:I

    if-eq v0, v5, :cond_74

    move v0, v1

    :goto_62
    iput-boolean v0, v3, Lcom/google/googlenav/friend/checkins/c;->e:Z

    iget-boolean v0, v3, Lcom/google/googlenav/friend/checkins/c;->c:Z

    if-eqz v0, :cond_76

    iget-boolean v0, v3, Lcom/google/googlenav/friend/checkins/c;->d:Z

    if-nez v0, :cond_76

    iget v0, v3, Lcom/google/googlenav/friend/checkins/c;->g:I

    if-eq v0, v5, :cond_76

    :goto_70
    iput-boolean v1, v3, Lcom/google/googlenav/friend/checkins/c;->f:Z

    move-object v0, v3

    goto :goto_3b

    :cond_74
    move v0, v2

    goto :goto_62

    :cond_76
    move v1, v2

    goto :goto_70
.end method

.method a(Lcom/google/googlenav/friend/checkins/c;)V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->j()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lax/au;->l()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    :goto_11
    if-eqz v0, :cond_1e

    invoke-static {}, Lax/aa;->l()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->c:Lcom/google/googlenav/friend/android/a;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/friend/android/a;->a(Lcom/google/googlenav/friend/checkins/c;)V

    :cond_1e
    return-void

    :cond_1f
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public onCreate()V
    .registers 4

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    new-instance v0, Lad/a;

    invoke-direct {v0}, Lad/a;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->d:Lad/a;

    iget-object v0, p0, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->d:Lad/a;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lad/a;->a(Landroid/content/Context;)V

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->b:Landroid/net/wifi/WifiManager;

    new-instance v0, Lcom/google/googlenav/friend/checkins/b;

    invoke-direct {v0}, Lcom/google/googlenav/friend/checkins/b;-><init>()V

    new-instance v1, Lcom/google/googlenav/friend/android/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/google/googlenav/friend/android/a;-><init>(Landroid/content/Context;Lcom/google/googlenav/friend/android/p;Lcom/google/googlenav/friend/checkins/b;)V

    iput-object v1, p0, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->c:Lcom/google/googlenav/friend/android/a;

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "CheckinsNotificationService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->e:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->d:Lad/a;

    invoke-virtual {v0}, Lad/a;->a()V

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->a(Landroid/location/Location;)Lcom/google/googlenav/friend/checkins/c;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->a(Lcom/google/googlenav/friend/checkins/c;)V

    :cond_1b
    iget-object v0, p0, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->a:Lax/bx;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->a:Lax/bx;

    invoke-virtual {v0}, Lax/bx;->d()V
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_2a

    :cond_24
    iget-object v0, p0, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_2a
    move-exception v0

    iget-object v1, p0, Lcom/google/googlenav/friend/checkins/CheckinNotificationService;->e:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method
