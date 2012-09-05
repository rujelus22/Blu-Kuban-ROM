.class public Lcom/google/googlenav/android/J;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/content/IntentFilter;

.field private static final b:Landroid/content/IntentFilter;

.field private static final c:Landroid/content/BroadcastReceiver;

.field private static d:Z

.field private static volatile f:Landroid/net/NetworkInfo;

.field private static g:Lcom/google/googlenav/android/L;


# instance fields
.field private final e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/googlenav/android/J;->a:Landroid/content/IntentFilter;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/googlenav/android/J;->b:Landroid/content/IntentFilter;

    new-instance v0, Lcom/google/googlenav/android/K;

    invoke-direct {v0}, Lcom/google/googlenav/android/K;-><init>()V

    sput-object v0, Lcom/google/googlenav/android/J;->c:Landroid/content/BroadcastReceiver;

    sput-object v2, Lcom/google/googlenav/android/J;->f:Landroid/net/NetworkInfo;

    sput-object v2, Lcom/google/googlenav/android/J;->g:Lcom/google/googlenav/android/L;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/android/J;->e:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a(Landroid/app/Application;)V
    .registers 4

    const-class v1, Lcom/google/googlenav/android/J;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/google/googlenav/android/J;->d:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_17

    if-eqz v0, :cond_9

    :goto_7
    monitor-exit v1

    return-void

    :cond_9
    :try_start_9
    invoke-static {p0}, Lcom/google/googlenav/android/J;->c(Landroid/content/Context;)V

    sget-object v0, Lcom/google/googlenav/android/J;->c:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/google/googlenav/android/J;->b:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v2}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/googlenav/android/J;->d:Z
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_17

    goto :goto_7

    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_12

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static c(Landroid/content/Context;)V
    .registers 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_e

    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlenav/android/J;->f:Landroid/net/NetworkInfo;

    :goto_d
    return-void

    :cond_e
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/android/J;->f:Landroid/net/NetworkInfo;

    goto :goto_d
.end method

.method public static d(Landroid/content/Context;)I
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/google/googlenav/android/J;->f(Landroid/content/Context;)Landroid/content/Intent;
    :try_end_4
    .catch Landroid/content/ReceiverCallNotAllowedException; {:try_start_1 .. :try_end_4} :catch_1c

    move-result-object v0

    :goto_5
    if-nez v0, :cond_9

    const/4 v0, -0x1

    :goto_8
    return v0

    :cond_9
    const-string v1, "level"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    const-string v2, "scale"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    div-int v0, v1, v0

    goto :goto_8

    :catch_1c
    move-exception v1

    goto :goto_5
.end method

.method public static e(Landroid/content/Context;)I
    .registers 6

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/google/googlenav/android/J;->f(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const-string v1, "status"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v1, 0x1

    const-string v4, "plugged"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_2b

    const/16 v0, 0x41

    :goto_19
    const/4 v1, 0x2

    if-ne v3, v1, :cond_1f

    or-int/lit8 v0, v0, 0x2

    goto :goto_7

    :cond_1f
    const/4 v1, 0x3

    if-ne v3, v1, :cond_25

    or-int/lit8 v0, v0, 0x4

    goto :goto_7

    :cond_25
    const/4 v1, 0x5

    if-ne v3, v1, :cond_7

    or-int/lit8 v0, v0, 0x10

    goto :goto_7

    :cond_2b
    move v0, v1

    goto :goto_19
.end method

.method public static e()Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {}, Laf/d;->b()Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/google/googlenav/android/J;->g:Lcom/google/googlenav/android/L;

    if-eqz v1, :cond_10

    sget-object v0, Lcom/google/googlenav/android/J;->g:Lcom/google/googlenav/android/L;

    iget-boolean v0, v0, Lcom/google/googlenav/android/L;->b:Z

    :cond_f
    :goto_f
    return v0

    :cond_10
    sget-object v1, Lcom/google/googlenav/android/J;->f:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_f
.end method

.method private static f(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3

    const/4 v0, 0x0

    sget-object v1, Lcom/google/googlenav/android/J;->a:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static f()Z
    .registers 1

    invoke-static {}, Laf/d;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/google/googlenav/android/J;->g:Lcom/google/googlenav/android/L;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/google/googlenav/android/J;->g:Lcom/google/googlenav/android/L;

    iget-boolean v0, v0, Lcom/google/googlenav/android/L;->a:Z

    :goto_e
    return v0

    :cond_f
    sget-object v0, Lcom/google/googlenav/android/J;->f:Landroid/net/NetworkInfo;

    if-nez v0, :cond_15

    const/4 v0, 0x0

    goto :goto_e

    :cond_15
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_e
.end method

.method public static g()Landroid/util/Pair;
    .registers 2

    sget-object v0, Lcom/google/googlenav/android/J;->f:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_b
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/J;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/googlenav/android/J;->e(Landroid/content/Context;)I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/J;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/googlenav/android/J;->d(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/J;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/googlenav/android/J;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/J;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/googlenav/android/J;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
