.class Lu/p;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field b:J

.field private c:Landroid/content/Context;

.field private final d:Lu/E;

.field private e:Lu/D;

.field private final f:Ljava/util/List;

.field private g:Lu/g;

.field private h:Lu/g;

.field private i:Lu/g;

.field private volatile j:Z

.field private volatile k:Z

.field private final l:Ljava/lang/Thread;

.field private m:Lv/u;

.field private n:Z

.field private final o:Ljava/io/File;


# direct methods
.method constructor <init>(Lu/E;Lv/u;Ljava/lang/Thread;Ljava/io/File;Landroid/content/Context;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lu/p;->k:Z

    iput-object p1, p0, Lu/p;->d:Lu/E;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/p;->f:Ljava/util/List;

    new-instance v0, Lu/D;

    invoke-direct {v0, p0}, Lu/D;-><init>(Lu/p;)V

    iput-object v0, p0, Lu/p;->e:Lu/D;

    iput-object p3, p0, Lu/p;->l:Ljava/lang/Thread;

    iput-object p2, p0, Lu/p;->m:Lv/u;

    iput-object p4, p0, Lu/p;->o:Ljava/io/File;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lu/p;->b:J

    iput-object p5, p0, Lu/p;->c:Landroid/content/Context;

    return-void
.end method

.method private a(I)V
    .registers 3

    iget-object v0, p0, Lu/p;->g:Lu/g;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lu/p;->g:Lu/g;

    invoke-virtual {v0}, Lu/g;->p()I

    move-result v0

    if-ne v0, p1, :cond_f

    const/4 v0, 0x0

    iput-object v0, p0, Lu/p;->g:Lu/g;

    :cond_f
    iget-boolean v0, p0, Lu/p;->a:Z

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lu/p;->o()V

    :cond_16
    return-void
.end method

.method private a(Lu/g;I)V
    .registers 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lu/g;->p()I

    move-result v0

    if-ne v0, v1, :cond_24

    move v0, v1

    :goto_9
    iget-object v3, p0, Lu/p;->e:Lu/D;

    invoke-virtual {v3}, Lu/D;->a()Lu/q;

    move-result-object v3

    invoke-virtual {v3}, Lu/q;->f()[Lu/x;

    move-result-object v4

    invoke-virtual {p1}, Lu/g;->e_()Z

    move-result v5

    if-eqz v5, :cond_47

    iget-object v5, p0, Lu/p;->e:Lu/D;

    invoke-virtual {v5}, Lu/D;->b()Z

    move-result v5

    if-nez v5, :cond_26

    if-eqz v0, :cond_26

    :cond_23
    :goto_23
    return-void

    :cond_24
    move v0, v2

    goto :goto_9

    :cond_26
    invoke-virtual {p1}, Lu/g;->d()[Lu/x;

    move-result-object v0

    aget-object v0, v0, v2

    aget-object v2, v4, p2

    invoke-virtual {v2}, Lu/x;->w()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3b

    invoke-virtual {v2}, Lu/x;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lu/x;->a(Ljava/lang/String;)V

    :cond_3b
    aput-object v0, v4, p2

    iget-object v0, p0, Lu/p;->e:Lu/D;

    invoke-virtual {v3}, Lu/q;->m()I

    move-result v2

    invoke-virtual {v0, v4, v2, v1}, Lu/D;->a([Lu/x;IZ)V

    goto :goto_23

    :cond_47
    if-nez v0, :cond_23

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lu/p;->a(ILu/g;)V

    goto :goto_23
.end method

.method private a(Lu/x;Lu/x;I)Z
    .registers 7

    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v0, v0, 0x3

    add-int/2addr v0, p3

    invoke-virtual {p1}, Lu/x;->p()I

    move-result v1

    invoke-virtual {p2}, Lu/x;->p()I

    move-result v2

    sub-int/2addr v1, v2

    if-le v1, v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private b(Lu/g;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lu/p;->i:Lu/g;

    if-ne p1, v0, :cond_20

    iput-object v1, p0, Lu/p;->i:Lu/g;

    :cond_7
    :goto_7
    invoke-virtual {p1}, Lu/g;->e_()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lu/p;->c:Landroid/content/Context;

    invoke-static {v0}, Lu/H;->a(Landroid/content/Context;)Lu/H;

    move-result-object v0

    invoke-virtual {p1}, Lu/g;->d_()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {v0, p1}, Lu/H;->a(Lu/g;)V

    :goto_1c
    invoke-virtual {v0}, Lu/H;->d()V

    :cond_1f
    return-void

    :cond_20
    iget-object v0, p0, Lu/p;->h:Lu/g;

    if-ne p1, v0, :cond_7

    iput-object v1, p0, Lu/p;->h:Lu/g;

    goto :goto_7

    :cond_27
    invoke-virtual {v0, p1}, Lu/H;->b(Lu/g;)Z

    goto :goto_1c
.end method

.method private c(Lu/g;)V
    .registers 10

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lu/p;->g:Lu/g;

    invoke-virtual {p1}, Lu/g;->e_()Z

    move-result v0

    if-eqz v0, :cond_a2

    iget-object v0, p0, Lu/p;->m:Lv/u;

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lu/p;->a:Z

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lu/p;->o()V

    :cond_17
    invoke-virtual {p1}, Lu/g;->d()[Lu/x;

    move-result-object v1

    array-length v4, v1

    move v0, v3

    :goto_1d
    if-ge v0, v4, :cond_24

    aget-object v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_24
    array-length v0, v1

    if-lt v0, v6, :cond_ac

    aget-object v0, v1, v2

    invoke-virtual {v0}, Lu/x;->v()[Lu/R;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v6, :cond_ac

    aget-object v0, v1, v3

    aget-object v4, v1, v2

    invoke-virtual {p1}, Lu/g;->i()I

    move-result v5

    invoke-direct {p0, v0, v4, v5}, Lu/p;->a(Lu/x;Lu/x;I)Z

    move-result v0

    if-eqz v0, :cond_ac

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Lu/x;

    array-length v4, v0

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_47
    array-length v1, v0

    if-lt v1, v6, :cond_78

    aget-object v1, v0, v3

    invoke-virtual {v1}, Lu/x;->p()I

    move-result v1

    move v7, v2

    move v2, v1

    move v1, v7

    :goto_53
    array-length v4, v0

    if-ge v1, v4, :cond_67

    aget-object v4, v0, v1

    invoke-virtual {v4}, Lu/x;->p()I

    move-result v4

    if-ge v4, v2, :cond_64

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lu/x;->p()I

    move-result v2

    :cond_64
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    :cond_67
    array-length v4, v0

    move v1, v3

    :goto_69
    if-ge v1, v4, :cond_78

    aget-object v5, v0, v1

    invoke-virtual {v5}, Lu/x;->p()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v5, v6}, Lu/x;->d(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    :cond_78
    aget-object v1, v0, v3

    invoke-virtual {v1}, Lu/x;->y()Z

    move-result v1

    if-eqz v1, :cond_96

    aget-object v1, v0, v3

    invoke-virtual {v1}, Lu/x;->C()Lu/g;

    move-result-object v1

    if-nez v1, :cond_96

    aget-object v1, v0, v3

    iget-object v2, p0, Lu/p;->d:Lu/E;

    aget-object v4, v0, v3

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Lu/E;->a(Lu/x;I)Lu/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lu/x;->a(Lu/g;)V

    :cond_96
    iget-object v1, p0, Lu/p;->e:Lu/D;

    aget-object v2, v0, v3

    invoke-virtual {v2}, Lu/x;->h()Z

    move-result v2

    invoke-virtual {v1, v0, v3, v2}, Lu/D;->a([Lu/x;IZ)V

    :cond_a1
    :goto_a1
    return-void

    :cond_a2
    invoke-virtual {p1}, Lu/g;->d_()Z

    move-result v0

    if-nez v0, :cond_a1

    invoke-virtual {p0, v6, p1}, Lu/p;->a(ILu/g;)V

    goto :goto_a1

    :cond_ac
    move-object v0, v1

    goto :goto_47
.end method

.method private m()V
    .registers 4

    iget-object v0, p0, Lu/p;->g:Lu/g;

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lu/p;->e:Lu/D;

    invoke-virtual {v0}, Lu/D;->a()Lu/q;

    move-result-object v0

    invoke-virtual {v0}, Lu/q;->g()Lu/x;

    move-result-object v0

    invoke-virtual {v0}, Lu/x;->C()Lu/g;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lu/p;->e:Lu/D;

    invoke-virtual {v1}, Lu/D;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lu/p;->d:Lu/E;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lu/E;->a(Lu/x;I)Lu/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/x;->a(Lu/g;)V

    goto :goto_4
.end method

.method private final n()V
    .registers 3

    invoke-static {}, Ln/a;->b()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lu/p;->l:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_16

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Method must be called on NavigationThread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    return-void
.end method

.method private o()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/p;->a:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lu/p;->b:J

    iget-object v0, p0, Lu/p;->m:Lv/u;

    invoke-virtual {v0}, Lv/u;->c()V

    return-void
.end method


# virtual methods
.method declared-synchronized a()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lu/p;->e:Lu/D;

    invoke-virtual {v0}, Lu/D;->a()Lu/q;

    move-result-object v1

    iget-object v0, p0, Lu/p;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/o;

    invoke-interface {v0, v1}, Lu/o;->d(Lu/q;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1d

    goto :goto_d

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_20
    monitor-exit p0

    return-void
.end method

.method declared-synchronized a(ILu/g;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lu/p;->e:Lu/D;

    invoke-virtual {v0}, Lu/D;->a()Lu/q;

    move-result-object v1

    iget-object v0, p0, Lu/p;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/o;

    invoke-interface {v0, p1, p2, v1}, Lu/o;->a(ILu/g;Lu/q;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1d

    goto :goto_d

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_20
    if-eqz p2, :cond_28

    :try_start_22
    invoke-virtual {p2}, Lu/g;->o()Z
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_1d

    move-result v0

    if-eqz v0, :cond_2a

    :cond_28
    :goto_28
    monitor-exit p0

    return-void

    :cond_2a
    :try_start_2a
    invoke-virtual {p2}, Lu/g;->n()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p2}, Lu/g;->l()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p2}, Lu/g;->k()Z
    :try_end_39
    .catchall {:try_start_2a .. :try_end_39} :catchall_1d

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_28
.end method

.method public a(Landroid/location/Location;)V
    .registers 11

    const/4 v8, 0x0

    invoke-direct {p0}, Lu/p;->n()V

    iget-boolean v0, p0, Lu/p;->j:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lu/p;->o:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/navgation_location"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    :cond_20
    iget-object v0, p0, Lu/p;->e:Lu/D;

    invoke-virtual {v0, p1}, Lu/D;->a(Landroid/location/Location;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Lz/n;->a()Lz/l;

    move-result-object v2

    iget-object v3, p0, Lu/p;->e:Lu/D;

    invoke-virtual {v3}, Lu/D;->a()Lu/q;

    move-result-object v3

    invoke-virtual {v3}, Lu/q;->g()Lu/x;

    move-result-object v3

    if-eqz v3, :cond_74

    invoke-virtual {v3}, Lu/x;->B()Z

    move-result v4

    if-eqz v4, :cond_74

    iget-boolean v4, p0, Lu/p;->k:Z

    if-eqz v4, :cond_74

    invoke-virtual {v3}, Lu/x;->z()J

    move-result-wide v4

    invoke-virtual {v2}, Lz/l;->p()I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-lez v4, :cond_74

    invoke-virtual {v3}, Lu/x;->z()J

    move-result-wide v4

    invoke-virtual {v2}, Lz/l;->q()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v6, v2

    add-long/2addr v4, v6

    cmp-long v0, v0, v4

    if-lez v0, :cond_71

    invoke-virtual {v3}, Lu/x;->t()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-virtual {v3}, Lu/x;->A()V

    iget-object v0, p0, Lu/p;->e:Lu/D;

    invoke-virtual {v0, v8}, Lu/D;->a(I)Z

    :cond_71
    invoke-direct {p0}, Lu/p;->m()V

    :cond_74
    iget-boolean v0, p0, Lu/p;->j:Z

    if-eqz v0, :cond_7d

    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    iput-boolean v8, p0, Lu/p;->j:Z

    :cond_7d
    return-void
.end method

.method public a(Ls/b;)V
    .registers 8

    invoke-direct {p0}, Lu/p;->n()V

    iget-boolean v0, p0, Lu/p;->k:Z

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lu/p;->e:Lu/D;

    invoke-virtual {v0}, Lu/D;->a()Lu/q;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lu/q;->g()Lu/x;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lu/q;->i()Lu/x;

    move-result-object v1

    iget-object v2, p0, Lu/p;->m:Lv/u;

    if-eqz v2, :cond_32

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Lu/x;->d()I

    move-result v2

    if-nez v2, :cond_32

    iget-boolean v2, p0, Lu/p;->a:Z

    if-nez v2, :cond_32

    iget-boolean v2, p0, Lu/p;->n:Z

    if-nez v2, :cond_32

    iget-object v2, p0, Lu/p;->g:Lu/g;

    if-nez v2, :cond_47

    :cond_32
    iget-object v1, p0, Lu/p;->g:Lu/g;

    if-nez v1, :cond_7

    iget-object v1, p0, Lu/p;->d:Lu/E;

    invoke-virtual {v0}, Lu/q;->g()Lu/x;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v0, v2}, Lu/E;->a(Ls/b;Lu/x;I)Lu/g;

    move-result-object v0

    iput-object v0, p0, Lu/p;->g:Lu/g;

    invoke-virtual {p0}, Lu/p;->f()V

    goto :goto_7

    :cond_47
    iget-wide v2, p0, Lu/p;->b:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lu/p;->b:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v0, v2, v4

    if-lez v0, :cond_7

    :cond_5c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lu/p;->a:Z

    iget-object v0, p0, Lu/p;->m:Lv/u;

    invoke-virtual {v0, p1, v1}, Lv/u;->a(Ls/b;Lu/x;)V

    invoke-virtual {p0}, Lu/p;->f()V

    goto :goto_7
.end method

.method public a(Ls/b;Lu/x;)V
    .registers 5

    invoke-direct {p0}, Lu/p;->n()V

    iget-object v0, p0, Lu/p;->d:Lu/E;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Lu/E;->a(Ls/b;Lu/x;I)Lu/g;

    move-result-object v0

    iput-object v0, p0, Lu/p;->g:Lu/g;

    return-void
.end method

.method public a(Ls/b;[Lu/P;II[Lu/b;)V
    .registers 12

    invoke-direct {p0}, Lu/p;->n()V

    iget-object v0, p0, Lu/p;->d:Lu/E;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lu/E;->a(Ls/b;[Lu/P;II[Lu/b;)Lu/g;

    move-result-object v0

    iput-object v0, p0, Lu/p;->g:Lu/g;

    return-void
.end method

.method public a(Lu/a;)V
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Lu/a;->a()Lu/g;

    move-result-object v0

    invoke-virtual {v0}, Lu/g;->d()[Lu/x;

    move-result-object v0

    iget-object v1, p0, Lu/p;->e:Lu/D;

    invoke-virtual {v1, v0, v2, v2}, Lu/D;->a([Lu/x;IZ)V

    return-void
.end method

.method public a(Lu/g;)V
    .registers 5

    invoke-direct {p0}, Lu/p;->n()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lu/p;->n:Z

    invoke-virtual {p1}, Lu/g;->d_()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p1}, Lu/g;->h()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_12
    invoke-direct {p0, p1}, Lu/p;->b(Lu/g;)V

    :cond_15
    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lu/p;->g:Lu/g;

    if-ne p1, v0, :cond_20

    iget-object v0, p0, Lu/p;->g:Lu/g;

    invoke-direct {p0, v0}, Lu/p;->c(Lu/g;)V

    goto :goto_15

    :cond_20
    iget-object v0, p0, Lu/p;->e:Lu/D;

    invoke-virtual {v0}, Lu/D;->a()Lu/q;

    move-result-object v0

    invoke-virtual {v0}, Lu/q;->f()[Lu/x;

    move-result-object v1

    if-eqz v1, :cond_15

    const/4 v0, 0x0

    :goto_2d
    array-length v2, v1

    if-ge v0, v2, :cond_15

    aget-object v2, v1, v0

    invoke-virtual {v2}, Lu/x;->C()Lu/g;

    move-result-object v2

    if-ne v2, p1, :cond_42

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lu/x;->a(Lu/g;)V

    invoke-direct {p0, p1, v0}, Lu/p;->a(Lu/g;I)V

    goto :goto_15

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d
.end method

.method declared-synchronized a(Lu/j;I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v0, Lq/t;

    invoke-direct {v0, p1}, Lq/t;-><init>(Lu/j;)V

    invoke-static {v0}, LC/f;->b(LC/j;)V

    iget-object v0, p0, Lu/p;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/o;

    invoke-interface {v0, p1, p2}, Lu/o;->a(Lu/j;I)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1f

    goto :goto_f

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_22
    monitor-exit p0

    return-void
.end method

.method declared-synchronized a(Lu/o;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lu/p;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lu/p;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lu/x;I)V
    .registers 8

    const-wide/16 v3, -0x1

    const/4 v2, 0x1

    invoke-direct {p0}, Lu/p;->n()V

    iget-boolean v0, p0, Lu/p;->a:Z

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/p;->a:Z

    if-nez p2, :cond_1a

    iput-wide v3, p0, Lu/p;->b:J

    invoke-virtual {p0, p1, v2}, Lu/p;->a(Lu/x;Z)V

    const-string v0, "j"

    invoke-static {v0, p2}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;I)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-wide v0, p0, Lu/p;->b:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_29

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lu/p;->a(ILu/g;)V

    const-string v0, "j"

    invoke-static {v0, p2}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;I)V

    :cond_29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lu/p;->b:J

    goto :goto_19
.end method

.method public a(Lu/x;Z)V
    .registers 8

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lu/p;->n()V

    if-eqz p2, :cond_11

    new-array v1, v4, [Lu/x;

    aput-object p1, v1, v0

    iget-object v2, p0, Lu/p;->e:Lu/D;

    invoke-virtual {v2, v1, v0, v0}, Lu/D;->a([Lu/x;IZ)V

    :cond_10
    :goto_10
    return-void

    :cond_11
    const/4 v1, -0x1

    iget-object v2, p0, Lu/p;->e:Lu/D;

    invoke-virtual {v2}, Lu/D;->a()Lu/q;

    move-result-object v2

    invoke-virtual {v2}, Lu/q;->f()[Lu/x;

    move-result-object v2

    if-eqz v2, :cond_10

    :goto_1e
    array-length v3, v2

    if-ge v0, v3, :cond_46

    aget-object v3, v2, v0

    if-ne v3, p1, :cond_43

    :goto_25
    if-ltz v0, :cond_10

    invoke-virtual {p1}, Lu/x;->y()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {p1}, Lu/x;->C()Lu/g;

    move-result-object v1

    if-nez v1, :cond_3d

    iget-object v1, p0, Lu/p;->d:Lu/E;

    const/4 v3, 0x3

    invoke-virtual {v1, p1, v3}, Lu/E;->a(Lu/x;I)Lu/g;

    move-result-object v1

    invoke-virtual {p1, v1}, Lu/x;->a(Lu/g;)V

    :cond_3d
    iget-object v1, p0, Lu/p;->e:Lu/D;

    invoke-virtual {v1, v2, v0, v4}, Lu/D;->a([Lu/x;IZ)V

    goto :goto_10

    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_46
    move v0, v1

    goto :goto_25
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lu/p;->k:Z

    return-void
.end method

.method public a([Lu/P;I[Lu/b;)V
    .registers 5

    invoke-direct {p0}, Lu/p;->n()V

    iget-object v0, p0, Lu/p;->d:Lu/E;

    invoke-virtual {v0, p1, p2, p3}, Lu/E;->a([Lu/P;I[Lu/b;)Lu/g;

    move-result-object v0

    iput-object v0, p0, Lu/p;->i:Lu/g;

    return-void
.end method

.method declared-synchronized b()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lu/p;->e:Lu/D;

    invoke-virtual {v0}, Lu/D;->a()Lu/q;

    move-result-object v1

    iget-object v0, p0, Lu/p;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/o;

    invoke-interface {v0, v1}, Lu/o;->f(Lu/q;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1d

    goto :goto_d

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_20
    monitor-exit p0

    return-void
.end method

.method declared-synchronized b(Lu/j;I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lu/p;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/o;

    invoke-interface {v0, p1, p2}, Lu/o;->b(Lu/j;I)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1a
    monitor-exit p0

    return-void
.end method

.method declared-synchronized b(Lu/o;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lu/p;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lu/p;->e:Lu/D;

    invoke-virtual {v0}, Lu/D;->a()Lu/q;

    move-result-object v1

    invoke-virtual {v1}, Lu/q;->h()Lu/I;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lu/p;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/o;

    invoke-interface {v0, v1}, Lu/o;->b(Lu/q;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_23

    goto :goto_13

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_26
    monitor-exit p0

    return-void
.end method

.method declared-synchronized d()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lu/p;->e:Lu/D;

    invoke-virtual {v0}, Lu/D;->a()Lu/q;

    move-result-object v1

    iget-object v0, p0, Lu/p;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/o;

    invoke-interface {v0, v1}, Lu/o;->c(Lu/q;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1d

    goto :goto_d

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_20
    monitor-exit p0

    return-void
.end method

.method declared-synchronized e()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lu/p;->e:Lu/D;

    invoke-virtual {v0}, Lu/D;->a()Lu/q;

    move-result-object v1

    iget-object v0, p0, Lu/p;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/o;

    invoke-interface {v0, v1}, Lu/o;->e(Lu/q;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1d

    goto :goto_d

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_20
    monitor-exit p0

    return-void
.end method

.method declared-synchronized f()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lu/p;->e:Lu/D;

    invoke-virtual {v0}, Lu/D;->a()Lu/q;

    move-result-object v1

    iget-object v0, p0, Lu/p;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/o;

    invoke-interface {v0, v1}, Lu/o;->a(Lu/q;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1d

    goto :goto_d

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_20
    monitor-exit p0

    return-void
.end method

.method public g()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lu/p;->n()V

    iput-boolean v1, p0, Lu/p;->n:Z

    iget-boolean v0, p0, Lu/p;->a:Z

    if-nez v0, :cond_e

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lu/p;->a(ILu/g;)V

    :cond_e
    return-void
.end method

.method h()Z
    .registers 2

    iget-boolean v0, p0, Lu/p;->k:Z

    return v0
.end method

.method public i()V
    .registers 7

    iget-object v0, p0, Lu/p;->e:Lu/D;

    invoke-virtual {v0}, Lu/D;->a()Lu/q;

    move-result-object v0

    invoke-virtual {v0}, Lu/q;->f()[Lu/x;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v2, :cond_29

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lu/x;->y()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-virtual {v3}, Lu/x;->C()Lu/g;

    move-result-object v4

    if-nez v4, :cond_26

    iget-object v4, p0, Lu/p;->d:Lu/E;

    const/4 v5, 0x3

    invoke-virtual {v4, v3, v5}, Lu/E;->a(Lu/x;I)Lu/g;

    move-result-object v4

    invoke-virtual {v3, v4}, Lu/x;->a(Lu/g;)V

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_29
    return-void
.end method

.method public j()V
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lu/p;->a(I)V

    return-void
.end method

.method public k()V
    .registers 2

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lu/p;->a(I)V

    return-void
.end method

.method public l()V
    .registers 2

    iget-object v0, p0, Lu/p;->e:Lu/D;

    invoke-virtual {v0}, Lu/D;->d()V

    return-void
.end method
