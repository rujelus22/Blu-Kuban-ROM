.class public Lcom/google/googlenav/ci;
.super Lcom/google/googlenav/co;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/cj;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ca;Lcom/google/googlenav/cj;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 555
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/co;-><init>(Lcom/google/googlenav/ca;I)V

    .line 556
    iput-object p2, p0, Lcom/google/googlenav/ci;->a:Lcom/google/googlenav/cj;

    .line 557
    return-void
.end method


# virtual methods
.method public bridge synthetic a()I
    .registers 2

    .prologue
    .line 543
    invoke-super {p0}, Lcom/google/googlenav/co;->a()I

    move-result v0

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 3
    .parameter

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/google/googlenav/ci;->k()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 562
    return-void
.end method

.method public bridge synthetic a(Ljava/io/DataInput;)Z
    .registers 3
    .parameter

    .prologue
    .line 543
    invoke-super {p0, p1}, Lcom/google/googlenav/co;->a(Ljava/io/DataInput;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic i()Lcom/google/googlenav/ca;
    .registers 2

    .prologue
    .line 543
    invoke-super {p0}, Lcom/google/googlenav/co;->i()Lcom/google/googlenav/ca;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized l_()V
    .registers 2

    .prologue
    .line 566
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/ci;->a:Lcom/google/googlenav/cj;

    if-eqz v0, :cond_a

    .line 567
    iget-object v0, p0, Lcom/google/googlenav/ci;->a:Lcom/google/googlenav/cj;

    invoke-interface {v0}, Lcom/google/googlenav/cj;->a()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 569
    :cond_a
    monitor-exit p0

    return-void

    .line 566
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public m_()V
    .registers 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/google/googlenav/ci;->a:Lcom/google/googlenav/cj;

    if-eqz v0, :cond_9

    .line 574
    iget-object v0, p0, Lcom/google/googlenav/ci;->a:Lcom/google/googlenav/cj;

    invoke-interface {v0}, Lcom/google/googlenav/cj;->b()V

    .line 576
    :cond_9
    return-void
.end method
