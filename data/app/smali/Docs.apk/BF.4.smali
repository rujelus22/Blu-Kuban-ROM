.class public LBF;
.super Ljava/lang/Object;
.source "XmlHttpTrafficCounters.java"


# instance fields
.field private a:I

.field private a:J

.field private a:Z

.field private b:I

.field private b:J

.field private c:I

.field private c:J

.field private d:I

.field private d:J

.field private e:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v0, p0, LBF;->a:Z

    .line 17
    iput v0, p0, LBF;->a:I

    .line 18
    iput v0, p0, LBF;->b:I

    .line 19
    iput v0, p0, LBF;->c:I

    .line 20
    iput v0, p0, LBF;->d:I

    .line 21
    iput v0, p0, LBF;->e:I

    .line 22
    iput-wide v1, p0, LBF;->a:J

    .line 23
    iput-wide v1, p0, LBF;->b:J

    .line 24
    iput-wide v1, p0, LBF;->c:J

    .line 25
    iput-wide v1, p0, LBF;->d:J

    .line 27
    return-void
.end method

.method public constructor <init>(LBF;)V
    .registers 5
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v0, p0, LBF;->a:Z

    .line 17
    iput v0, p0, LBF;->a:I

    .line 18
    iput v0, p0, LBF;->b:I

    .line 19
    iput v0, p0, LBF;->c:I

    .line 20
    iput v0, p0, LBF;->d:I

    .line 21
    iput v0, p0, LBF;->e:I

    .line 22
    iput-wide v1, p0, LBF;->a:J

    .line 23
    iput-wide v1, p0, LBF;->b:J

    .line 24
    iput-wide v1, p0, LBF;->c:J

    .line 25
    iput-wide v1, p0, LBF;->d:J

    .line 30
    iget v0, p1, LBF;->a:I

    iput v0, p0, LBF;->a:I

    .line 31
    iget v0, p1, LBF;->b:I

    iput v0, p0, LBF;->b:I

    .line 32
    iget v0, p1, LBF;->c:I

    iput v0, p0, LBF;->c:I

    .line 33
    iget v0, p1, LBF;->d:I

    iput v0, p0, LBF;->d:I

    .line 34
    iget v0, p1, LBF;->e:I

    iput v0, p0, LBF;->e:I

    .line 35
    iget-wide v0, p1, LBF;->a:J

    iput-wide v0, p0, LBF;->a:J

    .line 36
    iget-wide v0, p1, LBF;->b:J

    iput-wide v0, p0, LBF;->b:J

    .line 37
    iget-wide v0, p1, LBF;->c:J

    iput-wide v0, p0, LBF;->c:J

    .line 38
    iget-wide v0, p1, LBF;->d:J

    iput-wide v0, p0, LBF;->d:J

    .line 39
    return-void
.end method

.method private a([Lorg/apache/http/Header;)I
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 131
    .line 132
    array-length v2, p1

    move v1, v0

    :goto_3
    if-ge v0, v2, :cond_1e

    aget-object v3, p1, v0

    .line 133
    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 136
    :cond_1e
    return v1
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 42
    iget-boolean v0, p0, LBF;->a:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 43
    :goto_5
    return v0

    :cond_6
    iget v0, p0, LBF;->a:I

    goto :goto_5
.end method

.method public declared-synchronized a()LBF;
    .registers 3

    .prologue
    .line 88
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, LBF;->a:Z

    .line 89
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    iput-wide v0, p0, LBF;->b:J

    .line 90
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    iput-wide v0, p0, LBF;->d:J

    .line 92
    new-instance v0, LBF;

    invoke-direct {v0, p0}, LBF;-><init>(LBF;)V
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_1f

    .line 93
    monitor-exit p0

    return-object v0

    .line 88
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()V
    .registers 3

    .prologue
    .line 77
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, LBF;->a:I

    .line 78
    const/4 v0, 0x0

    iput v0, p0, LBF;->b:I

    .line 79
    const/4 v0, 0x0

    iput v0, p0, LBF;->c:I

    .line 80
    const/4 v0, 0x0

    iput v0, p0, LBF;->d:I

    .line 81
    const/4 v0, 0x0

    iput v0, p0, LBF;->e:I

    .line 82
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    iput-wide v0, p0, LBF;->a:J

    .line 83
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    iput-wide v0, p0, LBF;->c:J

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, LBF;->a:Z
    :try_end_27
    .catchall {:try_start_2 .. :try_end_27} :catchall_29

    .line 85
    monitor-exit p0

    return-void

    .line 77
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .registers 3
    .parameter

    .prologue
    .line 97
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, LBF;->a:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-nez v0, :cond_7

    .line 102
    :goto_5
    monitor-exit p0

    return-void

    .line 101
    :cond_7
    :try_start_7
    iget v0, p0, LBF;->d:I

    add-int/2addr v0, p1

    iput v0, p0, LBF;->d:I
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    goto :goto_5

    .line 97
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a([Lorg/apache/http/Header;)V
    .registers 4
    .parameter

    .prologue
    .line 114
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, LBF;->a:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    if-nez v0, :cond_7

    .line 119
    :goto_5
    monitor-exit p0

    return-void

    .line 118
    :cond_7
    :try_start_7
    iget v0, p0, LBF;->b:I

    invoke-direct {p0, p1}, LBF;->a([Lorg/apache/http/Header;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, LBF;->b:I
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_11

    goto :goto_5

    .line 114
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 47
    iget-boolean v0, p0, LBF;->a:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 48
    :goto_5
    return v0

    :cond_6
    iget v0, p0, LBF;->b:I

    goto :goto_5
.end method

.method public declared-synchronized b(I)V
    .registers 3
    .parameter

    .prologue
    .line 105
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, LBF;->a:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-nez v0, :cond_7

    .line 110
    :goto_5
    monitor-exit p0

    return-void

    .line 109
    :cond_7
    :try_start_7
    iget v0, p0, LBF;->e:I

    add-int/2addr v0, p1

    iput v0, p0, LBF;->e:I
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_d

    goto :goto_5

    .line 105
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b([Lorg/apache/http/Header;)V
    .registers 4
    .parameter

    .prologue
    .line 122
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, LBF;->a:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_17

    if-nez v0, :cond_7

    .line 128
    :goto_5
    monitor-exit p0

    return-void

    .line 126
    :cond_7
    :try_start_7
    iget v0, p0, LBF;->c:I

    invoke-direct {p0, p1}, LBF;->a([Lorg/apache/http/Header;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, LBF;->c:I

    .line 127
    iget v0, p0, LBF;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LBF;->a:I
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_17

    goto :goto_5

    .line 122
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 52
    iget-boolean v0, p0, LBF;->a:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 53
    :goto_5
    return v0

    :cond_6
    iget v0, p0, LBF;->c:I

    goto :goto_5
.end method

.method public d()I
    .registers 2

    .prologue
    .line 57
    iget-boolean v0, p0, LBF;->a:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 58
    :goto_5
    return v0

    :cond_6
    iget v0, p0, LBF;->d:I

    goto :goto_5
.end method

.method public e()I
    .registers 2

    .prologue
    .line 62
    iget-boolean v0, p0, LBF;->a:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 63
    :goto_5
    return v0

    :cond_6
    iget v0, p0, LBF;->e:I

    goto :goto_5
.end method

.method public f()I
    .registers 5

    .prologue
    .line 67
    iget-boolean v0, p0, LBF;->a:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 68
    :goto_5
    return v0

    :cond_6
    iget-wide v0, p0, LBF;->b:J

    iget-wide v2, p0, LBF;->a:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_5
.end method

.method public g()I
    .registers 5

    .prologue
    .line 72
    iget-boolean v0, p0, LBF;->a:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 73
    :goto_5
    return v0

    :cond_6
    iget-wide v0, p0, LBF;->d:J

    iget-wide v2, p0, LBF;->c:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_5
.end method
