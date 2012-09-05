.class public abstract Lz/u;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field protected b:Landroid/content/Context;

.field private c:Z


# direct methods
.method protected constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lz/u;->a:I

    iput-boolean v0, p0, Lz/u;->c:Z

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract b(Landroid/content/Context;)V
.end method

.method protected declared-synchronized c(Landroid/content/Context;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lz/u;->a:I

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lz/u;->c:Z

    if-eqz v0, :cond_12

    new-instance v0, Lz/v;

    invoke-direct {v0}, Lz/v;-><init>()V

    throw v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_12
    const/4 v0, 0x1

    :try_start_13
    iput-boolean v0, p0, Lz/u;->c:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lz/u;->b:Landroid/content/Context;

    iget-object v0, p0, Lz/u;->b:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lz/u;->b(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz/u;->c:Z

    :cond_23
    iget v0, p0, Lz/u;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lz/u;->a:I
    :try_end_29
    .catchall {:try_start_13 .. :try_end_29} :catchall_f

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized d()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lz/u;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lz/u;->a:I

    iget v0, p0, Lz/u;->a:I

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lz/u;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lz/u;->b:Landroid/content/Context;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    :cond_11
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method
