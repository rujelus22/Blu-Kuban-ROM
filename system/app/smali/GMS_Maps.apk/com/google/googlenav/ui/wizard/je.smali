.class Lcom/google/googlenav/ui/wizard/je;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/bu;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ja;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ja;)V
    .registers 2
    .parameter

    .prologue
    .line 447
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/je;->a:Lcom/google/googlenav/ui/wizard/ja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 468
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/je;->a:Lcom/google/googlenav/ui/wizard/ja;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ja;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 469
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/je;->a:Lcom/google/googlenav/ui/wizard/ja;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ja;->o()Z

    move-result v0

    if-nez v0, :cond_10

    .line 475
    :goto_f
    return-void

    .line 474
    :cond_10
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/je;->a:Lcom/google/googlenav/ui/wizard/ja;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/ja;->a(Lcom/google/googlenav/ui/wizard/ja;Z)V

    goto :goto_f
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/je;->a:Lcom/google/googlenav/ui/wizard/ja;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ja;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 451
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/je;->a:Lcom/google/googlenav/ui/wizard/ja;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ja;->o()Z

    move-result v0

    if-nez v0, :cond_10

    .line 463
    :goto_f
    return-void

    .line 455
    :cond_10
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 456
    if-nez v0, :cond_23

    .line 457
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/je;->a:Lcom/google/googlenav/ui/wizard/ja;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/je;->a:Lcom/google/googlenav/ui/wizard/ja;

    invoke-static {v1, p1}, Lcom/google/googlenav/ui/wizard/ja;->a(Lcom/google/googlenav/ui/wizard/ja;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/ja;->a(Lcom/google/googlenav/ui/wizard/ja;Ljava/util/List;)V

    goto :goto_f

    .line 461
    :cond_23
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/je;->a:Lcom/google/googlenav/ui/wizard/ja;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/ja;->a(Lcom/google/googlenav/ui/wizard/ja;Z)V

    goto :goto_f
.end method
