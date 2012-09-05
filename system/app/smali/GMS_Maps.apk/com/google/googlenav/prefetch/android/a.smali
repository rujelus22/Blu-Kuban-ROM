.class public abstract Lcom/google/googlenav/prefetch/android/a;
.super Ljava/lang/Object;

# interfaces
.implements Lx/ac;


# static fields
.field private static a:Lcom/google/googlenav/prefetch/android/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized c()Lcom/google/googlenav/prefetch/android/a;
    .registers 2

    const-class v1, Lcom/google/googlenav/prefetch/android/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/googlenav/prefetch/android/a;->a:Lcom/google/googlenav/prefetch/android/a;

    if-nez v0, :cond_e

    new-instance v0, Lcom/google/googlenav/prefetch/android/b;

    invoke-direct {v0}, Lcom/google/googlenav/prefetch/android/b;-><init>()V

    sput-object v0, Lcom/google/googlenav/prefetch/android/a;->a:Lcom/google/googlenav/prefetch/android/a;

    :cond_e
    sget-object v0, Lcom/google/googlenav/prefetch/android/a;->a:Lcom/google/googlenav/prefetch/android/a;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized d()Lcom/google/googlenav/prefetch/android/a;
    .registers 2

    const-class v0, Lcom/google/googlenav/prefetch/android/a;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/googlenav/prefetch/android/a;->a:Lcom/google/googlenav/prefetch/android/a;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public abstract a([LaJ/P;)I
.end method

.method public abstract a(Lt/af;)V
.end method

.method public abstract b()V
.end method
