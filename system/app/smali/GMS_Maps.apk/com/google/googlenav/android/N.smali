.class public Lcom/google/googlenav/android/N;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/content/IntentFilter;

.field private static final b:Landroid/content/BroadcastReceiver;

.field private static final c:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.googlenav.STOP_TRANSIT_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/googlenav/android/N;->a:Landroid/content/IntentFilter;

    new-instance v0, Lcom/google/googlenav/android/O;

    invoke-direct {v0}, Lcom/google/googlenav/android/O;-><init>()V

    sput-object v0, Lcom/google/googlenav/android/N;->b:Landroid/content/BroadcastReceiver;

    invoke-static {}, LK/cw;->a()Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/android/N;->c:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/app/Activity;)V
    .registers 4

    const-class v1, Lcom/google/googlenav/android/N;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/googlenav/android/N;->b:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/google/googlenav/android/N;->a:Landroid/content/IntentFilter;

    invoke-static {p0, v0, v2}, Lcom/google/googlenav/android/N;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    monitor-exit v1

    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .registers 4

    sget-object v0, Lcom/google/googlenav/android/N;->c:Ljava/util/Set;

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_f
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 5

    sget-object v0, Lcom/google/googlenav/android/N;->c:Ljava/util/Set;

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_f
    return-void
.end method

.method public static declared-synchronized b(Landroid/app/Activity;)V
    .registers 3

    const-class v1, Lcom/google/googlenav/android/N;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/googlenav/android/N;->b:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v0}, Lcom/google/googlenav/android/N;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method
