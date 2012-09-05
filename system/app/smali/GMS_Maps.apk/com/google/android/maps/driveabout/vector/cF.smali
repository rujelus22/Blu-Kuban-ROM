.class Lcom/google/android/maps/driveabout/vector/cF;
.super Lz/g;


# instance fields
.field private a:Lcom/google/android/maps/driveabout/vector/aT;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lz/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Lcom/google/android/maps/driveabout/vector/aT;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cF;->a:Lcom/google/android/maps/driveabout/vector/aT;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cF;->a:Lcom/google/android/maps/driveabout/vector/aT;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lt/af;

    check-cast p2, Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/cF;->a(Lt/af;Lcom/google/android/maps/driveabout/vector/aU;)V

    return-void
.end method

.method public a(Lt/af;Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 4

    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cF;->a:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-interface {p2, v0}, Lcom/google/android/maps/driveabout/vector/aU;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    :cond_7
    return-void
.end method
