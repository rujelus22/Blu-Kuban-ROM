.class public LtZ;
.super Ljava/lang/Object;
.source "UploadStatus.java"


# instance fields
.field a:I

.field final a:LtB;

.field public final a:Z

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(LtB;IZ)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, LtZ;->a:LtB;

    .line 24
    iput p2, p0, LtZ;->a:I

    .line 25
    iput-boolean p3, p0, LtZ;->a:Z

    .line 26
    iput-boolean v0, p0, LtZ;->b:Z

    .line 27
    iput-boolean v0, p0, LtZ;->c:Z

    .line 28
    return-void
.end method


# virtual methods
.method public a()LtB;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, LtZ;->a:LtB;

    return-object v0
.end method

.method declared-synchronized a()V
    .registers 2

    .prologue
    .line 58
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, LtZ;->b:Z

    .line 59
    iget-object v0, p0, LtZ;->a:LtB;

    invoke-virtual {v0}, LtB;->b()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 60
    monitor-exit p0

    return-void

    .line 58
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()Z
    .registers 3

    .prologue
    .line 38
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, LtZ;->c:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, LtZ;->b:Z

    if-nez v0, :cond_f

    iget v0, p0, LtZ;->a:I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_14

    const/16 v1, 0x64

    if-lt v0, v1, :cond_12

    :cond_f
    const/4 v0, 0x1

    :goto_10
    monitor-exit p0

    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_10

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b()V
    .registers 2

    .prologue
    .line 71
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, LtZ;->c:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 72
    monitor-exit p0

    return-void

    .line 71
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b()Z
    .registers 2

    .prologue
    .line 49
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, LtZ;->b:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c()Z
    .registers 2

    .prologue
    .line 63
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, LtZ;->c:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
