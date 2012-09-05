.class public LaH/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Lbq/c;

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LaH/f;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(J)Lbp/b;
    .registers 5

    iget-object v1, p0, LaH/f;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, LaH/f;->a:Lbq/c;

    if-eqz v0, :cond_f

    iget-object v0, p0, LaH/f;->a:Lbq/c;

    invoke-virtual {v0, p1, p2}, Lbq/c;->a(J)Lbp/b;

    move-result-object v0

    monitor-exit v1

    :goto_e
    return-object v0

    :cond_f
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_e

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public a()V
    .registers 3

    iget-object v1, p0, LaH/f;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, LaH/f;->a:Lbq/c;

    if-nez v0, :cond_e

    new-instance v0, Lbq/c;

    invoke-direct {v0}, Lbq/c;-><init>()V

    iput-object v0, p0, LaH/f;->a:Lbq/c;

    :cond_e
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public a(JFFF)V
    .registers 13

    iget-object v6, p0, LaH/f;->b:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3
    iget-object v0, p0, LaH/f;->a:Lbq/c;

    if-eqz v0, :cond_10

    iget-object v0, p0, LaH/f;->a:Lbq/c;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lbq/c;->a(JFFF)V

    :cond_10
    monitor-exit v6

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v6
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public a(JLbp/b;)V
    .registers 6

    iget-object v1, p0, LaH/f;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, LaH/f;->a:Lbq/c;

    if-eqz v0, :cond_c

    iget-object v0, p0, LaH/f;->a:Lbq/c;

    invoke-virtual {v0, p1, p2, p3}, Lbq/c;->a(JLbp/b;)V

    :cond_c
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public b()V
    .registers 3

    iget-object v1, p0, LaH/f;->b:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, LaH/f;->a:Lbq/c;

    monitor-exit v1

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method
