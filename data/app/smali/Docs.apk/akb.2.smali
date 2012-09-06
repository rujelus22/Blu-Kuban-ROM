.class Lakb;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "MapMakerInternalMap.java"


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

.field final a:Lajx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lajx",
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
            "Laka",
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
            "Laka",
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
            "Laka",
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
            "Laka",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final d:I


# direct methods
.method constructor <init>(Lajx;II)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lajx",
            "<TK;TV;>;II)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2140
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 2124
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lakb;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2141
    iput-object p1, p0, Lakb;->a:Lajx;

    .line 2142
    iput p3, p0, Lakb;->d:I

    .line 2143
    invoke-virtual {p0, p2}, Lakb;->a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lakb;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 2145
    invoke-virtual {p1}, Lajx;->e()Z

    move-result v0

    if-eqz v0, :cond_5e

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :goto_21
    iput-object v0, p0, Lakb;->a:Ljava/lang/ref/ReferenceQueue;

    .line 2148
    invoke-virtual {p1}, Lajx;->f()Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :cond_2e
    iput-object v1, p0, Lakb;->b:Ljava/lang/ref/ReferenceQueue;

    .line 2151
    invoke-virtual {p1}, Lajx;->a()Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-virtual {p1}, Lajx;->d()Z

    move-result v0

    if-eqz v0, :cond_60

    :cond_3c
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :goto_41
    iput-object v0, p0, Lakb;->a:Ljava/util/Queue;

    .line 2155
    invoke-virtual {p1}, Lajx;->a()Z

    move-result v0

    if-eqz v0, :cond_65

    new-instance v0, LajQ;

    invoke-direct {v0}, LajQ;-><init>()V

    :goto_4e
    iput-object v0, p0, Lakb;->b:Ljava/util/Queue;

    .line 2159
    invoke-virtual {p1}, Lajx;->b()Z

    move-result v0

    if-eqz v0, :cond_6a

    new-instance v0, LajT;

    invoke-direct {v0}, LajT;-><init>()V

    :goto_5b
    iput-object v0, p0, Lakb;->c:Ljava/util/Queue;

    .line 2162
    return-void

    :cond_5e
    move-object v0, v1

    .line 2145
    goto :goto_21

    .line 2151
    :cond_60
    invoke-static {}, Lajx;->a()Ljava/util/Queue;

    move-result-object v0

    goto :goto_41

    .line 2155
    :cond_65
    invoke-static {}, Lajx;->a()Ljava/util/Queue;

    move-result-object v0

    goto :goto_4e

    .line 2159
    :cond_6a
    invoke-static {}, Lajx;->a()Ljava/util/Queue;

    move-result-object v0

    goto :goto_5b
.end method


# virtual methods
.method a(I)Laka;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2429
    iget-object v0, p0, Lakb;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2430
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laka;

    return-object v0
.end method

.method a(Laka;Laka;)Laka;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laka",
            "<TK;TV;>;",
            "Laka",
            "<TK;TV;>;)",
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2184
    invoke-interface {p1}, Laka;->a()Lakr;

    move-result-object v0

    .line 2185
    iget-object v1, p0, Lakb;->a:Lajx;

    iget-object v1, v1, Lajx;->a:LajB;

    invoke-virtual {v1, p0, p1, p2}, LajB;->a(Lakb;Laka;Laka;)Laka;

    move-result-object v1

    .line 2186
    iget-object v2, p0, Lakb;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {v0, v2, v1}, Lakr;->a(Ljava/lang/ref/ReferenceQueue;Laka;)Lakr;

    move-result-object v0

    invoke-interface {v1, v0}, Laka;->a(Lakr;)V

    .line 2187
    return-object v1
.end method

.method a(Ljava/lang/Object;I)Laka;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2436
    iget v0, p0, Lakb;->a:I

    if-eqz v0, :cond_2a

    .line 2437
    invoke-virtual {p0, p2}, Lakb;->a(I)Laka;

    move-result-object v0

    :goto_8
    if-eqz v0, :cond_2a

    .line 2438
    invoke-interface {v0}, Laka;->a()I

    move-result v1

    if-eq v1, p2, :cond_15

    .line 2437
    :cond_10
    :goto_10
    invoke-interface {v0}, Laka;->a()Laka;

    move-result-object v0

    goto :goto_8

    .line 2442
    :cond_15
    invoke-interface {v0}, Laka;->a()Ljava/lang/Object;

    move-result-object v1

    .line 2443
    if-nez v1, :cond_1f

    .line 2444
    invoke-virtual {p0}, Lakb;->a()V

    goto :goto_10

    .line 2448
    :cond_1f
    iget-object v2, p0, Lakb;->a:Lajx;

    iget-object v2, v2, Lajx;->a:LafD;

    invoke-virtual {v2, p1, v1}, LafD;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2454
    :goto_29
    return-object v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method a(Ljava/lang/Object;ILaka;)Laka;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Laka",
            "<TK;TV;>;)",
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2179
    iget-object v0, p0, Lakb;->a:Lajx;

    iget-object v0, v0, Lajx;->a:LajB;

    invoke-virtual {v0, p0, p1, p2, p3}, LajB;->a(Lakb;Ljava/lang/Object;ILaka;)Laka;

    move-result-object v0

    return-object v0
.end method

.method a(Laka;)Ljava/lang/Object;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laka",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3071
    invoke-interface {p1}, Laka;->a()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_b

    .line 3072
    invoke-virtual {p0}, Lakb;->a()V

    .line 3085
    :goto_a
    return-object v0

    .line 3075
    :cond_b
    invoke-interface {p1}, Laka;->a()Lakr;

    move-result-object v1

    invoke-interface {v1}, Lakr;->get()Ljava/lang/Object;

    move-result-object v1

    .line 3076
    if-nez v1, :cond_19

    .line 3077
    invoke-virtual {p0}, Lakb;->a()V

    goto :goto_a

    .line 3081
    :cond_19
    iget-object v2, p0, Lakb;->a:Lajx;

    invoke-virtual {v2}, Lajx;->b()Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lakb;->a:Lajx;

    invoke-virtual {v2, p1}, Lajx;->a(Laka;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 3082
    invoke-virtual {p0}, Lakb;->i()V

    goto :goto_a

    :cond_2d
    move-object v0, v1

    .line 3085
    goto :goto_a
.end method

.method a(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 5
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
    .line 2470
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lakb;->b(Ljava/lang/Object;I)Laka;
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_20

    move-result-object v1

    .line 2471
    if-nez v1, :cond_b

    .line 2472
    const/4 v0, 0x0

    .line 2483
    invoke-virtual {p0}, Lakb;->m()V

    :goto_a
    return-object v0

    .line 2475
    :cond_b
    :try_start_b
    invoke-interface {v1}, Laka;->a()Lakr;

    move-result-object v0

    invoke-interface {v0}, Lakr;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2476
    if-eqz v0, :cond_1c

    .line 2477
    invoke-virtual {p0, v1}, Lakb;->a(Laka;)V
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_20

    .line 2483
    :goto_18
    invoke-virtual {p0}, Lakb;->m()V

    goto :goto_a

    .line 2479
    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, Lakb;->a()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_18

    .line 2483
    :catchall_20
    move-exception v0

    invoke-virtual {p0}, Lakb;->m()V

    throw v0
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2724
    invoke-virtual {p0}, Lakb;->lock()V

    .line 2726
    :try_start_4
    invoke-virtual {p0}, Lakb;->n()V

    .line 2728
    iget-object v4, p0, Lakb;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2729
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 2730
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laka;

    move-object v3, v0

    .line 2732
    :goto_18
    if-eqz v3, :cond_80

    .line 2733
    invoke-interface {v3}, Laka;->a()Ljava/lang/Object;

    move-result-object v6

    .line 2734
    invoke-interface {v3}, Laka;->a()I

    move-result v2

    if-ne v2, p2, :cond_7a

    if-eqz v6, :cond_7a

    iget-object v2, p0, Lakb;->a:Lajx;

    iget-object v2, v2, Lajx;->a:LafD;

    invoke-virtual {v2, p1, v6}, LafD;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 2738
    invoke-interface {v3}, Laka;->a()Lakr;

    move-result-object v7

    .line 2739
    invoke-interface {v7}, Lakr;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2740
    if-nez v2, :cond_64

    .line 2741
    invoke-virtual {p0, v7}, Lakb;->a(Lakr;)Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 2742
    iget v7, p0, Lakb;->a:I

    add-int/lit8 v7, v7, -0x1

    .line 2743
    iget v7, p0, Lakb;->b:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lakb;->b:I

    .line 2744
    sget-object v7, Lajp;->c:Lajp;

    invoke-virtual {p0, v6, p2, v2, v7}, Lakb;->a(Ljava/lang/Object;ILjava/lang/Object;Lajp;)V

    .line 2745
    invoke-virtual {p0, v0, v3}, Lakb;->b(Laka;Laka;)Laka;

    move-result-object v0

    .line 2746
    iget v2, p0, Lakb;->a:I

    add-int/lit8 v2, v2, -0x1

    .line 2747
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2748
    iput v2, p0, Lakb;->a:I
    :try_end_5c
    .catchall {:try_start_4 .. :try_end_5c} :catchall_88

    .line 2762
    :cond_5c
    invoke-virtual {p0}, Lakb;->unlock()V

    .line 2763
    invoke-virtual {p0}, Lakb;->o()V

    move-object v0, v1

    :goto_63
    return-object v0

    .line 2753
    :cond_64
    :try_start_64
    iget v0, p0, Lakb;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lakb;->b:I

    .line 2754
    sget-object v0, Lajp;->b:Lajp;

    invoke-virtual {p0, p1, p2, v2, v0}, Lakb;->a(Ljava/lang/Object;ILjava/lang/Object;Lajp;)V

    .line 2755
    invoke-virtual {p0, v3, p3}, Lakb;->a(Laka;Ljava/lang/Object;)V
    :try_end_72
    .catchall {:try_start_64 .. :try_end_72} :catchall_88

    .line 2762
    invoke-virtual {p0}, Lakb;->unlock()V

    .line 2763
    invoke-virtual {p0}, Lakb;->o()V

    move-object v0, v2

    goto :goto_63

    .line 2732
    :cond_7a
    :try_start_7a
    invoke-interface {v3}, Laka;->a()Laka;
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_88

    move-result-object v2

    move-object v3, v2

    goto :goto_18

    .line 2762
    :cond_80
    invoke-virtual {p0}, Lakb;->unlock()V

    .line 2763
    invoke-virtual {p0}, Lakb;->o()V

    move-object v0, v1

    goto :goto_63

    .line 2762
    :catchall_88
    move-exception v0

    invoke-virtual {p0}, Lakb;->unlock()V

    .line 2763
    invoke-virtual {p0}, Lakb;->o()V

    throw v0
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .registers 13
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
    const/4 v1, 0x0

    .line 2533
    invoke-virtual {p0}, Lakb;->lock()V

    .line 2535
    :try_start_4
    invoke-virtual {p0}, Lakb;->n()V

    .line 2537
    iget v0, p0, Lakb;->a:I

    add-int/lit8 v2, v0, 0x1

    .line 2538
    iget v0, p0, Lakb;->c:I

    if-le v2, v0, :cond_16

    .line 2539
    invoke-virtual {p0}, Lakb;->k()V

    .line 2540
    iget v0, p0, Lakb;->a:I

    add-int/lit8 v2, v0, 0x1

    .line 2543
    :cond_16
    iget-object v4, p0, Lakb;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2544
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 2545
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laka;

    move-object v3, v0

    .line 2548
    :goto_27
    if-eqz v3, :cond_9a

    .line 2549
    invoke-interface {v3}, Laka;->a()Ljava/lang/Object;

    move-result-object v6

    .line 2550
    invoke-interface {v3}, Laka;->a()I

    move-result v7

    if-ne v7, p2, :cond_95

    if-eqz v6, :cond_95

    iget-object v7, p0, Lakb;->a:Lajx;

    iget-object v7, v7, Lajx;->a:LafD;

    invoke-virtual {v7, p1, v6}, LafD;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_95

    .line 2554
    invoke-interface {v3}, Laka;->a()Lakr;

    move-result-object v4

    .line 2555
    invoke-interface {v4}, Lakr;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2557
    if-nez v0, :cond_74

    .line 2558
    iget v5, p0, Lakb;->b:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lakb;->b:I

    .line 2559
    invoke-virtual {p0, v3, p3}, Lakb;->a(Laka;Ljava/lang/Object;)V

    .line 2560
    invoke-interface {v4}, Lakr;->a()Z

    move-result v3

    if-nez v3, :cond_69

    .line 2561
    sget-object v2, Lajp;->c:Lajp;

    invoke-virtual {p0, p1, p2, v0, v2}, Lakb;->a(Ljava/lang/Object;ILjava/lang/Object;Lajp;)V

    .line 2562
    iget v2, p0, Lakb;->a:I

    .line 2566
    :cond_5f
    :goto_5f
    iput v2, p0, Lakb;->a:I
    :try_end_61
    .catchall {:try_start_4 .. :try_end_61} :catchall_be

    .line 2595
    invoke-virtual {p0}, Lakb;->unlock()V

    .line 2596
    invoke-virtual {p0}, Lakb;->o()V

    move-object v0, v1

    :goto_68
    return-object v0

    .line 2563
    :cond_69
    :try_start_69
    invoke-virtual {p0}, Lakb;->a()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 2564
    iget v0, p0, Lakb;->a:I

    add-int/lit8 v2, v0, 0x1

    goto :goto_5f

    .line 2568
    :cond_74
    if-eqz p4, :cond_80

    .line 2572
    invoke-virtual {p0, v3}, Lakb;->b(Laka;)V
    :try_end_79
    .catchall {:try_start_69 .. :try_end_79} :catchall_be

    .line 2595
    invoke-virtual {p0}, Lakb;->unlock()V

    .line 2596
    invoke-virtual {p0}, Lakb;->o()V

    goto :goto_68

    .line 2576
    :cond_80
    :try_start_80
    iget v1, p0, Lakb;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lakb;->b:I

    .line 2577
    sget-object v1, Lajp;->b:Lajp;

    invoke-virtual {p0, p1, p2, v0, v1}, Lakb;->a(Ljava/lang/Object;ILjava/lang/Object;Lajp;)V

    .line 2578
    invoke-virtual {p0, v3, p3}, Lakb;->a(Laka;Ljava/lang/Object;)V
    :try_end_8e
    .catchall {:try_start_80 .. :try_end_8e} :catchall_be

    .line 2595
    invoke-virtual {p0}, Lakb;->unlock()V

    .line 2596
    invoke-virtual {p0}, Lakb;->o()V

    goto :goto_68

    .line 2548
    :cond_95
    :try_start_95
    invoke-interface {v3}, Laka;->a()Laka;

    move-result-object v3

    goto :goto_27

    .line 2585
    :cond_9a
    iget v3, p0, Lakb;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lakb;->b:I

    .line 2586
    invoke-virtual {p0, p1, p2, v0}, Lakb;->a(Ljava/lang/Object;ILaka;)Laka;

    move-result-object v0

    .line 2587
    invoke-virtual {p0, v0, p3}, Lakb;->a(Laka;Ljava/lang/Object;)V

    .line 2588
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2589
    invoke-virtual {p0}, Lakb;->a()Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 2590
    iget v0, p0, Lakb;->a:I

    add-int/lit8 v0, v0, 0x1

    .line 2592
    :goto_b4
    iput v0, p0, Lakb;->a:I
    :try_end_b6
    .catchall {:try_start_95 .. :try_end_b6} :catchall_be

    .line 2595
    invoke-virtual {p0}, Lakb;->unlock()V

    .line 2596
    invoke-virtual {p0}, Lakb;->o()V

    move-object v0, v1

    goto :goto_68

    .line 2595
    :catchall_be
    move-exception v0

    invoke-virtual {p0}, Lakb;->unlock()V

    .line 2596
    invoke-virtual {p0}, Lakb;->o()V

    throw v0

    :cond_c6
    move v0, v2

    goto :goto_b4
.end method

.method a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Laka",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2165
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method a()V
    .registers 2

    .prologue
    .line 2206
    invoke-virtual {p0}, Lakb;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2208
    :try_start_6
    invoke-virtual {p0}, Lakb;->b()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_d

    .line 2210
    invoke-virtual {p0}, Lakb;->unlock()V

    .line 2213
    :cond_c
    return-void

    .line 2210
    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Lakb;->unlock()V

    throw v0
.end method

.method a(Laka;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laka",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2287
    iget-object v0, p0, Lakb;->a:Lajx;

    invoke-virtual {v0}, Lajx;->d()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2288
    iget-object v0, p0, Lakb;->a:Lajx;

    iget-wide v0, v0, Lajx;->a:J

    invoke-virtual {p0, p1, v0, v1}, Lakb;->a(Laka;J)V

    .line 2290
    :cond_f
    iget-object v0, p0, Lakb;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2291
    return-void
.end method

.method a(Laka;J)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laka",
            "<TK;TV;>;J)V"
        }
    .end annotation

    .prologue
    .line 2356
    iget-object v0, p0, Lakb;->a:Lajx;

    iget-object v0, v0, Lajx;->a:Lage;

    invoke-virtual {v0}, Lage;->a()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-interface {p1, v0, v1}, Laka;->a(J)V

    .line 2357
    return-void
.end method

.method a(Laka;Lajp;)V
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laka",
            "<TK;TV;>;",
            "Lajp;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2394
    invoke-interface {p1}, Laka;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Laka;->a()I

    move-result v1

    invoke-interface {p1}, Laka;->a()Lakr;

    move-result-object v2

    invoke-interface {v2}, Lakr;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lakb;->a(Ljava/lang/Object;ILjava/lang/Object;Lajp;)V

    .line 2395
    return-void
.end method

.method a(Laka;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laka",
            "<TK;TV;>;TV;)V"
        }
    .end annotation

    .prologue
    .line 2195
    iget-object v0, p0, Lakb;->a:Lajx;

    iget-object v0, v0, Lajx;->b:Lakh;

    invoke-virtual {v0, p0, p1, p2}, Lakh;->a(Lakb;Laka;Ljava/lang/Object;)Lakr;

    move-result-object v0

    .line 2196
    invoke-interface {p1, v0}, Laka;->a(Lakr;)V

    .line 2197
    invoke-virtual {p0, p1}, Lakb;->c(Laka;)V

    .line 2198
    return-void
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;Lajp;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;",
            "Lajp;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2398
    iget-object v0, p0, Lakb;->a:Lajx;

    iget-object v0, v0, Lajx;->a:Ljava/util/Queue;

    sget-object v1, Lajx;->b:Ljava/util/Queue;

    if-eq v0, v1, :cond_14

    .line 2399
    new-instance v0, Lajw;

    invoke-direct {v0, p1, p3, p4}, Lajw;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lajp;)V

    .line 2400
    iget-object v1, p0, Lakb;->a:Lajx;

    iget-object v1, v1, Lajx;->a:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2402
    :cond_14
    return-void
.end method

.method a(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Laka",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 2169
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lakb;->c:I

    .line 2170
    iget v0, p0, Lakb;->c:I

    iget v1, p0, Lakb;->d:I

    if-ne v0, v1, :cond_16

    .line 2172
    iget v0, p0, Lakb;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lakb;->c:I

    .line 2174
    :cond_16
    iput-object p1, p0, Lakb;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2175
    return-void
.end method

.method a()Z
    .registers 4

    .prologue
    .line 2412
    iget-object v0, p0, Lakb;->a:Lajx;

    invoke-virtual {v0}, Lajx;->a()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget v0, p0, Lakb;->a:I

    iget v1, p0, Lakb;->d:I

    if-lt v0, v1, :cond_2d

    .line 2413
    invoke-virtual {p0}, Lakb;->h()V

    .line 2415
    iget-object v0, p0, Lakb;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laka;

    .line 2416
    invoke-interface {v0}, Laka;->a()I

    move-result v1

    sget-object v2, Lajp;->e:Lajp;

    invoke-virtual {p0, v0, v1, v2}, Lakb;->a(Laka;ILajp;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 2417
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2419
    :cond_2b
    const/4 v0, 0x1

    .line 2421
    :goto_2c
    return v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method a(Laka;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laka",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 3049
    invoke-interface {p1}, Laka;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    .line 3050
    const/4 v0, 0x1

    .line 3052
    :goto_7
    return v0

    :cond_8
    invoke-interface {p1}, Laka;->a()Lakr;

    move-result-object v0

    invoke-virtual {p0, v0}, Lakb;->a(Lakr;)Z

    move-result v0

    goto :goto_7
.end method

.method a(Laka;I)Z
    .registers 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laka",
            "<TK;TV;>;I)Z"
        }
    .end annotation

    .prologue
    .line 2926
    invoke-virtual {p0}, Lakb;->lock()V

    .line 2928
    :try_start_3
    iget v0, p0, Lakb;->a:I

    add-int/lit8 v0, v0, -0x1

    .line 2929
    iget-object v2, p0, Lakb;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2930
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v3, p2, v0

    .line 2931
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laka;

    move-object v1, v0

    .line 2933
    :goto_18
    if-eqz v1, :cond_4d

    .line 2934
    if-ne v1, p1, :cond_48

    .line 2935
    iget v4, p0, Lakb;->b:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lakb;->b:I

    .line 2936
    invoke-interface {v1}, Laka;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Laka;->a()Lakr;

    move-result-object v5

    invoke-interface {v5}, Lakr;->get()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lajp;->c:Lajp;

    invoke-virtual {p0, v4, p2, v5, v6}, Lakb;->a(Ljava/lang/Object;ILjava/lang/Object;Lajp;)V

    .line 2938
    invoke-virtual {p0, v0, v1}, Lakb;->b(Laka;Laka;)Laka;

    move-result-object v0

    .line 2939
    iget v1, p0, Lakb;->a:I

    add-int/lit8 v1, v1, -0x1

    .line 2940
    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2941
    iput v1, p0, Lakb;->a:I
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_55

    .line 2942
    const/4 v0, 0x1

    .line 2948
    invoke-virtual {p0}, Lakb;->unlock()V

    .line 2949
    invoke-virtual {p0}, Lakb;->o()V

    :goto_47
    return v0

    .line 2933
    :cond_48
    :try_start_48
    invoke-interface {v1}, Laka;->a()Laka;
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_55

    move-result-object v1

    goto :goto_18

    .line 2946
    :cond_4d
    const/4 v0, 0x0

    .line 2948
    invoke-virtual {p0}, Lakb;->unlock()V

    .line 2949
    invoke-virtual {p0}, Lakb;->o()V

    goto :goto_47

    .line 2948
    :catchall_55
    move-exception v0

    invoke-virtual {p0}, Lakb;->unlock()V

    .line 2949
    invoke-virtual {p0}, Lakb;->o()V

    throw v0
.end method

.method a(Laka;ILajp;)Z
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laka",
            "<TK;TV;>;I",
            "Lajp;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 3024
    iget v0, p0, Lakb;->a:I

    add-int/lit8 v0, v0, -0x1

    .line 3025
    iget-object v2, p0, Lakb;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3026
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v3, p2, v0

    .line 3027
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laka;

    move-object v1, v0

    .line 3029
    :goto_15
    if-eqz v1, :cond_42

    .line 3030
    if-ne v1, p1, :cond_3d

    .line 3031
    iget v4, p0, Lakb;->b:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lakb;->b:I

    .line 3032
    invoke-interface {v1}, Laka;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Laka;->a()Lakr;

    move-result-object v5

    invoke-interface {v5}, Lakr;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, p2, v5, p3}, Lakb;->a(Ljava/lang/Object;ILjava/lang/Object;Lajp;)V

    .line 3033
    invoke-virtual {p0, v0, v1}, Lakb;->b(Laka;Laka;)Laka;

    move-result-object v0

    .line 3034
    iget v1, p0, Lakb;->a:I

    add-int/lit8 v1, v1, -0x1

    .line 3035
    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3036
    iput v1, p0, Lakb;->a:I

    .line 3037
    const/4 v0, 0x1

    .line 3041
    :goto_3c
    return v0

    .line 3029
    :cond_3d
    invoke-interface {v1}, Laka;->a()Laka;

    move-result-object v1

    goto :goto_15

    .line 3041
    :cond_42
    const/4 v0, 0x0

    goto :goto_3c
.end method

.method a(Lakr;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakr",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3060
    invoke-interface {p1}, Lakr;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3063
    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-interface {p1}, Lakr;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method a(Ljava/lang/Object;I)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2489
    :try_start_1
    iget v1, p0, Lakb;->a:I

    if-eqz v1, :cond_1e

    .line 2490
    invoke-virtual {p0, p1, p2}, Lakb;->b(Ljava/lang/Object;I)Laka;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_22

    move-result-object v1

    .line 2491
    if-nez v1, :cond_f

    .line 2499
    invoke-virtual {p0}, Lakb;->m()V

    :goto_e
    return v0

    .line 2494
    :cond_f
    :try_start_f
    invoke-interface {v1}, Laka;->a()Lakr;

    move-result-object v1

    invoke-interface {v1}, Lakr;->get()Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_22

    move-result-object v1

    if-eqz v1, :cond_1a

    const/4 v0, 0x1

    .line 2499
    :cond_1a
    invoke-virtual {p0}, Lakb;->m()V

    goto :goto_e

    :cond_1e
    invoke-virtual {p0}, Lakb;->m()V

    goto :goto_e

    :catchall_22
    move-exception v0

    invoke-virtual {p0}, Lakb;->m()V

    throw v0
.end method

.method a(Ljava/lang/Object;ILakr;)Z
    .registers 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lakr",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2957
    invoke-virtual {p0}, Lakb;->lock()V

    .line 2959
    :try_start_4
    iget v0, p0, Lakb;->a:I

    add-int/lit8 v0, v0, -0x1

    .line 2960
    iget-object v3, p0, Lakb;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2961
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 2962
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laka;

    move-object v2, v0

    .line 2964
    :goto_19
    if-eqz v2, :cond_74

    .line 2965
    invoke-interface {v2}, Laka;->a()Ljava/lang/Object;

    move-result-object v5

    .line 2966
    invoke-interface {v2}, Laka;->a()I

    move-result v6

    if-ne v6, p2, :cond_6f

    if-eqz v5, :cond_6f

    iget-object v6, p0, Lakb;->a:Lajx;

    iget-object v6, v6, Lajx;->a:LafD;

    invoke-virtual {v6, p1, v5}, LafD;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 2968
    invoke-interface {v2}, Laka;->a()Lakr;

    move-result-object v5

    .line 2969
    if-ne v5, p3, :cond_61

    .line 2970
    iget v1, p0, Lakb;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lakb;->b:I

    .line 2971
    invoke-interface {p3}, Lakr;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v5, Lajp;->c:Lajp;

    invoke-virtual {p0, p1, p2, v1, v5}, Lakb;->a(Ljava/lang/Object;ILjava/lang/Object;Lajp;)V

    .line 2972
    invoke-virtual {p0, v0, v2}, Lakb;->b(Laka;Laka;)Laka;

    move-result-object v0

    .line 2973
    iget v1, p0, Lakb;->a:I

    add-int/lit8 v1, v1, -0x1

    .line 2974
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2975
    iput v1, p0, Lakb;->a:I
    :try_end_53
    .catchall {:try_start_4 .. :try_end_53} :catchall_82

    .line 2976
    const/4 v0, 0x1

    .line 2984
    invoke-virtual {p0}, Lakb;->unlock()V

    .line 2985
    invoke-virtual {p0}, Lakb;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_60

    .line 2986
    invoke-virtual {p0}, Lakb;->o()V

    :cond_60
    :goto_60
    return v0

    .line 2984
    :cond_61
    invoke-virtual {p0}, Lakb;->unlock()V

    .line 2985
    invoke-virtual {p0}, Lakb;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 2986
    invoke-virtual {p0}, Lakb;->o()V

    :cond_6d
    move v0, v1

    goto :goto_60

    .line 2964
    :cond_6f
    :try_start_6f
    invoke-interface {v2}, Laka;->a()Laka;
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_82

    move-result-object v2

    goto :goto_19

    .line 2984
    :cond_74
    invoke-virtual {p0}, Lakb;->unlock()V

    .line 2985
    invoke-virtual {p0}, Lakb;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_80

    .line 2986
    invoke-virtual {p0}, Lakb;->o()V

    :cond_80
    move v0, v1

    goto :goto_60

    .line 2984
    :catchall_82
    move-exception v0

    invoke-virtual {p0}, Lakb;->unlock()V

    .line 2985
    invoke-virtual {p0}, Lakb;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_8f

    .line 2986
    invoke-virtual {p0}, Lakb;->o()V

    :cond_8f
    throw v0
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;)Z
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2811
    invoke-virtual {p0}, Lakb;->lock()V

    .line 2813
    :try_start_4
    invoke-virtual {p0}, Lakb;->n()V

    .line 2815
    iget v0, p0, Lakb;->a:I

    add-int/lit8 v0, v0, -0x1

    .line 2816
    iget-object v4, p0, Lakb;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2817
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 2818
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laka;

    move-object v3, v0

    .line 2820
    :goto_1c
    if-eqz v3, :cond_83

    .line 2821
    invoke-interface {v3}, Laka;->a()Ljava/lang/Object;

    move-result-object v6

    .line 2822
    invoke-interface {v3}, Laka;->a()I

    move-result v2

    if-ne v2, p2, :cond_7d

    if-eqz v6, :cond_7d

    iget-object v2, p0, Lakb;->a:Lajx;

    iget-object v2, v2, Lajx;->a:LafD;

    invoke-virtual {v2, p1, v6}, LafD;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 2824
    invoke-interface {v3}, Laka;->a()Lakr;

    move-result-object v2

    .line 2825
    invoke-interface {v2}, Lakr;->get()Ljava/lang/Object;

    move-result-object v7

    .line 2828
    iget-object v8, p0, Lakb;->a:Lajx;

    iget-object v8, v8, Lajx;->b:LafD;

    invoke-virtual {v8, p3, v7}, LafD;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6b

    .line 2829
    sget-object v2, Lajp;->a:Lajp;

    .line 2836
    :goto_48
    iget v8, p0, Lakb;->b:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lakb;->b:I

    .line 2837
    invoke-virtual {p0, v6, p2, v7, v2}, Lakb;->a(Ljava/lang/Object;ILjava/lang/Object;Lajp;)V

    .line 2838
    invoke-virtual {p0, v0, v3}, Lakb;->b(Laka;Laka;)Laka;

    move-result-object v0

    .line 2839
    iget v3, p0, Lakb;->a:I

    add-int/lit8 v3, v3, -0x1

    .line 2840
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2841
    iput v3, p0, Lakb;->a:I

    .line 2842
    sget-object v0, Lajp;->a:Lajp;
    :try_end_60
    .catchall {:try_start_4 .. :try_end_60} :catchall_8a

    if-ne v2, v0, :cond_7b

    const/4 v0, 0x1

    .line 2848
    :goto_63
    invoke-virtual {p0}, Lakb;->unlock()V

    .line 2849
    invoke-virtual {p0}, Lakb;->o()V

    move v1, v0

    :goto_6a
    return v1

    .line 2830
    :cond_6b
    :try_start_6b
    invoke-virtual {p0, v2}, Lakb;->a(Lakr;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 2831
    sget-object v2, Lajp;->c:Lajp;
    :try_end_73
    .catchall {:try_start_6b .. :try_end_73} :catchall_8a

    goto :goto_48

    .line 2848
    :cond_74
    invoke-virtual {p0}, Lakb;->unlock()V

    .line 2849
    invoke-virtual {p0}, Lakb;->o()V

    goto :goto_6a

    :cond_7b
    move v0, v1

    .line 2842
    goto :goto_63

    .line 2820
    :cond_7d
    :try_start_7d
    invoke-interface {v3}, Laka;->a()Laka;
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_8a

    move-result-object v2

    move-object v3, v2

    goto :goto_1c

    .line 2848
    :cond_83
    invoke-virtual {p0}, Lakb;->unlock()V

    .line 2849
    invoke-virtual {p0}, Lakb;->o()V

    goto :goto_6a

    .line 2848
    :catchall_8a
    move-exception v0

    invoke-virtual {p0}, Lakb;->unlock()V

    .line 2849
    invoke-virtual {p0}, Lakb;->o()V

    throw v0
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 13
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
    const/4 v1, 0x0

    .line 2673
    invoke-virtual {p0}, Lakb;->lock()V

    .line 2675
    :try_start_4
    invoke-virtual {p0}, Lakb;->n()V

    .line 2677
    iget-object v3, p0, Lakb;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2678
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 2679
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laka;

    move-object v2, v0

    .line 2681
    :goto_18
    if-eqz v2, :cond_94

    .line 2682
    invoke-interface {v2}, Laka;->a()Ljava/lang/Object;

    move-result-object v5

    .line 2683
    invoke-interface {v2}, Laka;->a()I

    move-result v6

    if-ne v6, p2, :cond_8f

    if-eqz v5, :cond_8f

    iget-object v6, p0, Lakb;->a:Lajx;

    iget-object v6, v6, Lajx;->a:LafD;

    invoke-virtual {v6, p1, v5}, LafD;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8f

    .line 2687
    invoke-interface {v2}, Laka;->a()Lakr;

    move-result-object v6

    .line 2688
    invoke-interface {v6}, Lakr;->get()Ljava/lang/Object;

    move-result-object v7

    .line 2689
    if-nez v7, :cond_64

    .line 2690
    invoke-virtual {p0, v6}, Lakb;->a(Lakr;)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 2691
    iget v6, p0, Lakb;->a:I

    add-int/lit8 v6, v6, -0x1

    .line 2692
    iget v6, p0, Lakb;->b:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lakb;->b:I

    .line 2693
    sget-object v6, Lajp;->c:Lajp;

    invoke-virtual {p0, v5, p2, v7, v6}, Lakb;->a(Ljava/lang/Object;ILjava/lang/Object;Lajp;)V

    .line 2694
    invoke-virtual {p0, v0, v2}, Lakb;->b(Laka;Laka;)Laka;

    move-result-object v0

    .line 2695
    iget v2, p0, Lakb;->a:I

    add-int/lit8 v2, v2, -0x1

    .line 2696
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2697
    iput v2, p0, Lakb;->a:I
    :try_end_5c
    .catchall {:try_start_4 .. :try_end_5c} :catchall_9c

    .line 2718
    :cond_5c
    invoke-virtual {p0}, Lakb;->unlock()V

    .line 2719
    invoke-virtual {p0}, Lakb;->o()V

    move v0, v1

    :goto_63
    return v0

    .line 2702
    :cond_64
    :try_start_64
    iget-object v0, p0, Lakb;->a:Lajx;

    iget-object v0, v0, Lajx;->b:LafD;

    invoke-virtual {v0, p3, v7}, LafD;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 2703
    iget v0, p0, Lakb;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lakb;->b:I

    .line 2704
    sget-object v0, Lajp;->b:Lajp;

    invoke-virtual {p0, p1, p2, v7, v0}, Lakb;->a(Ljava/lang/Object;ILjava/lang/Object;Lajp;)V

    .line 2705
    invoke-virtual {p0, v2, p4}, Lakb;->a(Laka;Ljava/lang/Object;)V
    :try_end_7c
    .catchall {:try_start_64 .. :try_end_7c} :catchall_9c

    .line 2706
    const/4 v0, 0x1

    .line 2718
    invoke-virtual {p0}, Lakb;->unlock()V

    .line 2719
    invoke-virtual {p0}, Lakb;->o()V

    goto :goto_63

    .line 2710
    :cond_84
    :try_start_84
    invoke-virtual {p0, v2}, Lakb;->b(Laka;)V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_9c

    .line 2718
    invoke-virtual {p0}, Lakb;->unlock()V

    .line 2719
    invoke-virtual {p0}, Lakb;->o()V

    move v0, v1

    goto :goto_63

    .line 2681
    :cond_8f
    :try_start_8f
    invoke-interface {v2}, Laka;->a()Laka;
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_9c

    move-result-object v2

    goto :goto_18

    .line 2718
    :cond_94
    invoke-virtual {p0}, Lakb;->unlock()V

    .line 2719
    invoke-virtual {p0}, Lakb;->o()V

    move v0, v1

    goto :goto_63

    .line 2718
    :catchall_9c
    move-exception v0

    invoke-virtual {p0}, Lakb;->unlock()V

    .line 2719
    invoke-virtual {p0}, Lakb;->o()V

    throw v0
.end method

.method b(Laka;Laka;)Laka;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laka",
            "<TK;TV;>;",
            "Laka",
            "<TK;TV;>;)",
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2899
    iget-object v0, p0, Lakb;->b:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2900
    iget-object v0, p0, Lakb;->c:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2902
    iget v1, p0, Lakb;->a:I

    .line 2903
    invoke-interface {p2}, Laka;->a()Laka;

    move-result-object v0

    .line 2904
    :goto_10
    if-eq p1, p2, :cond_27

    .line 2905
    invoke-virtual {p0, p1}, Lakb;->a(Laka;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2906
    invoke-virtual {p0, p1}, Lakb;->d(Laka;)V

    .line 2907
    add-int/lit8 v1, v1, -0x1

    .line 2904
    :goto_1d
    invoke-interface {p1}, Laka;->a()Laka;

    move-result-object p1

    goto :goto_10

    .line 2909
    :cond_22
    invoke-virtual {p0, p1, v0}, Lakb;->a(Laka;Laka;)Laka;

    move-result-object v0

    goto :goto_1d

    .line 2912
    :cond_27
    iput v1, p0, Lakb;->a:I

    .line 2913
    return-object v0
.end method

.method b(Ljava/lang/Object;I)Laka;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2458
    invoke-virtual {p0, p1, p2}, Lakb;->a(Ljava/lang/Object;I)Laka;

    move-result-object v1

    .line 2459
    if-nez v1, :cond_8

    .line 2465
    :goto_7
    return-object v0

    .line 2461
    :cond_8
    iget-object v2, p0, Lakb;->a:Lajx;

    invoke-virtual {v2}, Lajx;->b()Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lakb;->a:Lajx;

    invoke-virtual {v2, v1}, Lajx;->a(Laka;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2462
    invoke-virtual {p0}, Lakb;->i()V

    goto :goto_7

    :cond_1c
    move-object v0, v1

    .line 2465
    goto :goto_7
.end method

.method b(Ljava/lang/Object;I)Ljava/lang/Object;
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
    const/4 v1, 0x0

    .line 2768
    invoke-virtual {p0}, Lakb;->lock()V

    .line 2770
    :try_start_4
    invoke-virtual {p0}, Lakb;->n()V

    .line 2772
    iget v0, p0, Lakb;->a:I

    add-int/lit8 v0, v0, -0x1

    .line 2773
    iget-object v4, p0, Lakb;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2774
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 2775
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laka;

    move-object v3, v0

    .line 2777
    :goto_1c
    if-eqz v3, :cond_75

    .line 2778
    invoke-interface {v3}, Laka;->a()Ljava/lang/Object;

    move-result-object v6

    .line 2779
    invoke-interface {v3}, Laka;->a()I

    move-result v2

    if-ne v2, p2, :cond_6f

    if-eqz v6, :cond_6f

    iget-object v2, p0, Lakb;->a:Lajx;

    iget-object v2, v2, Lajx;->a:LafD;

    invoke-virtual {v2, p1, v6}, LafD;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 2781
    invoke-interface {v3}, Laka;->a()Lakr;

    move-result-object v7

    .line 2782
    invoke-interface {v7}, Lakr;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2785
    if-eqz v2, :cond_5e

    .line 2786
    sget-object v1, Lajp;->a:Lajp;

    .line 2793
    :goto_40
    iget v7, p0, Lakb;->b:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lakb;->b:I

    .line 2794
    invoke-virtual {p0, v6, p2, v2, v1}, Lakb;->a(Ljava/lang/Object;ILjava/lang/Object;Lajp;)V

    .line 2795
    invoke-virtual {p0, v0, v3}, Lakb;->b(Laka;Laka;)Laka;

    move-result-object v0

    .line 2796
    iget v1, p0, Lakb;->a:I

    add-int/lit8 v1, v1, -0x1

    .line 2797
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2798
    iput v1, p0, Lakb;->a:I
    :try_end_56
    .catchall {:try_start_4 .. :try_end_56} :catchall_7d

    .line 2805
    invoke-virtual {p0}, Lakb;->unlock()V

    .line 2806
    invoke-virtual {p0}, Lakb;->o()V

    move-object v0, v2

    :goto_5d
    return-object v0

    .line 2787
    :cond_5e
    :try_start_5e
    invoke-virtual {p0, v7}, Lakb;->a(Lakr;)Z

    move-result v7

    if-eqz v7, :cond_67

    .line 2788
    sget-object v1, Lajp;->c:Lajp;
    :try_end_66
    .catchall {:try_start_5e .. :try_end_66} :catchall_7d

    goto :goto_40

    .line 2805
    :cond_67
    invoke-virtual {p0}, Lakb;->unlock()V

    .line 2806
    invoke-virtual {p0}, Lakb;->o()V

    move-object v0, v1

    goto :goto_5d

    .line 2777
    :cond_6f
    :try_start_6f
    invoke-interface {v3}, Laka;->a()Laka;
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_7d

    move-result-object v2

    move-object v3, v2

    goto :goto_1c

    .line 2805
    :cond_75
    invoke-virtual {p0}, Lakb;->unlock()V

    .line 2806
    invoke-virtual {p0}, Lakb;->o()V

    move-object v0, v1

    goto :goto_5d

    .line 2805
    :catchall_7d
    move-exception v0

    invoke-virtual {p0}, Lakb;->unlock()V

    .line 2806
    invoke-virtual {p0}, Lakb;->o()V

    throw v0
.end method

.method b()V
    .registers 2

    .prologue
    .line 2221
    iget-object v0, p0, Lakb;->a:Lajx;

    invoke-virtual {v0}, Lajx;->e()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2222
    invoke-virtual {p0}, Lakb;->c()V

    .line 2224
    :cond_b
    iget-object v0, p0, Lakb;->a:Lajx;

    invoke-virtual {v0}, Lajx;->f()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2225
    invoke-virtual {p0}, Lakb;->d()V

    .line 2227
    :cond_16
    return-void
.end method

.method b(Laka;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laka",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2302
    iget-object v0, p0, Lakb;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2303
    iget-object v0, p0, Lakb;->a:Lajx;

    invoke-virtual {v0}, Lajx;->d()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2304
    iget-object v0, p0, Lakb;->a:Lajx;

    iget-wide v0, v0, Lajx;->a:J

    invoke-virtual {p0, p1, v0, v1}, Lakb;->a(Laka;J)V

    .line 2305
    iget-object v0, p0, Lakb;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2307
    :cond_19
    return-void
.end method

.method b(Ljava/lang/Object;ILakr;)Z
    .registers 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lakr",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2995
    invoke-virtual {p0}, Lakb;->lock()V

    .line 2997
    :try_start_4
    iget-object v3, p0, Lakb;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2998
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 2999
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laka;

    move-object v2, v0

    .line 3001
    :goto_15
    if-eqz v2, :cond_4f

    .line 3002
    invoke-interface {v2}, Laka;->a()Ljava/lang/Object;

    move-result-object v5

    .line 3003
    invoke-interface {v2}, Laka;->a()I

    move-result v6

    if-ne v6, p2, :cond_4a

    if-eqz v5, :cond_4a

    iget-object v6, p0, Lakb;->a:Lajx;

    iget-object v6, v6, Lajx;->a:LafD;

    invoke-virtual {v6, p1, v5}, LafD;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 3005
    invoke-interface {v2}, Laka;->a()Lakr;

    move-result-object v5

    .line 3006
    if-ne v5, p3, :cond_42

    .line 3007
    invoke-virtual {p0, v0, v2}, Lakb;->b(Laka;Laka;)Laka;

    move-result-object v0

    .line 3008
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_3a
    .catchall {:try_start_4 .. :try_end_3a} :catchall_57

    .line 3009
    const/4 v0, 0x1

    .line 3017
    invoke-virtual {p0}, Lakb;->unlock()V

    .line 3018
    invoke-virtual {p0}, Lakb;->o()V

    :goto_41
    return v0

    .line 3017
    :cond_42
    invoke-virtual {p0}, Lakb;->unlock()V

    .line 3018
    invoke-virtual {p0}, Lakb;->o()V

    move v0, v1

    goto :goto_41

    .line 3001
    :cond_4a
    :try_start_4a
    invoke-interface {v2}, Laka;->a()Laka;
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_57

    move-result-object v2

    goto :goto_15

    .line 3017
    :cond_4f
    invoke-virtual {p0}, Lakb;->unlock()V

    .line 3018
    invoke-virtual {p0}, Lakb;->o()V

    move v0, v1

    goto :goto_41

    .line 3017
    :catchall_57
    move-exception v0

    invoke-virtual {p0}, Lakb;->unlock()V

    .line 3018
    invoke-virtual {p0}, Lakb;->o()V

    throw v0
.end method

.method c()V
    .registers 4

    .prologue
    .line 2232
    const/4 v0, 0x0

    move v1, v0

    .line 2233
    :goto_2
    iget-object v0, p0, Lakb;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2235
    check-cast v0, Laka;

    .line 2236
    iget-object v2, p0, Lakb;->a:Lajx;

    invoke-virtual {v2, v0}, Lajx;->a(Laka;)V

    .line 2237
    add-int/lit8 v0, v1, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_18

    .line 2241
    :cond_17
    return-void

    :cond_18
    move v1, v0

    .line 2240
    goto :goto_2
.end method

.method c(Laka;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laka",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2316
    invoke-virtual {p0}, Lakb;->h()V

    .line 2317
    iget-object v0, p0, Lakb;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2318
    iget-object v0, p0, Lakb;->a:Lajx;

    invoke-virtual {v0}, Lajx;->b()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2321
    iget-object v0, p0, Lakb;->a:Lajx;

    invoke-virtual {v0}, Lajx;->d()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lakb;->a:Lajx;

    iget-wide v0, v0, Lajx;->a:J

    .line 2324
    :goto_1c
    invoke-virtual {p0, p1, v0, v1}, Lakb;->a(Laka;J)V

    .line 2325
    iget-object v0, p0, Lakb;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2327
    :cond_24
    return-void

    .line 2321
    :cond_25
    iget-object v0, p0, Lakb;->a:Lajx;

    iget-wide v0, v0, Lajx;->b:J

    goto :goto_1c
.end method

.method d()V
    .registers 4

    .prologue
    .line 2246
    const/4 v0, 0x0

    move v1, v0

    .line 2247
    :goto_2
    iget-object v0, p0, Lakb;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2249
    check-cast v0, Lakr;

    .line 2250
    iget-object v2, p0, Lakb;->a:Lajx;

    invoke-virtual {v2, v0}, Lajx;->a(Lakr;)V

    .line 2251
    add-int/lit8 v0, v1, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_18

    .line 2255
    :cond_17
    return-void

    :cond_18
    move v1, v0

    .line 2254
    goto :goto_2
.end method

.method d(Laka;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laka",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2917
    sget-object v0, Lajp;->c:Lajp;

    invoke-virtual {p0, p1, v0}, Lakb;->a(Laka;Lajp;)V

    .line 2918
    iget-object v0, p0, Lakb;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2919
    iget-object v0, p0, Lakb;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2920
    return-void
.end method

.method e()V
    .registers 2

    .prologue
    .line 2261
    iget-object v0, p0, Lakb;->a:Lajx;

    invoke-virtual {v0}, Lajx;->e()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2262
    invoke-virtual {p0}, Lakb;->f()V

    .line 2264
    :cond_b
    iget-object v0, p0, Lakb;->a:Lajx;

    invoke-virtual {v0}, Lajx;->f()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2265
    invoke-virtual {p0}, Lakb;->g()V

    .line 2267
    :cond_16
    return-void
.end method

.method f()V
    .registers 2

    .prologue
    .line 2270
    :cond_0
    iget-object v0, p0, Lakb;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2271
    return-void
.end method

.method g()V
    .registers 2

    .prologue
    .line 2274
    :cond_0
    iget-object v0, p0, Lakb;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2275
    return-void
.end method

.method h()V
    .registers 3

    .prologue
    .line 2338
    :cond_0
    :goto_0
    iget-object v0, p0, Lakb;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laka;

    if-eqz v0, :cond_2d

    .line 2343
    iget-object v1, p0, Lakb;->b:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2344
    iget-object v1, p0, Lakb;->b:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2346
    :cond_17
    iget-object v1, p0, Lakb;->a:Lajx;

    invoke-virtual {v1}, Lajx;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lakb;->c:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2347
    iget-object v1, p0, Lakb;->c:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2350
    :cond_2d
    return-void
.end method

.method i()V
    .registers 2

    .prologue
    .line 2363
    invoke-virtual {p0}, Lakb;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2365
    :try_start_6
    invoke-virtual {p0}, Lakb;->j()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_d

    .line 2367
    invoke-virtual {p0}, Lakb;->unlock()V

    .line 2371
    :cond_c
    return-void

    .line 2367
    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Lakb;->unlock()V

    throw v0
.end method

.method j()V
    .registers 6

    .prologue
    .line 2375
    invoke-virtual {p0}, Lakb;->h()V

    .line 2377
    iget-object v0, p0, Lakb;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2389
    :cond_b
    return-void

    .line 2382
    :cond_c
    iget-object v0, p0, Lakb;->a:Lajx;

    iget-object v0, v0, Lajx;->a:Lage;

    invoke-virtual {v0}, Lage;->a()J

    move-result-wide v1

    .line 2384
    :cond_14
    iget-object v0, p0, Lakb;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laka;

    if-eqz v0, :cond_b

    iget-object v3, p0, Lakb;->a:Lajx;

    invoke-virtual {v3, v0, v1, v2}, Lajx;->a(Laka;J)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2385
    invoke-interface {v0}, Laka;->a()I

    move-result v3

    sget-object v4, Lajp;->d:Lajp;

    invoke-virtual {p0, v0, v3, v4}, Lakb;->a(Laka;ILajp;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2386
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method k()V
    .registers 12

    .prologue
    .line 2605
    iget-object v7, p0, Lakb;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2606
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v8

    .line 2607
    const/high16 v0, 0x4000

    if-lt v8, v0, :cond_b

    .line 2670
    :goto_a
    return-void

    .line 2621
    :cond_b
    iget v5, p0, Lakb;->a:I

    .line 2622
    shl-int/lit8 v0, v8, 0x1

    invoke-virtual {p0, v0}, Lakb;->a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v9

    .line 2623
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lakb;->c:I

    .line 2624
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .line 2625
    const/4 v0, 0x0

    move v6, v0

    :goto_25
    if-ge v6, v8, :cond_84

    .line 2628
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laka;

    .line 2630
    if-eqz v0, :cond_8c

    .line 2631
    invoke-interface {v0}, Laka;->a()Laka;

    move-result-object v3

    .line 2632
    invoke-interface {v0}, Laka;->a()I

    move-result v1

    and-int v2, v1, v10

    .line 2635
    if-nez v3, :cond_44

    .line 2636
    invoke-virtual {v9, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v1, v5

    .line 2625
    :cond_3f
    :goto_3f
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v5, v1

    goto :goto_25

    :cond_44
    move-object v4, v0

    .line 2643
    :goto_45
    if-eqz v3, :cond_56

    .line 2644
    invoke-interface {v3}, Laka;->a()I

    move-result v1

    and-int/2addr v1, v10

    .line 2645
    if-eq v1, v2, :cond_89

    move-object v2, v3

    .line 2643
    :goto_4f
    invoke-interface {v3}, Laka;->a()Laka;

    move-result-object v3

    move-object v4, v2

    move v2, v1

    goto :goto_45

    .line 2651
    :cond_56
    invoke-virtual {v9, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v2, v0

    move v1, v5

    .line 2654
    :goto_5b
    if-eq v2, v4, :cond_3f

    .line 2655
    invoke-virtual {p0, v2}, Lakb;->a(Laka;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 2656
    invoke-virtual {p0, v2}, Lakb;->d(Laka;)V

    .line 2657
    add-int/lit8 v0, v1, -0x1

    .line 2654
    :goto_68
    invoke-interface {v2}, Laka;->a()Laka;

    move-result-object v1

    move-object v2, v1

    move v1, v0

    goto :goto_5b

    .line 2659
    :cond_6f
    invoke-interface {v2}, Laka;->a()I

    move-result v0

    and-int v3, v0, v10

    .line 2660
    invoke-virtual {v9, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laka;

    .line 2661
    invoke-virtual {p0, v2, v0}, Lakb;->a(Laka;Laka;)Laka;

    move-result-object v0

    .line 2662
    invoke-virtual {v9, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v0, v1

    goto :goto_68

    .line 2668
    :cond_84
    iput-object v9, p0, Lakb;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2669
    iput v5, p0, Lakb;->a:I

    goto :goto_a

    :cond_89
    move v1, v2

    move-object v2, v4

    goto :goto_4f

    :cond_8c
    move v1, v5

    goto :goto_3f
.end method

.method l()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 2854
    iget v0, p0, Lakb;->a:I

    if-eqz v0, :cond_69

    .line 2855
    invoke-virtual {p0}, Lakb;->lock()V

    .line 2857
    :try_start_8
    iget-object v3, p0, Lakb;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2858
    iget-object v0, p0, Lakb;->a:Lajx;

    iget-object v0, v0, Lajx;->a:Ljava/util/Queue;

    sget-object v2, Lajx;->b:Ljava/util/Queue;

    if-eq v0, v2, :cond_39

    move v2, v1

    .line 2859
    :goto_13
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_39

    .line 2860
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laka;

    :goto_1f
    if-eqz v0, :cond_35

    .line 2862
    invoke-interface {v0}, Laka;->a()Lakr;

    move-result-object v4

    invoke-interface {v4}, Lakr;->a()Z

    move-result v4

    if-nez v4, :cond_30

    .line 2863
    sget-object v4, Lajp;->a:Lajp;

    invoke-virtual {p0, v0, v4}, Lakb;->a(Laka;Lajp;)V

    .line 2860
    :cond_30
    invoke-interface {v0}, Laka;->a()Laka;

    move-result-object v0

    goto :goto_1f

    .line 2859
    :cond_35
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_13

    :cond_39
    move v0, v1

    .line 2868
    :goto_3a
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_47

    .line 2869
    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2868
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 2871
    :cond_47
    invoke-virtual {p0}, Lakb;->e()V

    .line 2872
    iget-object v0, p0, Lakb;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 2873
    iget-object v0, p0, Lakb;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 2874
    iget-object v0, p0, Lakb;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2876
    iget v0, p0, Lakb;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lakb;->b:I

    .line 2877
    const/4 v0, 0x0

    iput v0, p0, Lakb;->a:I
    :try_end_63
    .catchall {:try_start_8 .. :try_end_63} :catchall_6a

    .line 2879
    invoke-virtual {p0}, Lakb;->unlock()V

    .line 2880
    invoke-virtual {p0}, Lakb;->o()V

    .line 2883
    :cond_69
    return-void

    .line 2879
    :catchall_6a
    move-exception v0

    invoke-virtual {p0}, Lakb;->unlock()V

    .line 2880
    invoke-virtual {p0}, Lakb;->o()V

    throw v0
.end method

.method m()V
    .registers 2

    .prologue
    .line 3094
    iget-object v0, p0, Lakb;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_d

    .line 3095
    invoke-virtual {p0}, Lakb;->p()V

    .line 3097
    :cond_d
    return-void
.end method

.method n()V
    .registers 1

    .prologue
    .line 3107
    invoke-virtual {p0}, Lakb;->q()V

    .line 3108
    return-void
.end method

.method o()V
    .registers 1

    .prologue
    .line 3114
    invoke-virtual {p0}, Lakb;->r()V

    .line 3115
    return-void
.end method

.method p()V
    .registers 1

    .prologue
    .line 3118
    invoke-virtual {p0}, Lakb;->q()V

    .line 3119
    invoke-virtual {p0}, Lakb;->r()V

    .line 3120
    return-void
.end method

.method q()V
    .registers 3

    .prologue
    .line 3123
    invoke-virtual {p0}, Lakb;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3125
    :try_start_6
    invoke-virtual {p0}, Lakb;->b()V

    .line 3126
    invoke-virtual {p0}, Lakb;->j()V

    .line 3127
    iget-object v0, p0, Lakb;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_16

    .line 3129
    invoke-virtual {p0}, Lakb;->unlock()V

    .line 3132
    :cond_15
    return-void

    .line 3129
    :catchall_16
    move-exception v0

    invoke-virtual {p0}, Lakb;->unlock()V

    throw v0
.end method

.method r()V
    .registers 2

    .prologue
    .line 3136
    invoke-virtual {p0}, Lakb;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3137
    iget-object v0, p0, Lakb;->a:Lajx;

    invoke-virtual {v0}, Lajx;->a()V

    .line 3139
    :cond_b
    return-void
.end method
