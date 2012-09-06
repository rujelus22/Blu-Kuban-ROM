.class Lcom/google/googlenav/settings/y;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/settings/s;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/s;LY/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/google/googlenav/settings/y;->a:Lcom/google/googlenav/settings/s;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    .line 303
    new-instance v0, Lcom/google/googlenav/friend/U;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlenav/friend/U;-><init>(Ljava/util/List;Lcom/google/googlenav/friend/aq;Z)V

    .line 306
    invoke-virtual {v0}, Lcom/google/googlenav/friend/U;->m()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/V;

    .line 308
    if-eqz v0, :cond_1c

    iget-boolean v1, v0, Lcom/google/googlenav/friend/V;->a:Z

    if-nez v1, :cond_2b

    .line 310
    :cond_1c
    iget-object v0, p0, Lcom/google/googlenav/settings/y;->a:Lcom/google/googlenav/settings/s;

    invoke-static {v0}, Lcom/google/googlenav/settings/s;->f(Lcom/google/googlenav/settings/s;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/settings/z;

    invoke-direct {v1, p0}, Lcom/google/googlenav/settings/z;-><init>(Lcom/google/googlenav/settings/y;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 337
    :goto_2a
    return-void

    .line 320
    :cond_2b
    new-instance v1, Lcom/google/googlenav/friend/W;

    iget-object v0, v0, Lcom/google/googlenav/friend/V;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {v1, v0}, Lcom/google/googlenav/friend/W;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 322
    new-instance v0, Lcom/google/googlenav/friend/ag;

    invoke-virtual {v1, v4}, Lcom/google/googlenav/friend/W;->a(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/friend/ag;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 325
    iget-object v1, p0, Lcom/google/googlenav/settings/y;->a:Lcom/google/googlenav/settings/s;

    invoke-static {v1}, Lcom/google/googlenav/settings/s;->b(Lcom/google/googlenav/settings/s;)Lcom/google/googlenav/friend/reporting/s;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/friend/ag;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/friend/reporting/s;->a(Z)V

    .line 326
    invoke-static {v0}, Lcom/google/googlenav/friend/aJ;->a(Lcom/google/googlenav/friend/ag;)V

    .line 329
    iget-object v1, p0, Lcom/google/googlenav/settings/y;->a:Lcom/google/googlenav/settings/s;

    invoke-static {v1}, Lcom/google/googlenav/settings/s;->f(Lcom/google/googlenav/settings/s;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/settings/A;

    invoke-direct {v2, p0, v0}, Lcom/google/googlenav/settings/A;-><init>(Lcom/google/googlenav/settings/y;Lcom/google/googlenav/friend/ag;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2a
.end method
