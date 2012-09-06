.class Lcom/google/googlenav/ui/wizard/gn;
.super Lcom/google/googlenav/friend/U;
.source "SourceFile"


# instance fields
.field final synthetic c:Lcom/google/googlenav/ui/wizard/gj;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/gj;Ljava/util/List;Lcom/google/googlenav/friend/aq;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1509
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gn;->c:Lcom/google/googlenav/ui/wizard/gj;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/googlenav/friend/U;-><init>(Ljava/util/List;Lcom/google/googlenav/friend/aq;Z)V

    return-void
.end method


# virtual methods
.method public l_()V
    .registers 3

    .prologue
    .line 1513
    invoke-super {p0}, Lcom/google/googlenav/friend/U;->l_()V

    .line 1514
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/gn;->b:Z

    if-eqz v0, :cond_2b

    .line 1515
    invoke-static {}, Lcom/google/googlenav/bj;->a()Lcom/google/googlenav/bj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gn;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bj;->a_(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/br;

    move-result-object v0

    .line 1522
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gn;->c:Lcom/google/googlenav/ui/wizard/gj;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/gj;->d(Lcom/google/googlenav/ui/wizard/gj;)LaC/g;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 1523
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gn;->c:Lcom/google/googlenav/ui/wizard/gj;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/gj;->d(Lcom/google/googlenav/ui/wizard/gj;)LaC/g;

    move-result-object v1

    invoke-virtual {v1, v0}, LaC/g;->b(Lcom/google/googlenav/br;)V

    .line 1524
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gn;->c:Lcom/google/googlenav/ui/wizard/gj;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/gj;->d(Lcom/google/googlenav/ui/wizard/gj;)LaC/g;

    move-result-object v1

    invoke-virtual {v1, v0}, LaC/g;->a(Lcom/google/googlenav/br;)V

    .line 1527
    :cond_2b
    return-void
.end method
