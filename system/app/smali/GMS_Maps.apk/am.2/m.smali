.class public Lam/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private final b:Z

.field private final c:J

.field private d:LS/f;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ZJ)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lam/m;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 52
    iput-boolean p2, p0, Lam/m;->b:Z

    .line 53
    iput-wide p3, p0, Lam/m;->c:J

    .line 54
    return-void
.end method

.method private a(JLjava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 118
    const-wide/32 v0, 0x493e0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1d

    .line 119
    const/16 v0, 0x21e

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    :goto_e
    const-string v1, "%s - %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 121
    :cond_1d
    invoke-static {p1, p2, v3, v3}, Lcom/google/googlenav/b;->a(JZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, Lam/m;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized a(LS/f;)V
    .registers 3
    .parameter

    .prologue
    .line 135
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lam/m;->d:LS/f;

    if-nez v0, :cond_7

    .line 136
    iput-object p1, p0, Lam/m;->d:LS/f;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 138
    :cond_7
    monitor-exit p0

    return-void

    .line 135
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Ljava/lang/String;
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lam/m;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 3

    .prologue
    .line 80
    iget-object v0, p0, Lam/m;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    .line 88
    const-string v0, ""

    .line 89
    iget-object v1, p0, Lam/m;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 91
    if-eqz v1, :cond_3d

    .line 92
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v2

    .line 94
    const/4 v4, 0x4

    invoke-static {v1, v4}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v1

    .line 96
    iget-wide v4, p0, Lam/m;->c:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_3d

    cmp-long v4, v2, v6

    if-lez v4, :cond_3d

    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 100
    iget-wide v4, p0, Lam/m;->c:J

    sub-long v2, v4, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 103
    cmp-long v4, v2, v6

    if-ltz v4, :cond_3d

    const-wide/32 v4, 0x240c8400

    cmp-long v4, v2, v4

    if-gez v4, :cond_3d

    .line 104
    invoke-direct {p0, v2, v3, v1}, Lam/m;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    :cond_3d
    return-object v0
.end method

.method public declared-synchronized e()Z
    .registers 2

    .prologue
    .line 127
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lam/m;->d:LS/f;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 149
    if-ne p0, p1, :cond_5

    .line 155
    :cond_4
    :goto_4
    return v0

    .line 152
    :cond_5
    instance-of v2, p1, Lam/m;

    if-eqz v2, :cond_19

    .line 153
    invoke-virtual {p0}, Lam/m;->a()J

    move-result-wide v2

    check-cast p1, Lam/m;

    invoke-virtual {p1}, Lam/m;->a()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_19
    move v0, v1

    .line 155
    goto :goto_4
.end method

.method public declared-synchronized f()LS/f;
    .registers 2

    .prologue
    .line 131
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lam/m;->d:LS/f;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lam/m;->d:LS/f;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_c

    :goto_7
    monitor-exit p0

    return-object v0

    :cond_9
    :try_start_9
    sget-object v0, Lam/i;->a:LS/f;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_c

    goto :goto_7

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 144
    iget-boolean v0, p0, Lam/m;->b:Z

    return v0
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 160
    invoke-virtual {p0}, Lam/m;->a()J

    move-result-wide v0

    invoke-virtual {p0}, Lam/m;->a()J

    move-result-wide v2

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
