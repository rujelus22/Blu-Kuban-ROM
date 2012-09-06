.class LagV;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# instance fields
.field volatile a:I

.field final a:J

.field final a:Lagi;

.field final a:Lagu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lagu",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final a:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;"
        }
    .end annotation
.end field

.field final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "LagU",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field volatile a:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "LagU",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field b:I

.field final b:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "LagU",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field c:I

.field final c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "LagU",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field d:I


# direct methods
.method constructor <init>(Lagu;IJLagi;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lagu",
            "<TK;TV;>;IJ",
            "Lagi;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2138
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 2118
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, LagV;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2139
    iput-object p1, p0, LagV;->a:Lagu;

    .line 2140
    iput-wide p3, p0, LagV;->a:J

    .line 2141
    iput-object p5, p0, LagV;->a:Lagi;

    .line 2142
    invoke-virtual {p0, p2}, LagV;->a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {p0, v0}, LagV;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 2144
    invoke-virtual {p1}, Lagu;->m()Z

    move-result v0

    if-eqz v0, :cond_5a

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :goto_23
    iput-object v0, p0, LagV;->a:Ljava/lang/ref/ReferenceQueue;

    .line 2147
    invoke-virtual {p1}, Lagu;->n()Z

    move-result v0

    if-eqz v0, :cond_30

    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :cond_30
    iput-object v1, p0, LagV;->b:Ljava/lang/ref/ReferenceQueue;

    .line 2150
    invoke-virtual {p1}, Lagu;->f()Z

    move-result v0

    if-eqz v0, :cond_5c

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :goto_3d
    iput-object v0, p0, LagV;->a:Ljava/util/Queue;

    .line 2154
    invoke-virtual {p1}, Lagu;->g()Z

    move-result v0

    if-eqz v0, :cond_61

    new-instance v0, Lahs;

    invoke-direct {v0}, Lahs;-><init>()V

    :goto_4a
    iput-object v0, p0, LagV;->b:Ljava/util/Queue;

    .line 2158
    invoke-virtual {p1}, Lagu;->f()Z

    move-result v0

    if-eqz v0, :cond_66

    new-instance v0, Lagy;

    invoke-direct {v0}, Lagy;-><init>()V

    :goto_57
    iput-object v0, p0, LagV;->c:Ljava/util/Queue;

    .line 2161
    return-void

    :cond_5a
    move-object v0, v1

    .line 2144
    goto :goto_23

    .line 2150
    :cond_5c
    invoke-static {}, Lagu;->a()Ljava/util/Queue;

    move-result-object v0

    goto :goto_3d

    .line 2154
    :cond_61
    invoke-static {}, Lagu;->a()Ljava/util/Queue;

    move-result-object v0

    goto :goto_4a

    .line 2158
    :cond_66
    invoke-static {}, Lagu;->a()Ljava/util/Queue;

    move-result-object v0

    goto :goto_57
.end method


# virtual methods
.method a(Ljava/lang/Object;I)LagP;
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)",
            "LagP",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2438
    .line 2439
    invoke-virtual {p0}, LagV;->lock()V

    .line 2441
    :try_start_3
    iget-object v0, p0, LagV;->a:Lagu;

    iget-object v0, v0, Lagu;->a:Lage;

    invoke-virtual {v0}, Lage;->a()J

    move-result-wide v0

    .line 2442
    invoke-virtual {p0, v0, v1}, LagV;->c(J)V

    .line 2444
    iget-object v2, p0, LagV;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2445
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v3, p2, v0

    .line 2446
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LagU;

    move-object v1, v0

    .line 2449
    :goto_1f
    if-eqz v1, :cond_63

    .line 2450
    invoke-interface {v1}, LagU;->a()Ljava/lang/Object;

    move-result-object v4

    .line 2451
    invoke-interface {v1}, LagU;->a()I

    move-result v5

    if-ne v5, p2, :cond_5e

    if-eqz v4, :cond_5e

    iget-object v5, p0, LagV;->a:Lagu;

    iget-object v5, v5, Lagu;->a:LafD;

    invoke-virtual {v5, p1, v4}, LafD;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 2455
    invoke-interface {v1}, LagU;->a()Lahi;

    move-result-object v2

    .line 2456
    invoke-interface {v2}, Lahi;->a()Z
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_80

    move-result v0

    if-eqz v0, :cond_49

    .line 2458
    const/4 v0, 0x0

    .line 2477
    invoke-virtual {p0}, LagV;->unlock()V

    .line 2478
    invoke-virtual {p0}, LagV;->m()V

    :goto_48
    return-object v0

    .line 2462
    :cond_49
    :try_start_49
    iget v0, p0, LagV;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LagV;->c:I

    .line 2463
    new-instance v0, LagP;

    invoke-direct {v0, v2}, LagP;-><init>(Lahi;)V

    .line 2465
    invoke-interface {v1, v0}, LagU;->a(Lahi;)V
    :try_end_57
    .catchall {:try_start_49 .. :try_end_57} :catchall_80

    .line 2477
    invoke-virtual {p0}, LagV;->unlock()V

    .line 2478
    invoke-virtual {p0}, LagV;->m()V

    goto :goto_48

    .line 2449
    :cond_5e
    :try_start_5e
    invoke-interface {v1}, LagU;->a()LagU;

    move-result-object v1

    goto :goto_1f

    .line 2470
    :cond_63
    iget v1, p0, LagV;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LagV;->c:I

    .line 2471
    new-instance v1, LagP;

    invoke-direct {v1}, LagP;-><init>()V

    .line 2472
    invoke-virtual {p0, p1, p2, v0}, LagV;->a(Ljava/lang/Object;ILagU;)LagU;

    move-result-object v0

    .line 2473
    invoke-interface {v0, v1}, LagU;->a(Lahi;)V

    .line 2474
    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_78
    .catchall {:try_start_5e .. :try_end_78} :catchall_80

    .line 2477
    invoke-virtual {p0}, LagV;->unlock()V

    .line 2478
    invoke-virtual {p0}, LagV;->m()V

    move-object v0, v1

    goto :goto_48

    .line 2477
    :catchall_80
    move-exception v0

    invoke-virtual {p0}, LagV;->unlock()V

    .line 2478
    invoke-virtual {p0}, LagV;->m()V

    throw v0
.end method

.method a()LagU;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2705
    iget-object v0, p0, LagV;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LagU;

    .line 2706
    invoke-interface {v0}, LagU;->a()Lahi;

    move-result-object v2

    invoke-interface {v2}, Lahi;->a()I

    move-result v2

    .line 2707
    if-lez v2, :cond_6

    .line 2708
    return-object v0

    .line 2711
    :cond_1d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method a(I)LagU;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2719
    iget-object v0, p0, LagV;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2720
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LagU;

    return-object v0
.end method

.method a(LagU;LagU;)LagU;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LagU",
            "<TK;TV;>;",
            "LagU",
            "<TK;TV;>;)",
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2183
    invoke-interface {p1}, LagU;->a()Lahi;

    move-result-object v0

    .line 2184
    iget-object v1, p0, LagV;->a:Lagu;

    iget-object v1, v1, Lagu;->a:LagB;

    invoke-virtual {v1, p0, p1, p2}, LagB;->a(LagV;LagU;LagU;)LagU;

    move-result-object v1

    .line 2185
    iget-object v2, p0, LagV;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {v0, v2, v1}, Lahi;->a(Ljava/lang/ref/ReferenceQueue;LagU;)Lahi;

    move-result-object v0

    invoke-interface {v1, v0}, LagU;->a(Lahi;)V

    .line 2186
    return-object v1
.end method

.method a(LagU;LagU;Ljava/lang/Object;ILahi;Lahw;)LagU;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LagU",
            "<TK;TV;>;",
            "LagU",
            "<TK;TV;>;TK;I",
            "Lahi",
            "<TK;TV;>;",
            "Lahw;",
            ")",
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3270
    invoke-virtual {p0, p3, p4, p5, p6}, LagV;->a(Ljava/lang/Object;ILahi;Lahw;)V

    .line 3271
    iget-object v0, p0, LagV;->b:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3272
    iget-object v0, p0, LagV;->c:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3274
    invoke-interface {p5}, Lahi;->a()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3275
    const/4 v0, 0x0

    invoke-interface {p5, v0}, Lahi;->a(Ljava/lang/Object;)V

    .line 3278
    :goto_17
    return-object p1

    :cond_18
    invoke-virtual {p0, p1, p2}, LagV;->b(LagU;LagU;)LagU;

    move-result-object p1

    goto :goto_17
.end method

.method a(Ljava/lang/Object;I)LagU;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2727
    invoke-virtual {p0, p2}, LagV;->a(I)LagU;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_26

    .line 2728
    invoke-interface {v0}, LagU;->a()I

    move-result v1

    if-eq v1, p2, :cond_11

    .line 2727
    :cond_c
    :goto_c
    invoke-interface {v0}, LagU;->a()LagU;

    move-result-object v0

    goto :goto_4

    .line 2732
    :cond_11
    invoke-interface {v0}, LagU;->a()Ljava/lang/Object;

    move-result-object v1

    .line 2733
    if-nez v1, :cond_1b

    .line 2734
    invoke-virtual {p0}, LagV;->a()V

    goto :goto_c

    .line 2738
    :cond_1b
    iget-object v2, p0, LagV;->a:Lagu;

    iget-object v2, v2, Lagu;->a:LafD;

    invoke-virtual {v2, p1, v1}, LafD;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2743
    :goto_25
    return-object v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method a(Ljava/lang/Object;IJ)LagU;
    .registers 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "IJ)",
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2748
    invoke-virtual {p0, p1, p2}, LagV;->a(Ljava/lang/Object;I)LagU;

    move-result-object v1

    .line 2749
    if-nez v1, :cond_8

    .line 2755
    :goto_7
    return-object v0

    .line 2751
    :cond_8
    iget-object v2, p0, LagV;->a:Lagu;

    invoke-virtual {v2, v1, p3, p4}, Lagu;->a(LagU;J)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2752
    invoke-virtual {p0, p3, p4}, LagV;->a(J)V

    goto :goto_7

    :cond_14
    move-object v0, v1

    .line 2755
    goto :goto_7
.end method

.method a(Ljava/lang/Object;ILagU;)LagU;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "LagU",
            "<TK;TV;>;)",
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2178
    iget-object v0, p0, LagV;->a:Lagu;

    iget-object v0, v0, Lagu;->a:LagB;

    invoke-virtual {v0, p0, p1, p2, p3}, LagB;->a(LagV;Ljava/lang/Object;ILagU;)LagU;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/Object;ILagP;Lagq;)LalU;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "LagP",
            "<TK;TV;>;",
            "Lagq",
            "<-TK;TV;>;)",
            "LalU",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 2356
    invoke-virtual {p3, p1, p4}, LagP;->a(Ljava/lang/Object;Lagq;)LalU;

    move-result-object v5

    .line 2357
    new-instance v0, LagW;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, LagW;-><init>(LagV;Ljava/lang/Object;ILagP;LalU;)V

    sget-object v1, Lagu;->a:LalW;

    invoke-interface {v5, v0, v1}, LalU;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 2371
    return-object v5
.end method

.method a(LagU;J)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LagU",
            "<TK;TV;>;J)TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2763
    invoke-interface {p1}, LagU;->a()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_b

    .line 2764
    invoke-virtual {p0}, LagV;->a()V

    .line 2777
    :goto_a
    return-object v0

    .line 2767
    :cond_b
    invoke-interface {p1}, LagU;->a()Lahi;

    move-result-object v1

    invoke-interface {v1}, Lahi;->get()Ljava/lang/Object;

    move-result-object v1

    .line 2768
    if-nez v1, :cond_19

    .line 2769
    invoke-virtual {p0}, LagV;->a()V

    goto :goto_a

    .line 2773
    :cond_19
    iget-object v2, p0, LagV;->a:Lagu;

    invoke-virtual {v2, p1, p2, p3}, Lagu;->a(LagU;J)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2774
    invoke-virtual {p0, p2, p3}, LagV;->a(J)V

    goto :goto_a

    :cond_25
    move-object v0, v1

    .line 2777
    goto :goto_a
.end method

.method a(LagU;Ljava/lang/Object;ILjava/lang/Object;JLagq;)Ljava/lang/Object;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LagU",
            "<TK;TV;>;TK;ITV;J",
            "Lagq",
            "<-TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 2398
    iget-object v0, p0, LagV;->a:Lagu;

    invoke-virtual {v0}, Lagu;->e()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, LagU;->b()J

    move-result-wide v0

    sub-long v0, p5, v0

    iget-object v2, p0, LagV;->a:Lagu;

    iget-wide v2, v2, Lagu;->d:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1d

    .line 2399
    invoke-virtual {p0, p2, p3, p7}, LagV;->c(Ljava/lang/Object;ILagq;)Ljava/lang/Object;

    move-result-object v0

    .line 2400
    if-eqz v0, :cond_1d

    move-object p4, v0

    .line 2404
    :cond_1d
    return-object p4
.end method

.method a(LagU;Ljava/lang/Object;Lahi;)Ljava/lang/Object;
    .registers 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LagU",
            "<TK;TV;>;TK;",
            "Lahi",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 2326
    invoke-interface {p3}, Lahi;->a()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2327
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2330
    :cond_d
    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    move v0, v1

    :goto_14
    const-string v2, "Recursive load"

    invoke-static {v0, v2}, LafQ;->b(ZLjava/lang/Object;)V

    .line 2333
    :try_start_19
    invoke-interface {p3}, Lahi;->a()Ljava/lang/Object;

    move-result-object v0

    .line 2334
    if-nez v0, :cond_47

    .line 2335
    new-instance v0, Lagr;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CacheLoader returned null for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lagr;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3e
    .catchall {:try_start_19 .. :try_end_3e} :catchall_3e

    .line 2342
    :catchall_3e
    move-exception v0

    iget-object v2, p0, LagV;->a:Lagi;

    invoke-interface {v2, v1}, Lagi;->b(I)V

    throw v0

    .line 2330
    :cond_45
    const/4 v0, 0x0

    goto :goto_14

    .line 2338
    :cond_47
    :try_start_47
    iget-object v2, p0, LagV;->a:Lagu;

    iget-object v2, v2, Lagu;->a:Lage;

    invoke-virtual {v2}, Lage;->a()J

    move-result-wide v2

    .line 2339
    invoke-virtual {p0, p1, v2, v3}, LagV;->a(LagU;J)V
    :try_end_52
    .catchall {:try_start_47 .. :try_end_52} :catchall_3e

    .line 2342
    iget-object v2, p0, LagV;->a:Lagi;

    invoke-interface {v2, v1}, Lagi;->b(I)V

    return-object v0
.end method

.method a(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2783
    :try_start_1
    iget v1, p0, LagV;->a:I

    if-eqz v1, :cond_39

    .line 2784
    iget-object v1, p0, LagV;->a:Lagu;

    iget-object v1, v1, Lagu;->a:Lage;

    invoke-virtual {v1}, Lage;->a()J

    move-result-wide v5

    .line 2785
    invoke-virtual {p0, p1, p2, v5, v6}, LagV;->a(Ljava/lang/Object;IJ)LagU;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_3d

    move-result-object v1

    .line 2786
    if-nez v1, :cond_17

    .line 2799
    invoke-virtual {p0}, LagV;->l()V

    :goto_16
    return-object v0

    .line 2790
    :cond_17
    :try_start_17
    invoke-interface {v1}, LagU;->a()Lahi;

    move-result-object v2

    invoke-interface {v2}, Lahi;->get()Ljava/lang/Object;

    move-result-object v4

    .line 2791
    if-eqz v4, :cond_36

    .line 2792
    invoke-virtual {p0, v1, v5, v6}, LagV;->a(LagU;J)V

    .line 2793
    invoke-interface {v1}, LagU;->a()Ljava/lang/Object;

    move-result-object v2

    iget-object v0, p0, LagV;->a:Lagu;

    iget-object v7, v0, Lagu;->a:Lagq;

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v7}, LagV;->a(LagU;Ljava/lang/Object;ILjava/lang/Object;JLagq;)Ljava/lang/Object;
    :try_end_31
    .catchall {:try_start_17 .. :try_end_31} :catchall_3d

    move-result-object v0

    .line 2799
    invoke-virtual {p0}, LagV;->l()V

    goto :goto_16

    .line 2795
    :cond_36
    :try_start_36
    invoke-virtual {p0}, LagV;->a()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3d

    .line 2799
    :cond_39
    invoke-virtual {p0}, LagV;->l()V

    goto :goto_16

    :catchall_3d
    move-exception v0

    invoke-virtual {p0}, LagV;->l()V

    throw v0
.end method

.method a(Ljava/lang/Object;ILagP;Lagq;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "LagP",
            "<TK;TV;>;",
            "Lagq",
            "<-TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 2350
    invoke-virtual {p3, p1, p4}, LagP;->a(Ljava/lang/Object;Lagq;)LalU;

    move-result-object v0

    .line 2351
    invoke-virtual {p0, p1, p2, p3, v0}, LagV;->a(Ljava/lang/Object;ILagP;LalU;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/Object;ILagP;LalU;)Ljava/lang/Object;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "LagP",
            "<TK;TV;>;",
            "LalU",
            "<TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 2379
    const/4 v1, 0x0

    .line 2381
    :try_start_1
    invoke-static {p4}, Lamc;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    .line 2382
    if-nez v1, :cond_36

    .line 2383
    new-instance v0, Lagr;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CacheLoader returned null for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lagr;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_26

    .line 2389
    :catchall_26
    move-exception v0

    if-nez v1, :cond_35

    .line 2390
    iget-object v1, p0, LagV;->a:Lagi;

    invoke-virtual {p3}, LagP;->a()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lagi;->b(J)V

    .line 2391
    invoke-virtual {p0, p1, p2, p3}, LagV;->a(Ljava/lang/Object;ILagP;)Z

    :cond_35
    throw v0

    .line 2385
    :cond_36
    :try_start_36
    iget-object v0, p0, LagV;->a:Lagi;

    invoke-virtual {p3}, LagP;->a()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lagi;->a(J)V

    .line 2386
    invoke-virtual {p0, p1, p2, p3, v1}, LagV;->a(Ljava/lang/Object;ILagP;Ljava/lang/Object;)Z
    :try_end_42
    .catchall {:try_start_36 .. :try_end_42} :catchall_26

    .line 2389
    if-nez v1, :cond_50

    .line 2390
    iget-object v0, p0, LagV;->a:Lagi;

    invoke-virtual {p3}, LagP;->a()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lagi;->b(J)V

    .line 2391
    invoke-virtual {p0, p1, p2, p3}, LagV;->a(Ljava/lang/Object;ILagP;)Z

    :cond_50
    return-object v1
.end method

.method a(Ljava/lang/Object;ILagq;)Ljava/lang/Object;
    .registers 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lagq",
            "<-TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 2209
    :try_start_0
    iget v0, p0, LagV;->a:I

    if-eqz v0, :cond_3f

    .line 2211
    invoke-virtual {p0, p1, p2}, LagV;->a(Ljava/lang/Object;I)LagU;

    move-result-object v1

    .line 2212
    if-eqz v1, :cond_3f

    .line 2213
    iget-object v0, p0, LagV;->a:Lagu;

    iget-object v0, v0, Lagu;->a:Lage;

    invoke-virtual {v0}, Lage;->a()J

    move-result-wide v5

    .line 2214
    invoke-virtual {p0, v1, v5, v6}, LagV;->a(LagU;J)Ljava/lang/Object;

    move-result-object v4

    .line 2215
    if-eqz v4, :cond_2d

    .line 2216
    invoke-virtual {p0, v1, v5, v6}, LagV;->a(LagU;J)V

    .line 2217
    iget-object v0, p0, LagV;->a:Lagi;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lagi;->a(I)V

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v7, p3

    .line 2218
    invoke-virtual/range {v0 .. v7}, LagV;->a(LagU;Ljava/lang/Object;ILjava/lang/Object;JLagq;)Ljava/lang/Object;
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_59
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_28} :catch_47

    move-result-object v0

    .line 2238
    invoke-virtual {p0}, LagV;->l()V

    :goto_2c
    return-object v0

    .line 2220
    :cond_2d
    :try_start_2d
    invoke-interface {v1}, LagU;->a()Lahi;

    move-result-object v0

    .line 2221
    invoke-interface {v0}, Lahi;->a()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 2222
    invoke-virtual {p0, v1, p1, v0}, LagV;->a(LagU;Ljava/lang/Object;Lahi;)Ljava/lang/Object;
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_59
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2d .. :try_end_3a} :catch_47

    move-result-object v0

    .line 2238
    invoke-virtual {p0}, LagV;->l()V

    goto :goto_2c

    .line 2228
    :cond_3f
    :try_start_3f
    invoke-virtual {p0, p1, p2, p3}, LagV;->b(Ljava/lang/Object;ILagq;)Ljava/lang/Object;
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_59
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3f .. :try_end_42} :catch_47

    move-result-object v0

    .line 2238
    invoke-virtual {p0}, LagV;->l()V

    goto :goto_2c

    .line 2229
    :catch_47
    move-exception v0

    move-object v1, v0

    .line 2230
    :try_start_49
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 2231
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_5e

    .line 2232
    new-instance v1, LalK;

    check-cast v0, Ljava/lang/Error;

    invoke-direct {v1, v0}, LalK;-><init>(Ljava/lang/Error;)V

    throw v1
    :try_end_59
    .catchall {:try_start_49 .. :try_end_59} :catchall_59

    .line 2238
    :catchall_59
    move-exception v0

    invoke-virtual {p0}, LagV;->l()V

    throw v0

    .line 2233
    :cond_5e
    :try_start_5e
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_68

    .line 2234
    new-instance v1, Lamb;

    invoke-direct {v1, v0}, Lamb;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2236
    :cond_68
    throw v1
    :try_end_69
    .catchall {:try_start_5e .. :try_end_69} :catchall_59
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 16
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 3048
    invoke-virtual {p0}, LagV;->lock()V

    .line 3050
    :try_start_4
    iget-object v0, p0, LagV;->a:Lagu;

    iget-object v0, v0, Lagu;->a:Lage;

    invoke-virtual {v0}, Lage;->a()J

    move-result-wide v8

    .line 3051
    invoke-virtual {p0, v8, v9}, LagV;->c(J)V

    .line 3053
    iget-object v10, p0, LagV;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3054
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v11, p2, v0

    .line 3055
    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LagU;

    move-object v2, v1

    .line 3057
    :goto_20
    if-eqz v2, :cond_8c

    .line 3058
    invoke-interface {v2}, LagU;->a()Ljava/lang/Object;

    move-result-object v3

    .line 3059
    invoke-interface {v2}, LagU;->a()I

    move-result v0

    if-ne v0, p2, :cond_87

    if-eqz v3, :cond_87

    iget-object v0, p0, LagV;->a:Lagu;

    iget-object v0, v0, Lagu;->a:LafD;

    invoke-virtual {v0, p1, v3}, LafD;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 3061
    invoke-interface {v2}, LagU;->a()Lahi;

    move-result-object v5

    .line 3062
    invoke-interface {v5}, Lahi;->get()Ljava/lang/Object;

    move-result-object v0

    .line 3063
    if-nez v0, :cond_6b

    .line 3064
    invoke-interface {v5}, Lahi;->b()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 3066
    iget v0, p0, LagV;->a:I

    add-int/lit8 v0, v0, -0x1

    .line 3067
    iget v0, p0, LagV;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LagV;->c:I

    .line 3068
    sget-object v6, Lahw;->c:Lahw;

    move-object v0, p0

    move v4, p2

    invoke-virtual/range {v0 .. v6}, LagV;->a(LagU;LagU;Ljava/lang/Object;ILahi;Lahw;)LagU;

    move-result-object v0

    .line 3070
    iget v1, p0, LagV;->a:I

    add-int/lit8 v1, v1, -0x1

    .line 3071
    invoke-virtual {v10, v11, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3072
    iput v1, p0, LagV;->a:I
    :try_end_63
    .catchall {:try_start_4 .. :try_end_63} :catchall_94

    .line 3087
    :cond_63
    invoke-virtual {p0}, LagV;->unlock()V

    .line 3088
    invoke-virtual {p0}, LagV;->m()V

    move-object v0, v7

    :goto_6a
    return-object v0

    .line 3077
    :cond_6b
    :try_start_6b
    iget v1, p0, LagV;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LagV;->c:I

    .line 3078
    sget-object v1, Lahw;->b:Lahw;

    invoke-virtual {p0, p1, p2, v5, v1}, LagV;->a(Ljava/lang/Object;ILahi;Lahw;)V

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-wide v5, v8

    .line 3079
    invoke-virtual/range {v1 .. v6}, LagV;->a(LagU;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3080
    invoke-virtual {p0}, LagV;->i()V
    :try_end_80
    .catchall {:try_start_6b .. :try_end_80} :catchall_94

    .line 3087
    invoke-virtual {p0}, LagV;->unlock()V

    .line 3088
    invoke-virtual {p0}, LagV;->m()V

    goto :goto_6a

    .line 3057
    :cond_87
    :try_start_87
    invoke-interface {v2}, LagU;->a()LagU;
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_94

    move-result-object v2

    goto :goto_20

    .line 3087
    :cond_8c
    invoke-virtual {p0}, LagV;->unlock()V

    .line 3088
    invoke-virtual {p0}, LagV;->m()V

    move-object v0, v7

    goto :goto_6a

    .line 3087
    :catchall_94
    move-exception v0

    invoke-virtual {p0}, LagV;->unlock()V

    .line 3088
    invoke-virtual {p0}, LagV;->m()V

    throw v0
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2852
    invoke-virtual {p0}, LagV;->lock()V

    .line 2854
    :try_start_4
    iget-object v0, p0, LagV;->a:Lagu;

    iget-object v0, v0, Lagu;->a:Lage;

    invoke-virtual {v0}, Lage;->a()J

    move-result-wide v4

    .line 2855
    invoke-virtual {p0, v4, v5}, LagV;->c(J)V

    .line 2857
    iget v0, p0, LagV;->a:I

    add-int/lit8 v0, v0, 0x1

    .line 2858
    iget v1, p0, LagV;->d:I

    if-le v0, v1, :cond_1e

    .line 2859
    invoke-virtual {p0}, LagV;->j()V

    .line 2860
    iget v0, p0, LagV;->a:I

    add-int/lit8 v0, v0, 0x1

    .line 2863
    :cond_1e
    iget-object v7, p0, LagV;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2864
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v8, p2, v0

    .line 2865
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LagU;

    move-object v1, v0

    .line 2868
    :goto_2f
    if-eqz v1, :cond_b0

    .line 2869
    invoke-interface {v1}, LagU;->a()Ljava/lang/Object;

    move-result-object v2

    .line 2870
    invoke-interface {v1}, LagU;->a()I

    move-result v3

    if-ne v3, p2, :cond_ab

    if-eqz v2, :cond_ab

    iget-object v3, p0, LagV;->a:Lagu;

    iget-object v3, v3, Lagu;->a:LafD;

    invoke-virtual {v3, p1, v2}, LafD;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 2874
    invoke-interface {v1}, LagU;->a()Lahi;

    move-result-object v0

    .line 2875
    invoke-interface {v0}, Lahi;->get()Ljava/lang/Object;

    move-result-object v7

    .line 2877
    if-nez v7, :cond_82

    .line 2878
    iget v2, p0, LagV;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, LagV;->c:I

    .line 2879
    invoke-interface {v0}, Lahi;->b()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 2880
    sget-object v2, Lahw;->c:Lahw;

    invoke-virtual {p0, p1, p2, v0, v2}, LagV;->a(Ljava/lang/Object;ILahi;Lahw;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    .line 2881
    invoke-virtual/range {v0 .. v5}, LagV;->a(LagU;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2882
    iget v0, p0, LagV;->a:I

    .line 2887
    :goto_6a
    iput v0, p0, LagV;->a:I

    .line 2888
    invoke-virtual {p0}, LagV;->i()V
    :try_end_6f
    .catchall {:try_start_4 .. :try_end_6f} :catchall_d4

    .line 2917
    invoke-virtual {p0}, LagV;->unlock()V

    .line 2918
    invoke-virtual {p0}, LagV;->m()V

    move-object v0, v6

    :goto_76
    return-object v0

    :cond_77
    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    .line 2884
    :try_start_7a
    invoke-virtual/range {v0 .. v5}, LagV;->a(LagU;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2885
    iget v0, p0, LagV;->a:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_6a

    .line 2890
    :cond_82
    if-eqz p4, :cond_8f

    .line 2894
    invoke-virtual {p0, v1, v4, v5}, LagV;->b(LagU;J)V
    :try_end_87
    .catchall {:try_start_7a .. :try_end_87} :catchall_d4

    .line 2917
    invoke-virtual {p0}, LagV;->unlock()V

    .line 2918
    invoke-virtual {p0}, LagV;->m()V

    move-object v0, v7

    goto :goto_76

    .line 2898
    :cond_8f
    :try_start_8f
    iget v2, p0, LagV;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, LagV;->c:I

    .line 2899
    sget-object v2, Lahw;->b:Lahw;

    invoke-virtual {p0, p1, p2, v0, v2}, LagV;->a(Ljava/lang/Object;ILahi;Lahw;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    .line 2900
    invoke-virtual/range {v0 .. v5}, LagV;->a(LagU;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2901
    invoke-virtual {p0}, LagV;->i()V
    :try_end_a3
    .catchall {:try_start_8f .. :try_end_a3} :catchall_d4

    .line 2917
    invoke-virtual {p0}, LagV;->unlock()V

    .line 2918
    invoke-virtual {p0}, LagV;->m()V

    move-object v0, v7

    goto :goto_76

    .line 2868
    :cond_ab
    :try_start_ab
    invoke-interface {v1}, LagU;->a()LagU;

    move-result-object v1

    goto :goto_2f

    .line 2908
    :cond_b0
    iget v1, p0, LagV;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LagV;->c:I

    .line 2909
    invoke-virtual {p0, p1, p2, v0}, LagV;->a(Ljava/lang/Object;ILagU;)LagU;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    .line 2910
    invoke-virtual/range {v0 .. v5}, LagV;->a(LagU;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2911
    invoke-virtual {v7, v8, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2912
    iget v0, p0, LagV;->a:I

    add-int/lit8 v0, v0, 0x1

    .line 2913
    iput v0, p0, LagV;->a:I

    .line 2914
    invoke-virtual {p0}, LagV;->i()V
    :try_end_cc
    .catchall {:try_start_ab .. :try_end_cc} :catchall_d4

    .line 2917
    invoke-virtual {p0}, LagV;->unlock()V

    .line 2918
    invoke-virtual {p0}, LagV;->m()V

    move-object v0, v6

    goto :goto_76

    .line 2917
    :catchall_d4
    move-exception v0

    invoke-virtual {p0}, LagV;->unlock()V

    .line 2918
    invoke-virtual {p0}, LagV;->m()V

    throw v0
.end method

.method a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "LagU",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2164
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method a()V
    .registers 2

    .prologue
    .line 2488
    invoke-virtual {p0}, LagV;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2490
    :try_start_6
    invoke-virtual {p0}, LagV;->b()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_d

    .line 2492
    invoke-virtual {p0}, LagV;->unlock()V

    .line 2495
    :cond_c
    return-void

    .line 2492
    :catchall_d
    move-exception v0

    invoke-virtual {p0}, LagV;->unlock()V

    throw v0
.end method

.method a(J)V
    .registers 4
    .parameter

    .prologue
    .line 2636
    invoke-virtual {p0}, LagV;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2638
    :try_start_6
    invoke-virtual {p0, p1, p2}, LagV;->b(J)V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_d

    .line 2640
    invoke-virtual {p0}, LagV;->unlock()V

    .line 2644
    :cond_c
    return-void

    .line 2640
    :catchall_d
    move-exception v0

    invoke-virtual {p0}, LagV;->unlock()V

    throw v0
.end method

.method a(LagU;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LagU",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3302
    sget-object v0, Lahw;->c:Lahw;

    invoke-virtual {p0, p1, v0}, LagV;->a(LagU;Lahw;)V

    .line 3303
    iget-object v0, p0, LagV;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3304
    iget-object v0, p0, LagV;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3305
    return-void
.end method

.method a(LagU;IJ)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LagU",
            "<TK;TV;>;IJ)V"
        }
    .end annotation

    .prologue
    .line 2597
    invoke-virtual {p0}, LagV;->h()V

    .line 2598
    iget v0, p0, LagV;->b:I

    add-int/2addr v0, p2

    iput v0, p0, LagV;->b:I

    .line 2600
    iget-object v0, p0, LagV;->a:Lagu;

    invoke-virtual {v0}, Lagu;->i()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2601
    invoke-interface {p1, p3, p4}, LagU;->a(J)V

    .line 2603
    :cond_13
    iget-object v0, p0, LagV;->a:Lagu;

    invoke-virtual {v0}, Lagu;->h()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2604
    invoke-interface {p1, p3, p4}, LagU;->b(J)V

    .line 2606
    :cond_1e
    iget-object v0, p0, LagV;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2607
    iget-object v0, p0, LagV;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2608
    return-void
.end method

.method a(LagU;J)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LagU",
            "<TK;TV;>;J)V"
        }
    .end annotation

    .prologue
    .line 2569
    iget-object v0, p0, LagV;->a:Lagu;

    invoke-virtual {v0}, Lagu;->i()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2570
    invoke-interface {p1, p2, p3}, LagU;->a(J)V

    .line 2572
    :cond_b
    iget-object v0, p0, LagV;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2573
    return-void
.end method

.method a(LagU;Lahw;)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LagU",
            "<TK;TV;>;",
            "Lahw;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2667
    invoke-interface {p1}, LagU;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, LagU;->a()I

    move-result v1

    invoke-interface {p1}, LagU;->a()Lahi;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p2}, LagV;->a(Ljava/lang/Object;ILahi;Lahw;)V

    .line 2668
    return-void
.end method

.method a(LagU;Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LagU",
            "<TK;TV;>;TK;TV;J)V"
        }
    .end annotation

    .prologue
    .line 2194
    invoke-interface {p1}, LagU;->a()Lahi;

    move-result-object v1

    .line 2195
    iget-object v0, p0, LagV;->a:Lagu;

    iget-object v0, v0, Lagu;->a:LahE;

    invoke-interface {v0, p2, p3}, LahE;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 2196
    if-ltz v2, :cond_26

    const/4 v0, 0x1

    :goto_f
    const-string v3, "Weights must be non-negative"

    invoke-static {v0, v3}, LafQ;->b(ZLjava/lang/Object;)V

    .line 2198
    iget-object v0, p0, LagV;->a:Lagu;

    iget-object v0, v0, Lagu;->b:LagY;

    invoke-virtual {v0, p0, p1, p3, v2}, LagY;->a(LagV;LagU;Ljava/lang/Object;I)Lahi;

    move-result-object v0

    .line 2200
    invoke-interface {p1, v0}, LagU;->a(Lahi;)V

    .line 2201
    invoke-virtual {p0, p1, v2, p4, p5}, LagV;->a(LagU;IJ)V

    .line 2202
    invoke-interface {v1, p3}, Lahi;->a(Ljava/lang/Object;)V

    .line 2203
    return-void

    .line 2196
    :cond_26
    const/4 v0, 0x0

    goto :goto_f
.end method

.method a(Ljava/lang/Object;ILahi;Lahw;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lahi",
            "<TK;TV;>;",
            "Lahw;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2673
    iget v0, p0, LagV;->b:I

    invoke-interface {p3}, Lahi;->a()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, LagV;->b:I

    .line 2674
    invoke-virtual {p4}, Lahw;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2675
    iget-object v0, p0, LagV;->a:Lagi;

    invoke-interface {v0}, Lagi;->a()V

    .line 2677
    :cond_14
    iget-object v0, p0, LagV;->a:Lagu;

    iget-object v0, v0, Lagu;->a:Ljava/util/Queue;

    sget-object v1, Lagu;->b:Ljava/util/Queue;

    if-eq v0, v1, :cond_2c

    .line 2678
    invoke-interface {p3}, Lahi;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2679
    new-instance v1, LahD;

    invoke-direct {v1, p1, v0, p4}, LahD;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lahw;)V

    .line 2680
    iget-object v0, p0, LagV;->a:Lagu;

    iget-object v0, v0, Lagu;->a:Ljava/util/Queue;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2682
    :cond_2c
    return-void
.end method

.method a(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "LagU",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 2168
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, LagV;->d:I

    .line 2169
    iget-object v0, p0, LagV;->a:Lagu;

    invoke-virtual {v0}, Lagu;->b()Z

    move-result v0

    if-nez v0, :cond_21

    iget v0, p0, LagV;->d:I

    int-to-long v0, v0

    iget-wide v2, p0, LagV;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_21

    .line 2171
    iget v0, p0, LagV;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LagV;->d:I

    .line 2173
    :cond_21
    iput-object p1, p0, LagV;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2174
    return-void
.end method

.method a(LagU;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LagU",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 3434
    invoke-interface {p1}, LagU;->a()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    .line 3438
    :cond_7
    :goto_7
    return v0

    .line 3437
    :cond_8
    invoke-interface {p1}, LagU;->a()Lahi;

    move-result-object v1

    .line 3438
    invoke-interface {v1}, Lahi;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_18

    invoke-interface {v1}, Lahi;->b()Z

    move-result v1

    if-nez v1, :cond_7

    :cond_18
    const/4 v0, 0x0

    goto :goto_7
.end method

.method a(LagU;I)Z
    .registers 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LagU",
            "<TK;TV;>;I)Z"
        }
    .end annotation

    .prologue
    .line 3311
    invoke-virtual {p0}, LagV;->lock()V

    .line 3313
    :try_start_3
    iget v0, p0, LagV;->a:I

    add-int/lit8 v0, v0, -0x1

    .line 3314
    iget-object v7, p0, LagV;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3315
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v8, p2, v0

    .line 3316
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LagU;

    move-object v2, v1

    .line 3318
    :goto_18
    if-eqz v2, :cond_48

    .line 3319
    if-ne v2, p1, :cond_43

    .line 3320
    iget v0, p0, LagV;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LagV;->c:I

    .line 3321
    invoke-interface {v2}, LagU;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, LagU;->a()Lahi;

    move-result-object v5

    sget-object v6, Lahw;->c:Lahw;

    move-object v0, p0

    move v4, p2

    invoke-virtual/range {v0 .. v6}, LagV;->a(LagU;LagU;Ljava/lang/Object;ILahi;Lahw;)LagU;

    move-result-object v0

    .line 3323
    iget v1, p0, LagV;->a:I

    add-int/lit8 v1, v1, -0x1

    .line 3324
    invoke-virtual {v7, v8, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3325
    iput v1, p0, LagV;->a:I
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_50

    .line 3326
    const/4 v0, 0x1

    .line 3332
    invoke-virtual {p0}, LagV;->unlock()V

    .line 3333
    invoke-virtual {p0}, LagV;->m()V

    :goto_42
    return v0

    .line 3318
    :cond_43
    :try_start_43
    invoke-interface {v2}, LagU;->a()LagU;
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_50

    move-result-object v2

    goto :goto_18

    .line 3330
    :cond_48
    const/4 v0, 0x0

    .line 3332
    invoke-virtual {p0}, LagV;->unlock()V

    .line 3333
    invoke-virtual {p0}, LagV;->m()V

    goto :goto_42

    .line 3332
    :catchall_50
    move-exception v0

    invoke-virtual {p0}, LagV;->unlock()V

    .line 3333
    invoke-virtual {p0}, LagV;->m()V

    throw v0
.end method

.method a(LagU;ILahw;)Z
    .registers 13
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LagU",
            "<TK;TV;>;I",
            "Lahw;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 3409
    iget v0, p0, LagV;->a:I

    add-int/lit8 v0, v0, -0x1

    .line 3410
    iget-object v7, p0, LagV;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3411
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v8, p2, v0

    .line 3412
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LagU;

    move-object v2, v1

    .line 3414
    :goto_15
    if-eqz v2, :cond_3e

    .line 3415
    if-ne v2, p1, :cond_39

    .line 3416
    iget v0, p0, LagV;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LagV;->c:I

    .line 3417
    invoke-interface {v2}, LagU;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, LagU;->a()Lahi;

    move-result-object v5

    move-object v0, p0

    move v4, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, LagV;->a(LagU;LagU;Ljava/lang/Object;ILahi;Lahw;)LagU;

    move-result-object v0

    .line 3419
    iget v1, p0, LagV;->a:I

    add-int/lit8 v1, v1, -0x1

    .line 3420
    invoke-virtual {v7, v8, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3421
    iput v1, p0, LagV;->a:I

    .line 3422
    const/4 v0, 0x1

    .line 3426
    :goto_38
    return v0

    .line 3414
    :cond_39
    invoke-interface {v2}, LagU;->a()LagU;

    move-result-object v2

    goto :goto_15

    .line 3426
    :cond_3e
    const/4 v0, 0x0

    goto :goto_38
.end method

.method a(Ljava/lang/Object;I)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2805
    :try_start_1
    iget v1, p0, LagV;->a:I

    if-eqz v1, :cond_26

    .line 2806
    iget-object v1, p0, LagV;->a:Lagu;

    iget-object v1, v1, Lagu;->a:Lage;

    invoke-virtual {v1}, Lage;->a()J

    move-result-wide v1

    .line 2807
    invoke-virtual {p0, p1, p2, v1, v2}, LagV;->a(Ljava/lang/Object;IJ)LagU;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_2a

    move-result-object v1

    .line 2808
    if-nez v1, :cond_17

    .line 2816
    invoke-virtual {p0}, LagV;->l()V

    :goto_16
    return v0

    .line 2811
    :cond_17
    :try_start_17
    invoke-interface {v1}, LagU;->a()Lahi;

    move-result-object v1

    invoke-interface {v1}, Lahi;->get()Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_2a

    move-result-object v1

    if-eqz v1, :cond_22

    const/4 v0, 0x1

    .line 2816
    :cond_22
    invoke-virtual {p0}, LagV;->l()V

    goto :goto_16

    :cond_26
    invoke-virtual {p0}, LagV;->l()V

    goto :goto_16

    :catchall_2a
    move-exception v0

    invoke-virtual {p0}, LagV;->l()V

    throw v0
.end method

.method a(Ljava/lang/Object;ILagP;)Z
    .registers 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "LagP",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3376
    invoke-virtual {p0}, LagV;->lock()V

    .line 3378
    :try_start_4
    iget-object v3, p0, LagV;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3379
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 3380
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LagU;

    move-object v2, v0

    .line 3382
    :goto_15
    if-eqz v2, :cond_65

    .line 3383
    invoke-interface {v2}, LagU;->a()Ljava/lang/Object;

    move-result-object v5

    .line 3384
    invoke-interface {v2}, LagU;->a()I

    move-result v6

    if-ne v6, p2, :cond_60

    if-eqz v5, :cond_60

    iget-object v6, p0, LagV;->a:Lagu;

    iget-object v6, v6, Lagu;->a:LafD;

    invoke-virtual {v6, p1, v5}, LafD;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 3386
    invoke-interface {v2}, LagU;->a()Lahi;

    move-result-object v5

    .line 3387
    if-ne v5, p3, :cond_58

    .line 3388
    invoke-virtual {p3}, LagP;->b()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 3389
    invoke-virtual {p3}, LagP;->a()Lahi;

    move-result-object v0

    invoke-interface {v2, v0}, LagU;->a(Lahi;)V
    :try_end_40
    .catchall {:try_start_4 .. :try_end_40} :catchall_50

    .line 3394
    :goto_40
    const/4 v0, 0x1

    .line 3402
    invoke-virtual {p0}, LagV;->unlock()V

    .line 3403
    invoke-virtual {p0}, LagV;->m()V

    :goto_47
    return v0

    .line 3391
    :cond_48
    :try_start_48
    invoke-virtual {p0, v0, v2}, LagV;->b(LagU;LagU;)LagU;

    move-result-object v0

    .line 3392
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_50

    goto :goto_40

    .line 3402
    :catchall_50
    move-exception v0

    invoke-virtual {p0}, LagV;->unlock()V

    .line 3403
    invoke-virtual {p0}, LagV;->m()V

    throw v0

    .line 3402
    :cond_58
    invoke-virtual {p0}, LagV;->unlock()V

    .line 3403
    invoke-virtual {p0}, LagV;->m()V

    move v0, v1

    goto :goto_47

    .line 3382
    :cond_60
    :try_start_60
    invoke-interface {v2}, LagU;->a()LagU;
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_50

    move-result-object v2

    goto :goto_15

    .line 3402
    :cond_65
    invoke-virtual {p0}, LagV;->unlock()V

    .line 3403
    invoke-virtual {p0}, LagV;->m()V

    move v0, v1

    goto :goto_47
.end method

.method a(Ljava/lang/Object;ILagP;Ljava/lang/Object;)Z
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "LagP",
            "<TK;TV;>;TV;)Z"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 3140
    invoke-virtual {p0}, LagV;->lock()V

    .line 3142
    :try_start_5
    iget-object v0, p0, LagV;->a:Lagu;

    iget-object v0, v0, Lagu;->a:Lage;

    invoke-virtual {v0}, Lage;->a()J

    move-result-wide v4

    .line 3143
    invoke-virtual {p0, v4, v5}, LagV;->c(J)V

    .line 3145
    iget v0, p0, LagV;->a:I

    add-int/lit8 v7, v0, 0x1

    .line 3146
    iget-object v8, p0, LagV;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3147
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v9, p2, v0

    .line 3148
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LagU;

    move-object v1, v0

    .line 3150
    :goto_25
    if-eqz v1, :cond_8d

    .line 3151
    invoke-interface {v1}, LagU;->a()Ljava/lang/Object;

    move-result-object v3

    .line 3152
    invoke-interface {v1}, LagU;->a()I

    move-result v10

    if-ne v10, p2, :cond_88

    if-eqz v3, :cond_88

    iget-object v10, p0, LagV;->a:Lagu;

    iget-object v10, v10, Lagu;->a:LafD;

    invoke-virtual {v10, p1, v3}, LafD;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 3154
    invoke-interface {v1}, LagU;->a()Lahi;

    move-result-object v0

    .line 3155
    invoke-interface {v0}, Lahi;->get()Ljava/lang/Object;

    move-result-object v3

    .line 3156
    if-eqz v3, :cond_49

    if-ne p3, v0, :cond_75

    .line 3157
    :cond_49
    iget v0, p0, LagV;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LagV;->c:I

    .line 3158
    invoke-virtual {p3}, LagP;->b()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 3159
    if-nez v3, :cond_72

    sget-object v0, Lahw;->c:Lahw;

    .line 3161
    :goto_59
    invoke-virtual {p0, p1, p2, p3, v0}, LagV;->a(Ljava/lang/Object;ILahi;Lahw;)V

    .line 3162
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    :cond_5f
    move-object v0, p0

    move-object v2, p1

    move-object v3, p4

    .line 3164
    invoke-virtual/range {v0 .. v5}, LagV;->a(LagU;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3165
    iput v7, p0, LagV;->a:I

    .line 3166
    invoke-virtual {p0}, LagV;->i()V
    :try_end_6a
    .catchall {:try_start_5 .. :try_end_6a} :catchall_ad

    .line 3185
    invoke-virtual {p0}, LagV;->unlock()V

    .line 3186
    invoke-virtual {p0}, LagV;->m()V

    move v0, v6

    :goto_71
    return v0

    .line 3159
    :cond_72
    :try_start_72
    sget-object v0, Lahw;->b:Lahw;

    goto :goto_59

    .line 3171
    :cond_75
    new-instance v0, Lahq;

    const/4 v1, 0x0

    invoke-direct {v0, p4, v1}, Lahq;-><init>(Ljava/lang/Object;I)V

    .line 3172
    sget-object v1, Lahw;->b:Lahw;

    invoke-virtual {p0, p1, p2, v0, v1}, LagV;->a(Ljava/lang/Object;ILahi;Lahw;)V
    :try_end_80
    .catchall {:try_start_72 .. :try_end_80} :catchall_ad

    .line 3185
    invoke-virtual {p0}, LagV;->unlock()V

    .line 3186
    invoke-virtual {p0}, LagV;->m()V

    move v0, v2

    goto :goto_71

    .line 3150
    :cond_88
    :try_start_88
    invoke-interface {v1}, LagU;->a()LagU;

    move-result-object v1

    goto :goto_25

    .line 3177
    :cond_8d
    iget v1, p0, LagV;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LagV;->c:I

    .line 3178
    invoke-virtual {p0, p1, p2, v0}, LagV;->a(Ljava/lang/Object;ILagU;)LagU;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p4

    .line 3179
    invoke-virtual/range {v0 .. v5}, LagV;->a(LagU;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3180
    invoke-virtual {v8, v9, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3181
    iput v7, p0, LagV;->a:I

    .line 3182
    invoke-virtual {p0}, LagV;->i()V
    :try_end_a5
    .catchall {:try_start_88 .. :try_end_a5} :catchall_ad

    .line 3185
    invoke-virtual {p0}, LagV;->unlock()V

    .line 3186
    invoke-virtual {p0}, LagV;->m()V

    move v0, v6

    goto :goto_71

    .line 3185
    :catchall_ad
    move-exception v0

    invoke-virtual {p0}, LagV;->unlock()V

    .line 3186
    invoke-virtual {p0}, LagV;->m()V

    throw v0
.end method

.method a(Ljava/lang/Object;ILahi;)Z
    .registers 13
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lahi",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3341
    invoke-virtual {p0}, LagV;->lock()V

    .line 3343
    :try_start_4
    iget v1, p0, LagV;->a:I

    add-int/lit8 v1, v1, -0x1

    .line 3344
    iget-object v7, p0, LagV;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3345
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v8, p2, v1

    .line 3346
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LagU;

    move-object v2, v1

    .line 3348
    :goto_19
    if-eqz v2, :cond_6f

    .line 3349
    invoke-interface {v2}, LagU;->a()Ljava/lang/Object;

    move-result-object v3

    .line 3350
    invoke-interface {v2}, LagU;->a()I

    move-result v4

    if-ne v4, p2, :cond_6a

    if-eqz v3, :cond_6a

    iget-object v4, p0, LagV;->a:Lagu;

    iget-object v4, v4, Lagu;->a:LafD;

    invoke-virtual {v4, p1, v3}, LafD;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 3352
    invoke-interface {v2}, LagU;->a()Lahi;

    move-result-object v4

    .line 3353
    if-ne v4, p3, :cond_5d

    .line 3354
    iget v0, p0, LagV;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LagV;->c:I

    .line 3355
    sget-object v6, Lahw;->c:Lahw;

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, LagV;->a(LagU;LagU;Ljava/lang/Object;ILahi;Lahw;)LagU;

    move-result-object v0

    .line 3357
    iget v1, p0, LagV;->a:I

    add-int/lit8 v1, v1, -0x1

    .line 3358
    invoke-virtual {v7, v8, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3359
    iput v1, p0, LagV;->a:I
    :try_end_4f
    .catchall {:try_start_4 .. :try_end_4f} :catchall_7c

    .line 3360
    const/4 v0, 0x1

    .line 3368
    invoke-virtual {p0}, LagV;->unlock()V

    .line 3369
    invoke-virtual {p0}, LagV;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_5c

    .line 3370
    invoke-virtual {p0}, LagV;->m()V

    :cond_5c
    :goto_5c
    return v0

    .line 3368
    :cond_5d
    invoke-virtual {p0}, LagV;->unlock()V

    .line 3369
    invoke-virtual {p0}, LagV;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_5c

    .line 3370
    invoke-virtual {p0}, LagV;->m()V

    goto :goto_5c

    .line 3348
    :cond_6a
    :try_start_6a
    invoke-interface {v2}, LagU;->a()LagU;
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_7c

    move-result-object v2

    goto :goto_19

    .line 3368
    :cond_6f
    invoke-virtual {p0}, LagV;->unlock()V

    .line 3369
    invoke-virtual {p0}, LagV;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_5c

    .line 3370
    invoke-virtual {p0}, LagV;->m()V

    goto :goto_5c

    .line 3368
    :catchall_7c
    move-exception v0

    invoke-virtual {p0}, LagV;->unlock()V

    .line 3369
    invoke-virtual {p0}, LagV;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_89

    .line 3370
    invoke-virtual {p0}, LagV;->m()V

    :cond_89
    throw v0
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;)Z
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 3191
    invoke-virtual {p0}, LagV;->lock()V

    .line 3193
    :try_start_4
    iget-object v0, p0, LagV;->a:Lagu;

    iget-object v0, v0, Lagu;->a:Lage;

    invoke-virtual {v0}, Lage;->a()J

    move-result-wide v0

    .line 3194
    invoke-virtual {p0, v0, v1}, LagV;->c(J)V

    .line 3196
    iget v0, p0, LagV;->a:I

    add-int/lit8 v0, v0, -0x1

    .line 3197
    iget-object v8, p0, LagV;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3198
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v9, p2, v0

    .line 3199
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LagU;

    move-object v2, v1

    .line 3201
    :goto_24
    if-eqz v2, :cond_8b

    .line 3202
    invoke-interface {v2}, LagU;->a()Ljava/lang/Object;

    move-result-object v3

    .line 3203
    invoke-interface {v2}, LagU;->a()I

    move-result v0

    if-ne v0, p2, :cond_86

    if-eqz v3, :cond_86

    iget-object v0, p0, LagV;->a:Lagu;

    iget-object v0, v0, Lagu;->a:LafD;

    invoke-virtual {v0, p1, v3}, LafD;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 3205
    invoke-interface {v2}, LagU;->a()Lahi;

    move-result-object v5

    .line 3206
    invoke-interface {v5}, Lahi;->get()Ljava/lang/Object;

    move-result-object v0

    .line 3209
    iget-object v4, p0, LagV;->a:Lagu;

    iget-object v4, v4, Lagu;->b:LafD;

    invoke-virtual {v4, p3, v0}, LafD;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 3210
    sget-object v6, Lahw;->a:Lahw;

    .line 3218
    :goto_50
    iget v0, p0, LagV;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LagV;->c:I

    move-object v0, p0

    move v4, p2

    .line 3219
    invoke-virtual/range {v0 .. v6}, LagV;->a(LagU;LagU;Ljava/lang/Object;ILahi;Lahw;)LagU;

    move-result-object v0

    .line 3221
    iget v1, p0, LagV;->a:I

    add-int/lit8 v1, v1, -0x1

    .line 3222
    invoke-virtual {v8, v9, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3223
    iput v1, p0, LagV;->a:I

    .line 3224
    sget-object v0, Lahw;->a:Lahw;
    :try_end_67
    .catchall {:try_start_4 .. :try_end_67} :catchall_92

    if-ne v6, v0, :cond_84

    const/4 v0, 0x1

    .line 3230
    :goto_6a
    invoke-virtual {p0}, LagV;->unlock()V

    .line 3231
    invoke-virtual {p0}, LagV;->m()V

    move v7, v0

    :goto_71
    return v7

    .line 3211
    :cond_72
    if-nez v0, :cond_7d

    :try_start_74
    invoke-interface {v5}, Lahi;->b()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 3212
    sget-object v6, Lahw;->c:Lahw;
    :try_end_7c
    .catchall {:try_start_74 .. :try_end_7c} :catchall_92

    goto :goto_50

    .line 3230
    :cond_7d
    invoke-virtual {p0}, LagV;->unlock()V

    .line 3231
    invoke-virtual {p0}, LagV;->m()V

    goto :goto_71

    :cond_84
    move v0, v7

    .line 3224
    goto :goto_6a

    .line 3201
    :cond_86
    :try_start_86
    invoke-interface {v2}, LagU;->a()LagU;
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_92

    move-result-object v2

    goto :goto_24

    .line 3230
    :cond_8b
    invoke-virtual {p0}, LagV;->unlock()V

    .line 3231
    invoke-virtual {p0}, LagV;->m()V

    goto :goto_71

    .line 3230
    :catchall_92
    move-exception v0

    invoke-virtual {p0}, LagV;->unlock()V

    .line 3231
    invoke-virtual {p0}, LagV;->m()V

    throw v0
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 2995
    invoke-virtual {p0}, LagV;->lock()V

    .line 2997
    :try_start_3
    iget-object v0, p0, LagV;->a:Lagu;

    iget-object v0, v0, Lagu;->a:Lage;

    invoke-virtual {v0}, Lage;->a()J

    move-result-wide v7

    .line 2998
    invoke-virtual {p0, v7, v8}, LagV;->c(J)V

    .line 3000
    iget-object v9, p0, LagV;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3001
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v10, p2, v0

    .line 3002
    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LagU;

    move-object v2, v1

    .line 3004
    :goto_1f
    if-eqz v2, :cond_a2

    .line 3005
    invoke-interface {v2}, LagU;->a()Ljava/lang/Object;

    move-result-object v3

    .line 3006
    invoke-interface {v2}, LagU;->a()I

    move-result v0

    if-ne v0, p2, :cond_9c

    if-eqz v3, :cond_9c

    iget-object v0, p0, LagV;->a:Lagu;

    iget-object v0, v0, Lagu;->a:LafD;

    invoke-virtual {v0, p1, v3}, LafD;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 3008
    invoke-interface {v2}, LagU;->a()Lahi;

    move-result-object v5

    .line 3009
    invoke-interface {v5}, Lahi;->get()Ljava/lang/Object;

    move-result-object v0

    .line 3010
    if-nez v0, :cond_6a

    .line 3011
    invoke-interface {v5}, Lahi;->b()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 3013
    iget v0, p0, LagV;->a:I

    add-int/lit8 v0, v0, -0x1

    .line 3014
    iget v0, p0, LagV;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LagV;->c:I

    .line 3015
    sget-object v6, Lahw;->c:Lahw;

    move-object v0, p0

    move v4, p2

    invoke-virtual/range {v0 .. v6}, LagV;->a(LagU;LagU;Ljava/lang/Object;ILahi;Lahw;)LagU;

    move-result-object v0

    .line 3017
    iget v1, p0, LagV;->a:I

    add-int/lit8 v1, v1, -0x1

    .line 3018
    invoke-virtual {v9, v10, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3019
    iput v1, p0, LagV;->a:I
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_aa

    .line 3021
    :cond_62
    const/4 v0, 0x0

    .line 3041
    invoke-virtual {p0}, LagV;->unlock()V

    .line 3042
    invoke-virtual {p0}, LagV;->m()V

    :goto_69
    return v0

    .line 3024
    :cond_6a
    :try_start_6a
    iget-object v1, p0, LagV;->a:Lagu;

    iget-object v1, v1, Lagu;->b:LafD;

    invoke-virtual {v1, p3, v0}, LafD;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 3025
    iget v0, p0, LagV;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LagV;->c:I

    .line 3026
    sget-object v0, Lahw;->b:Lahw;

    invoke-virtual {p0, p1, p2, v5, v0}, LagV;->a(Ljava/lang/Object;ILahi;Lahw;)V

    move-object v1, p0

    move-object v3, p1

    move-object v4, p4

    move-wide v5, v7

    .line 3027
    invoke-virtual/range {v1 .. v6}, LagV;->a(LagU;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3028
    invoke-virtual {p0}, LagV;->i()V
    :try_end_89
    .catchall {:try_start_6a .. :try_end_89} :catchall_aa

    .line 3029
    const/4 v0, 0x1

    .line 3041
    invoke-virtual {p0}, LagV;->unlock()V

    .line 3042
    invoke-virtual {p0}, LagV;->m()V

    goto :goto_69

    .line 3033
    :cond_91
    :try_start_91
    invoke-virtual {p0, v2, v7, v8}, LagV;->b(LagU;J)V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_aa

    .line 3034
    const/4 v0, 0x0

    .line 3041
    invoke-virtual {p0}, LagV;->unlock()V

    .line 3042
    invoke-virtual {p0}, LagV;->m()V

    goto :goto_69

    .line 3004
    :cond_9c
    :try_start_9c
    invoke-interface {v2}, LagU;->a()LagU;
    :try_end_9f
    .catchall {:try_start_9c .. :try_end_9f} :catchall_aa

    move-result-object v2

    goto/16 :goto_1f

    .line 3039
    :cond_a2
    const/4 v0, 0x0

    .line 3041
    invoke-virtual {p0}, LagV;->unlock()V

    .line 3042
    invoke-virtual {p0}, LagV;->m()V

    goto :goto_69

    .line 3041
    :catchall_aa
    move-exception v0

    invoke-virtual {p0}, LagV;->unlock()V

    .line 3042
    invoke-virtual {p0}, LagV;->m()V

    throw v0
.end method

.method b(LagU;LagU;)LagU;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LagU",
            "<TK;TV;>;",
            "LagU",
            "<TK;TV;>;)",
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3286
    iget v1, p0, LagV;->a:I

    .line 3287
    invoke-interface {p2}, LagU;->a()LagU;

    move-result-object v0

    .line 3288
    :goto_6
    if-eq p1, p2, :cond_1d

    .line 3289
    invoke-virtual {p0, p1}, LagV;->a(LagU;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 3290
    invoke-virtual {p0, p1}, LagV;->a(LagU;)V

    .line 3291
    add-int/lit8 v1, v1, -0x1

    .line 3288
    :goto_13
    invoke-interface {p1}, LagU;->a()LagU;

    move-result-object p1

    goto :goto_6

    .line 3293
    :cond_18
    invoke-virtual {p0, p1, v0}, LagV;->a(LagU;LagU;)LagU;

    move-result-object v0

    goto :goto_13

    .line 3296
    :cond_1d
    iput v1, p0, LagV;->a:I

    .line 3297
    return-object v0
.end method

.method b(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3094
    invoke-virtual {p0}, LagV;->lock()V

    .line 3096
    :try_start_4
    iget-object v1, p0, LagV;->a:Lagu;

    iget-object v1, v1, Lagu;->a:Lage;

    invoke-virtual {v1}, Lage;->a()J

    move-result-wide v1

    .line 3097
    invoke-virtual {p0, v1, v2}, LagV;->c(J)V

    .line 3099
    iget v1, p0, LagV;->a:I

    add-int/lit8 v1, v1, -0x1

    .line 3100
    iget-object v8, p0, LagV;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3101
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v9, p2, v1

    .line 3102
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LagU;

    move-object v2, v1

    .line 3104
    :goto_24
    if-eqz v2, :cond_7a

    .line 3105
    invoke-interface {v2}, LagU;->a()Ljava/lang/Object;

    move-result-object v3

    .line 3106
    invoke-interface {v2}, LagU;->a()I

    move-result v4

    if-ne v4, p2, :cond_75

    if-eqz v3, :cond_75

    iget-object v4, p0, LagV;->a:Lagu;

    iget-object v4, v4, Lagu;->a:LafD;

    invoke-virtual {v4, p1, v3}, LafD;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_75

    .line 3108
    invoke-interface {v2}, LagU;->a()Lahi;

    move-result-object v5

    .line 3109
    invoke-interface {v5}, Lahi;->get()Ljava/lang/Object;

    move-result-object v7

    .line 3112
    if-eqz v7, :cond_65

    .line 3113
    sget-object v6, Lahw;->a:Lahw;

    .line 3121
    :goto_48
    iget v0, p0, LagV;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LagV;->c:I

    move-object v0, p0

    move v4, p2

    .line 3122
    invoke-virtual/range {v0 .. v6}, LagV;->a(LagU;LagU;Ljava/lang/Object;ILahi;Lahw;)LagU;

    move-result-object v0

    .line 3124
    iget v1, p0, LagV;->a:I

    add-int/lit8 v1, v1, -0x1

    .line 3125
    invoke-virtual {v8, v9, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3126
    iput v1, p0, LagV;->a:I
    :try_end_5d
    .catchall {:try_start_4 .. :try_end_5d} :catchall_81

    .line 3133
    invoke-virtual {p0}, LagV;->unlock()V

    .line 3134
    invoke-virtual {p0}, LagV;->m()V

    move-object v0, v7

    :goto_64
    return-object v0

    .line 3114
    :cond_65
    :try_start_65
    invoke-interface {v5}, Lahi;->b()Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 3115
    sget-object v6, Lahw;->c:Lahw;
    :try_end_6d
    .catchall {:try_start_65 .. :try_end_6d} :catchall_81

    goto :goto_48

    .line 3133
    :cond_6e
    invoke-virtual {p0}, LagV;->unlock()V

    .line 3134
    invoke-virtual {p0}, LagV;->m()V

    goto :goto_64

    .line 3104
    :cond_75
    :try_start_75
    invoke-interface {v2}, LagU;->a()LagU;
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_81

    move-result-object v2

    goto :goto_24

    .line 3133
    :cond_7a
    invoke-virtual {p0}, LagV;->unlock()V

    .line 3134
    invoke-virtual {p0}, LagV;->m()V

    goto :goto_64

    .line 3133
    :catchall_81
    move-exception v0

    invoke-virtual {p0}, LagV;->unlock()V

    .line 3134
    invoke-virtual {p0}, LagV;->m()V

    throw v0
.end method

.method b(Ljava/lang/Object;ILagq;)Ljava/lang/Object;
    .registers 22
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lagq",
            "<-TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 2245
    const/4 v7, 0x0

    .line 2246
    const/4 v5, 0x0

    .line 2247
    const/4 v8, 0x1

    .line 2249
    invoke-virtual/range {p0 .. p0}, LagV;->lock()V

    .line 2252
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, LagV;->a:Lagu;

    iget-object v4, v4, Lagu;->a:Lage;

    invoke-virtual {v4}, Lage;->a()J

    move-result-wide v10

    .line 2253
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, LagV;->c(J)V

    .line 2255
    move-object/from16 v0, p0

    iget v4, v0, LagV;->a:I

    add-int/lit8 v12, v4, -0x1

    .line 2256
    move-object/from16 v0, p0

    iget-object v13, v0, LagV;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2257
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    and-int v14, p2, v4

    .line 2258
    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LagU;

    move-object v6, v4

    .line 2260
    :goto_2e
    if-eqz v6, :cond_115

    .line 2261
    invoke-interface {v6}, LagU;->a()Ljava/lang/Object;

    move-result-object v15

    .line 2262
    invoke-interface {v6}, LagU;->a()I

    move-result v9

    move/from16 v0, p2

    if-ne v9, v0, :cond_ee

    if-eqz v15, :cond_ee

    move-object/from16 v0, p0

    iget-object v9, v0, LagV;->a:Lagu;

    iget-object v9, v9, Lagu;->a:LafD;

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v15}, LafD;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ee

    .line 2264
    invoke-interface {v6}, LagU;->a()Lahi;

    move-result-object v9

    .line 2265
    invoke-interface {v9}, Lahi;->a()Z

    move-result v7

    if-eqz v7, :cond_95

    .line 2266
    const/4 v7, 0x0

    move-object v8, v9

    .line 2291
    :goto_58
    if-eqz v7, :cond_111

    .line 2292
    new-instance v5, LagP;

    invoke-direct {v5}, LagP;-><init>()V

    .line 2294
    if-nez v6, :cond_f4

    .line 2295
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, LagV;->a(Ljava/lang/Object;ILagU;)LagU;

    move-result-object v4

    .line 2296
    invoke-interface {v4, v5}, LagU;->a(Lahi;)V

    .line 2297
    invoke-virtual {v13, v14, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_71
    .catchall {:try_start_6 .. :try_end_71} :catchall_d1

    move-object/from16 v17, v5

    move-object v5, v4

    move-object/from16 v4, v17

    .line 2303
    :goto_76
    invoke-virtual/range {p0 .. p0}, LagV;->unlock()V

    .line 2304
    invoke-virtual/range {p0 .. p0}, LagV;->m()V

    .line 2307
    if-eqz v7, :cond_108

    .line 2312
    :try_start_7e
    monitor-enter v5
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_fe

    .line 2313
    :try_start_7f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v4, v3}, LagV;->a(Ljava/lang/Object;ILagP;Lagq;)Ljava/lang/Object;

    move-result-object v4

    monitor-exit v5
    :try_end_8c
    .catchall {:try_start_7f .. :try_end_8c} :catchall_fb

    .line 2316
    move-object/from16 v0, p0

    iget-object v5, v0, LagV;->a:Lagi;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lagi;->b(I)V

    .line 2320
    :goto_94
    return-object v4

    .line 2268
    :cond_95
    :try_start_95
    invoke-interface {v9}, Lahi;->get()Ljava/lang/Object;

    move-result-object v7

    .line 2269
    if-nez v7, :cond_b9

    .line 2270
    sget-object v7, Lahw;->c:Lahw;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v15, v1, v9, v7}, LagV;->a(Ljava/lang/Object;ILahi;Lahw;)V

    .line 2283
    :goto_a4
    move-object/from16 v0, p0

    iget-object v7, v0, LagV;->b:Ljava/util/Queue;

    invoke-interface {v7, v6}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2284
    move-object/from16 v0, p0

    iget-object v7, v0, LagV;->c:Ljava/util/Queue;

    invoke-interface {v7, v6}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2285
    move-object/from16 v0, p0

    iput v12, v0, LagV;->a:I

    move v7, v8

    move-object v8, v9

    .line 2287
    goto :goto_58

    .line 2271
    :cond_b9
    move-object/from16 v0, p0

    iget-object v0, v0, LagV;->a:Lagu;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v10, v11}, Lagu;->a(LagU;J)Z

    move-result v16

    if-eqz v16, :cond_d9

    .line 2274
    sget-object v7, Lahw;->d:Lahw;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v15, v1, v9, v7}, LagV;->a(Ljava/lang/Object;ILahi;Lahw;)V
    :try_end_d0
    .catchall {:try_start_95 .. :try_end_d0} :catchall_d1

    goto :goto_a4

    .line 2303
    :catchall_d1
    move-exception v4

    invoke-virtual/range {p0 .. p0}, LagV;->unlock()V

    .line 2304
    invoke-virtual/range {p0 .. p0}, LagV;->m()V

    throw v4

    .line 2276
    :cond_d9
    :try_start_d9
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10, v11}, LagV;->b(LagU;J)V

    .line 2277
    move-object/from16 v0, p0

    iget-object v4, v0, LagV;->a:Lagi;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lagi;->a(I)V
    :try_end_e6
    .catchall {:try_start_d9 .. :try_end_e6} :catchall_d1

    .line 2303
    invoke-virtual/range {p0 .. p0}, LagV;->unlock()V

    .line 2304
    invoke-virtual/range {p0 .. p0}, LagV;->m()V

    move-object v4, v7

    goto :goto_94

    .line 2260
    :cond_ee
    :try_start_ee
    invoke-interface {v6}, LagU;->a()LagU;

    move-result-object v6

    goto/16 :goto_2e

    .line 2299
    :cond_f4
    invoke-interface {v6, v5}, LagU;->a(Lahi;)V
    :try_end_f7
    .catchall {:try_start_ee .. :try_end_f7} :catchall_d1

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_76

    .line 2314
    :catchall_fb
    move-exception v4

    :try_start_fc
    monitor-exit v5
    :try_end_fd
    .catchall {:try_start_fc .. :try_end_fd} :catchall_fb

    :try_start_fd
    throw v4
    :try_end_fe
    .catchall {:try_start_fd .. :try_end_fe} :catchall_fe

    .line 2316
    :catchall_fe
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, LagV;->a:Lagi;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lagi;->b(I)V

    throw v4

    .line 2320
    :cond_108
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v1, v8}, LagV;->a(LagU;Ljava/lang/Object;Lahi;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_94

    :cond_111
    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_76

    :cond_115
    move/from16 v17, v8

    move-object v8, v7

    move/from16 v7, v17

    goto/16 :goto_58
.end method

.method b()V
    .registers 2

    .prologue
    .line 2503
    iget-object v0, p0, LagV;->a:Lagu;

    invoke-virtual {v0}, Lagu;->m()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2504
    invoke-virtual {p0}, LagV;->c()V

    .line 2506
    :cond_b
    iget-object v0, p0, LagV;->a:Lagu;

    invoke-virtual {v0}, Lagu;->n()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2507
    invoke-virtual {p0}, LagV;->d()V

    .line 2509
    :cond_16
    return-void
.end method

.method b(J)V
    .registers 6
    .parameter

    .prologue
    .line 2648
    invoke-virtual {p0}, LagV;->h()V

    .line 2651
    :cond_3
    iget-object v0, p0, LagV;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LagU;

    if-eqz v0, :cond_27

    iget-object v1, p0, LagV;->a:Lagu;

    invoke-virtual {v1, v0, p1, p2}, Lagu;->a(LagU;J)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2652
    invoke-interface {v0}, LagU;->a()I

    move-result v1

    sget-object v2, Lahw;->d:Lahw;

    invoke-virtual {p0, v0, v1, v2}, LagV;->a(LagU;ILahw;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2653
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2656
    :cond_27
    iget-object v0, p0, LagV;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LagU;

    if-eqz v0, :cond_4b

    iget-object v1, p0, LagV;->a:Lagu;

    invoke-virtual {v1, v0, p1, p2}, Lagu;->a(LagU;J)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 2657
    invoke-interface {v0}, LagU;->a()I

    move-result v1

    sget-object v2, Lahw;->d:Lahw;

    invoke-virtual {p0, v0, v1, v2}, LagV;->a(LagU;ILahw;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 2658
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2661
    :cond_4b
    return-void
.end method

.method b(LagU;J)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LagU",
            "<TK;TV;>;J)V"
        }
    .end annotation

    .prologue
    .line 2584
    iget-object v0, p0, LagV;->a:Lagu;

    invoke-virtual {v0}, Lagu;->i()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2585
    invoke-interface {p1, p2, p3}, LagU;->a(J)V

    .line 2587
    :cond_b
    iget-object v0, p0, LagV;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2588
    return-void
.end method

.method c(Ljava/lang/Object;ILagq;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lagq",
            "<-TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2415
    invoke-virtual {p0, p1, p2}, LagV;->a(Ljava/lang/Object;I)LagP;

    move-result-object v1

    .line 2417
    if-nez v1, :cond_8

    .line 2429
    :cond_7
    :goto_7
    return-object v0

    .line 2421
    :cond_8
    invoke-virtual {p0, p1, p2, v1, p3}, LagV;->a(Ljava/lang/Object;ILagP;Lagq;)LalU;

    move-result-object v1

    .line 2422
    invoke-interface {v1}, LalU;->isDone()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2424
    :try_start_12
    invoke-interface {v1}, LalU;->get()Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_15} :catch_17

    move-result-object v0

    goto :goto_7

    .line 2425
    :catch_17
    move-exception v1

    goto :goto_7
.end method

.method c()V
    .registers 4

    .prologue
    .line 2514
    const/4 v0, 0x0

    move v1, v0

    .line 2515
    :goto_2
    iget-object v0, p0, LagV;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2517
    check-cast v0, LagU;

    .line 2518
    iget-object v2, p0, LagV;->a:Lagu;

    invoke-virtual {v2, v0}, Lagu;->a(LagU;)V

    .line 2519
    add-int/lit8 v0, v1, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_18

    .line 2523
    :cond_17
    return-void

    :cond_18
    move v1, v0

    .line 2522
    goto :goto_2
.end method

.method c(J)V
    .registers 3
    .parameter

    .prologue
    .line 3459
    invoke-virtual {p0, p1, p2}, LagV;->d(J)V

    .line 3460
    return-void
.end method

.method d()V
    .registers 4

    .prologue
    .line 2528
    const/4 v0, 0x0

    move v1, v0

    .line 2529
    :goto_2
    iget-object v0, p0, LagV;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2531
    check-cast v0, Lahi;

    .line 2532
    iget-object v2, p0, LagV;->a:Lagu;

    invoke-virtual {v2, v0}, Lagu;->a(Lahi;)V

    .line 2533
    add-int/lit8 v0, v1, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_18

    .line 2537
    :cond_17
    return-void

    :cond_18
    move v1, v0

    .line 2536
    goto :goto_2
.end method

.method d(J)V
    .registers 5
    .parameter

    .prologue
    .line 3476
    invoke-virtual {p0}, LagV;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3478
    :try_start_6
    invoke-virtual {p0}, LagV;->b()V

    .line 3479
    invoke-virtual {p0, p1, p2}, LagV;->b(J)V

    .line 3480
    iget-object v0, p0, LagV;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_16

    .line 3482
    invoke-virtual {p0}, LagV;->unlock()V

    .line 3485
    :cond_15
    return-void

    .line 3482
    :catchall_16
    move-exception v0

    invoke-virtual {p0}, LagV;->unlock()V

    throw v0
.end method

.method e()V
    .registers 2

    .prologue
    .line 2543
    iget-object v0, p0, LagV;->a:Lagu;

    invoke-virtual {v0}, Lagu;->m()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2544
    invoke-virtual {p0}, LagV;->f()V

    .line 2546
    :cond_b
    iget-object v0, p0, LagV;->a:Lagu;

    invoke-virtual {v0}, Lagu;->n()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2547
    invoke-virtual {p0}, LagV;->g()V

    .line 2549
    :cond_16
    return-void
.end method

.method f()V
    .registers 2

    .prologue
    .line 2552
    :cond_0
    iget-object v0, p0, LagV;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2553
    return-void
.end method

.method g()V
    .registers 2

    .prologue
    .line 2556
    :cond_0
    iget-object v0, p0, LagV;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2557
    return-void
.end method

.method h()V
    .registers 3

    .prologue
    .line 2619
    :cond_0
    :goto_0
    iget-object v0, p0, LagV;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LagU;

    if-eqz v0, :cond_18

    .line 2624
    iget-object v1, p0, LagV;->c:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2625
    iget-object v1, p0, LagV;->c:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2628
    :cond_18
    return-void
.end method

.method i()V
    .registers 5

    .prologue
    .line 2690
    iget-object v0, p0, LagV;->a:Lagu;

    invoke-virtual {v0}, Lagu;->a()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2701
    :cond_8
    return-void

    .line 2694
    :cond_9
    invoke-virtual {p0}, LagV;->h()V

    .line 2695
    :cond_c
    iget v0, p0, LagV;->b:I

    int-to-long v0, v0

    iget-wide v2, p0, LagV;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    .line 2696
    invoke-virtual {p0}, LagV;->a()LagU;

    move-result-object v0

    .line 2697
    invoke-interface {v0}, LagU;->a()I

    move-result v1

    sget-object v2, Lahw;->e:Lahw;

    invoke-virtual {p0, v0, v1, v2}, LagV;->a(LagU;ILahw;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2698
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method j()V
    .registers 12

    .prologue
    .line 2927
    iget-object v7, p0, LagV;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2928
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v8

    .line 2929
    const/high16 v0, 0x4000

    if-lt v8, v0, :cond_b

    .line 2992
    :goto_a
    return-void

    .line 2943
    :cond_b
    iget v5, p0, LagV;->a:I

    .line 2944
    shl-int/lit8 v0, v8, 0x1

    invoke-virtual {p0, v0}, LagV;->a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v9

    .line 2945
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, LagV;->d:I

    .line 2946
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .line 2947
    const/4 v0, 0x0

    move v6, v0

    :goto_25
    if-ge v6, v8, :cond_84

    .line 2950
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LagU;

    .line 2952
    if-eqz v0, :cond_8c

    .line 2953
    invoke-interface {v0}, LagU;->a()LagU;

    move-result-object v3

    .line 2954
    invoke-interface {v0}, LagU;->a()I

    move-result v1

    and-int v2, v1, v10

    .line 2957
    if-nez v3, :cond_44

    .line 2958
    invoke-virtual {v9, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v1, v5

    .line 2947
    :cond_3f
    :goto_3f
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v5, v1

    goto :goto_25

    :cond_44
    move-object v4, v0

    .line 2965
    :goto_45
    if-eqz v3, :cond_56

    .line 2966
    invoke-interface {v3}, LagU;->a()I

    move-result v1

    and-int/2addr v1, v10

    .line 2967
    if-eq v1, v2, :cond_89

    move-object v2, v3

    .line 2965
    :goto_4f
    invoke-interface {v3}, LagU;->a()LagU;

    move-result-object v3

    move-object v4, v2

    move v2, v1

    goto :goto_45

    .line 2973
    :cond_56
    invoke-virtual {v9, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v2, v0

    move v1, v5

    .line 2976
    :goto_5b
    if-eq v2, v4, :cond_3f

    .line 2977
    invoke-virtual {p0, v2}, LagV;->a(LagU;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 2978
    invoke-virtual {p0, v2}, LagV;->a(LagU;)V

    .line 2979
    add-int/lit8 v0, v1, -0x1

    .line 2976
    :goto_68
    invoke-interface {v2}, LagU;->a()LagU;

    move-result-object v1

    move-object v2, v1

    move v1, v0

    goto :goto_5b

    .line 2981
    :cond_6f
    invoke-interface {v2}, LagU;->a()I

    move-result v0

    and-int v3, v0, v10

    .line 2982
    invoke-virtual {v9, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LagU;

    .line 2983
    invoke-virtual {p0, v2, v0}, LagV;->a(LagU;LagU;)LagU;

    move-result-object v0

    .line 2984
    invoke-virtual {v9, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v0, v1

    goto :goto_68

    .line 2990
    :cond_84
    iput-object v9, p0, LagV;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2991
    iput v5, p0, LagV;->a:I

    goto :goto_a

    :cond_89
    move v1, v2

    move-object v2, v4

    goto :goto_4f

    :cond_8c
    move v1, v5

    goto :goto_3f
.end method

.method k()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 3236
    iget v0, p0, LagV;->a:I

    if-eqz v0, :cond_61

    .line 3237
    invoke-virtual {p0}, LagV;->lock()V

    .line 3239
    :try_start_8
    iget-object v3, p0, LagV;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move v2, v1

    .line 3240
    :goto_b
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_31

    .line 3241
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LagU;

    :goto_17
    if-eqz v0, :cond_2d

    .line 3243
    invoke-interface {v0}, LagU;->a()Lahi;

    move-result-object v4

    invoke-interface {v4}, Lahi;->b()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 3244
    sget-object v4, Lahw;->a:Lahw;

    invoke-virtual {p0, v0, v4}, LagV;->a(LagU;Lahw;)V

    .line 3241
    :cond_28
    invoke-interface {v0}, LagU;->a()LagU;

    move-result-object v0

    goto :goto_17

    .line 3240
    :cond_2d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b

    :cond_31
    move v0, v1

    .line 3248
    :goto_32
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3f

    .line 3249
    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3248
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 3251
    :cond_3f
    invoke-virtual {p0}, LagV;->e()V

    .line 3252
    iget-object v0, p0, LagV;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 3253
    iget-object v0, p0, LagV;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 3254
    iget-object v0, p0, LagV;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3256
    iget v0, p0, LagV;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LagV;->c:I

    .line 3257
    const/4 v0, 0x0

    iput v0, p0, LagV;->a:I
    :try_end_5b
    .catchall {:try_start_8 .. :try_end_5b} :catchall_62

    .line 3259
    invoke-virtual {p0}, LagV;->unlock()V

    .line 3260
    invoke-virtual {p0}, LagV;->m()V

    .line 3263
    :cond_61
    return-void

    .line 3259
    :catchall_62
    move-exception v0

    invoke-virtual {p0}, LagV;->unlock()V

    .line 3260
    invoke-virtual {p0}, LagV;->m()V

    throw v0
.end method

.method l()V
    .registers 2

    .prologue
    .line 3446
    iget-object v0, p0, LagV;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_d

    .line 3447
    invoke-virtual {p0}, LagV;->n()V

    .line 3449
    :cond_d
    return-void
.end method

.method m()V
    .registers 1

    .prologue
    .line 3466
    invoke-virtual {p0}, LagV;->o()V

    .line 3467
    return-void
.end method

.method n()V
    .registers 3

    .prologue
    .line 3470
    iget-object v0, p0, LagV;->a:Lagu;

    iget-object v0, v0, Lagu;->a:Lage;

    invoke-virtual {v0}, Lage;->a()J

    move-result-wide v0

    .line 3471
    invoke-virtual {p0, v0, v1}, LagV;->d(J)V

    .line 3472
    invoke-virtual {p0}, LagV;->o()V

    .line 3473
    return-void
.end method

.method o()V
    .registers 2

    .prologue
    .line 3489
    invoke-virtual {p0}, LagV;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3490
    iget-object v0, p0, LagV;->a:Lagu;

    invoke-virtual {v0}, Lagu;->a()V

    .line 3492
    :cond_b
    return-void
.end method
