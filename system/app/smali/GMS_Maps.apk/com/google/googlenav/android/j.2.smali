.class public Lcom/google/googlenav/android/J;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/content/IntentFilter;

.field private static final b:Landroid/content/BroadcastReceiver;

.field private static final c:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 35
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.googlenav.STOP_TRANSIT_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/googlenav/android/J;->a:Landroid/content/IntentFilter;

    .line 38
    new-instance v0, Lcom/google/googlenav/android/K;

    invoke-direct {v0}, Lcom/google/googlenav/android/K;-><init>()V

    sput-object v0, Lcom/google/googlenav/android/J;->b:Landroid/content/BroadcastReceiver;

    .line 50
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/android/J;->c:Ljava/util/Set;

    return-void
.end method

.method public static declared-synchronized a(Landroid/app/Activity;)V
    .registers 4
    .parameter

    .prologue
    .line 57
    const-class v1, Lcom/google/googlenav/android/J;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/googlenav/android/J;->b:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/google/googlenav/android/J;->a:Landroid/content/IntentFilter;

    invoke-static {p0, v0, v2}, Lcom/google/googlenav/android/J;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 58
    monitor-exit v1

    return-void

    .line 57
    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 76
    sget-object v0, Lcom/google/googlenav/android/J;->c:Ljava/util/Set;

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 77
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 79
    :cond_f
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    sget-object v0, Lcom/google/googlenav/android/J;->c:Ljava/util/Set;

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 71
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 73
    :cond_f
    return-void
.end method

.method public static declared-synchronized b(Landroid/app/Activity;)V
    .registers 3
    .parameter

    .prologue
    .line 65
    const-class v1, Lcom/google/googlenav/android/J;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/googlenav/android/J;->b:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v0}, Lcom/google/googlenav/android/J;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 66
    monitor-exit v1

    return-void

    .line 65
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method
