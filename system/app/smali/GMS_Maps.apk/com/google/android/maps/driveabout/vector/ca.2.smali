.class public abstract Lcom/google/android/maps/driveabout/vector/ca;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Lcom/google/android/maps/driveabout/vector/ce;

.field private c:Z


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 1

    return-void
.end method

.method protected a(Lcom/google/android/maps/driveabout/vector/aE;)V
    .registers 2

    return-void
.end method

.method protected a(Lcom/google/android/maps/driveabout/vector/bI;)V
    .registers 2

    return-void
.end method

.method protected a(Lcom/google/android/maps/driveabout/vector/bI;Z)V
    .registers 3

    return-void
.end method

.method final a(Lcom/google/android/maps/driveabout/vector/ce;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ca;->b:Lcom/google/android/maps/driveabout/vector/ce;

    return-void
.end method

.method protected a(Z)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method protected b(Lcom/google/android/maps/driveabout/vector/aE;)V
    .registers 2

    return-void
.end method

.method final b(Z)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/ca;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ca;->b:Lcom/google/android/maps/driveabout/vector/ce;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/ce;->a(Lcom/google/android/maps/driveabout/vector/ca;)V

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_e
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ca;->a:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    :cond_14
    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw v0
.end method

.method final b()Z
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ca;->c:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/ca;->c:Z

    return v0
.end method
