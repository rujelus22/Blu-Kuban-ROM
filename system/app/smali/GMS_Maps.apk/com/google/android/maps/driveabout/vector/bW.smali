.class public Lcom/google/android/maps/driveabout/vector/bW;
.super Lcom/google/android/maps/driveabout/vector/cA;


# instance fields
.field private a:Lcom/google/android/maps/driveabout/vector/cz;

.field private b:Lcom/google/android/maps/driveabout/vector/cn;

.field private c:Lcom/google/android/maps/driveabout/vector/cU;

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cA;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/cU;Z)Lcom/google/android/maps/driveabout/vector/cn;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bW;->b:Lcom/google/android/maps/driveabout/vector/cn;

    if-nez v0, :cond_b

    invoke-super {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/cA;->a(Lcom/google/android/maps/driveabout/vector/cU;Z)Lcom/google/android/maps/driveabout/vector/cn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bW;->b:Lcom/google/android/maps/driveabout/vector/cn;

    :cond_b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bW;->b:Lcom/google/android/maps/driveabout/vector/cn;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/cU;IZ)Lcom/google/android/maps/driveabout/vector/cz;
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bW;->a:Lcom/google/android/maps/driveabout/vector/cz;

    if-nez v0, :cond_15

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/cA;->a(Lcom/google/android/maps/driveabout/vector/cU;IZ)Lcom/google/android/maps/driveabout/vector/cz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bW;->a:Lcom/google/android/maps/driveabout/vector/cz;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bW;->c:Lcom/google/android/maps/driveabout/vector/cU;

    iput p2, p0, Lcom/google/android/maps/driveabout/vector/bW;->d:I

    iput-boolean p3, p0, Lcom/google/android/maps/driveabout/vector/bW;->e:Z

    :cond_11
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bW;->a:Lcom/google/android/maps/driveabout/vector/cz;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_78

    monitor-exit p0

    return-object v0

    :cond_15
    :try_start_15
    invoke-static {}, Ln/a;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bW;->c:Lcom/google/android/maps/driveabout/vector/cU;

    if-ne p1, v0, :cond_27

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bW;->d:I

    if-ne p2, v0, :cond_27

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bW;->e:Z

    if-eq p3, v0, :cond_11

    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Arguments changed! Was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bW;->c:Lcom/google/android/maps/driveabout/vector/cU;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bW;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/bW;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; now: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_78
    .catchall {:try_start_15 .. :try_end_78} :catchall_78

    :catchall_78
    move-exception v0

    monitor-exit p0

    throw v0
.end method
