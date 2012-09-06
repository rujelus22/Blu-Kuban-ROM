.class Lcom/google/common/collect/av;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "SourceFile"


# instance fields
.field volatile a:I

.field b:I

.field c:I

.field volatile d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field final e:I

.field final f:Ljava/util/Queue;

.field final g:Ljava/util/Queue;

.field final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field final i:Ljava/util/Queue;

.field final j:Ljava/util/Queue;

.field final k:Ljava/lang/Runnable;

.field final synthetic l:Lcom/google/common/collect/X;


# direct methods
.method constructor <init>(Lcom/google/common/collect/X;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2013
    iput-object p1, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 1981
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/av;->f:Ljava/util/Queue;

    .line 1996
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/av;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2830
    new-instance v0, Lcom/google/common/collect/aw;

    invoke-direct {v0, p0}, Lcom/google/common/collect/aw;-><init>(Lcom/google/common/collect/av;)V

    iput-object v0, p0, Lcom/google/common/collect/av;->k:Ljava/lang/Runnable;

    .line 2014
    iput p3, p0, Lcom/google/common/collect/av;->e:I

    .line 2015
    invoke-virtual {p0, p2}, Lcom/google/common/collect/av;->a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/av;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 2017
    invoke-virtual {p1}, Lcom/google/common/collect/X;->a()Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {p1}, Lcom/google/common/collect/X;->d()Z

    move-result v0

    if-eqz v0, :cond_51

    :cond_2f
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :goto_34
    iput-object v0, p0, Lcom/google/common/collect/av;->g:Ljava/util/Queue;

    .line 2021
    invoke-virtual {p1}, Lcom/google/common/collect/X;->a()Z

    move-result v0

    if-eqz v0, :cond_56

    new-instance v0, Lcom/google/common/collect/ax;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ax;-><init>(Lcom/google/common/collect/av;)V

    :goto_41
    iput-object v0, p0, Lcom/google/common/collect/av;->i:Ljava/util/Queue;

    .line 2025
    invoke-virtual {p1}, Lcom/google/common/collect/X;->b()Z

    move-result v0

    if-eqz v0, :cond_5b

    new-instance v0, Lcom/google/common/collect/aA;

    invoke-direct {v0, p0}, Lcom/google/common/collect/aA;-><init>(Lcom/google/common/collect/av;)V

    :goto_4e
    iput-object v0, p0, Lcom/google/common/collect/av;->j:Ljava/util/Queue;

    .line 2028
    return-void

    .line 2017
    :cond_51
    invoke-static {}, Lcom/google/common/collect/X;->h()Ljava/util/Queue;

    move-result-object v0

    goto :goto_34

    .line 2021
    :cond_56
    invoke-static {}, Lcom/google/common/collect/X;->h()Ljava/util/Queue;

    move-result-object v0

    goto :goto_41

    .line 2025
    :cond_5b
    invoke-static {}, Lcom/google/common/collect/X;->h()Ljava/util/Queue;

    move-result-object v0

    goto :goto_4e
.end method


# virtual methods
.method a(Lcom/google/common/collect/au;Lcom/google/common/collect/au;)Lcom/google/common/collect/au;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2598
    iget-object v0, p0, Lcom/google/common/collect/av;->i:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2599
    iget-object v0, p0, Lcom/google/common/collect/av;->j:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2601
    invoke-interface {p2}, Lcom/google/common/collect/au;->b()Lcom/google/common/collect/au;

    move-result-object v0

    .line 2602
    :goto_e
    if-eq p1, p2, :cond_2b

    .line 2603
    iget-object v1, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/X;->c(Lcom/google/common/collect/au;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 2604
    invoke-interface {p1}, Lcom/google/common/collect/au;->c()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/google/common/collect/av;->c(Lcom/google/common/collect/au;I)Z

    .line 2602
    :goto_1f
    invoke-interface {p1}, Lcom/google/common/collect/au;->b()Lcom/google/common/collect/au;

    move-result-object p1

    goto :goto_e

    .line 2606
    :cond_24
    iget-object v1, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/X;->a(Lcom/google/common/collect/au;Lcom/google/common/collect/au;)Lcom/google/common/collect/au;

    move-result-object v0

    goto :goto_1f

    .line 2609
    :cond_2b
    return-object v0
.end method

.method a(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 2229
    :try_start_0
    iget v0, p0, Lcom/google/common/collect/av;->a:I

    if-eqz v0, :cond_34

    .line 2230
    invoke-virtual {p0, p2}, Lcom/google/common/collect/av;->b(I)Lcom/google/common/collect/au;

    move-result-object v0

    move-object v1, v0

    :goto_9
    if-eqz v1, :cond_34

    .line 2232
    invoke-interface {v1}, Lcom/google/common/collect/au;->c()I

    move-result v0

    if-eq v0, p2, :cond_17

    .line 2231
    :cond_11
    invoke-interface {v1}, Lcom/google/common/collect/au;->b()Lcom/google/common/collect/au;

    move-result-object v0

    move-object v1, v0

    goto :goto_9

    .line 2236
    :cond_17
    invoke-interface {v1}, Lcom/google/common/collect/au;->d()Ljava/lang/Object;

    move-result-object v0

    .line 2237
    if-eqz v0, :cond_11

    .line 2241
    iget-object v2, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    iget-object v2, v2, Lcom/google/common/collect/X;->e:Lcom/google/common/base/q;

    invoke-interface {v2, p1, v0}, Lcom/google/common/base/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2242
    invoke-virtual {p0, v1}, Lcom/google/common/collect/av;->e(Lcom/google/common/collect/au;)Ljava/lang/Object;

    move-result-object v0

    .line 2243
    if-eqz v0, :cond_30

    .line 2244
    invoke-virtual {p0, v1}, Lcom/google/common/collect/av;->a(Lcom/google/common/collect/au;)V
    :try_end_30
    .catchall {:try_start_0 .. :try_end_30} :catchall_39

    .line 2253
    :cond_30
    invoke-virtual {p0}, Lcom/google/common/collect/av;->g()V

    :goto_33
    return-object v0

    .line 2251
    :cond_34
    const/4 v0, 0x0

    .line 2253
    invoke-virtual {p0}, Lcom/google/common/collect/av;->g()V

    goto :goto_33

    :catchall_39
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/av;->g()V

    throw v0
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2340
    invoke-static {p3}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2341
    invoke-virtual {p0}, Lcom/google/common/collect/av;->lock()V

    .line 2343
    :try_start_7
    invoke-virtual {p0}, Lcom/google/common/collect/av;->h()V

    .line 2345
    invoke-virtual {p0, p2}, Lcom/google/common/collect/av;->b(I)Lcom/google/common/collect/au;

    move-result-object v1

    move-object v2, v1

    :goto_f
    if-eqz v2, :cond_4c

    .line 2347
    invoke-interface {v2}, Lcom/google/common/collect/au;->d()Ljava/lang/Object;

    move-result-object v1

    .line 2348
    invoke-interface {v2}, Lcom/google/common/collect/au;->c()I

    move-result v3

    if-ne v3, p2, :cond_46

    if-eqz v1, :cond_46

    iget-object v3, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    iget-object v3, v3, Lcom/google/common/collect/X;->e:Lcom/google/common/base/q;

    invoke-interface {v3, p1, v1}, Lcom/google/common/base/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 2352
    invoke-interface {v2}, Lcom/google/common/collect/au;->a()Lcom/google/common/collect/aS;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/aS;->get()Ljava/lang/Object;

    move-result-object v1

    .line 2353
    if-nez v1, :cond_3b

    .line 2354
    invoke-virtual {p0, v2, p2}, Lcom/google/common/collect/av;->c(Lcom/google/common/collect/au;I)Z
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_53

    .line 2365
    invoke-virtual {p0}, Lcom/google/common/collect/av;->unlock()V

    .line 2366
    invoke-virtual {p0}, Lcom/google/common/collect/av;->i()V

    :goto_3a
    return-object v0

    .line 2358
    :cond_3b
    :try_start_3b
    invoke-virtual {p0, v2, p3}, Lcom/google/common/collect/av;->a(Lcom/google/common/collect/au;Ljava/lang/Object;)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_53

    .line 2365
    invoke-virtual {p0}, Lcom/google/common/collect/av;->unlock()V

    .line 2366
    invoke-virtual {p0}, Lcom/google/common/collect/av;->i()V

    move-object v0, v1

    goto :goto_3a

    .line 2346
    :cond_46
    :try_start_46
    invoke-interface {v2}, Lcom/google/common/collect/au;->b()Lcom/google/common/collect/au;
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_53

    move-result-object v1

    move-object v2, v1

    goto :goto_f

    .line 2365
    :cond_4c
    invoke-virtual {p0}, Lcom/google/common/collect/av;->unlock()V

    .line 2366
    invoke-virtual {p0}, Lcom/google/common/collect/av;->i()V

    goto :goto_3a

    .line 2365
    :catchall_53
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/av;->unlock()V

    .line 2366
    invoke-virtual {p0}, Lcom/google/common/collect/av;->i()V

    throw v0
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2371
    invoke-static {p3}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2372
    invoke-virtual {p0}, Lcom/google/common/collect/av;->lock()V

    .line 2374
    :try_start_6
    invoke-virtual {p0}, Lcom/google/common/collect/av;->h()V

    .line 2376
    iget v0, p0, Lcom/google/common/collect/av;->a:I

    add-int/lit8 v1, v0, 0x1

    .line 2377
    iget v0, p0, Lcom/google/common/collect/av;->c:I

    if-le v1, v0, :cond_18

    .line 2378
    invoke-virtual {p0}, Lcom/google/common/collect/av;->e()V

    .line 2379
    iget v0, p0, Lcom/google/common/collect/av;->a:I

    add-int/lit8 v1, v0, 0x1

    .line 2383
    :cond_18
    iget-object v3, p0, Lcom/google/common/collect/av;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2384
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 2385
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/au;

    move-object v2, v0

    .line 2388
    :goto_29
    if-eqz v2, :cond_78

    .line 2389
    invoke-interface {v2}, Lcom/google/common/collect/au;->d()Ljava/lang/Object;

    move-result-object v5

    .line 2390
    invoke-interface {v2}, Lcom/google/common/collect/au;->c()I

    move-result v6

    if-ne v6, p2, :cond_73

    if-eqz v5, :cond_73

    iget-object v6, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    iget-object v6, v6, Lcom/google/common/collect/X;->e:Lcom/google/common/base/q;

    invoke-interface {v6, p1, v5}, Lcom/google/common/base/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 2394
    invoke-interface {v2}, Lcom/google/common/collect/au;->a()Lcom/google/common/collect/aS;

    move-result-object v1

    .line 2395
    invoke-interface {v1}, Lcom/google/common/collect/aS;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2397
    if-nez v0, :cond_67

    .line 2398
    iget v3, p0, Lcom/google/common/collect/av;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/common/collect/av;->b:I

    .line 2404
    invoke-interface {v1}, Lcom/google/common/collect/aS;->b()V

    .line 2405
    invoke-virtual {p0}, Lcom/google/common/collect/av;->d()Z

    .line 2406
    iget v1, p0, Lcom/google/common/collect/av;->a:I

    add-int/lit8 v1, v1, 0x1

    .line 2407
    iput v1, p0, Lcom/google/common/collect/av;->a:I

    .line 2417
    :cond_5d
    invoke-virtual {p0, v2, p3}, Lcom/google/common/collect/av;->a(Lcom/google/common/collect/au;Ljava/lang/Object;)V
    :try_end_60
    .catchall {:try_start_6 .. :try_end_60} :catchall_a4

    .line 2435
    invoke-virtual {p0}, Lcom/google/common/collect/av;->unlock()V

    .line 2436
    invoke-virtual {p0}, Lcom/google/common/collect/av;->i()V

    :goto_66
    return-object v0

    .line 2408
    :cond_67
    if-eqz p4, :cond_5d

    .line 2412
    :try_start_69
    invoke-virtual {p0, v2}, Lcom/google/common/collect/av;->b(Lcom/google/common/collect/au;)V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_a4

    .line 2435
    invoke-virtual {p0}, Lcom/google/common/collect/av;->unlock()V

    .line 2436
    invoke-virtual {p0}, Lcom/google/common/collect/av;->i()V

    goto :goto_66

    .line 2388
    :cond_73
    :try_start_73
    invoke-interface {v2}, Lcom/google/common/collect/au;->b()Lcom/google/common/collect/au;

    move-result-object v2

    goto :goto_29

    .line 2422
    :cond_78
    invoke-virtual {p0}, Lcom/google/common/collect/av;->d()Z

    move-result v2

    if-eqz v2, :cond_88

    .line 2423
    iget v0, p0, Lcom/google/common/collect/av;->a:I

    add-int/lit8 v1, v0, 0x1

    .line 2424
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/au;

    .line 2428
    :cond_88
    iget v2, p0, Lcom/google/common/collect/av;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/collect/av;->b:I

    .line 2429
    iget-object v2, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    invoke-virtual {v2, p1, p2, v0}, Lcom/google/common/collect/X;->a(Ljava/lang/Object;ILcom/google/common/collect/au;)Lcom/google/common/collect/au;

    move-result-object v0

    .line 2430
    invoke-virtual {p0, v0, p3}, Lcom/google/common/collect/av;->a(Lcom/google/common/collect/au;Ljava/lang/Object;)V

    .line 2431
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2432
    iput v1, p0, Lcom/google/common/collect/av;->a:I
    :try_end_9c
    .catchall {:try_start_73 .. :try_end_9c} :catchall_a4

    .line 2433
    const/4 v0, 0x0

    .line 2435
    invoke-virtual {p0}, Lcom/google/common/collect/av;->unlock()V

    .line 2436
    invoke-virtual {p0}, Lcom/google/common/collect/av;->i()V

    goto :goto_66

    .line 2435
    :catchall_a4
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/av;->unlock()V

    .line 2436
    invoke-virtual {p0}, Lcom/google/common/collect/av;->i()V

    throw v0
.end method

.method a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .registers 3
    .parameter

    .prologue
    .line 2031
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method a()V
    .registers 3

    .prologue
    .line 2117
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/av;->g:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/au;

    if-eqz v0, :cond_2d

    .line 2122
    iget-object v1, p0, Lcom/google/common/collect/av;->i:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2123
    iget-object v1, p0, Lcom/google/common/collect/av;->i:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2125
    :cond_17
    iget-object v1, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    invoke-virtual {v1}, Lcom/google/common/collect/X;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/av;->j:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2126
    iget-object v1, p0, Lcom/google/common/collect/av;->j:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2129
    :cond_2d
    return-void
.end method

.method a(Lcom/google/common/collect/au;)V
    .registers 4
    .parameter

    .prologue
    .line 2065
    iget-object v0, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    invoke-virtual {v0}, Lcom/google/common/collect/X;->d()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2066
    iget-object v0, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    iget-wide v0, v0, Lcom/google/common/collect/X;->j:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/collect/av;->a(Lcom/google/common/collect/au;J)V

    .line 2068
    :cond_f
    iget-object v0, p0, Lcom/google/common/collect/av;->g:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2069
    return-void
.end method

.method a(Lcom/google/common/collect/au;J)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 2136
    iget-object v0, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    iget-object v0, v0, Lcom/google/common/collect/X;->p:Lcom/google/common/base/ai;

    invoke-interface {v0}, Lcom/google/common/base/ai;->a()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-interface {p1, v0, v1}, Lcom/google/common/collect/au;->a(J)V

    .line 2137
    return-void
.end method

.method a(Lcom/google/common/collect/au;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2049
    invoke-virtual {p0, p1}, Lcom/google/common/collect/av;->c(Lcom/google/common/collect/au;)V

    .line 2050
    iget-object v0, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/X;->a(Lcom/google/common/collect/au;Ljava/lang/Object;)Lcom/google/common/collect/aS;

    move-result-object v0

    .line 2051
    invoke-interface {p1, v0}, Lcom/google/common/collect/au;->a(Lcom/google/common/collect/aS;)V

    .line 2052
    return-void
.end method

.method a(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .registers 4
    .parameter

    .prologue
    .line 2035
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/collect/av;->c:I

    .line 2036
    iget v0, p0, Lcom/google/common/collect/av;->c:I

    iget v1, p0, Lcom/google/common/collect/av;->e:I

    if-ne v0, v1, :cond_16

    .line 2038
    iget v0, p0, Lcom/google/common/collect/av;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/av;->c:I

    .line 2040
    :cond_16
    iput-object p1, p0, Lcom/google/common/collect/av;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2041
    return-void
.end method

.method a(Lcom/google/common/collect/au;I)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 2619
    invoke-virtual {p0}, Lcom/google/common/collect/av;->lock()V

    .line 2621
    :try_start_3
    iget v0, p0, Lcom/google/common/collect/av;->a:I

    add-int/lit8 v1, v0, -0x1

    .line 2622
    iget-object v0, p0, Lcom/google/common/collect/av;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2623
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, p2

    .line 2624
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/au;

    .line 2626
    :goto_16
    if-eqz v0, :cond_3c

    .line 2627
    if-ne v0, p1, :cond_37

    .line 2628
    iget v2, p0, Lcom/google/common/collect/av;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/collect/av;->b:I

    .line 2629
    iget-object v2, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    invoke-interface {v0}, Lcom/google/common/collect/au;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/common/collect/au;->a()Lcom/google/common/collect/aS;

    move-result-object v4

    invoke-virtual {v2, v3, p2, v4}, Lcom/google/common/collect/X;->a(Ljava/lang/Object;ILcom/google/common/collect/aS;)V

    .line 2630
    invoke-virtual {p0, v0}, Lcom/google/common/collect/av;->d(Lcom/google/common/collect/au;)V

    .line 2631
    iput v1, p0, Lcom/google/common/collect/av;->a:I
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_41

    .line 2632
    const/4 v0, 0x1

    .line 2638
    invoke-virtual {p0}, Lcom/google/common/collect/av;->unlock()V

    :goto_36
    return v0

    .line 2626
    :cond_37
    :try_start_37
    invoke-interface {v0}, Lcom/google/common/collect/au;->b()Lcom/google/common/collect/au;
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_41

    move-result-object v0

    goto :goto_16

    .line 2636
    :cond_3c
    const/4 v0, 0x0

    .line 2638
    invoke-virtual {p0}, Lcom/google/common/collect/av;->unlock()V

    goto :goto_36

    :catchall_41
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/av;->unlock()V

    throw v0
.end method

.method a(Ljava/lang/Object;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2280
    iget v0, p0, Lcom/google/common/collect/av;->a:I

    if-eqz v0, :cond_31

    .line 2281
    iget-object v3, p0, Lcom/google/common/collect/av;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2282
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    move v2, v1

    .line 2283
    :goto_c
    if-ge v2, v4, :cond_31

    .line 2284
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/au;

    :goto_14
    if-eqz v0, :cond_2d

    .line 2286
    invoke-virtual {p0, v0}, Lcom/google/common/collect/av;->e(Lcom/google/common/collect/au;)Ljava/lang/Object;

    move-result-object v5

    .line 2287
    if-nez v5, :cond_21

    .line 2285
    :cond_1c
    invoke-interface {v0}, Lcom/google/common/collect/au;->b()Lcom/google/common/collect/au;

    move-result-object v0

    goto :goto_14

    .line 2290
    :cond_21
    iget-object v6, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    iget-object v6, v6, Lcom/google/common/collect/X;->f:Lcom/google/common/base/q;

    invoke-interface {v6, p1, v5}, Lcom/google/common/base/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 2291
    const/4 v0, 0x1

    .line 2297
    :goto_2c
    return v0

    .line 2283
    :cond_2d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    :cond_31
    move v0, v1

    .line 2297
    goto :goto_2c
.end method

.method a(Ljava/lang/Object;ILcom/google/common/collect/aS;)Z
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2650
    invoke-virtual {p0}, Lcom/google/common/collect/av;->lock()V

    .line 2652
    :try_start_4
    iget v1, p0, Lcom/google/common/collect/av;->a:I

    add-int/lit8 v2, v1, -0x1

    .line 2653
    invoke-virtual {p0, p2}, Lcom/google/common/collect/av;->b(I)Lcom/google/common/collect/au;

    move-result-object v1

    :goto_c
    if-eqz v1, :cond_48

    .line 2655
    invoke-interface {v1}, Lcom/google/common/collect/au;->d()Ljava/lang/Object;

    move-result-object v3

    .line 2656
    invoke-interface {v1}, Lcom/google/common/collect/au;->c()I

    move-result v4

    if-ne v4, p2, :cond_43

    if-eqz v3, :cond_43

    iget-object v4, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    iget-object v4, v4, Lcom/google/common/collect/X;->e:Lcom/google/common/base/q;

    invoke-interface {v4, p1, v3}, Lcom/google/common/base/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 2658
    invoke-interface {v1}, Lcom/google/common/collect/au;->a()Lcom/google/common/collect/aS;

    move-result-object v3

    .line 2659
    if-ne v3, p3, :cond_3f

    .line 2660
    iget v0, p0, Lcom/google/common/collect/av;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/av;->b:I

    .line 2661
    iget-object v0, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/collect/X;->a(Ljava/lang/Object;ILcom/google/common/collect/aS;)V

    .line 2662
    invoke-virtual {p0, v1}, Lcom/google/common/collect/av;->d(Lcom/google/common/collect/au;)V

    .line 2663
    iput v2, p0, Lcom/google/common/collect/av;->a:I
    :try_end_3a
    .catchall {:try_start_4 .. :try_end_3a} :catchall_4c

    .line 2664
    const/4 v0, 0x1

    .line 2672
    invoke-virtual {p0}, Lcom/google/common/collect/av;->unlock()V

    :goto_3e
    return v0

    :cond_3f
    invoke-virtual {p0}, Lcom/google/common/collect/av;->unlock()V

    goto :goto_3e

    .line 2654
    :cond_43
    :try_start_43
    invoke-interface {v1}, Lcom/google/common/collect/au;->b()Lcom/google/common/collect/au;
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_4c

    move-result-object v1

    goto :goto_c

    .line 2672
    :cond_48
    invoke-virtual {p0}, Lcom/google/common/collect/av;->unlock()V

    goto :goto_3e

    :catchall_4c
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/av;->unlock()V

    throw v0
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2301
    invoke-static {p3}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2302
    invoke-static {p4}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2303
    invoke-virtual {p0}, Lcom/google/common/collect/av;->lock()V

    .line 2305
    :try_start_a
    invoke-virtual {p0}, Lcom/google/common/collect/av;->h()V

    .line 2307
    invoke-virtual {p0, p2}, Lcom/google/common/collect/av;->b(I)Lcom/google/common/collect/au;

    move-result-object v1

    :goto_11
    if-eqz v1, :cond_61

    .line 2309
    invoke-interface {v1}, Lcom/google/common/collect/au;->d()Ljava/lang/Object;

    move-result-object v2

    .line 2310
    invoke-interface {v1}, Lcom/google/common/collect/au;->c()I

    move-result v3

    if-ne v3, p2, :cond_5c

    if-eqz v2, :cond_5c

    iget-object v3, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    iget-object v3, v3, Lcom/google/common/collect/X;->e:Lcom/google/common/base/q;

    invoke-interface {v3, p1, v2}, Lcom/google/common/base/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 2314
    invoke-interface {v1}, Lcom/google/common/collect/au;->a()Lcom/google/common/collect/aS;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/collect/aS;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2315
    if-nez v2, :cond_3d

    .line 2316
    invoke-virtual {p0, v1, p2}, Lcom/google/common/collect/av;->c(Lcom/google/common/collect/au;I)Z
    :try_end_36
    .catchall {:try_start_a .. :try_end_36} :catchall_68

    .line 2334
    invoke-virtual {p0}, Lcom/google/common/collect/av;->unlock()V

    .line 2335
    invoke-virtual {p0}, Lcom/google/common/collect/av;->i()V

    :goto_3c
    return v0

    .line 2320
    :cond_3d
    :try_start_3d
    iget-object v3, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    iget-object v3, v3, Lcom/google/common/collect/X;->f:Lcom/google/common/base/q;

    invoke-interface {v3, p3, v2}, Lcom/google/common/base/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 2321
    invoke-virtual {p0, v1, p4}, Lcom/google/common/collect/av;->a(Lcom/google/common/collect/au;Ljava/lang/Object;)V
    :try_end_4a
    .catchall {:try_start_3d .. :try_end_4a} :catchall_68

    .line 2322
    const/4 v0, 0x1

    .line 2334
    invoke-virtual {p0}, Lcom/google/common/collect/av;->unlock()V

    .line 2335
    invoke-virtual {p0}, Lcom/google/common/collect/av;->i()V

    goto :goto_3c

    .line 2326
    :cond_52
    :try_start_52
    invoke-virtual {p0, v1}, Lcom/google/common/collect/av;->b(Lcom/google/common/collect/au;)V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_68

    .line 2334
    invoke-virtual {p0}, Lcom/google/common/collect/av;->unlock()V

    .line 2335
    invoke-virtual {p0}, Lcom/google/common/collect/av;->i()V

    goto :goto_3c

    .line 2308
    :cond_5c
    :try_start_5c
    invoke-interface {v1}, Lcom/google/common/collect/au;->b()Lcom/google/common/collect/au;
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_68

    move-result-object v1

    goto :goto_11

    .line 2334
    :cond_61
    invoke-virtual {p0}, Lcom/google/common/collect/av;->unlock()V

    .line 2335
    invoke-virtual {p0}, Lcom/google/common/collect/av;->i()V

    goto :goto_3c

    .line 2334
    :catchall_68
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/av;->unlock()V

    .line 2335
    invoke-virtual {p0}, Lcom/google/common/collect/av;->i()V

    throw v0
.end method

.method b(I)Lcom/google/common/collect/au;
    .registers 4
    .parameter

    .prologue
    .line 2197
    iget-object v0, p0, Lcom/google/common/collect/av;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2198
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/au;

    return-object v0
.end method

.method b()V
    .registers 2

    .prologue
    .line 2143
    invoke-virtual {p0}, Lcom/google/common/collect/av;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2145
    :try_start_6
    invoke-virtual {p0}, Lcom/google/common/collect/av;->c()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_d

    .line 2147
    invoke-virtual {p0}, Lcom/google/common/collect/av;->unlock()V

    .line 2150
    :cond_c
    return-void

    .line 2147
    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/av;->unlock()V

    throw v0
.end method

.method b(Lcom/google/common/collect/au;)V
    .registers 4
    .parameter

    .prologue
    .line 2081
    iget-object v0, p0, Lcom/google/common/collect/av;->i:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2082
    iget-object v0, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    invoke-virtual {v0}, Lcom/google/common/collect/X;->d()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2083
    iget-object v0, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    iget-wide v0, v0, Lcom/google/common/collect/X;->j:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/collect/av;->a(Lcom/google/common/collect/au;J)V

    .line 2084
    iget-object v0, p0, Lcom/google/common/collect/av;->j:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2086
    :cond_19
    return-void
.end method

.method b(Lcom/google/common/collect/au;I)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2701
    invoke-virtual {p0, p2}, Lcom/google/common/collect/av;->b(I)Lcom/google/common/collect/au;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_12

    .line 2703
    if-ne v0, p1, :cond_d

    .line 2704
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/av;->c(Lcom/google/common/collect/au;I)Z

    move-result v0

    .line 2708
    :goto_c
    return v0

    .line 2702
    :cond_d
    invoke-interface {v0}, Lcom/google/common/collect/au;->b()Lcom/google/common/collect/au;

    move-result-object v0

    goto :goto_4

    .line 2708
    :cond_12
    const/4 v0, 0x0

    goto :goto_c
.end method

.method b(Ljava/lang/Object;I)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2258
    iget v1, p0, Lcom/google/common/collect/av;->a:I

    if-eqz v1, :cond_2d

    .line 2259
    invoke-virtual {p0, p2}, Lcom/google/common/collect/av;->b(I)Lcom/google/common/collect/au;

    move-result-object v1

    :goto_9
    if-eqz v1, :cond_2d

    .line 2261
    invoke-interface {v1}, Lcom/google/common/collect/au;->c()I

    move-result v2

    if-eq v2, p2, :cond_16

    .line 2260
    :cond_11
    invoke-interface {v1}, Lcom/google/common/collect/au;->b()Lcom/google/common/collect/au;

    move-result-object v1

    goto :goto_9

    .line 2265
    :cond_16
    invoke-interface {v1}, Lcom/google/common/collect/au;->d()Ljava/lang/Object;

    move-result-object v2

    .line 2266
    if-eqz v2, :cond_11

    .line 2270
    iget-object v3, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    iget-object v3, v3, Lcom/google/common/collect/X;->e:Lcom/google/common/base/q;

    invoke-interface {v3, p1, v2}, Lcom/google/common/base/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2271
    invoke-virtual {p0, v1}, Lcom/google/common/collect/av;->e(Lcom/google/common/collect/au;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2d

    const/4 v0, 0x1

    .line 2276
    :cond_2d
    return v0
.end method

.method b(Ljava/lang/Object;ILjava/lang/Object;)Z
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2550
    invoke-static {p3}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2551
    invoke-virtual {p0}, Lcom/google/common/collect/av;->lock()V

    .line 2553
    :try_start_7
    invoke-virtual {p0}, Lcom/google/common/collect/av;->h()V

    .line 2555
    iget v0, p0, Lcom/google/common/collect/av;->a:I

    add-int/lit8 v0, v0, -0x1

    .line 2556
    iget-object v3, p0, Lcom/google/common/collect/av;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2557
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 2558
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/au;

    move-object v2, v0

    .line 2560
    :goto_1f
    if-eqz v2, :cond_76

    .line 2561
    invoke-interface {v2}, Lcom/google/common/collect/au;->d()Ljava/lang/Object;

    move-result-object v5

    .line 2562
    invoke-interface {v2}, Lcom/google/common/collect/au;->c()I

    move-result v6

    if-ne v6, p2, :cond_71

    if-eqz v5, :cond_71

    iget-object v6, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    iget-object v6, v6, Lcom/google/common/collect/X;->e:Lcom/google/common/base/q;

    invoke-interface {v6, p1, v5}, Lcom/google/common/base/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 2564
    invoke-interface {v2}, Lcom/google/common/collect/au;->a()Lcom/google/common/collect/aS;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/common/collect/aS;->get()Ljava/lang/Object;

    move-result-object v5

    .line 2565
    if-nez v5, :cond_4c

    .line 2566
    invoke-virtual {p0, v2, p2}, Lcom/google/common/collect/av;->c(Lcom/google/common/collect/au;I)Z
    :try_end_44
    .catchall {:try_start_7 .. :try_end_44} :catchall_7e

    .line 2582
    :cond_44
    invoke-virtual {p0}, Lcom/google/common/collect/av;->unlock()V

    .line 2583
    invoke-virtual {p0}, Lcom/google/common/collect/av;->i()V

    move v0, v1

    :goto_4b
    return v0

    .line 2567
    :cond_4c
    :try_start_4c
    iget-object v6, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    iget-object v6, v6, Lcom/google/common/collect/X;->f:Lcom/google/common/base/q;

    invoke-interface {v6, p3, v5}, Lcom/google/common/base/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 2568
    iget v1, p0, Lcom/google/common/collect/av;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/av;->b:I

    .line 2569
    invoke-virtual {p0, v0, v2}, Lcom/google/common/collect/av;->a(Lcom/google/common/collect/au;Lcom/google/common/collect/au;)Lcom/google/common/collect/au;

    move-result-object v0

    .line 2571
    iget v1, p0, Lcom/google/common/collect/av;->a:I

    add-int/lit8 v1, v1, -0x1

    .line 2572
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2573
    iput v1, p0, Lcom/google/common/collect/av;->a:I
    :try_end_69
    .catchall {:try_start_4c .. :try_end_69} :catchall_7e

    .line 2574
    const/4 v0, 0x1

    .line 2582
    invoke-virtual {p0}, Lcom/google/common/collect/av;->unlock()V

    .line 2583
    invoke-virtual {p0}, Lcom/google/common/collect/av;->i()V

    goto :goto_4b

    .line 2560
    :cond_71
    :try_start_71
    invoke-interface {v2}, Lcom/google/common/collect/au;->b()Lcom/google/common/collect/au;
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_7e

    move-result-object v2

    goto :goto_1f

    .line 2582
    :cond_76
    invoke-virtual {p0}, Lcom/google/common/collect/av;->unlock()V

    .line 2583
    invoke-virtual {p0}, Lcom/google/common/collect/av;->i()V

    move v0, v1

    goto :goto_4b

    .line 2582
    :catchall_7e
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/av;->unlock()V

    .line 2583
    invoke-virtual {p0}, Lcom/google/common/collect/av;->i()V

    throw v0
.end method

.method c(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 2514
    invoke-virtual {p0}, Lcom/google/common/collect/av;->lock()V

    .line 2516
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/av;->h()V

    .line 2518
    iget v0, p0, Lcom/google/common/collect/av;->a:I

    add-int/lit8 v0, v0, -0x1

    .line 2519
    iget-object v3, p0, Lcom/google/common/collect/av;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2520
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 2521
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/au;

    move-object v2, v0

    .line 2523
    :goto_1b
    if-eqz v2, :cond_6a

    .line 2524
    invoke-interface {v2}, Lcom/google/common/collect/au;->d()Ljava/lang/Object;

    move-result-object v1

    .line 2525
    invoke-interface {v2}, Lcom/google/common/collect/au;->c()I

    move-result v5

    if-ne v5, p2, :cond_64

    if-eqz v1, :cond_64

    iget-object v5, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    iget-object v5, v5, Lcom/google/common/collect/X;->e:Lcom/google/common/base/q;

    invoke-interface {v5, p1, v1}, Lcom/google/common/base/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 2527
    invoke-interface {v2}, Lcom/google/common/collect/au;->a()Lcom/google/common/collect/aS;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/aS;->get()Ljava/lang/Object;

    move-result-object v1

    .line 2528
    if-nez v1, :cond_48

    .line 2529
    invoke-virtual {p0, v2, p2}, Lcom/google/common/collect/av;->c(Lcom/google/common/collect/au;I)Z
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_5c

    .line 2544
    :goto_40
    invoke-virtual {p0}, Lcom/google/common/collect/av;->unlock()V

    .line 2545
    invoke-virtual {p0}, Lcom/google/common/collect/av;->i()V

    move-object v0, v1

    :goto_47
    return-object v0

    .line 2531
    :cond_48
    :try_start_48
    iget v5, p0, Lcom/google/common/collect/av;->b:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/common/collect/av;->b:I

    .line 2532
    invoke-virtual {p0, v0, v2}, Lcom/google/common/collect/av;->a(Lcom/google/common/collect/au;Lcom/google/common/collect/au;)Lcom/google/common/collect/au;

    move-result-object v0

    .line 2534
    iget v2, p0, Lcom/google/common/collect/av;->a:I

    add-int/lit8 v2, v2, -0x1

    .line 2535
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2536
    iput v2, p0, Lcom/google/common/collect/av;->a:I
    :try_end_5b
    .catchall {:try_start_48 .. :try_end_5b} :catchall_5c

    goto :goto_40

    .line 2544
    :catchall_5c
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/av;->unlock()V

    .line 2545
    invoke-virtual {p0}, Lcom/google/common/collect/av;->i()V

    throw v0

    .line 2523
    :cond_64
    :try_start_64
    invoke-interface {v2}, Lcom/google/common/collect/au;->b()Lcom/google/common/collect/au;
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_5c

    move-result-object v1

    move-object v2, v1

    goto :goto_1b

    .line 2542
    :cond_6a
    const/4 v0, 0x0

    .line 2544
    invoke-virtual {p0}, Lcom/google/common/collect/av;->unlock()V

    .line 2545
    invoke-virtual {p0}, Lcom/google/common/collect/av;->i()V

    goto :goto_47
.end method

.method c()V
    .registers 5

    .prologue
    .line 2154
    invoke-virtual {p0}, Lcom/google/common/collect/av;->a()V

    .line 2156
    iget-object v0, p0, Lcom/google/common/collect/av;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2168
    :cond_b
    return-void

    .line 2161
    :cond_c
    iget-object v0, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    iget-object v0, v0, Lcom/google/common/collect/X;->p:Lcom/google/common/base/ai;

    invoke-interface {v0}, Lcom/google/common/base/ai;->a()J

    move-result-wide v1

    .line 2163
    :cond_14
    iget-object v0, p0, Lcom/google/common/collect/av;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/au;

    if-eqz v0, :cond_b

    iget-object v3, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    invoke-virtual {v3, v0, v1, v2}, Lcom/google/common/collect/X;->a(Lcom/google/common/collect/au;J)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2164
    invoke-interface {v0}, Lcom/google/common/collect/au;->c()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/google/common/collect/av;->b(Lcom/google/common/collect/au;I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2165
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method c(Lcom/google/common/collect/au;)V
    .registers 4
    .parameter

    .prologue
    .line 2095
    invoke-virtual {p0}, Lcom/google/common/collect/av;->a()V

    .line 2096
    iget-object v0, p0, Lcom/google/common/collect/av;->i:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2097
    iget-object v0, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    invoke-virtual {v0}, Lcom/google/common/collect/X;->b()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2100
    iget-object v0, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    invoke-virtual {v0}, Lcom/google/common/collect/X;->d()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    iget-wide v0, v0, Lcom/google/common/collect/X;->j:J

    .line 2102
    :goto_1c
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/collect/av;->a(Lcom/google/common/collect/au;J)V

    .line 2103
    iget-object v0, p0, Lcom/google/common/collect/av;->j:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2105
    :cond_24
    return-void

    .line 2100
    :cond_25
    iget-object v0, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    iget-wide v0, v0, Lcom/google/common/collect/X;->k:J

    goto :goto_1c
.end method

.method c(Lcom/google/common/collect/au;I)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2713
    iget-object v1, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/X;->d(Lcom/google/common/collect/au;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2729
    :cond_9
    :goto_9
    return v0

    .line 2718
    :cond_a
    iget v1, p0, Lcom/google/common/collect/av;->a:I

    add-int/lit8 v1, v1, -0x1

    .line 2719
    iget v2, p0, Lcom/google/common/collect/av;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/collect/av;->b:I

    .line 2720
    invoke-interface {p1}, Lcom/google/common/collect/au;->a()Lcom/google/common/collect/aS;

    move-result-object v2

    .line 2721
    invoke-interface {v2}, Lcom/google/common/collect/aS;->a()Z

    move-result v3

    if-nez v3, :cond_9

    .line 2725
    invoke-interface {p1}, Lcom/google/common/collect/au;->d()Ljava/lang/Object;

    move-result-object v0

    .line 2726
    iget-object v3, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    invoke-virtual {v3, v0, p2, v2}, Lcom/google/common/collect/X;->a(Ljava/lang/Object;ILcom/google/common/collect/aS;)V

    .line 2727
    invoke-virtual {p0, p1}, Lcom/google/common/collect/av;->d(Lcom/google/common/collect/au;)V

    .line 2728
    iput v1, p0, Lcom/google/common/collect/av;->a:I

    .line 2729
    const/4 v0, 0x1

    goto :goto_9
.end method

.method d(Lcom/google/common/collect/au;)V
    .registers 3
    .parameter

    .prologue
    .line 2734
    invoke-static {}, Lcom/google/common/collect/X;->f()Lcom/google/common/collect/aS;

    move-result-object v0

    .line 2735
    invoke-interface {p1, v0}, Lcom/google/common/collect/au;->a(Lcom/google/common/collect/aS;)V

    .line 2736
    iget-object v0, p0, Lcom/google/common/collect/av;->f:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2737
    iget-object v0, p0, Lcom/google/common/collect/av;->i:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2738
    iget-object v0, p0, Lcom/google/common/collect/av;->j:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2739
    return-void
.end method

.method d()Z
    .registers 3

    .prologue
    .line 2180
    iget-object v0, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    invoke-virtual {v0}, Lcom/google/common/collect/X;->a()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget v0, p0, Lcom/google/common/collect/av;->a:I

    iget v1, p0, Lcom/google/common/collect/av;->e:I

    if-lt v0, v1, :cond_2b

    .line 2181
    invoke-virtual {p0}, Lcom/google/common/collect/av;->a()V

    .line 2183
    iget-object v0, p0, Lcom/google/common/collect/av;->i:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/au;

    .line 2184
    invoke-interface {v0}, Lcom/google/common/collect/au;->c()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/av;->b(Lcom/google/common/collect/au;I)Z

    move-result v0

    if-nez v0, :cond_29

    .line 2185
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2187
    :cond_29
    const/4 v0, 0x1

    .line 2189
    :goto_2a
    return v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method e(Lcom/google/common/collect/au;)Ljava/lang/Object;
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2746
    invoke-interface {p1}, Lcom/google/common/collect/au;->d()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    .line 2757
    :cond_7
    :goto_7
    return-object v0

    .line 2749
    :cond_8
    invoke-interface {p1}, Lcom/google/common/collect/au;->a()Lcom/google/common/collect/aS;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/aS;->get()Ljava/lang/Object;

    move-result-object v1

    .line 2750
    if-eqz v1, :cond_7

    .line 2753
    iget-object v2, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    invoke-virtual {v2}, Lcom/google/common/collect/X;->b()Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/X;->b(Lcom/google/common/collect/au;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 2754
    invoke-virtual {p0}, Lcom/google/common/collect/av;->b()V

    goto :goto_7

    :cond_26
    move-object v0, v1

    .line 2757
    goto :goto_7
.end method

.method e()V
    .registers 11

    .prologue
    .line 2445
    iget-object v6, p0, Lcom/google/common/collect/av;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2446
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v7

    .line 2447
    const/high16 v0, 0x4000

    if-lt v7, v0, :cond_b

    .line 2511
    :goto_a
    return-void

    .line 2465
    :cond_b
    shl-int/lit8 v0, v7, 0x1

    invoke-virtual {p0, v0}, Lcom/google/common/collect/av;->a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v8

    .line 2467
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/collect/av;->c:I

    .line 2468
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    .line 2469
    const/4 v0, 0x0

    move v5, v0

    :goto_23
    if-ge v5, v7, :cond_83

    .line 2472
    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/au;

    .line 2474
    if-eqz v0, :cond_3c

    .line 2475
    invoke-interface {v0}, Lcom/google/common/collect/au;->b()Lcom/google/common/collect/au;

    move-result-object v3

    .line 2476
    invoke-interface {v0}, Lcom/google/common/collect/au;->c()I

    move-result v1

    and-int v2, v1, v9

    .line 2479
    if-nez v3, :cond_40

    .line 2480
    invoke-virtual {v8, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2469
    :cond_3c
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_23

    :cond_40
    move-object v4, v0

    .line 2487
    :goto_41
    if-eqz v3, :cond_52

    .line 2488
    invoke-interface {v3}, Lcom/google/common/collect/au;->c()I

    move-result v1

    and-int/2addr v1, v9

    .line 2489
    if-eq v1, v2, :cond_86

    move-object v2, v3

    .line 2487
    :goto_4b
    invoke-interface {v3}, Lcom/google/common/collect/au;->b()Lcom/google/common/collect/au;

    move-result-object v3

    move-object v4, v2

    move v2, v1

    goto :goto_41

    .line 2495
    :cond_52
    invoke-virtual {v8, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v1, v0

    .line 2498
    :goto_56
    if-eq v1, v4, :cond_3c

    .line 2499
    iget-object v0, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/X;->c(Lcom/google/common/collect/au;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 2500
    invoke-interface {v1}, Lcom/google/common/collect/au;->c()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/av;->c(Lcom/google/common/collect/au;I)Z

    .line 2498
    :goto_67
    invoke-interface {v1}, Lcom/google/common/collect/au;->b()Lcom/google/common/collect/au;

    move-result-object v0

    move-object v1, v0

    goto :goto_56

    .line 2502
    :cond_6d
    invoke-interface {v1}, Lcom/google/common/collect/au;->c()I

    move-result v0

    and-int v2, v0, v9

    .line 2503
    invoke-virtual {v8, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/au;

    .line 2504
    iget-object v3, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    invoke-virtual {v3, v1, v0}, Lcom/google/common/collect/X;->a(Lcom/google/common/collect/au;Lcom/google/common/collect/au;)Lcom/google/common/collect/au;

    move-result-object v0

    invoke-virtual {v8, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_67

    .line 2510
    :cond_83
    iput-object v8, p0, Lcom/google/common/collect/av;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    goto :goto_a

    :cond_86
    move v1, v2

    move-object v2, v4

    goto :goto_4b
.end method

.method f()V
    .registers 7

    .prologue
    .line 2762
    iget-object v4, p0, Lcom/google/common/collect/av;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2764
    const/4 v2, 0x0

    .line 2765
    :goto_3
    const/16 v0, 0x10

    if-ge v2, v0, :cond_40

    iget-object v0, p0, Lcom/google/common/collect/av;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/au;

    if-eqz v0, :cond_40

    .line 2766
    invoke-interface {v0}, Lcom/google/common/collect/au;->c()I

    move-result v1

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    and-int v5, v1, v3

    .line 2768
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/au;

    move-object v3, v1

    .line 2769
    :goto_24
    if-eqz v3, :cond_41

    .line 2770
    if-ne v3, v0, :cond_3b

    .line 2771
    iget-object v0, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    invoke-virtual {v0, v3}, Lcom/google/common/collect/X;->d(Lcom/google/common/collect/au;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2772
    invoke-virtual {p0, v1, v3}, Lcom/google/common/collect/av;->a(Lcom/google/common/collect/au;Lcom/google/common/collect/au;)Lcom/google/common/collect/au;

    move-result-object v0

    .line 2773
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2774
    add-int/lit8 v0, v2, 0x1

    :goto_39
    move v2, v0

    .line 2779
    goto :goto_3

    .line 2769
    :cond_3b
    invoke-interface {v3}, Lcom/google/common/collect/au;->b()Lcom/google/common/collect/au;

    move-result-object v3

    goto :goto_24

    .line 2780
    :cond_40
    return-void

    :cond_41
    move v0, v2

    goto :goto_39
.end method

.method g()V
    .registers 3

    .prologue
    .line 2784
    iget-object v0, p0, Lcom/google/common/collect/av;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_15

    .line 2785
    iget-object v0, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    invoke-virtual {v0}, Lcom/google/common/collect/X;->e()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2788
    invoke-virtual {p0}, Lcom/google/common/collect/av;->j()V

    .line 2793
    :cond_15
    :goto_15
    return-void

    .line 2789
    :cond_16
    invoke-virtual {p0}, Lcom/google/common/collect/av;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_15

    .line 2790
    iget-object v0, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    iget-object v0, v0, Lcom/google/common/collect/X;->o:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/common/collect/av;->k:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_15
.end method

.method h()V
    .registers 2

    .prologue
    .line 2804
    iget-object v0, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    invoke-virtual {v0}, Lcom/google/common/collect/X;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2806
    invoke-virtual {p0}, Lcom/google/common/collect/av;->l()V

    .line 2810
    :goto_b
    return-void

    .line 2808
    :cond_c
    invoke-virtual {p0}, Lcom/google/common/collect/av;->c()V

    goto :goto_b
.end method

.method i()V
    .registers 3

    .prologue
    .line 2813
    iget-object v0, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    invoke-virtual {v0}, Lcom/google/common/collect/X;->e()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2817
    invoke-virtual {p0}, Lcom/google/common/collect/av;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2818
    invoke-virtual {p0}, Lcom/google/common/collect/av;->l()V

    .line 2828
    :cond_11
    :goto_11
    return-void

    .line 2820
    :cond_12
    invoke-virtual {p0}, Lcom/google/common/collect/av;->k()V

    goto :goto_11

    .line 2822
    :cond_16
    invoke-virtual {p0}, Lcom/google/common/collect/av;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2826
    iget-object v0, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    iget-object v0, v0, Lcom/google/common/collect/X;->o:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/common/collect/av;->k:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_11
.end method

.method j()V
    .registers 1

    .prologue
    .line 2839
    invoke-virtual {p0}, Lcom/google/common/collect/av;->l()V

    .line 2841
    invoke-virtual {p0}, Lcom/google/common/collect/av;->k()V

    .line 2842
    return-void
.end method

.method k()V
    .registers 2

    .prologue
    .line 2849
    iget-object v0, p0, Lcom/google/common/collect/av;->l:Lcom/google/common/collect/X;

    invoke-virtual {v0}, Lcom/google/common/collect/X;->i()V

    .line 2850
    return-void
.end method

.method l()V
    .registers 3

    .prologue
    .line 2857
    invoke-virtual {p0}, Lcom/google/common/collect/av;->lock()V

    .line 2859
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/av;->c()V

    .line 2860
    invoke-virtual {p0}, Lcom/google/common/collect/av;->f()V

    .line 2861
    iget-object v0, p0, Lcom/google/common/collect/av;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    .line 2863
    invoke-virtual {p0}, Lcom/google/common/collect/av;->unlock()V

    .line 2865
    return-void

    .line 2863
    :catchall_13
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/av;->unlock()V

    throw v0
.end method

.method m()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 2868
    iget v1, p0, Lcom/google/common/collect/av;->a:I

    if-eqz v1, :cond_33

    .line 2869
    invoke-virtual {p0}, Lcom/google/common/collect/av;->lock()V

    .line 2871
    :try_start_8
    iget-object v1, p0, Lcom/google/common/collect/av;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2872
    :goto_a
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 2873
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2872
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2875
    :cond_17
    iget-object v0, p0, Lcom/google/common/collect/av;->i:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 2876
    iget-object v0, p0, Lcom/google/common/collect/av;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 2877
    iget-object v0, p0, Lcom/google/common/collect/av;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2879
    iget v0, p0, Lcom/google/common/collect/av;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/av;->b:I

    .line 2880
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/av;->a:I
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_34

    .line 2882
    invoke-virtual {p0}, Lcom/google/common/collect/av;->unlock()V

    .line 2885
    :cond_33
    return-void

    .line 2882
    :catchall_34
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/av;->unlock()V

    throw v0
.end method
