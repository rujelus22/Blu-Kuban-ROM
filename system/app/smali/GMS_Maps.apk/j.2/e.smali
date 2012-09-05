.class public Lj/e;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field final b:J

.field c:Li/D;

.field d:J

.field e:J

.field f:Lj/f;


# direct methods
.method public constructor <init>(Ljava/lang/String;Li/D;JJ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj/f;

    invoke-direct {v0}, Lj/f;-><init>()V

    iput-object v0, p0, Lj/e;->f:Lj/f;

    iput-object p1, p0, Lj/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lj/e;->c:Li/D;

    iput-wide p3, p0, Lj/e;->b:J

    invoke-virtual {p0, p5, p6}, Lj/e;->a(J)V

    return-void
.end method

.method private static a(JJJJ)J
    .registers 10

    add-long v0, p0, p2

    sub-long/2addr v0, p4

    invoke-static {p6, p7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized a()LW/a;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lj/e;->f:Lj/f;

    invoke-virtual {v0}, Lj/f;->a()LW/a;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(J)V
    .registers 5

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_3
    iput-wide v0, p0, Lj/e;->d:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lj/e;->e:J

    invoke-virtual {p0, p1, p2}, Lj/e;->b(J)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(JJJLW/a;)V
    .registers 21

    monitor-enter p0

    if-nez p7, :cond_8

    :try_start_3
    invoke-virtual {p0, p1, p2}, Lj/e;->a(J)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_3b

    :goto_6
    monitor-exit p0

    return-void

    :cond_8
    const/4 v1, 0x2

    :try_start_9
    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, LW/a;->d(I)J

    move-result-wide v9

    const/4 v1, 0x1

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, LW/a;->d(I)J

    move-result-wide v11

    iget-wide v5, p0, Lj/e;->b:J

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    move-wide v7, p1

    invoke-static/range {v1 .. v8}, Lj/e;->a(JJJJ)J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-ltz v1, :cond_2f

    const-wide/16 v1, -0x1

    cmp-long v1, v9, v1

    if-nez v1, :cond_3e

    :cond_2f
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lj/e;->e:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lj/e;->d:J

    :goto_37
    invoke-virtual {p0, p1, p2}, Lj/e;->b(J)Z
    :try_end_3a
    .catchall {:try_start_9 .. :try_end_3a} :catchall_3b

    goto :goto_6

    :catchall_3b
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_3e
    :try_start_3e
    iget-wide v5, p0, Lj/e;->b:J

    move-wide/from16 v1, p3

    move-wide v3, v9

    move-wide v7, p1

    invoke-static/range {v1 .. v8}, Lj/e;->a(JJJJ)J

    move-result-wide v1

    iput-wide v1, p0, Lj/e;->e:J

    iget-object v1, p0, Lj/e;->c:Li/D;

    iget-wide v1, v1, Li/D;->a:J

    invoke-static {v1, v2, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lj/e;->d:J
    :try_end_54
    .catchall {:try_start_3e .. :try_end_54} :catchall_3b

    goto :goto_37
.end method

.method declared-synchronized a(LW/a;)V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iget-wide v1, p0, Lj/e;->d:J

    invoke-virtual {p1, v0, v1, v2}, LW/a;->b(IJ)V

    const/4 v0, 0x2

    iget-wide v1, p0, Lj/e;->e:J

    invoke-virtual {p1, v0, v1, v2}, LW/a;->b(IJ)V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Li/D;J)V
    .registers 8

    monitor-enter p0

    if-nez p1, :cond_5

    :goto_3
    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    invoke-virtual {p0, p2, p3}, Lj/e;->b(J)Z

    iget-wide v0, p0, Lj/e;->d:J

    iget-wide v2, p1, Li/D;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    iget-wide v0, p1, Li/D;->a:J

    iput-wide v0, p0, Lj/e;->d:J

    :cond_14
    iput-object p1, p0, Lj/e;->c:Li/D;
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    goto :goto_3

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(JJ)Z
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lj/e;->d:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_c

    cmp-long v0, p1, v0

    if-gtz v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(JJZ)Z
    .registers 9

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p3, p4}, Lj/e;->b(J)Z

    invoke-virtual {p0, p1, p2, p3, p4}, Lj/e;->a(JJ)Z

    move-result v1

    if-eqz p5, :cond_12

    iget-object v2, p0, Lj/e;->f:Lj/f;

    if-nez v1, :cond_14

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {v2, v0}, Lj/f;->a(Z)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit p0

    return v1

    :cond_14
    const/4 v0, 0x0

    goto :goto_f

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(J)Z
    .registers 13

    monitor-enter p0

    :try_start_1
    iget-wide v2, p0, Lj/e;->e:J

    iget-wide v0, p0, Lj/e;->e:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_31

    iget-object v0, p0, Lj/e;->c:Li/D;

    iget-wide v0, v0, Li/D;->b:J

    iput-wide p1, p0, Lj/e;->e:J

    :goto_11
    iget-wide v4, p0, Lj/e;->d:J

    iget-wide v6, p0, Lj/e;->d:J

    add-long/2addr v0, v6

    iget-object v6, p0, Lj/e;->c:Li/D;

    iget-wide v6, v6, Li/D;->a:J

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lj/e;->d:J

    iget-wide v0, p0, Lj/e;->d:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2c

    iget-wide v0, p0, Lj/e;->e:J
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_4b

    cmp-long v0, v2, v0

    if-eqz v0, :cond_4e

    :cond_2c
    const/4 v0, 0x1

    :goto_2d
    if-eqz v0, :cond_2f

    :cond_2f
    monitor-exit p0

    return v0

    :cond_31
    :try_start_31
    iget-wide v0, p0, Lj/e;->e:J

    sub-long v0, p1, v0

    iget-object v4, p0, Lj/e;->c:Li/D;

    iget-wide v4, v4, Li/D;->c:J

    div-long v4, v0, v4

    iget-object v0, p0, Lj/e;->c:Li/D;

    iget-wide v0, v0, Li/D;->b:J

    mul-long/2addr v0, v4

    iget-wide v6, p0, Lj/e;->e:J

    iget-object v8, p0, Lj/e;->c:Li/D;

    iget-wide v8, v8, Li/D;->c:J

    mul-long/2addr v4, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lj/e;->e:J
    :try_end_4a
    .catchall {:try_start_31 .. :try_end_4a} :catchall_4b

    goto :goto_11

    :catchall_4b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method declared-synchronized b(JJ)Z
    .registers 10

    const-wide/16 v0, 0x0

    monitor-enter p0

    cmp-long v0, p1, v0

    if-gez v0, :cond_a

    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    :try_start_a
    invoke-virtual {p0, p3, p4}, Lj/e;->b(J)Z

    invoke-virtual {p0, p1, p2, p3, p4}, Lj/e;->a(JJ)Z

    move-result v0

    const-wide/16 v1, 0x0

    iget-wide v3, p0, Lj/e;->d:J

    sub-long/2addr v3, p1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lj/e;->d:J
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_1d

    goto :goto_8

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 10

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "%s - current tokens: %d, last refill: %s, params: %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lj/e;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lj/e;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/util/Date;

    iget-wide v5, p0, Lj/e;->b:J

    iget-wide v7, p0, Lj/e;->e:J

    add-long/2addr v5, v7

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x3

    iget-object v3, p0, Lj/e;->c:Li/D;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_37

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method
