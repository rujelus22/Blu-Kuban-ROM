.class Lcom/google/googlenav/cl;
.super Lcom/google/googlenav/co;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ca;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ca;)V
    .registers 3
    .parameter

    .prologue
    .line 507
    iput-object p1, p0, Lcom/google/googlenav/cl;->a:Lcom/google/googlenav/ca;

    .line 508
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/co;-><init>(Lcom/google/googlenav/ca;I)V

    .line 509
    return-void
.end method


# virtual methods
.method public a(Ljava/io/DataOutput;)V
    .registers 3
    .parameter

    .prologue
    .line 513
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/cl;->a(Z)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 514
    return-void
.end method

.method public declared-synchronized l_()V
    .registers 3

    .prologue
    .line 518
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/cl;->a:Lcom/google/googlenav/ca;

    invoke-static {v0}, Lcom/google/googlenav/ca;->b(Lcom/google/googlenav/ca;)Lcom/google/googlenav/cj;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 519
    iget-object v0, p0, Lcom/google/googlenav/cl;->a:Lcom/google/googlenav/ca;

    invoke-static {v0}, Lcom/google/googlenav/ca;->b(Lcom/google/googlenav/ca;)Lcom/google/googlenav/cj;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/cj;->a()V

    .line 521
    :cond_12
    iget-object v0, p0, Lcom/google/googlenav/cl;->a:Lcom/google/googlenav/ca;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ca;->a(Lcom/google/googlenav/ca;Z)Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 522
    monitor-exit p0

    return-void

    .line 518
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
