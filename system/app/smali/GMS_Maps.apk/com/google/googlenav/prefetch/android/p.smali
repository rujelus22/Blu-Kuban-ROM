.class public abstract Lcom/google/googlenav/prefetch/android/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/ab;


# static fields
.field private static a:Lcom/google/googlenav/prefetch/android/p;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method public static declared-synchronized c()Lcom/google/googlenav/prefetch/android/p;
    .registers 2

    .prologue
    .line 52
    const-class v1, Lcom/google/googlenav/prefetch/android/p;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/googlenav/prefetch/android/p;->a:Lcom/google/googlenav/prefetch/android/p;

    if-nez v0, :cond_e

    .line 57
    new-instance v0, Lcom/google/googlenav/prefetch/android/q;

    invoke-direct {v0}, Lcom/google/googlenav/prefetch/android/q;-><init>()V

    sput-object v0, Lcom/google/googlenav/prefetch/android/p;->a:Lcom/google/googlenav/prefetch/android/p;

    .line 81
    :cond_e
    sget-object v0, Lcom/google/googlenav/prefetch/android/p;->a:Lcom/google/googlenav/prefetch/android/p;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized d()Lcom/google/googlenav/prefetch/android/p;
    .registers 2

    .prologue
    .line 91
    const-class v0, Lcom/google/googlenav/prefetch/android/p;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/googlenav/prefetch/android/p;->a:Lcom/google/googlenav/prefetch/android/p;
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
.method public abstract a([Lat/P;)I
.end method

.method public abstract a(Ln/am;)V
.end method

.method public abstract b()V
.end method
