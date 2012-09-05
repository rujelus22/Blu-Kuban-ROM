.class public Lq/F;
.super Lz/d;


# instance fields
.field private final a:Ls/z;

.field private b:Ljava/util/List;

.field private c:Ljava/util/Iterator;

.field private final d:Ljava/util/List;

.field private e:Lq/b;

.field private f:Lq/G;

.field private g:J

.field private h:J

.field private i:LC/j;

.field private volatile j:F

.field private volatile k:Z

.field private volatile l:Z

.field private m:Z


# direct methods
.method public constructor <init>()V
    .registers 5

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    const-string v0, "EventLogPlayerThread"

    invoke-direct {p0, v0}, Lz/d;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lq/F;->d:Ljava/util/List;

    iput-wide v2, p0, Lq/F;->g:J

    iput-wide v2, p0, Lq/F;->h:J

    const/high16 v0, 0x3f80

    iput v0, p0, Lq/F;->j:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lq/F;->k:Z

    iput-boolean v1, p0, Lq/F;->l:Z

    iput-boolean v1, p0, Lq/F;->m:Z

    new-instance v0, Ls/z;

    invoke-direct {v0}, Ls/z;-><init>()V

    iput-object v0, p0, Lq/F;->a:Ls/z;

    invoke-virtual {p0}, Lq/F;->start()V

    return-void
.end method

.method private a(LC/j;)Z
    .registers 3

    iget-object v0, p0, Lq/F;->a:Ls/z;

    invoke-virtual {v0, p1}, Ls/z;->a(LC/j;)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lq/F;->a:Ls/z;

    invoke-virtual {v0, p1}, Ls/z;->b(LC/j;)Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-direct {p0, p1}, Lq/F;->b(LC/j;)Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-direct {p0, p1}, Lq/F;->d(LC/j;)Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-direct {p0, p1}, Lq/F;->e(LC/j;)Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-direct {p0, p1}, Lq/F;->f(LC/j;)Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-direct {p0, p1}, Lq/F;->g(LC/j;)Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_2e
    const/4 v0, 0x1

    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method private b(LC/j;)Z
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    instance-of v2, p1, Lq/u;

    if-eqz v2, :cond_10

    move v0, v1

    :goto_7
    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v2

    invoke-virtual {v2, v0}, Lat/h;->c(Z)V

    move v0, v1

    :cond_f
    return v0

    :cond_10
    instance-of v2, p1, Lq/v;

    if-eqz v2, :cond_f

    goto :goto_7
.end method

.method private c(LC/j;)Z
    .registers 3

    instance-of v0, p1, Lq/B;

    if-nez v0, :cond_10

    instance-of v0, p1, Lq/D;

    if-nez v0, :cond_10

    instance-of v0, p1, Lq/E;

    if-nez v0, :cond_10

    instance-of v0, p1, Lq/m;

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private declared-synchronized d()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lq/F;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lq/F;->c:Ljava/util/Iterator;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lq/F;->h:J

    iput-wide v0, p0, Lq/F;->g:J

    const/4 v0, 0x0

    iput-object v0, p0, Lq/F;->i:LC/j;

    invoke-direct {p0}, Lq/F;->e()LC/j;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d(LC/j;)Z
    .registers 5

    const/4 v1, 0x1

    instance-of v0, p1, Lq/B;

    if-eqz v0, :cond_1f

    check-cast p1, Lq/B;

    iget-object v0, p0, Lq/F;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/P;

    invoke-interface {v0, p1}, Lq/P;->a(Lq/B;)V

    goto :goto_d

    :cond_1d
    move v0, v1

    :goto_1e
    return v0

    :cond_1f
    instance-of v0, p1, Lq/D;

    if-eqz v0, :cond_3d

    check-cast p1, Lq/D;

    iget-object v0, p0, Lq/F;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/P;

    invoke-interface {v0, p1}, Lq/P;->a(Lq/D;)V

    goto :goto_2b

    :cond_3b
    move v0, v1

    goto :goto_1e

    :cond_3d
    instance-of v0, p1, Lq/E;

    if-eqz v0, :cond_5b

    check-cast p1, Lq/E;

    iget-object v0, p0, Lq/F;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_49
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/P;

    invoke-interface {v0, p1}, Lq/P;->a(Lq/E;)V

    goto :goto_49

    :cond_59
    move v0, v1

    goto :goto_1e

    :cond_5b
    instance-of v0, p1, Lq/m;

    if-eqz v0, :cond_79

    check-cast p1, Lq/m;

    iget-object v0, p0, Lq/F;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_67
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/P;

    invoke-interface {v0, p1}, Lq/P;->a(Lq/m;)V

    goto :goto_67

    :cond_77
    move v0, v1

    goto :goto_1e

    :cond_79
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method private declared-synchronized e()LC/j;
    .registers 8

    const/4 v0, 0x0

    const/high16 v6, 0x3f00

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_6
    iget-object v1, p0, Lq/F;->c:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v0, p0, Lq/F;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC/j;

    :cond_16
    if-eqz v0, :cond_9d

    iput-object v0, p0, Lq/F;->i:LC/j;

    iget-wide v0, p0, Lq/F;->h:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_44

    iget-object v0, p0, Lq/F;->i:LC/j;

    invoke-virtual {v0}, LC/j;->h()Z

    move-result v0

    if-nez v0, :cond_44

    move-wide v0, v2

    :goto_29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v0

    iput-wide v4, p0, Lq/F;->g:J

    iget-object v4, p0, Lq/F;->i:LC/j;

    invoke-virtual {v4}, LC/j;->e()Z

    move-result v4

    if-eqz v4, :cond_86

    iget-object v0, p0, Lq/F;->i:LC/j;

    invoke-virtual {v0}, LC/j;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lq/F;->h:J

    :cond_40
    :goto_40
    iget-object v0, p0, Lq/F;->i:LC/j;
    :try_end_42
    .catchall {:try_start_6 .. :try_end_42} :catchall_9a

    monitor-exit p0

    return-object v0

    :cond_44
    :try_start_44
    iget-object v0, p0, Lq/F;->i:LC/j;

    invoke-virtual {v0}, LC/j;->e()Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lq/F;->i:LC/j;

    invoke-virtual {v0}, LC/j;->g()J

    move-result-wide v0

    iget-wide v4, p0, Lq/F;->h:J

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_5a

    move-wide v0, v2

    :cond_5a
    long-to-float v0, v0

    iget v1, p0, Lq/F;->j:F

    div-float/2addr v0, v1

    add-float/2addr v0, v6

    float-to-long v0, v0

    goto :goto_29

    :cond_61
    iget-object v0, p0, Lq/F;->i:LC/j;

    invoke-virtual {v0}, LC/j;->h()Z

    move-result v0

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lq/F;->i:LC/j;

    invoke-virtual {v0}, LC/j;->i()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-gez v4, :cond_74

    move-wide v0, v2

    :cond_74
    long-to-float v0, v0

    iget v1, p0, Lq/F;->j:F

    div-float/2addr v0, v1

    add-float/2addr v0, v6

    float-to-long v0, v0

    goto :goto_29

    :cond_7b
    iget-object v0, p0, Lq/F;->i:LC/j;

    invoke-direct {p0, v0}, Lq/F;->c(LC/j;)Z

    move-result v0

    if-eqz v0, :cond_a5

    const-wide/16 v0, 0x64

    goto :goto_29

    :cond_86
    iget-object v4, p0, Lq/F;->i:LC/j;

    invoke-virtual {v4}, LC/j;->h()Z

    move-result v4

    if-eqz v4, :cond_40

    iget-wide v4, p0, Lq/F;->h:J

    cmp-long v2, v4, v2

    if-ltz v2, :cond_40

    iget-wide v2, p0, Lq/F;->h:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lq/F;->h:J
    :try_end_99
    .catchall {:try_start_44 .. :try_end_99} :catchall_9a

    goto :goto_40

    :catchall_9a
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_9d
    const/4 v0, 0x0

    :try_start_9e
    iput-object v0, p0, Lq/F;->i:LC/j;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lq/F;->g:J
    :try_end_a4
    .catchall {:try_start_9e .. :try_end_a4} :catchall_9a

    goto :goto_40

    :cond_a5
    move-wide v0, v2

    goto :goto_29
.end method

.method private e(LC/j;)Z
    .registers 3

    instance-of v0, p1, Lq/l;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lq/F;->e:Lq/b;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lq/F;->e:Lq/b;

    check-cast p1, Lq/l;

    invoke-virtual {v0, p1}, Lq/b;->a(Lq/l;)Z

    :cond_f
    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private f(LC/j;)Z
    .registers 4

    instance-of v0, p1, Lq/x;

    if-eqz v0, :cond_10

    :try_start_4
    check-cast p1, Lq/x;

    invoke-virtual {p1}, Lq/x;->a()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_e} :catch_12

    :goto_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :catch_12
    move-exception v0

    goto :goto_e
.end method

.method private g(LC/j;)Z
    .registers 6

    instance-of v0, p1, Lq/z;

    if-eqz v0, :cond_27

    check-cast p1, Lq/z;

    invoke-static {}, Lcom/google/android/maps/driveabout/app/ci;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ci;->e()Lcom/google/android/maps/driveabout/app/NavigationActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {p1}, Lq/z;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-class v2, Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v0, 0x1

    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method


# virtual methods
.method public a()V
    .registers 7

    const-wide/16 v4, 0x0

    :cond_2
    :goto_2
    :try_start_2
    iget-boolean v0, p0, Lq/F;->m:Z

    if-nez v0, :cond_31

    monitor-enter p0
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_7} :catch_30

    :cond_7
    :goto_7
    :try_start_7
    iget-boolean v0, p0, Lq/F;->m:Z

    if-nez v0, :cond_4d

    iget-boolean v0, p0, Lq/F;->l:Z

    if-nez v0, :cond_1f

    iget-wide v0, p0, Lq/F;->g:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_1f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lq/F;->g:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_4d

    :cond_1f
    iget-boolean v0, p0, Lq/F;->l:Z

    if-nez v0, :cond_29

    iget-wide v0, p0, Lq/F;->g:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_3e

    :cond_29
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_7

    :catchall_2d
    move-exception v0

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw v0
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_30} :catch_30

    :catch_30
    move-exception v0

    :cond_31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lq/F;->m:Z

    iget-object v0, p0, Lq/F;->f:Lq/G;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lq/F;->f:Lq/G;

    invoke-interface {v0}, Lq/G;->a()V

    :cond_3d
    return-void

    :cond_3e
    :try_start_3e
    iget-wide v0, p0, Lq/F;->g:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-lez v2, :cond_7

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    goto :goto_7

    :cond_4d
    iget-object v0, p0, Lq/F;->i:LC/j;

    monitor-exit p0
    :try_end_50
    .catchall {:try_start_3e .. :try_end_50} :catchall_2d

    if-eqz v0, :cond_55

    :try_start_52
    invoke-direct {p0, v0}, Lq/F;->a(LC/j;)Z

    :cond_55
    invoke-direct {p0}, Lq/F;->e()LC/j;

    move-result-object v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lq/F;->k:Z

    if-eqz v0, :cond_31

    invoke-direct {p0}, Lq/F;->d()V
    :try_end_62
    .catch Ljava/lang/InterruptedException; {:try_start_52 .. :try_end_62} :catch_30

    goto :goto_2
.end method

.method public a(LC/f;)V
    .registers 3

    invoke-virtual {p1}, LC/f;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lq/F;->a(Ljava/util/List;)V

    return-void
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lq/F;->b:Ljava/util/List;

    invoke-direct {p0}, Lq/F;->d()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lq/G;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lq/F;->f:Lq/G;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lq/P;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lq/F;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lq/F;->d:Ljava/util/List;

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

.method public declared-synchronized a(Lq/b;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lq/F;->e:Lq/b;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lq/F;->k:Z

    return-void
.end method

.method public b()Ls/z;
    .registers 2

    iget-object v0, p0, Lq/F;->a:Ls/z;

    return-object v0
.end method

.method public declared-synchronized c()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lq/F;->m:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
