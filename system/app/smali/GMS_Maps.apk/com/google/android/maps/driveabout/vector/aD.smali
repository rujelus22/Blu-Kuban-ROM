.class public Lcom/google/android/maps/driveabout/vector/aD;
.super Lcom/google/android/maps/driveabout/vector/n;


# instance fields
.field private final d:Ljava/util/LinkedList;

.field private final e:Ljava/util/HashMap;

.field private final f:Ljava/util/HashMap;

.field private g:Lt/at;

.field private h:Ljava/util/List;

.field private final i:I

.field private j:I

.field private k:Z

.field private l:Lcom/google/android/maps/driveabout/vector/aA;


# direct methods
.method constructor <init>(ILcom/google/android/maps/driveabout/vector/U;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/n;-><init>(Lcom/google/android/maps/driveabout/vector/U;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->d:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->f:Ljava/util/HashMap;

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/aD;->j:I

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/aD;->k:Z

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/aD;->i:I

    return-void
.end method

.method private a(Ljava/lang/RuntimeException;Ljava/util/Iterator;I)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "#:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aD;->j:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/maps/driveabout/vector/aD;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " T:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " E:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " C:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " numM:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "GLMarkerOverlay"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ln/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/t;)V
    .registers 7

    invoke-static {}, Lr/l;->a()Lr/l;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aA;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aA;->e()Lt/y;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lt/y;->a()Lt/r;

    move-result-object v3

    invoke-virtual {v1, v3}, Lr/l;->d(Lt/r;)Lr/e;

    move-result-object v3

    if-eqz v3, :cond_a

    monitor-enter v0

    :try_start_27
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aA;->d()Lt/L;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lr/e;->a(Lcom/google/android/maps/driveabout/vector/t;Lt/L;)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v4, v3}, Lt/L;->c(I)V

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/aA;->a(Lt/L;)V

    monitor-exit v0

    goto :goto_a

    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_27 .. :try_end_3a} :catchall_38

    throw v1

    :cond_3b
    return-void
.end method

.method private c(FFLcom/google/android/maps/driveabout/vector/t;)V
    .registers 6

    const/high16 v0, 0x428c

    sub-float v0, p2, v0

    invoke-virtual {p3, p1, v0}, Lcom/google/android/maps/driveabout/vector/t;->d(FF)Lt/L;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aD;->l:Lcom/google/android/maps/driveabout/vector/aA;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/aA;->a(Lt/L;)V

    return-void
.end method

.method private c(Lcom/google/android/maps/driveabout/vector/t;)V
    .registers 10

    const v7, -0x41b33333

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->u()Lt/at;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->h:Ljava/util/List;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->g:Lt/at;

    invoke-virtual {v1, v0}, Lt/at;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->h:Ljava/util/List;

    if-nez v0, :cond_9f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->h:Ljava/util/List;

    :goto_1f
    invoke-virtual {v1}, Lt/at;->a()Lt/au;

    move-result-object v2

    invoke-virtual {v1}, Lt/at;->d()Lt/L;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->b()Lt/L;

    move-result-object v3

    invoke-virtual {v0, v3, v7}, Lt/L;->a(Lt/L;F)Lt/L;

    move-result-object v0

    invoke-virtual {v1}, Lt/at;->e()Lt/L;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->b()Lt/L;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Lt/L;->a(Lt/L;F)Lt/L;

    move-result-object v3

    invoke-virtual {v1}, Lt/at;->g()Lt/L;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->b()Lt/L;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Lt/L;->a(Lt/L;F)Lt/L;

    move-result-object v4

    invoke-virtual {v1}, Lt/at;->f()Lt/L;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->b()Lt/L;

    move-result-object v6

    invoke-virtual {v5, v6, v7}, Lt/L;->a(Lt/L;F)Lt/L;

    move-result-object v5

    invoke-static {v0, v3, v4, v5}, Lt/at;->a(Lt/L;Lt/L;Lt/L;Lt/L;)Lt/at;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5d
    :goto_5d
    :try_start_5d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aA;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aA;->p()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_5d

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aA;->d()Lt/L;

    move-result-object v5

    invoke-virtual {v2, v5}, Lt/au;->a(Lt/L;)Z

    move-result v6

    if-eqz v6, :cond_7f

    invoke-virtual {v1, v5}, Lt/at;->a(Lt/L;)Z

    move-result v6

    if-nez v6, :cond_8b

    :cond_7f
    invoke-virtual {v3, v5}, Lt/at;->a(Lt/L;)Z

    move-result v5

    if-eqz v5, :cond_5d

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/aA;->b(Lcom/google/android/maps/driveabout/vector/t;)Z

    move-result v5

    if-eqz v5, :cond_5d

    :cond_8b
    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/aD;->h:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_90
    .catch Ljava/lang/RuntimeException; {:try_start_5d .. :try_end_90} :catch_91

    goto :goto_5d

    :catch_91
    move-exception v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aD;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0, v0, v4, v2}, Lcom/google/android/maps/driveabout/vector/aD;->a(Ljava/lang/RuntimeException;Ljava/util/Iterator;I)V

    :cond_9b
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/aD;->g:Lt/at;

    goto/16 :goto_13

    :cond_9f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_1f
.end method

.method private d(Lcom/google/android/maps/driveabout/vector/aA;)V
    .registers 4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aA;->t()I

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->f:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aA;->p()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aA;->u()I

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->f:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aA;->q()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    return-void
.end method

.method private d(Lcom/google/android/maps/driveabout/vector/t;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aA;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/aA;->a(Lcom/google/android/maps/driveabout/vector/t;)Z

    goto :goto_6

    :cond_16
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_24

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->h:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_24
    return-void
.end method

.method private declared-synchronized i()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aA;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aA;->t()I

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aA;->u()I
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1a

    goto :goto_7

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_1a

    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Object;)Lcom/google/android/maps/driveabout/vector/aA;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aA;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/aA;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aA;->r()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p1, p0}, Lcom/google/android/maps/driveabout/vector/aA;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aA;->r()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->h:Ljava/util/List;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    :cond_21
    monitor-exit p0

    return-void

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aC;Z)V
    .registers 8

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aD;->a:Lcom/google/android/maps/driveabout/vector/U;

    monitor-enter v1

    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_2c

    :try_start_4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aA;

    invoke-interface {p1, v0}, Lcom/google/android/maps/driveabout/vector/aC;->a(Lcom/google/android/maps/driveabout/vector/aA;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aA;->s()Z

    move-result v3

    if-eqz v3, :cond_2f

    if-nez p2, :cond_2f

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/aA;->d(Z)V

    goto :goto_a

    :catchall_29
    move-exception v0

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_29

    :try_start_2b
    throw v0

    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2c

    throw v0

    :cond_2f
    :try_start_2f
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aA;->s()Z

    move-result v3

    if-eqz v3, :cond_3e

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/aA;->d(Z)V

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aD;->a:Lcom/google/android/maps/driveabout/vector/U;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/U;->f()V

    :cond_3e
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aD;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aA;->r()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/aD;->d(Lcom/google/android/maps/driveabout/vector/aA;)V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->h:Ljava/util/List;

    goto :goto_a

    :cond_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_2f .. :try_end_52} :catchall_29

    :try_start_52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_2c

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aD;->a:Lcom/google/android/maps/driveabout/vector/U;

    monitor-enter v1

    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_d

    :try_start_4
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aD;->i()V

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_a

    :try_start_8
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_d

    return-void

    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    :try_start_c
    throw v0

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_d

    throw v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 10

    const/4 v1, 0x1

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->b()I

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_22

    monitor-enter p0

    :try_start_10
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/aD;->c(Lcom/google/android/maps/driveabout/vector/t;)V

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/aD;->b(Lcom/google/android/maps/driveabout/vector/t;)V

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/aD;->d(Lcom/google/android/maps/driveabout/vector/t;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_23

    monitor-exit p0

    :cond_22
    :goto_22
    return-void

    :cond_23
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->o()V

    const/4 v2, 0x1

    const/16 v3, 0x303

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v2, 0x2300

    const/16 v3, 0x2200

    const/16 v4, 0x1e01

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/di;->c:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    new-instance v3, Lcom/google/android/maps/driveabout/vector/cl;

    invoke-direct {v3, p3}, Lcom/google/android/maps/driveabout/vector/cl;-><init>(Lcom/google/android/maps/driveabout/vector/J;)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/vector/cl;->a(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4b
    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aA;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aA;->q()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_4b

    invoke-virtual {v0, p1, p2, v3}, Lcom/google/android/maps/driveabout/vector/aA;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V

    goto :goto_4b

    :catchall_61
    move-exception v0

    monitor-exit p0
    :try_end_63
    .catchall {:try_start_10 .. :try_end_63} :catchall_61

    throw v0

    :cond_64
    const/4 v0, 0x1

    :try_start_65
    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/vector/cl;->a(I)V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aD;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v0

    :goto_70
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aA;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aA;->s()Z

    move-result v5

    if-eqz v5, :cond_83

    move-object v2, v0

    :cond_83
    invoke-virtual {v0, p1, p2, v3}, Lcom/google/android/maps/driveabout/vector/aA;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V

    goto :goto_70

    :cond_87
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->j()F

    move-result v0

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_9b

    move v0, v1

    :goto_91
    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/vector/cl;->a(I)V

    if-eqz v2, :cond_99

    invoke-virtual {v2, p1, p2, v3}, Lcom/google/android/maps/driveabout/vector/aA;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V

    :cond_99
    monitor-exit p0
    :try_end_9a
    .catchall {:try_start_65 .. :try_end_9a} :catchall_61

    goto :goto_22

    :cond_9b
    const/4 v0, 0x2

    goto :goto_91
.end method

.method public declared-synchronized a(Ljava/util/List;FFLt/L;Lcom/google/android/maps/driveabout/vector/t;I)V
    .registers 11

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p5}, Lcom/google/android/maps/driveabout/vector/aD;->c(Lcom/google/android/maps/driveabout/vector/t;)V

    invoke-direct {p0, p5}, Lcom/google/android/maps/driveabout/vector/aD;->d(Lcom/google/android/maps/driveabout/vector/t;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aA;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/m;->j()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/google/android/maps/driveabout/vector/m;->a(FFLt/L;Lcom/google/android/maps/driveabout/vector/t;)I

    move-result v2

    if-ge v2, p6, :cond_d

    new-instance v3, Lcom/google/android/maps/driveabout/vector/N;

    invoke-direct {v3, v0, p0, v2}, Lcom/google/android/maps/driveabout/vector/N;-><init>(Lcom/google/android/maps/driveabout/vector/m;Lcom/google/android/maps/driveabout/vector/n;I)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2e

    goto :goto_d

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_31
    monitor-exit p0

    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aA;)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aD;->a:Lcom/google/android/maps/driveabout/vector/U;

    monitor-enter v1

    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_39

    :try_start_4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aA;->r()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aA;->r()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aA;->s()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/vector/aA;->d(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->a:Lcom/google/android/maps/driveabout/vector/U;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/U;->f()V

    :cond_2d
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/aD;->d(Lcom/google/android/maps/driveabout/vector/aA;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->h:Ljava/util/List;

    :cond_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_36

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_39

    return-void

    :catchall_36
    move-exception v0

    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    :try_start_38
    throw v0

    :catchall_39
    move-exception v0

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_39

    throw v0
.end method

.method public b(FFLcom/google/android/maps/driveabout/vector/t;)Z
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->k:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/aD;->c(FFLcom/google/android/maps/driveabout/vector/t;)V

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method declared-synchronized c(Lcom/google/android/maps/driveabout/vector/aA;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aA;->r()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aA;->r()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/aD;->d(Lcom/google/android/maps/driveabout/vector/aA;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->h:Ljava/util/List;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    :cond_21
    monitor-exit p0

    return-void

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(FFLt/L;Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->h:Ljava/util/List;

    if-nez v0, :cond_a

    monitor-exit p0

    move v0, v1

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aA;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aA;->k()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/aA;->b(FFLt/L;Lcom/google/android/maps/driveabout/vector/t;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/aD;->k:Z

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->l:Lcom/google/android/maps/driveabout/vector/aA;

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/maps/driveabout/vector/aD;->c(FFLcom/google/android/maps/driveabout/vector/t;)V

    monitor-exit p0

    move v0, v2

    goto :goto_9

    :cond_33
    monitor-exit p0

    move v0, v1

    goto :goto_9

    :catchall_36
    move-exception v0

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v0
.end method

.method public d(FFLt/L;Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 8

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/aD;->k:Z

    if-eqz v1, :cond_25

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/maps/driveabout/vector/aD;->c(FFLcom/google/android/maps/driveabout/vector/t;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aD;->l:Lcom/google/android/maps/driveabout/vector/aA;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/aA;->n()Lcom/google/android/maps/driveabout/vector/aB;

    move-result-object v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aD;->l:Lcom/google/android/maps/driveabout/vector/aA;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/aA;->n()Lcom/google/android/maps/driveabout/vector/aB;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aD;->l:Lcom/google/android/maps/driveabout/vector/aA;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/aA;->d()Lt/L;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/maps/driveabout/vector/aB;->a(Lt/L;)V

    :cond_1f
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/aD;->l:Lcom/google/android/maps/driveabout/vector/aA;

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->k:Z

    const/4 v0, 0x1

    :cond_25
    return v0
.end method

.method public e()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aD;->a:Lcom/google/android/maps/driveabout/vector/U;

    monitor-enter v1

    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_33

    :try_start_4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->a:Lcom/google/android/maps/driveabout/vector/U;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/U;->e()Lcom/google/android/maps/driveabout/vector/m;

    move-result-object v0

    if-eqz v0, :cond_1d

    instance-of v2, v0, Lcom/google/android/maps/driveabout/vector/aA;

    if-eqz v2, :cond_1d

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aA;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aA;->o()Lcom/google/android/maps/driveabout/vector/aD;

    move-result-object v0

    if-ne v0, p0, :cond_1d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->a:Lcom/google/android/maps/driveabout/vector/U;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/U;->f()V

    :cond_1d
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aD;->i()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->h:Ljava/util/List;

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_30

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_33

    return-void

    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    :try_start_32
    throw v0

    :catchall_33
    move-exception v0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_33

    throw v0
.end method

.method h()Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->f:Ljava/util/HashMap;

    return-object v0
.end method

.method public n_()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->k:Z

    return v0
.end method

.method public s_()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aD;->i:I

    return v0
.end method
