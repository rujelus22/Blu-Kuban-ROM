.class Lcom/google/googlenav/ui/wizard/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/y;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/U;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/U;)V
    .registers 2
    .parameter

    .prologue
    .line 694
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ab;->a:Lcom/google/googlenav/ui/wizard/U;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 706
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ab;->a:Lcom/google/googlenav/ui/wizard/U;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->h(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/am;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/am;->c(Z)V

    .line 707
    return-void
.end method

.method public a(Lcom/google/googlenav/h;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 698
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ab;->a:Lcom/google/googlenav/ui/wizard/U;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-virtual {v0, p1, v1}, Lcom/google/googlenav/ui/wizard/S;->a(Lcom/google/googlenav/h;Lcom/google/googlenav/friend/i;)V

    .line 699
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ab;->a:Lcom/google/googlenav/ui/wizard/U;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/S;->a(Ljava/util/List;)V

    .line 700
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ab;->a:Lcom/google/googlenav/ui/wizard/U;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->c(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ag;->a()V

    .line 701
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ab;->a:Lcom/google/googlenav/ui/wizard/U;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->h(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/am;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/am;->c(Z)V

    .line 702
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 711
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ab;->a:Lcom/google/googlenav/ui/wizard/U;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->g(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/ac;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/ac;->c()V

    .line 712
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 716
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ab;->a:Lcom/google/googlenav/ui/wizard/U;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/U;->a:Lcom/google/googlenav/ui/wizard/S;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/S;->g(Lcom/google/googlenav/ui/wizard/S;)Lcom/google/googlenav/ui/wizard/ac;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/ac;->d()V

    .line 717
    return-void
.end method
