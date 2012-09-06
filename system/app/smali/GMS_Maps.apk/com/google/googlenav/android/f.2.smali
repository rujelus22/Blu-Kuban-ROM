.class public Lcom/google/googlenav/android/F;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/content/IntentFilter;

.field private static final b:Landroid/content/IntentFilter;

.field private static final c:Landroid/content/BroadcastReceiver;

.field private static d:Z

.field private static volatile f:Landroid/net/NetworkInfo;

.field private static g:Lcom/google/googlenav/android/H;


# instance fields
.field private final e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 41
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/googlenav/android/F;->a:Landroid/content/IntentFilter;

    .line 45
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/googlenav/android/F;->b:Landroid/content/IntentFilter;

    .line 49
    new-instance v0, Lcom/google/googlenav/android/G;

    invoke-direct {v0}, Lcom/google/googlenav/android/G;-><init>()V

    sput-object v0, Lcom/google/googlenav/android/F;->c:Landroid/content/BroadcastReceiver;

    .line 74
    sput-object v2, Lcom/google/googlenav/android/F;->f:Landroid/net/NetworkInfo;

    .line 80
    sput-object v2, Lcom/google/googlenav/android/F;->g:Lcom/google/googlenav/android/H;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/google/googlenav/android/F;->e:Landroid/content/Context;

    .line 112
    return-void
.end method

.method public static declared-synchronized a(Landroid/app/Application;)V
    .registers 4
    .parameter

    .prologue
    .line 86
    const-class v1, Lcom/google/googlenav/android/F;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/google/googlenav/android/F;->d:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_17

    if-eqz v0, :cond_9

    .line 94
    :goto_7
    monitor-exit v1

    return-void

    .line 91
    :cond_9
    :try_start_9
    invoke-static {p0}, Lcom/google/googlenav/android/F;->c(Landroid/content/Context;)V

    .line 92
    sget-object v0, Lcom/google/googlenav/android/F;->c:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/google/googlenav/android/F;->b:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v2}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/googlenav/android/F;->d:Z
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_17

    goto :goto_7

    .line 86
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 2
    .parameter

    .prologue
    .line 148
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 150
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 3
    .parameter

    .prologue
    .line 172
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 173
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 174
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
    .parameter

    .prologue
    .line 205
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 207
    if-nez v0, :cond_e

    .line 208
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlenav/android/F;->f:Landroid/net/NetworkInfo;

    .line 212
    :goto_d
    return-void

    .line 210
    :cond_e
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/android/F;->f:Landroid/net/NetworkInfo;

    goto :goto_d
.end method

.method public static d(Landroid/content/Context;)I
    .registers 5
    .parameter

    .prologue
    .line 253
    const/4 v0, 0x0

    .line 255
    :try_start_1
    invoke-static {p0}, Lcom/google/googlenav/android/F;->f(Landroid/content/Context;)Landroid/content/Intent;
    :try_end_4
    .catch Landroid/content/ReceiverCallNotAllowedException; {:try_start_1 .. :try_end_4} :catch_1c

    move-result-object v0

    .line 262
    :goto_5
    if-nez v0, :cond_9

    .line 263
    const/4 v0, -0x1

    .line 267
    :goto_8
    return v0

    .line 265
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

    .line 256
    :catch_1c
    move-exception v1

    goto :goto_5
.end method

.method public static e(Landroid/content/Context;)I
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 277
    invoke-static {p0}, Lcom/google/googlenav/android/F;->f(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 278
    if-nez v2, :cond_8

    .line 297
    :cond_7
    :goto_7
    return v0

    .line 282
    :cond_8
    const-string v1, "status"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 284
    const/4 v1, 0x1

    .line 285
    const-string v4, "plugged"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 286
    if-lez v0, :cond_2b

    .line 287
    const/16 v0, 0x41

    .line 290
    :goto_19
    const/4 v1, 0x2

    if-ne v3, v1, :cond_1f

    .line 291
    or-int/lit8 v0, v0, 0x2

    goto :goto_7

    .line 292
    :cond_1f
    const/4 v1, 0x3

    if-ne v3, v1, :cond_25

    .line 293
    or-int/lit8 v0, v0, 0x4

    goto :goto_7

    .line 294
    :cond_25
    const/4 v1, 0x5

    if-ne v3, v1, :cond_7

    .line 295
    or-int/lit8 v0, v0, 0x10

    goto :goto_7

    :cond_2b
    move v0, v1

    goto :goto_19
.end method

.method public static e()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 184
    invoke-static {}, Lcom/google/googlenav/common/c;->b()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 185
    sget-object v1, Lcom/google/googlenav/android/F;->g:Lcom/google/googlenav/android/H;

    if-eqz v1, :cond_10

    .line 186
    sget-object v0, Lcom/google/googlenav/android/F;->g:Lcom/google/googlenav/android/H;

    iget-boolean v0, v0, Lcom/google/googlenav/android/H;->b:Z

    .line 198
    :cond_f
    :goto_f
    return v0

    .line 189
    :cond_10
    sget-object v1, Lcom/google/googlenav/android/F;->f:Landroid/net/NetworkInfo;

    .line 190
    if-eqz v1, :cond_f

    .line 195
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    .line 196
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_f
.end method

.method private static f(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .parameter

    .prologue
    .line 306
    const/4 v0, 0x0

    sget-object v1, Lcom/google/googlenav/android/F;->a:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static f()Z
    .registers 1

    .prologue
    .line 220
    invoke-static {}, Lcom/google/googlenav/common/c;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 221
    sget-object v0, Lcom/google/googlenav/android/F;->g:Lcom/google/googlenav/android/H;

    if-eqz v0, :cond_f

    .line 222
    sget-object v0, Lcom/google/googlenav/android/F;->g:Lcom/google/googlenav/android/H;

    iget-boolean v0, v0, Lcom/google/googlenav/android/H;->a:Z

    .line 231
    :goto_e
    return v0

    .line 225
    :cond_f
    sget-object v0, Lcom/google/googlenav/android/F;->f:Landroid/net/NetworkInfo;

    .line 226
    if-nez v0, :cond_15

    .line 227
    const/4 v0, 0x0

    goto :goto_e

    .line 231
    :cond_15
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_e
.end method

.method public static g()Landroid/util/Pair;
    .registers 2

    .prologue
    .line 241
    sget-object v0, Lcom/google/googlenav/android/F;->f:Landroid/net/NetworkInfo;

    .line 242
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_c

    .line 243
    :cond_a
    const/4 v0, 0x0

    .line 245
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

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/googlenav/android/F;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/googlenav/android/F;->e(Landroid/content/Context;)I

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

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/googlenav/android/F;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/googlenav/android/F;->d(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/googlenav/android/F;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/googlenav/android/F;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/googlenav/android/F;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/googlenav/android/F;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
