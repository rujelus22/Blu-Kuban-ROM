.class public abstract Lt/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field protected b:Landroid/content/Context;

.field private c:Z


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput v0, p0, Lt/t;->a:I

    .line 86
    iput-boolean v0, p0, Lt/t;->c:Z

    .line 90
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract b(Landroid/content/Context;)V
.end method

.method protected declared-synchronized c(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 100
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lt/t;->a:I

    if-nez v0, :cond_23

    .line 101
    iget-boolean v0, p0, Lt/t;->c:Z

    if-eqz v0, :cond_12

    .line 102
    new-instance v0, Lt/u;

    invoke-direct {v0}, Lt/u;-><init>()V

    throw v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    .line 100
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 104
    :cond_12
    const/4 v0, 0x1

    :try_start_13
    iput-boolean v0, p0, Lt/t;->c:Z

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lt/t;->b:Landroid/content/Context;

    .line 109
    iget-object v0, p0, Lt/t;->b:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lt/t;->b(Landroid/content/Context;)V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lt/t;->c:Z

    .line 112
    :cond_23
    iget v0, p0, Lt/t;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lt/t;->a:I
    :try_end_29
    .catchall {:try_start_13 .. :try_end_29} :catchall_f

    .line 113
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized d()V
    .registers 2

    .prologue
    .line 116
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lt/t;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lt/t;->a:I

    .line 117
    iget v0, p0, Lt/t;->a:I

    if-nez v0, :cond_11

    .line 118
    invoke-virtual {p0}, Lt/t;->a()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lt/t;->b:Landroid/content/Context;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 121
    :cond_11
    monitor-exit p0

    return-void

    .line 116
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method
