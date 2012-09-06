.class Lcom/google/googlenav/ui/wizard/hn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Las/h;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/hg;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/hg;)V
    .registers 2
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hn;->a:Lcom/google/googlenav/ui/wizard/hg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public D_()V
    .registers 3

    .prologue
    .line 566
    invoke-static {}, Lcom/google/googlenav/bj;->a()Lcom/google/googlenav/bj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hn;->a:Lcom/google/googlenav/ui/wizard/hg;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/hg;->f(Lcom/google/googlenav/ui/wizard/hg;)Las/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bj;->b(Las/h;)V

    .line 568
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hn;->a:Lcom/google/googlenav/ui/wizard/hg;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/hg;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 570
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hn;->a:Lcom/google/googlenav/ui/wizard/hg;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/hg;->g(Lcom/google/googlenav/ui/wizard/hg;)V

    .line 571
    return-void
.end method

.method public E_()V
    .registers 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hn;->a:Lcom/google/googlenav/ui/wizard/hg;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hg;->a()V

    .line 578
    return-void
.end method

.method public F_()V
    .registers 1

    .prologue
    .line 558
    return-void
.end method

.method public L_()V
    .registers 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hn;->a:Lcom/google/googlenav/ui/wizard/hg;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hg;->a()V

    .line 585
    return-void
.end method

.method public M_()V
    .registers 1

    .prologue
    .line 554
    return-void
.end method
