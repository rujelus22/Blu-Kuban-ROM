.class Ldbxyzptlk/v/C;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ldbxyzptlk/v/d;
.implements Ljava/io/Serializable;


# instance fields
.field final a:Ldbxyzptlk/v/G;

.field final b:Ldbxyzptlk/v/G;

.field final c:Ljava/util/concurrent/ConcurrentMap;

.field final d:J

.field e:Ldbxyzptlk/v/q;


# direct methods
.method constructor <init>(Ldbxyzptlk/v/t;)V
    .registers 4
    .parameter

    .prologue
    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    invoke-static {p1}, Ldbxyzptlk/v/t;->a(Ldbxyzptlk/v/t;)Ldbxyzptlk/v/G;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/v/C;->a:Ldbxyzptlk/v/G;

    .line 470
    invoke-static {p1}, Ldbxyzptlk/v/t;->b(Ldbxyzptlk/v/t;)Ldbxyzptlk/v/G;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/v/C;->b:Ldbxyzptlk/v/G;

    .line 471
    invoke-static {p1}, Ldbxyzptlk/v/t;->c(Ldbxyzptlk/v/t;)J

    move-result-wide v0

    iput-wide v0, p0, Ldbxyzptlk/v/C;->d:J

    .line 473
    invoke-static {p1}, Ldbxyzptlk/v/t;->d(Ldbxyzptlk/v/t;)Ldbxyzptlk/v/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldbxyzptlk/v/c;->a(Ldbxyzptlk/v/r;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/v/C;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 474
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .parameter

    .prologue
    .line 722
    :try_start_0
    sget-object v0, Ldbxyzptlk/v/E;->a:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 723
    sget-object v0, Ldbxyzptlk/v/E;->b:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 724
    sget-object v0, Ldbxyzptlk/v/E;->c:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 725
    sget-object v0, Ldbxyzptlk/v/E;->d:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 726
    sget-object v0, Ldbxyzptlk/v/E;->e:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_31
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_31} :catch_32

    .line 730
    return-void

    .line 727
    :catch_32
    move-exception v0

    .line 728
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .parameter

    .prologue
    .line 685
    iget-object v0, p0, Ldbxyzptlk/v/C;->a:Ldbxyzptlk/v/G;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 686
    iget-object v0, p0, Ldbxyzptlk/v/C;->b:Ldbxyzptlk/v/G;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 687
    iget-wide v0, p0, Ldbxyzptlk/v/C;->d:J

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 693
    iget-object v0, p0, Ldbxyzptlk/v/C;->e:Ldbxyzptlk/v/q;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 694
    iget-object v0, p0, Ldbxyzptlk/v/C;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 695
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;ILdbxyzptlk/v/z;)Ldbxyzptlk/v/z;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 535
    iget-object v0, p0, Ldbxyzptlk/v/C;->a:Ldbxyzptlk/v/G;

    iget-object v1, p0, Ldbxyzptlk/v/C;->e:Ldbxyzptlk/v/q;

    invoke-virtual {v0, v1, p1, p2, p3}, Ldbxyzptlk/v/G;->a(Ldbxyzptlk/v/q;Ljava/lang/Object;ILdbxyzptlk/v/z;)Ldbxyzptlk/v/z;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ldbxyzptlk/v/z;Ldbxyzptlk/v/z;)Ldbxyzptlk/v/z;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 540
    invoke-interface {p2}, Ldbxyzptlk/v/z;->c()Ldbxyzptlk/v/M;

    move-result-object v1

    .line 541
    invoke-static {}, Ldbxyzptlk/v/t;->c()Ldbxyzptlk/v/M;

    move-result-object v0

    if-ne v1, v0, :cond_1b

    .line 542
    invoke-interface {p2}, Ldbxyzptlk/v/z;->e()I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Ldbxyzptlk/v/C;->a(Ljava/lang/Object;ILdbxyzptlk/v/z;)Ldbxyzptlk/v/z;

    move-result-object v0

    .line 543
    new-instance v1, Ldbxyzptlk/v/F;

    invoke-direct {v1, p0, p2, v0}, Ldbxyzptlk/v/F;-><init>(Ldbxyzptlk/v/C;Ldbxyzptlk/v/z;Ldbxyzptlk/v/z;)V

    invoke-interface {v0, v1}, Ldbxyzptlk/v/z;->a(Ldbxyzptlk/v/M;)V

    .line 548
    :goto_1a
    return-object v0

    .line 546
    :cond_1b
    invoke-interface {p2}, Ldbxyzptlk/v/z;->e()I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Ldbxyzptlk/v/C;->a(Ljava/lang/Object;ILdbxyzptlk/v/z;)Ldbxyzptlk/v/z;

    move-result-object v0

    .line 547
    invoke-interface {v1, v0}, Ldbxyzptlk/v/M;->a(Ldbxyzptlk/v/z;)Ldbxyzptlk/v/M;

    move-result-object v1

    invoke-interface {v0, v1}, Ldbxyzptlk/v/z;->a(Ldbxyzptlk/v/M;)V

    goto :goto_1a
.end method

.method public final a(Ldbxyzptlk/v/z;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 527
    invoke-interface {p1}, Ldbxyzptlk/v/z;->f()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 460
    check-cast p1, Ldbxyzptlk/v/z;

    invoke-virtual {p0, p1}, Ldbxyzptlk/v/C;->c(Ldbxyzptlk/v/z;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 460
    check-cast p3, Ldbxyzptlk/v/z;

    invoke-virtual {p0, p1, p2, p3}, Ldbxyzptlk/v/C;->a(Ljava/lang/Object;ILdbxyzptlk/v/z;)Ldbxyzptlk/v/z;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 460
    check-cast p2, Ldbxyzptlk/v/z;

    check-cast p3, Ldbxyzptlk/v/z;

    invoke-virtual {p0, p1, p2, p3}, Ldbxyzptlk/v/C;->a(Ljava/lang/Object;Ldbxyzptlk/v/z;Ldbxyzptlk/v/z;)Ldbxyzptlk/v/z;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ldbxyzptlk/v/q;)V
    .registers 2
    .parameter

    .prologue
    .line 676
    iput-object p1, p0, Ldbxyzptlk/v/C;->e:Ldbxyzptlk/v/q;

    .line 677
    return-void
.end method

.method final a(Ldbxyzptlk/v/z;Ldbxyzptlk/v/M;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 607
    invoke-interface {p1}, Ldbxyzptlk/v/z;->c()Ldbxyzptlk/v/M;

    move-result-object v0

    invoke-static {}, Ldbxyzptlk/v/t;->c()Ldbxyzptlk/v/M;

    move-result-object v1

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    .line 608
    :goto_b
    invoke-interface {p1, p2}, Ldbxyzptlk/v/z;->a(Ldbxyzptlk/v/M;)V

    .line 609
    if-eqz v0, :cond_15

    .line 610
    monitor-enter p1

    .line 611
    :try_start_11
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 612
    monitor-exit p1

    .line 614
    :cond_15
    return-void

    .line 607
    :cond_16
    const/4 v0, 0x0

    goto :goto_b

    .line 612
    :catchall_18
    move-exception v0

    monitor-exit p1
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public final a(Ldbxyzptlk/v/z;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 485
    iget-object v0, p0, Ldbxyzptlk/v/C;->b:Ldbxyzptlk/v/G;

    invoke-virtual {v0, p1, p2}, Ldbxyzptlk/v/G;->a(Ldbxyzptlk/v/z;Ljava/lang/Object;)Ldbxyzptlk/v/M;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ldbxyzptlk/v/C;->a(Ldbxyzptlk/v/z;Ldbxyzptlk/v/M;)V

    .line 486
    iget-wide v0, p0, Ldbxyzptlk/v/C;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    .line 487
    invoke-interface {p1}, Ldbxyzptlk/v/z;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ldbxyzptlk/v/C;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 489
    :cond_18
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 460
    check-cast p1, Ldbxyzptlk/v/z;

    invoke-virtual {p0, p1, p2}, Ldbxyzptlk/v/C;->a(Ldbxyzptlk/v/z;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ldbxyzptlk/v/z;)I
    .registers 3
    .parameter

    .prologue
    .line 531
    invoke-interface {p1}, Ldbxyzptlk/v/z;->e()I

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 523
    iget-object v0, p0, Ldbxyzptlk/v/C;->a:Ldbxyzptlk/v/G;

    invoke-virtual {v0, p1}, Ldbxyzptlk/v/G;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 515
    iget-object v0, p0, Ldbxyzptlk/v/C;->a:Ldbxyzptlk/v/G;

    invoke-virtual {v0, p1, p2}, Ldbxyzptlk/v/G;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final c(Ldbxyzptlk/v/z;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 573
    invoke-interface {p1}, Ldbxyzptlk/v/z;->c()Ldbxyzptlk/v/M;

    move-result-object v0

    .line 574
    invoke-interface {v0}, Ldbxyzptlk/v/M;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 460
    check-cast p1, Ldbxyzptlk/v/z;

    invoke-virtual {p0, p1}, Ldbxyzptlk/v/C;->a(Ldbxyzptlk/v/z;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 519
    iget-object v0, p0, Ldbxyzptlk/v/C;->b:Ldbxyzptlk/v/G;

    invoke-virtual {v0, p1, p2}, Ldbxyzptlk/v/G;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final d(Ldbxyzptlk/v/z;)Ldbxyzptlk/v/z;
    .registers 3
    .parameter

    .prologue
    .line 672
    invoke-interface {p1}, Ldbxyzptlk/v/z;->b()Ldbxyzptlk/v/z;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 460
    check-cast p1, Ldbxyzptlk/v/z;

    invoke-virtual {p0, p1}, Ldbxyzptlk/v/C;->d(Ldbxyzptlk/v/z;)Ldbxyzptlk/v/z;

    move-result-object v0

    return-object v0
.end method

.method final d(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 500
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 501
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 502
    sget-object v2, Ldbxyzptlk/v/s;->a:Ljava/util/Timer;

    new-instance v3, Ldbxyzptlk/v/D;

    invoke-direct {v3, p0, v0, v1}, Ldbxyzptlk/v/D;-><init>(Ldbxyzptlk/v/C;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Ldbxyzptlk/v/C;->d:J

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 512
    return-void
.end method

.method public final synthetic e(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 460
    check-cast p1, Ldbxyzptlk/v/z;

    invoke-virtual {p0, p1}, Ldbxyzptlk/v/C;->b(Ldbxyzptlk/v/z;)I

    move-result v0

    return v0
.end method
