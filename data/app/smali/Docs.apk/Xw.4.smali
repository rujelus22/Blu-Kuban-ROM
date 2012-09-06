.class public LXw;
.super Ljava/lang/Object;
.source "BucketRateLimiter.java"

# interfaces
.implements LFY;
.implements LZR;


# instance fields
.field private a:I

.field private a:J

.field private final a:LFX;

.field private final a:LXC;

.field private final a:Ljava/lang/String;

.field private b:I

.field private final b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(LFX;LXC;)V
    .registers 5
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 67
    const-string v0, "maxTokens"

    const-string v1, "tokenPeriodMilli"

    invoke-direct {p0, p1, p2, v0, v1}, LXw;-><init>(LFX;LXC;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor <init>(LFX;LXC;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p4, p0, LXw;->b:Ljava/lang/String;

    .line 82
    iput-object p3, p0, LXw;->a:Ljava/lang/String;

    .line 83
    iput-object p1, p0, LXw;->a:LFX;

    .line 84
    iput-object p2, p0, LXw;->a:LXC;

    .line 85
    invoke-interface {p2}, LXC;->a()J

    move-result-wide v0

    iput-wide v0, p0, LXw;->a:J

    .line 87
    invoke-interface {p1, p0}, LFX;->a(LFY;)V

    .line 89
    invoke-virtual {p0}, LXw;->a()V

    .line 90
    return-void
.end method


# virtual methods
.method declared-synchronized a()J
    .registers 9

    .prologue
    .line 98
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LXw;->a:LXC;

    invoke-interface {v0}, LXC;->a()J

    move-result-wide v2

    .line 100
    iget-wide v0, p0, LXw;->a:J

    sub-long v0, v2, v0

    .line 106
    iget v4, p0, LXw;->b:I

    neg-int v4, v4

    iget v5, p0, LXw;->a:I

    mul-int/2addr v4, v5

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_23

    .line 107
    iget v0, p0, LXw;->b:I

    iget v1, p0, LXw;->a:I

    mul-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, LXw;->a:J

    .line 108
    iget v0, p0, LXw;->b:I

    neg-int v0, v0

    int-to-long v0, v0

    .line 111
    :cond_23
    iget v4, p0, LXw;->b:I

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-ltz v4, :cond_48

    .line 112
    iget v4, p0, LXw;->c:I

    int-to-long v4, v4

    iget v6, p0, LXw;->b:I

    int-to-long v6, v6

    div-long v6, v0, v6

    add-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, p0, LXw;->c:I

    .line 113
    iget v4, p0, LXw;->b:I

    int-to-long v4, v4

    rem-long/2addr v0, v4

    sub-long v0, v2, v0

    iput-wide v0, p0, LXw;->a:J

    .line 116
    iget v0, p0, LXw;->c:I

    iget v1, p0, LXw;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, LXw;->c:I

    .line 119
    :cond_48
    iget v0, p0, LXw;->c:I

    if-lez v0, :cond_56

    .line 120
    iget v0, p0, LXw;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LXw;->c:I
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_62

    .line 121
    const-wide/16 v0, 0x0

    .line 124
    :goto_54
    monitor-exit p0

    return-wide v0

    .line 123
    :cond_56
    :try_start_56
    iget-wide v0, p0, LXw;->a:J

    iget v4, p0, LXw;->b:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    iput-wide v0, p0, LXw;->a:J

    .line 124
    iget-wide v0, p0, LXw;->a:J
    :try_end_60
    .catchall {:try_start_56 .. :try_end_60} :catchall_62

    sub-long/2addr v0, v2

    goto :goto_54

    .line 98
    :catchall_62
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()V
    .registers 7

    .prologue
    .line 155
    monitor-enter p0

    :try_start_1
    iget v0, p0, LXw;->a:I

    .line 156
    iget v1, p0, LXw;->b:I

    .line 157
    iget-object v2, p0, LXw;->a:LFX;

    monitor-enter v2
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_31

    .line 158
    :try_start_8
    iget-object v3, p0, LXw;->a:LFX;

    iget-object v4, p0, LXw;->a:Ljava/lang/String;

    const/16 v5, 0xa

    invoke-interface {v3, v4, v5}, LFX;->a(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, LXw;->a:I

    .line 159
    iget-object v3, p0, LXw;->a:LFX;

    iget-object v4, p0, LXw;->b:Ljava/lang/String;

    const/16 v5, 0x3e8

    invoke-interface {v3, v4, v5}, LFX;->a(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, LXw;->b:I

    .line 160
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_2e

    .line 162
    :try_start_21
    iget v2, p0, LXw;->a:I

    if-ne v0, v2, :cond_29

    iget v0, p0, LXw;->b:I

    if-eq v1, v0, :cond_2c

    .line 163
    :cond_29
    invoke-virtual {p0}, LXw;->d()V
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_31

    .line 165
    :cond_2c
    monitor-exit p0

    return-void

    .line 160
    :catchall_2e
    move-exception v0

    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    throw v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    .line 155
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .registers 6

    .prologue
    .line 130
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, LXw;->a()J
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1a

    move-result-wide v0

    .line 132
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_e

    .line 133
    :try_start_b
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_1a
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_e} :catch_10

    .line 140
    :cond_e
    monitor-exit p0

    return-void

    .line 135
    :catch_10
    move-exception v0

    .line 137
    :try_start_11
    iget-wide v1, p0, LXw;->a:J

    iget v3, p0, LXw;->b:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, LXw;->a:J

    .line 138
    throw v0
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1a

    .line 130
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .registers 1

    .prologue
    .line 145
    return-void
.end method

.method public declared-synchronized d()V
    .registers 3

    .prologue
    .line 149
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, LXw;->c:I

    .line 150
    iget-object v0, p0, LXw;->a:LXC;

    invoke-interface {v0}, LXC;->a()J

    move-result-wide v0

    iput-wide v0, p0, LXw;->a:J
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_e

    .line 151
    monitor-exit p0

    return-void

    .line 149
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
