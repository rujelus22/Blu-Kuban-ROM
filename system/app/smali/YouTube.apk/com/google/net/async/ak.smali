.class public final Lcom/google/net/async/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:I

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Lcom/google/net/async/ak;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/net/async/ak;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput v0, p0, Lcom/google/net/async/ak;->b:I

    .line 95
    iput-boolean v0, p0, Lcom/google/net/async/ak;->c:Z

    .line 20
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 2

    .prologue
    .line 28
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/net/async/ak;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/net/async/ak;->b:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 29
    monitor-exit p0

    return-void

    .line 28
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .registers 3

    .prologue
    .line 39
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/net/async/ak;->b:I

    if-nez v0, :cond_10

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No locks to remove"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 39
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 43
    :cond_10
    :try_start_10
    sget-boolean v0, Lcom/google/net/async/ak;->a:Z

    if-nez v0, :cond_1e

    iget v0, p0, Lcom/google/net/async/ak;->b:I

    if-gtz v0, :cond_1e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 44
    :cond_1e
    iget v0, p0, Lcom/google/net/async/ak;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/net/async/ak;->b:I

    .line 45
    iget v0, p0, Lcom/google/net/async/ak;->b:I

    if-nez v0, :cond_32

    iget-boolean v0, p0, Lcom/google/net/async/ak;->c:Z

    if-eqz v0, :cond_32

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/net/async/ak;->c:Z

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_32
    .catchall {:try_start_10 .. :try_end_32} :catchall_d

    .line 49
    :cond_32
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized c()V
    .registers 2

    .prologue
    .line 61
    monitor-enter p0

    :goto_1
    :try_start_1
    iget v0, p0, Lcom/google/net/async/ak;->b:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    if-gtz v0, :cond_7

    .line 65
    monitor-exit p0

    return-void

    .line 62
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/google/net/async/ak;->c:Z

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_e

    goto :goto_1

    .line 61
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    const-string v1, "Number of locks = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    monitor-enter p0

    .line 75
    :try_start_b
    iget v1, p0, Lcom/google/net/async/ak;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 76
    iget-boolean v1, p0, Lcom/google/net/async/ak;->c:Z

    if-eqz v1, :cond_1f

    .line 77
    const-string v1, "; A thread is waiting to pass this gate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    :goto_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_25

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 79
    :cond_1f
    :try_start_1f
    const-string v1, "; No thread is waiting to pass this gate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_25

    goto :goto_19

    .line 74
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method
