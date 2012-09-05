.class Lcom/google/android/maps/driveabout/vector/cD;
.super Ljava/lang/Object;

# interfaces
.implements Lx/az;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/vector/cC;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/vector/cC;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cD;->a:Lcom/google/android/maps/driveabout/vector/cC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx/ay;)V
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cD;->a:Lcom/google/android/maps/driveabout/vector/cC;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/cC;->a(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cD;->a:Lcom/google/android/maps/driveabout/vector/cC;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/cC;->a(Lcom/google/android/maps/driveabout/vector/cC;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    :try_start_d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cD;->a:Lcom/google/android/maps/driveabout/vector/cC;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/cC;->a(Lcom/google/android/maps/driveabout/vector/cC;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cD;->a:Lcom/google/android/maps/driveabout/vector/cC;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/vector/cC;->b(Lcom/google/android/maps/driveabout/vector/cC;)Lp/e;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public a(Lx/ay;Lt/af;)V
    .registers 7

    const/4 v3, 0x0

    invoke-interface {p1, p2, v3}, Lx/ay;->a(Lt/af;Z)Lt/ae;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cD;->a:Lcom/google/android/maps/driveabout/vector/cC;

    invoke-interface {v0}, Lt/ae;->d()Lt/af;

    move-result-object v2

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/maps/driveabout/vector/cC;->a(Lcom/google/android/maps/driveabout/vector/cC;Lt/af;ILt/ae;)V

    :cond_10
    return-void
.end method
