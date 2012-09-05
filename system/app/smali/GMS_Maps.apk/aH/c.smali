.class public LaH/c;
.super Ljava/lang/Object;


# instance fields
.field protected a:Z

.field b:Lt/y;

.field c:Lt/y;

.field private d:I

.field private e:I

.field private f:Ljava/lang/Object;

.field private g:Z

.field private h:I

.field private i:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, LaH/c;->d:I

    iput v1, p0, LaH/c;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, LaH/c;->a:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LaH/c;->f:Ljava/lang/Object;

    iput-boolean v1, p0, LaH/c;->g:Z

    iput-object v2, p0, LaH/c;->b:Lt/y;

    iput-object v2, p0, LaH/c;->c:Lt/y;

    iput v1, p0, LaH/c;->h:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LaH/c;->i:Ljava/lang/Object;

    return-void
.end method

.method private i()Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, LaH/c;->f:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_6
    iput v3, p0, LaH/c;->e:I

    iget-boolean v3, p0, LaH/c;->a:Z

    if-eqz v3, :cond_14

    iget v1, p0, LaH/c;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LaH/c;->d:I

    monitor-exit v2

    :goto_13
    return v0

    :cond_14
    iget v3, p0, LaH/c;->d:I

    const/4 v4, 0x4

    if-lt v3, v4, :cond_1e

    monitor-exit v2

    goto :goto_13

    :catchall_1b
    move-exception v0

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1b

    throw v0

    :cond_1e
    :try_start_1e
    iget v0, p0, LaH/c;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LaH/c;->d:I

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_1b

    move v0, v1

    goto :goto_13
.end method

.method private j()Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, LaH/c;->f:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_6
    iput v3, p0, LaH/c;->d:I

    iget-boolean v3, p0, LaH/c;->a:Z

    if-eqz v3, :cond_14

    iget v1, p0, LaH/c;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LaH/c;->e:I

    monitor-exit v2

    :goto_13
    return v0

    :cond_14
    iget v3, p0, LaH/c;->e:I

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1e

    monitor-exit v2

    goto :goto_13

    :catchall_1b
    move-exception v0

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1b

    throw v0

    :cond_1e
    :try_start_1e
    iget v0, p0, LaH/c;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LaH/c;->e:I

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_1b

    move v0, v1

    goto :goto_13
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v1, p0, LaH/c;->f:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, LaH/c;->a:Z

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    invoke-virtual {p0}, LaH/c;->g()V

    return-void

    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public a(Lt/y;)V
    .registers 3

    if-eqz p1, :cond_f

    invoke-virtual {p0, p1}, LaH/c;->b(Lt/y;)V

    invoke-direct {p0}, LaH/c;->j()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, LaH/c;->g()V

    :cond_e
    :goto_e
    return-void

    :cond_f
    invoke-direct {p0}, LaH/c;->i()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, LaH/c;->h()V

    goto :goto_e
.end method

.method public b()V
    .registers 1

    invoke-virtual {p0}, LaH/c;->h()V

    return-void
.end method

.method b(Lt/y;)V
    .registers 5

    invoke-virtual {p0}, LaH/c;->f()Lt/y;

    move-result-object v0

    iget-object v1, p0, LaH/c;->i:Ljava/lang/Object;

    monitor-enter v1

    if-nez v0, :cond_f

    :try_start_9
    iput-object p1, p0, LaH/c;->b:Lt/y;

    :goto_b
    iput-object p1, p0, LaH/c;->c:Lt/y;

    monitor-exit v1

    return-void

    :cond_f
    invoke-virtual {v0, p1}, Lt/y;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    iput v0, p0, LaH/c;->h:I

    goto :goto_b

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_19

    throw v0

    :cond_1c
    :try_start_1c
    iget-object v0, p0, LaH/c;->c:Lt/y;

    if-eqz v0, :cond_3a

    iget-object v0, p0, LaH/c;->c:Lt/y;

    invoke-virtual {v0, p1}, Lt/y;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget v0, p0, LaH/c;->h:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_33

    const/4 v0, 0x0

    iput v0, p0, LaH/c;->h:I

    iput-object p1, p0, LaH/c;->b:Lt/y;

    goto :goto_b

    :cond_33
    iget v0, p0, LaH/c;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LaH/c;->h:I

    goto :goto_b

    :cond_3a
    const/4 v0, 0x1

    iput v0, p0, LaH/c;->h:I
    :try_end_3d
    .catchall {:try_start_1c .. :try_end_3d} :catchall_19

    goto :goto_b
.end method

.method public c()V
    .registers 3

    iget-object v1, p0, LaH/c;->f:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, LaH/c;->a:Z

    monitor-exit v1

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, LaH/c;->g:Z

    return v0
.end method

.method public e()Z
    .registers 3

    iget-object v1, p0, LaH/c;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, LaH/c;->a:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public f()Lt/y;
    .registers 3

    iget-object v1, p0, LaH/c;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, LaH/c;->b:Lt/y;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method g()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, LaH/c;->g:Z

    return-void
.end method

.method h()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, LaH/c;->g:Z

    iget-object v1, p0, LaH/c;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget v0, p0, LaH/c;->d:I

    const/4 v2, 0x4

    if-lt v0, v2, :cond_e

    const/4 v0, 0x0

    iput-boolean v0, p0, LaH/c;->a:Z

    :cond_e
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_10

    throw v0
.end method
