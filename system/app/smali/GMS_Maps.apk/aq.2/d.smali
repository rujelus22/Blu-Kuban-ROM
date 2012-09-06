.class public Laq/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lbe/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public declared-synchronized a(J)Lbd/b;
    .registers 4
    .parameter

    .prologue
    .line 64
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Laq/d;->a:Lbe/c;

    if-eqz v0, :cond_d

    .line 65
    iget-object v0, p0, Laq/d;->a:Lbe/c;

    invoke-virtual {v0, p1, p2}, Lbe/c;->b(J)Lbd/b;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_f

    move-result-object v0

    .line 67
    :goto_b
    monitor-exit p0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    .line 64
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()V
    .registers 2

    .prologue
    .line 36
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Laq/d;->a(Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 37
    monitor-exit p0

    return-void

    .line 36
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(JFFF)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Laq/d;->a:Lbe/c;

    if-eqz v0, :cond_e

    .line 75
    iget-object v0, p0, Laq/d;->a:Lbe/c;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lbe/c;->a(JFFF)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 77
    :cond_e
    monitor-exit p0

    return-void

    .line 74
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(JLbd/b;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 83
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Laq/d;->a:Lbe/c;

    if-eqz v0, :cond_a

    .line 84
    iget-object v0, p0, Laq/d;->a:Lbe/c;

    invoke-virtual {v0, p1, p2, p3}, Lbe/c;->a(JLbd/b;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 86
    :cond_a
    monitor-exit p0

    return-void

    .line 83
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Z)V
    .registers 8
    .parameter

    .prologue
    .line 43
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Laq/d;->a:Lbe/c;

    if-nez v0, :cond_18

    .line 44
    if-eqz p1, :cond_1a

    .line 45
    new-instance v0, Lbe/c;

    const v1, 0x3dcccccd

    const/16 v2, 0x1770

    const/high16 v3, 0x3f40

    const/16 v4, 0x12c

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lbe/c;-><init>(FIFIZ)V

    iput-object v0, p0, Laq/d;->a:Lbe/c;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_22

    .line 50
    :cond_18
    :goto_18
    monitor-exit p0

    return-void

    .line 47
    :cond_1a
    :try_start_1a
    new-instance v0, Lbe/c;

    invoke-direct {v0}, Lbe/c;-><init>()V

    iput-object v0, p0, Laq/d;->a:Lbe/c;
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_22

    goto :goto_18

    .line 43
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .registers 2

    .prologue
    .line 56
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Laq/d;->a:Lbe/c;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 57
    monitor-exit p0

    return-void

    .line 56
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
