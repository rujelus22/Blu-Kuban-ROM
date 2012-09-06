.class public final LXL;
.super Ljava/lang/Object;
.source "ExponentialBackoffRateLimiter.java"

# interfaces
.implements LZR;


# instance fields
.field private final a:D

.field private a:I

.field private final a:J

.field private final a:Ljava/util/Random;

.field private final b:J


# direct methods
.method public constructor <init>(JD)V
    .registers 12
    .parameter
    .parameter

    .prologue
    .line 29
    const-wide v5, 0x7fffffffffffffffL

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, LXL;-><init>(JDJ)V

    .line 30
    return-void
.end method

.method public constructor <init>(JDJ)V
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v7}, LXL;-><init>(JDJLjava/util/Random;)V

    .line 45
    return-void
.end method

.method constructor <init>(JDJLjava/util/Random;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v2, p0, LXL;->a:I

    .line 50
    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-lez v0, :cond_2e

    move v0, v1

    :goto_e
    invoke-static {v0}, LafQ;->a(Z)V

    .line 51
    const-wide/high16 v3, 0x3ff0

    cmpl-double v0, p3, v3

    if-ltz v0, :cond_30

    move v0, v1

    :goto_18
    invoke-static {v0}, LafQ;->a(Z)V

    .line 52
    cmp-long v0, p1, p5

    if-gtz v0, :cond_32

    :goto_1f
    invoke-static {v1}, LafQ;->a(Z)V

    .line 53
    invoke-static {p7}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iput-wide p1, p0, LXL;->a:J

    .line 55
    iput-wide p3, p0, LXL;->a:D

    .line 56
    iput-wide p5, p0, LXL;->b:J

    .line 57
    iput-object p7, p0, LXL;->a:Ljava/util/Random;

    .line 58
    return-void

    :cond_2e
    move v0, v2

    .line 50
    goto :goto_e

    :cond_30
    move v0, v2

    .line 51
    goto :goto_18

    :cond_32
    move v1, v2

    .line 52
    goto :goto_1f
.end method


# virtual methods
.method public declared-synchronized a()I
    .registers 2

    .prologue
    .line 110
    monitor-enter p0

    :try_start_1
    iget v0, p0, LXL;->a:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a()J
    .registers 7

    .prologue
    const-wide/high16 v4, 0x3ff0

    .line 75
    monitor-enter p0

    :try_start_3
    iget-wide v0, p0, LXL;->a:D

    sub-double/2addr v0, v4

    iget-object v2, p0, LXL;->a:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    mul-double/2addr v0, v2

    add-double/2addr v0, v4

    .line 76
    iget-wide v2, p0, LXL;->a:D

    iget v4, p0, LXL;->a:I

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 77
    iget-wide v2, p0, LXL;->a:J

    long-to-double v2, v2

    mul-double/2addr v0, v2

    .line 78
    iget v2, p0, LXL;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, LXL;->a:I

    .line 79
    iget-wide v2, p0, LXL;->b:J

    long-to-double v2, v2

    cmpl-double v2, v0, v2

    if-lez v2, :cond_2d

    .line 80
    iget-wide v0, p0, LXL;->b:J
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_2f

    .line 82
    :goto_2b
    monitor-exit p0

    return-wide v0

    :cond_2d
    double-to-long v0, v0

    goto :goto_2b

    .line 75
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()V
    .registers 2

    .prologue
    .line 102
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, LXL;->a:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 103
    monitor-exit p0

    return-void

    .line 102
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .registers 3

    .prologue
    .line 91
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, LXL;->a()J

    move-result-wide v0

    .line 92
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 93
    monitor-exit p0

    return-void

    .line 91
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .registers 1

    .prologue
    .line 98
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 115
    const-string v0, "ExponentialBackoffRateLimiter[%d tokens, initialMs=%d, factor=%.3f]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, LXL;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, LXL;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v3, p0, LXL;->a:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
