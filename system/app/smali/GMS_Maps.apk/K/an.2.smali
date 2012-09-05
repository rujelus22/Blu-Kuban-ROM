.class LK/an;
.super Ljava/util/concurrent/locks/ReentrantLock;


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

.field final synthetic l:LK/P;


# direct methods
.method constructor <init>(LK/P;II)V
    .registers 5

    iput-object p1, p0, LK/an;->l:LK/P;

    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, LK/an;->f:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, LK/an;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, LK/ao;

    invoke-direct {v0, p0}, LK/ao;-><init>(LK/an;)V

    iput-object v0, p0, LK/an;->k:Ljava/lang/Runnable;

    iput p3, p0, LK/an;->e:I

    invoke-virtual {p0, p2}, LK/an;->a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {p0, v0}, LK/an;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    invoke-virtual {p1}, LK/P;->a()Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {p1}, LK/P;->d()Z

    move-result v0

    if-eqz v0, :cond_51

    :cond_2f
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :goto_34
    iput-object v0, p0, LK/an;->g:Ljava/util/Queue;

    invoke-virtual {p1}, LK/P;->a()Z

    move-result v0

    if-eqz v0, :cond_56

    new-instance v0, LK/ap;

    invoke-direct {v0, p0}, LK/ap;-><init>(LK/an;)V

    :goto_41
    iput-object v0, p0, LK/an;->i:Ljava/util/Queue;

    invoke-virtual {p1}, LK/P;->b()Z

    move-result v0

    if-eqz v0, :cond_5b

    new-instance v0, LK/as;

    invoke-direct {v0, p0}, LK/as;-><init>(LK/an;)V

    :goto_4e
    iput-object v0, p0, LK/an;->j:Ljava/util/Queue;

    return-void

    :cond_51
    invoke-static {}, LK/P;->h()Ljava/util/Queue;

    move-result-object v0

    goto :goto_34

    :cond_56
    invoke-static {}, LK/P;->h()Ljava/util/Queue;

    move-result-object v0

    goto :goto_41

    :cond_5b
    invoke-static {}, LK/P;->h()Ljava/util/Queue;

    move-result-object v0

    goto :goto_4e
.end method


# virtual methods
.method a(LK/am;LK/am;)LK/am;
    .registers 5

    iget-object v0, p0, LK/an;->i:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, LK/an;->j:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    invoke-interface {p2}, LK/am;->b()LK/am;

    move-result-object v0

    :goto_e
    if-eq p1, p2, :cond_2b

    iget-object v1, p0, LK/an;->l:LK/P;

    invoke-virtual {v1, p1}, LK/P;->c(LK/am;)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p1}, LK/am;->c()I

    move-result v1

    invoke-virtual {p0, p1, v1}, LK/an;->c(LK/am;I)Z

    :goto_1f
    invoke-interface {p1}, LK/am;->b()LK/am;

    move-result-object p1

    goto :goto_e

    :cond_24
    iget-object v1, p0, LK/an;->l:LK/P;

    invoke-virtual {v1, p1, v0}, LK/P;->a(LK/am;LK/am;)LK/am;

    move-result-object v0

    goto :goto_1f

    :cond_2b
    return-object v0
.end method

.method a(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 6

    :try_start_0
    iget v0, p0, LK/an;->a:I

    if-eqz v0, :cond_34

    invoke-virtual {p0, p2}, LK/an;->b(I)LK/am;

    move-result-object v0

    move-object v1, v0

    :goto_9
    if-eqz v1, :cond_34

    invoke-interface {v1}, LK/am;->c()I

    move-result v0

    if-eq v0, p2, :cond_17

    :cond_11
    invoke-interface {v1}, LK/am;->b()LK/am;

    move-result-object v0

    move-object v1, v0

    goto :goto_9

    :cond_17
    invoke-interface {v1}, LK/am;->d()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v2, p0, LK/an;->l:LK/P;

    iget-object v2, v2, LK/P;->e:Lcom/google/common/base/b;

    invoke-interface {v2, p1, v0}, Lcom/google/common/base/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0, v1}, LK/an;->e(LK/am;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {p0, v1}, LK/an;->a(LK/am;)V
    :try_end_30
    .catchall {:try_start_0 .. :try_end_30} :catchall_39

    :cond_30
    invoke-virtual {p0}, LK/an;->g()V

    :goto_33
    return-object v0

    :cond_34
    const/4 v0, 0x0

    invoke-virtual {p0}, LK/an;->g()V

    goto :goto_33

    :catchall_39
    move-exception v0

    invoke-virtual {p0}, LK/an;->g()V

    throw v0
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const/4 v0, 0x0

    invoke-static {p3}, Lcom/google/common/base/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, LK/an;->lock()V

    :try_start_7
    invoke-virtual {p0}, LK/an;->h()V

    invoke-virtual {p0, p2}, LK/an;->b(I)LK/am;

    move-result-object v1

    move-object v2, v1

    :goto_f
    if-eqz v2, :cond_4c

    invoke-interface {v2}, LK/am;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2}, LK/am;->c()I

    move-result v3

    if-ne v3, p2, :cond_46

    if-eqz v1, :cond_46

    iget-object v3, p0, LK/an;->l:LK/P;

    iget-object v3, v3, LK/P;->e:Lcom/google/common/base/b;

    invoke-interface {v3, p1, v1}, Lcom/google/common/base/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v2}, LK/am;->a()LK/aK;

    move-result-object v1

    invoke-interface {v1}, LK/aK;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3b

    invoke-virtual {p0, v2, p2}, LK/an;->c(LK/am;I)Z
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_53

    invoke-virtual {p0}, LK/an;->unlock()V

    invoke-virtual {p0}, LK/an;->i()V

    :goto_3a
    return-object v0

    :cond_3b
    :try_start_3b
    invoke-virtual {p0, v2, p3}, LK/an;->a(LK/am;Ljava/lang/Object;)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_53

    invoke-virtual {p0}, LK/an;->unlock()V

    invoke-virtual {p0}, LK/an;->i()V

    move-object v0, v1

    goto :goto_3a

    :cond_46
    :try_start_46
    invoke-interface {v2}, LK/am;->b()LK/am;
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_53

    move-result-object v1

    move-object v2, v1

    goto :goto_f

    :cond_4c
    invoke-virtual {p0}, LK/an;->unlock()V

    invoke-virtual {p0}, LK/an;->i()V

    goto :goto_3a

    :catchall_53
    move-exception v0

    invoke-virtual {p0}, LK/an;->unlock()V

    invoke-virtual {p0}, LK/an;->i()V

    throw v0
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .registers 12

    invoke-static {p3}, Lcom/google/common/base/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, LK/an;->lock()V

    :try_start_6
    invoke-virtual {p0}, LK/an;->h()V

    iget v0, p0, LK/an;->a:I

    add-int/lit8 v1, v0, 0x1

    iget v0, p0, LK/an;->c:I

    if-le v1, v0, :cond_18

    invoke-virtual {p0}, LK/an;->e()V

    iget v0, p0, LK/an;->a:I

    add-int/lit8 v1, v0, 0x1

    :cond_18
    iget-object v3, p0, LK/an;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK/am;

    move-object v2, v0

    :goto_29
    if-eqz v2, :cond_78

    invoke-interface {v2}, LK/am;->d()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2}, LK/am;->c()I

    move-result v6

    if-ne v6, p2, :cond_73

    if-eqz v5, :cond_73

    iget-object v6, p0, LK/an;->l:LK/P;

    iget-object v6, v6, LK/P;->e:Lcom/google/common/base/b;

    invoke-interface {v6, p1, v5}, Lcom/google/common/base/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_73

    invoke-interface {v2}, LK/am;->a()LK/aK;

    move-result-object v1

    invoke-interface {v1}, LK/aK;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_67

    iget v3, p0, LK/an;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, LK/an;->b:I

    invoke-interface {v1}, LK/aK;->b()V

    invoke-virtual {p0}, LK/an;->d()Z

    iget v1, p0, LK/an;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LK/an;->a:I

    :cond_5d
    invoke-virtual {p0, v2, p3}, LK/an;->a(LK/am;Ljava/lang/Object;)V
    :try_end_60
    .catchall {:try_start_6 .. :try_end_60} :catchall_a4

    invoke-virtual {p0}, LK/an;->unlock()V

    invoke-virtual {p0}, LK/an;->i()V

    :goto_66
    return-object v0

    :cond_67
    if-eqz p4, :cond_5d

    :try_start_69
    invoke-virtual {p0, v2}, LK/an;->b(LK/am;)V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_a4

    invoke-virtual {p0}, LK/an;->unlock()V

    invoke-virtual {p0}, LK/an;->i()V

    goto :goto_66

    :cond_73
    :try_start_73
    invoke-interface {v2}, LK/am;->b()LK/am;

    move-result-object v2

    goto :goto_29

    :cond_78
    invoke-virtual {p0}, LK/an;->d()Z

    move-result v2

    if-eqz v2, :cond_88

    iget v0, p0, LK/an;->a:I

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK/am;

    :cond_88
    iget v2, p0, LK/an;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, LK/an;->b:I

    iget-object v2, p0, LK/an;->l:LK/P;

    invoke-virtual {v2, p1, p2, v0}, LK/P;->a(Ljava/lang/Object;ILK/am;)LK/am;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, LK/an;->a(LK/am;Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v1, p0, LK/an;->a:I
    :try_end_9c
    .catchall {:try_start_73 .. :try_end_9c} :catchall_a4

    const/4 v0, 0x0

    invoke-virtual {p0}, LK/an;->unlock()V

    invoke-virtual {p0}, LK/an;->i()V

    goto :goto_66

    :catchall_a4
    move-exception v0

    invoke-virtual {p0}, LK/an;->unlock()V

    invoke-virtual {p0}, LK/an;->i()V

    throw v0
.end method

.method a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .registers 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method a()V
    .registers 3

    :cond_0
    :goto_0
    iget-object v0, p0, LK/an;->g:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK/am;

    if-eqz v0, :cond_2d

    iget-object v1, p0, LK/an;->i:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, LK/an;->i:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_17
    iget-object v1, p0, LK/an;->l:LK/P;

    invoke-virtual {v1}, LK/P;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LK/an;->j:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LK/an;->j:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2d
    return-void
.end method

.method a(LK/am;)V
    .registers 4

    iget-object v0, p0, LK/an;->l:LK/P;

    invoke-virtual {v0}, LK/P;->d()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, LK/an;->l:LK/P;

    iget-wide v0, v0, LK/P;->j:J

    invoke-virtual {p0, p1, v0, v1}, LK/an;->a(LK/am;J)V

    :cond_f
    iget-object v0, p0, LK/an;->g:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(LK/am;J)V
    .registers 6

    iget-object v0, p0, LK/an;->l:LK/P;

    iget-object v0, v0, LK/P;->p:Lcom/google/common/base/A;

    invoke-interface {v0}, Lcom/google/common/base/A;->a()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-interface {p1, v0, v1}, LK/am;->a(J)V

    return-void
.end method

.method a(LK/am;Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p0, p1}, LK/an;->c(LK/am;)V

    iget-object v0, p0, LK/an;->l:LK/P;

    invoke-virtual {v0, p1, p2}, LK/P;->a(LK/am;Ljava/lang/Object;)LK/aK;

    move-result-object v0

    invoke-interface {p1, v0}, LK/am;->a(LK/aK;)V

    return-void
.end method

.method a(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .registers 4

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, LK/an;->c:I

    iget v0, p0, LK/an;->c:I

    iget v1, p0, LK/an;->e:I

    if-ne v0, v1, :cond_16

    iget v0, p0, LK/an;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LK/an;->c:I

    :cond_16
    iput-object p1, p0, LK/an;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-void
.end method

.method a(LK/am;I)Z
    .registers 8

    invoke-virtual {p0}, LK/an;->lock()V

    :try_start_3
    iget v0, p0, LK/an;->a:I

    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, LK/an;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, p2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK/am;

    :goto_16
    if-eqz v0, :cond_3c

    if-ne v0, p1, :cond_37

    iget v2, p0, LK/an;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, LK/an;->b:I

    iget-object v2, p0, LK/an;->l:LK/P;

    invoke-interface {v0}, LK/am;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, LK/am;->a()LK/aK;

    move-result-object v4

    invoke-virtual {v2, v3, p2, v4}, LK/P;->a(Ljava/lang/Object;ILK/aK;)V

    invoke-virtual {p0, v0}, LK/an;->d(LK/am;)V

    iput v1, p0, LK/an;->a:I
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_41

    const/4 v0, 0x1

    invoke-virtual {p0}, LK/an;->unlock()V

    :goto_36
    return v0

    :cond_37
    :try_start_37
    invoke-interface {v0}, LK/am;->b()LK/am;
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_41

    move-result-object v0

    goto :goto_16

    :cond_3c
    const/4 v0, 0x0

    invoke-virtual {p0}, LK/an;->unlock()V

    goto :goto_36

    :catchall_41
    move-exception v0

    invoke-virtual {p0}, LK/an;->unlock()V

    throw v0
.end method

.method a(Ljava/lang/Object;)Z
    .registers 9

    const/4 v1, 0x0

    iget v0, p0, LK/an;->a:I

    if-eqz v0, :cond_31

    iget-object v3, p0, LK/an;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    move v2, v1

    :goto_c
    if-ge v2, v4, :cond_31

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK/am;

    :goto_14
    if-eqz v0, :cond_2d

    invoke-virtual {p0, v0}, LK/an;->e(LK/am;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_21

    :cond_1c
    invoke-interface {v0}, LK/am;->b()LK/am;

    move-result-object v0

    goto :goto_14

    :cond_21
    iget-object v6, p0, LK/an;->l:LK/P;

    iget-object v6, v6, LK/P;->f:Lcom/google/common/base/b;

    invoke-interface {v6, p1, v5}, Lcom/google/common/base/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const/4 v0, 0x1

    :goto_2c
    return v0

    :cond_2d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    :cond_31
    move v0, v1

    goto :goto_2c
.end method

.method a(Ljava/lang/Object;ILK/aK;)Z
    .registers 9

    const/4 v0, 0x0

    invoke-virtual {p0}, LK/an;->lock()V

    :try_start_4
    iget v1, p0, LK/an;->a:I

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, p2}, LK/an;->b(I)LK/am;

    move-result-object v1

    :goto_c
    if-eqz v1, :cond_48

    invoke-interface {v1}, LK/am;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, LK/am;->c()I

    move-result v4

    if-ne v4, p2, :cond_43

    if-eqz v3, :cond_43

    iget-object v4, p0, LK/an;->l:LK/P;

    iget-object v4, v4, LK/P;->e:Lcom/google/common/base/b;

    invoke-interface {v4, p1, v3}, Lcom/google/common/base/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v1}, LK/am;->a()LK/aK;

    move-result-object v3

    if-ne v3, p3, :cond_3f

    iget v0, p0, LK/an;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LK/an;->b:I

    iget-object v0, p0, LK/an;->l:LK/P;

    invoke-virtual {v0, p1, p2, p3}, LK/P;->a(Ljava/lang/Object;ILK/aK;)V

    invoke-virtual {p0, v1}, LK/an;->d(LK/am;)V

    iput v2, p0, LK/an;->a:I
    :try_end_3a
    .catchall {:try_start_4 .. :try_end_3a} :catchall_4c

    const/4 v0, 0x1

    invoke-virtual {p0}, LK/an;->unlock()V

    :goto_3e
    return v0

    :cond_3f
    invoke-virtual {p0}, LK/an;->unlock()V

    goto :goto_3e

    :cond_43
    :try_start_43
    invoke-interface {v1}, LK/am;->b()LK/am;
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_4c

    move-result-object v1

    goto :goto_c

    :cond_48
    invoke-virtual {p0}, LK/an;->unlock()V

    goto :goto_3e

    :catchall_4c
    move-exception v0

    invoke-virtual {p0}, LK/an;->unlock()V

    throw v0
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x0

    invoke-static {p3}, Lcom/google/common/base/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/google/common/base/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, LK/an;->lock()V

    :try_start_a
    invoke-virtual {p0}, LK/an;->h()V

    invoke-virtual {p0, p2}, LK/an;->b(I)LK/am;

    move-result-object v1

    :goto_11
    if-eqz v1, :cond_61

    invoke-interface {v1}, LK/am;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, LK/am;->c()I

    move-result v3

    if-ne v3, p2, :cond_5c

    if-eqz v2, :cond_5c

    iget-object v3, p0, LK/an;->l:LK/P;

    iget-object v3, v3, LK/P;->e:Lcom/google/common/base/b;

    invoke-interface {v3, p1, v2}, Lcom/google/common/base/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v1}, LK/am;->a()LK/aK;

    move-result-object v2

    invoke-interface {v2}, LK/aK;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3d

    invoke-virtual {p0, v1, p2}, LK/an;->c(LK/am;I)Z
    :try_end_36
    .catchall {:try_start_a .. :try_end_36} :catchall_68

    invoke-virtual {p0}, LK/an;->unlock()V

    invoke-virtual {p0}, LK/an;->i()V

    :goto_3c
    return v0

    :cond_3d
    :try_start_3d
    iget-object v3, p0, LK/an;->l:LK/P;

    iget-object v3, v3, LK/P;->f:Lcom/google/common/base/b;

    invoke-interface {v3, p3, v2}, Lcom/google/common/base/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-virtual {p0, v1, p4}, LK/an;->a(LK/am;Ljava/lang/Object;)V
    :try_end_4a
    .catchall {:try_start_3d .. :try_end_4a} :catchall_68

    const/4 v0, 0x1

    invoke-virtual {p0}, LK/an;->unlock()V

    invoke-virtual {p0}, LK/an;->i()V

    goto :goto_3c

    :cond_52
    :try_start_52
    invoke-virtual {p0, v1}, LK/an;->b(LK/am;)V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_68

    invoke-virtual {p0}, LK/an;->unlock()V

    invoke-virtual {p0}, LK/an;->i()V

    goto :goto_3c

    :cond_5c
    :try_start_5c
    invoke-interface {v1}, LK/am;->b()LK/am;
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_68

    move-result-object v1

    goto :goto_11

    :cond_61
    invoke-virtual {p0}, LK/an;->unlock()V

    invoke-virtual {p0}, LK/an;->i()V

    goto :goto_3c

    :catchall_68
    move-exception v0

    invoke-virtual {p0}, LK/an;->unlock()V

    invoke-virtual {p0}, LK/an;->i()V

    throw v0
.end method

.method b(I)LK/am;
    .registers 4

    iget-object v0, p0, LK/an;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK/am;

    return-object v0
.end method

.method b()V
    .registers 2

    invoke-virtual {p0}, LK/an;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_c

    :try_start_6
    invoke-virtual {p0}, LK/an;->c()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_d

    invoke-virtual {p0}, LK/an;->unlock()V

    :cond_c
    return-void

    :catchall_d
    move-exception v0

    invoke-virtual {p0}, LK/an;->unlock()V

    throw v0
.end method

.method b(LK/am;)V
    .registers 4

    iget-object v0, p0, LK/an;->i:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LK/an;->l:LK/P;

    invoke-virtual {v0}, LK/P;->d()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, LK/an;->l:LK/P;

    iget-wide v0, v0, LK/P;->j:J

    invoke-virtual {p0, p1, v0, v1}, LK/an;->a(LK/am;J)V

    iget-object v0, p0, LK/an;->j:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_19
    return-void
.end method

.method b(LK/am;I)Z
    .registers 4

    invoke-virtual {p0, p2}, LK/an;->b(I)LK/am;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_12

    if-ne v0, p1, :cond_d

    invoke-virtual {p0, p1, p2}, LK/an;->c(LK/am;I)Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    invoke-interface {v0}, LK/am;->b()LK/am;

    move-result-object v0

    goto :goto_4

    :cond_12
    const/4 v0, 0x0

    goto :goto_c
.end method

.method b(Ljava/lang/Object;I)Z
    .registers 7

    const/4 v0, 0x0

    iget v1, p0, LK/an;->a:I

    if-eqz v1, :cond_2d

    invoke-virtual {p0, p2}, LK/an;->b(I)LK/am;

    move-result-object v1

    :goto_9
    if-eqz v1, :cond_2d

    invoke-interface {v1}, LK/am;->c()I

    move-result v2

    if-eq v2, p2, :cond_16

    :cond_11
    invoke-interface {v1}, LK/am;->b()LK/am;

    move-result-object v1

    goto :goto_9

    :cond_16
    invoke-interface {v1}, LK/am;->d()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_11

    iget-object v3, p0, LK/an;->l:LK/P;

    iget-object v3, v3, LK/P;->e:Lcom/google/common/base/b;

    invoke-interface {v3, p1, v2}, Lcom/google/common/base/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {p0, v1}, LK/an;->e(LK/am;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2d

    const/4 v0, 0x1

    :cond_2d
    return v0
.end method

.method b(Ljava/lang/Object;ILjava/lang/Object;)Z
    .registers 11

    const/4 v1, 0x0

    invoke-static {p3}, Lcom/google/common/base/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, LK/an;->lock()V

    :try_start_7
    invoke-virtual {p0}, LK/an;->h()V

    iget v0, p0, LK/an;->a:I

    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, LK/an;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK/am;

    move-object v2, v0

    :goto_1f
    if-eqz v2, :cond_76

    invoke-interface {v2}, LK/am;->d()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2}, LK/am;->c()I

    move-result v6

    if-ne v6, p2, :cond_71

    if-eqz v5, :cond_71

    iget-object v6, p0, LK/an;->l:LK/P;

    iget-object v6, v6, LK/P;->e:Lcom/google/common/base/b;

    invoke-interface {v6, p1, v5}, Lcom/google/common/base/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_71

    invoke-interface {v2}, LK/am;->a()LK/aK;

    move-result-object v5

    invoke-interface {v5}, LK/aK;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4c

    invoke-virtual {p0, v2, p2}, LK/an;->c(LK/am;I)Z
    :try_end_44
    .catchall {:try_start_7 .. :try_end_44} :catchall_7e

    :cond_44
    invoke-virtual {p0}, LK/an;->unlock()V

    invoke-virtual {p0}, LK/an;->i()V

    move v0, v1

    :goto_4b
    return v0

    :cond_4c
    :try_start_4c
    iget-object v6, p0, LK/an;->l:LK/P;

    iget-object v6, v6, LK/P;->f:Lcom/google/common/base/b;

    invoke-interface {v6, p3, v5}, Lcom/google/common/base/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    iget v1, p0, LK/an;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LK/an;->b:I

    invoke-virtual {p0, v0, v2}, LK/an;->a(LK/am;LK/am;)LK/am;

    move-result-object v0

    iget v1, p0, LK/an;->a:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v1, p0, LK/an;->a:I
    :try_end_69
    .catchall {:try_start_4c .. :try_end_69} :catchall_7e

    const/4 v0, 0x1

    invoke-virtual {p0}, LK/an;->unlock()V

    invoke-virtual {p0}, LK/an;->i()V

    goto :goto_4b

    :cond_71
    :try_start_71
    invoke-interface {v2}, LK/am;->b()LK/am;
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_7e

    move-result-object v2

    goto :goto_1f

    :cond_76
    invoke-virtual {p0}, LK/an;->unlock()V

    invoke-virtual {p0}, LK/an;->i()V

    move v0, v1

    goto :goto_4b

    :catchall_7e
    move-exception v0

    invoke-virtual {p0}, LK/an;->unlock()V

    invoke-virtual {p0}, LK/an;->i()V

    throw v0
.end method

.method c(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 9

    invoke-virtual {p0}, LK/an;->lock()V

    :try_start_3
    invoke-virtual {p0}, LK/an;->h()V

    iget v0, p0, LK/an;->a:I

    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, LK/an;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK/am;

    move-object v2, v0

    :goto_1b
    if-eqz v2, :cond_6a

    invoke-interface {v2}, LK/am;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2}, LK/am;->c()I

    move-result v5

    if-ne v5, p2, :cond_64

    if-eqz v1, :cond_64

    iget-object v5, p0, LK/an;->l:LK/P;

    iget-object v5, v5, LK/P;->e:Lcom/google/common/base/b;

    invoke-interface {v5, p1, v1}, Lcom/google/common/base/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {v2}, LK/am;->a()LK/aK;

    move-result-object v1

    invoke-interface {v1}, LK/aK;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_48

    invoke-virtual {p0, v2, p2}, LK/an;->c(LK/am;I)Z
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_5c

    :goto_40
    invoke-virtual {p0}, LK/an;->unlock()V

    invoke-virtual {p0}, LK/an;->i()V

    move-object v0, v1

    :goto_47
    return-object v0

    :cond_48
    :try_start_48
    iget v5, p0, LK/an;->b:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, LK/an;->b:I

    invoke-virtual {p0, v0, v2}, LK/an;->a(LK/am;LK/am;)LK/am;

    move-result-object v0

    iget v2, p0, LK/an;->a:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v2, p0, LK/an;->a:I
    :try_end_5b
    .catchall {:try_start_48 .. :try_end_5b} :catchall_5c

    goto :goto_40

    :catchall_5c
    move-exception v0

    invoke-virtual {p0}, LK/an;->unlock()V

    invoke-virtual {p0}, LK/an;->i()V

    throw v0

    :cond_64
    :try_start_64
    invoke-interface {v2}, LK/am;->b()LK/am;
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_5c

    move-result-object v1

    move-object v2, v1

    goto :goto_1b

    :cond_6a
    const/4 v0, 0x0

    invoke-virtual {p0}, LK/an;->unlock()V

    invoke-virtual {p0}, LK/an;->i()V

    goto :goto_47
.end method

.method c()V
    .registers 5

    invoke-virtual {p0}, LK/an;->a()V

    iget-object v0, p0, LK/an;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    return-void

    :cond_c
    iget-object v0, p0, LK/an;->l:LK/P;

    iget-object v0, v0, LK/P;->p:Lcom/google/common/base/A;

    invoke-interface {v0}, Lcom/google/common/base/A;->a()J

    move-result-wide v1

    :cond_14
    iget-object v0, p0, LK/an;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK/am;

    if-eqz v0, :cond_b

    iget-object v3, p0, LK/an;->l:LK/P;

    invoke-virtual {v3, v0, v1, v2}, LK/P;->a(LK/am;J)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, LK/am;->c()I

    move-result v3

    invoke-virtual {p0, v0, v3}, LK/an;->b(LK/am;I)Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method c(LK/am;)V
    .registers 4

    invoke-virtual {p0}, LK/an;->a()V

    iget-object v0, p0, LK/an;->i:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LK/an;->l:LK/P;

    invoke-virtual {v0}, LK/P;->b()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, LK/an;->l:LK/P;

    invoke-virtual {v0}, LK/P;->d()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, LK/an;->l:LK/P;

    iget-wide v0, v0, LK/P;->j:J

    :goto_1c
    invoke-virtual {p0, p1, v0, v1}, LK/an;->a(LK/am;J)V

    iget-object v0, p0, LK/an;->j:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_24
    return-void

    :cond_25
    iget-object v0, p0, LK/an;->l:LK/P;

    iget-wide v0, v0, LK/P;->k:J

    goto :goto_1c
.end method

.method c(LK/am;I)Z
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, LK/an;->l:LK/P;

    invoke-virtual {v1, p1}, LK/P;->d(LK/am;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget v1, p0, LK/an;->a:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, LK/an;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, LK/an;->b:I

    invoke-interface {p1}, LK/am;->a()LK/aK;

    move-result-object v2

    invoke-interface {v2}, LK/aK;->a()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-interface {p1}, LK/am;->d()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, LK/an;->l:LK/P;

    invoke-virtual {v3, v0, p2, v2}, LK/P;->a(Ljava/lang/Object;ILK/aK;)V

    invoke-virtual {p0, p1}, LK/an;->d(LK/am;)V

    iput v1, p0, LK/an;->a:I

    const/4 v0, 0x1

    goto :goto_9
.end method

.method d(LK/am;)V
    .registers 3

    invoke-static {}, LK/P;->f()LK/aK;

    move-result-object v0

    invoke-interface {p1, v0}, LK/am;->a(LK/aK;)V

    iget-object v0, p0, LK/an;->f:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-object v0, p0, LK/an;->i:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, LK/an;->j:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method d()Z
    .registers 3

    iget-object v0, p0, LK/an;->l:LK/P;

    invoke-virtual {v0}, LK/P;->a()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget v0, p0, LK/an;->a:I

    iget v1, p0, LK/an;->e:I

    if-lt v0, v1, :cond_2b

    invoke-virtual {p0}, LK/an;->a()V

    iget-object v0, p0, LK/an;->i:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK/am;

    invoke-interface {v0}, LK/am;->c()I

    move-result v1

    invoke-virtual {p0, v0, v1}, LK/an;->b(LK/am;I)Z

    move-result v0

    if-nez v0, :cond_29

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_29
    const/4 v0, 0x1

    :goto_2a
    return v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method e(LK/am;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    invoke-interface {p1}, LK/am;->d()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    invoke-interface {p1}, LK/am;->a()LK/aK;

    move-result-object v1

    invoke-interface {v1}, LK/aK;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v2, p0, LK/an;->l:LK/P;

    invoke-virtual {v2}, LK/P;->b()Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, p0, LK/an;->l:LK/P;

    invoke-virtual {v2, p1}, LK/P;->b(LK/am;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {p0}, LK/an;->b()V

    goto :goto_7

    :cond_26
    move-object v0, v1

    goto :goto_7
.end method

.method e()V
    .registers 11

    iget-object v6, p0, LK/an;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v7

    const/high16 v0, 0x4000

    if-lt v7, v0, :cond_b

    :goto_a
    return-void

    :cond_b
    shl-int/lit8 v0, v7, 0x1

    invoke-virtual {p0, v0}, LK/an;->a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, LK/an;->c:I

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    const/4 v0, 0x0

    move v5, v0

    :goto_23
    if-ge v5, v7, :cond_83

    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK/am;

    if-eqz v0, :cond_3c

    invoke-interface {v0}, LK/am;->b()LK/am;

    move-result-object v3

    invoke-interface {v0}, LK/am;->c()I

    move-result v1

    and-int v2, v1, v9

    if-nez v3, :cond_40

    invoke-virtual {v8, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :cond_3c
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_23

    :cond_40
    move-object v4, v0

    :goto_41
    if-eqz v3, :cond_52

    invoke-interface {v3}, LK/am;->c()I

    move-result v1

    and-int/2addr v1, v9

    if-eq v1, v2, :cond_86

    move-object v2, v3

    :goto_4b
    invoke-interface {v3}, LK/am;->b()LK/am;

    move-result-object v3

    move-object v4, v2

    move v2, v1

    goto :goto_41

    :cond_52
    invoke-virtual {v8, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v1, v0

    :goto_56
    if-eq v1, v4, :cond_3c

    iget-object v0, p0, LK/an;->l:LK/P;

    invoke-virtual {v0, v1}, LK/P;->c(LK/am;)Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {v1}, LK/am;->c()I

    move-result v0

    invoke-virtual {p0, v1, v0}, LK/an;->c(LK/am;I)Z

    :goto_67
    invoke-interface {v1}, LK/am;->b()LK/am;

    move-result-object v0

    move-object v1, v0

    goto :goto_56

    :cond_6d
    invoke-interface {v1}, LK/am;->c()I

    move-result v0

    and-int v2, v0, v9

    invoke-virtual {v8, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK/am;

    iget-object v3, p0, LK/an;->l:LK/P;

    invoke-virtual {v3, v1, v0}, LK/P;->a(LK/am;LK/am;)LK/am;

    move-result-object v0

    invoke-virtual {v8, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_67

    :cond_83
    iput-object v8, p0, LK/an;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    goto :goto_a

    :cond_86
    move v1, v2

    move-object v2, v4

    goto :goto_4b
.end method

.method f()V
    .registers 7

    iget-object v4, p0, LK/an;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v2, 0x0

    :goto_3
    const/16 v0, 0x10

    if-ge v2, v0, :cond_40

    iget-object v0, p0, LK/an;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK/am;

    if-eqz v0, :cond_40

    invoke-interface {v0}, LK/am;->c()I

    move-result v1

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    and-int v5, v1, v3

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LK/am;

    move-object v3, v1

    :goto_24
    if-eqz v3, :cond_41

    if-ne v3, v0, :cond_3b

    iget-object v0, p0, LK/an;->l:LK/P;

    invoke-virtual {v0, v3}, LK/P;->d(LK/am;)Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {p0, v1, v3}, LK/an;->a(LK/am;LK/am;)LK/am;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v0, v2, 0x1

    :goto_39
    move v2, v0

    goto :goto_3

    :cond_3b
    invoke-interface {v3}, LK/am;->b()LK/am;

    move-result-object v3

    goto :goto_24

    :cond_40
    return-void

    :cond_41
    move v0, v2

    goto :goto_39
.end method

.method g()V
    .registers 3

    iget-object v0, p0, LK/an;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_15

    iget-object v0, p0, LK/an;->l:LK/P;

    invoke-virtual {v0}, LK/P;->e()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, LK/an;->j()V

    :cond_15
    :goto_15
    return-void

    :cond_16
    invoke-virtual {p0}, LK/an;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, LK/an;->l:LK/P;

    iget-object v0, v0, LK/P;->o:Ljava/util/concurrent/Executor;

    iget-object v1, p0, LK/an;->k:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_15
.end method

.method h()V
    .registers 2

    iget-object v0, p0, LK/an;->l:LK/P;

    invoke-virtual {v0}, LK/P;->e()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, LK/an;->l()V

    :goto_b
    return-void

    :cond_c
    invoke-virtual {p0}, LK/an;->c()V

    goto :goto_b
.end method

.method i()V
    .registers 3

    iget-object v0, p0, LK/an;->l:LK/P;

    invoke-virtual {v0}, LK/P;->e()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, LK/an;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, LK/an;->l()V

    :cond_11
    :goto_11
    return-void

    :cond_12
    invoke-virtual {p0}, LK/an;->k()V

    goto :goto_11

    :cond_16
    invoke-virtual {p0}, LK/an;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, LK/an;->l:LK/P;

    iget-object v0, v0, LK/P;->o:Ljava/util/concurrent/Executor;

    iget-object v1, p0, LK/an;->k:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_11
.end method

.method j()V
    .registers 1

    invoke-virtual {p0}, LK/an;->l()V

    invoke-virtual {p0}, LK/an;->k()V

    return-void
.end method

.method k()V
    .registers 2

    iget-object v0, p0, LK/an;->l:LK/P;

    invoke-virtual {v0}, LK/P;->i()V

    return-void
.end method

.method l()V
    .registers 3

    invoke-virtual {p0}, LK/an;->lock()V

    :try_start_3
    invoke-virtual {p0}, LK/an;->c()V

    invoke-virtual {p0}, LK/an;->f()V

    iget-object v0, p0, LK/an;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    invoke-virtual {p0}, LK/an;->unlock()V

    return-void

    :catchall_13
    move-exception v0

    invoke-virtual {p0}, LK/an;->unlock()V

    throw v0
.end method

.method m()V
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, LK/an;->a:I

    if-eqz v1, :cond_33

    invoke-virtual {p0}, LK/an;->lock()V

    :try_start_8
    iget-object v1, p0, LK/an;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    :goto_a
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_17

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_17
    iget-object v0, p0, LK/an;->i:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, LK/an;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, LK/an;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget v0, p0, LK/an;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LK/an;->b:I

    const/4 v0, 0x0

    iput v0, p0, LK/an;->a:I
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_34

    invoke-virtual {p0}, LK/an;->unlock()V

    :cond_33
    return-void

    :catchall_34
    move-exception v0

    invoke-virtual {p0}, LK/an;->unlock()V

    throw v0
.end method
