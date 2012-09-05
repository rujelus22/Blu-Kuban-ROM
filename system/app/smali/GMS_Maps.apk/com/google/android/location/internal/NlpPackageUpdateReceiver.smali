.class public Lcom/google/android/location/internal/NlpPackageUpdateReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/location/internal/NlpPackageUpdateReceiver;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static declared-synchronized a()V
    .registers 3

    const-class v1, Lcom/google/android/location/internal/NlpPackageUpdateReceiver;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/location/internal/NlpPackageUpdateReceiver;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/internal/g;

    invoke-interface {v0}, Lcom/google/android/location/internal/g;->a()V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_19

    goto :goto_9

    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1c
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(Lcom/google/android/location/internal/g;)V
    .registers 3

    const-class v1, Lcom/google/android/location/internal/NlpPackageUpdateReceiver;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/location/internal/NlpPackageUpdateReceiver;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Lcom/google/android/location/internal/g;)V
    .registers 3

    const-class v1, Lcom/google/android/location/internal/NlpPackageUpdateReceiver;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/location/internal/NlpPackageUpdateReceiver;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    invoke-static {}, Lcom/google/android/location/internal/NlpPackageUpdateReceiver;->a()V

    return-void
.end method
