.class Lcom/google/googlenav/ui/wizard/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/bh;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/q;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/q;)V
    .registers 2
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/v;->a:Lcom/google/googlenav/ui/wizard/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 5
    .parameter

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/v;->a:Lcom/google/googlenav/ui/wizard/q;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/q;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 384
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/v;->a:Lcom/google/googlenav/ui/wizard/q;

    const-string v1, "f"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/q;->a(Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/v;->a:Lcom/google/googlenav/ui/wizard/q;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/q;->e()V

    .line 388
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/List;Lcom/google/googlenav/common/io/protocol/ProtoBuf;J)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/v;->a:Lcom/google/googlenav/ui/wizard/q;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/q;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 394
    if-eqz p2, :cond_f

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1c

    .line 396
    :cond_f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/v;->a:Lcom/google/googlenav/ui/wizard/q;

    const-string v1, "e"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/q;->a(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/v;->a:Lcom/google/googlenav/ui/wizard/q;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/q;->e()V

    .line 406
    :cond_1b
    :goto_1b
    return-void

    .line 401
    :cond_1c
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/v;->a:Lcom/google/googlenav/ui/wizard/q;

    const-string v1, "r"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/q;->a(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/v;->a:Lcom/google/googlenav/ui/wizard/q;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/q;->a(Lcom/google/googlenav/ui/wizard/q;)Lcom/google/googlenav/ui/wizard/e;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 403
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/v;->a:Lcom/google/googlenav/ui/wizard/q;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/q;->a(Lcom/google/googlenav/ui/wizard/q;)Lcom/google/googlenav/ui/wizard/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/wizard/e;->a(Ljava/util/List;)V

    goto :goto_1b
.end method
