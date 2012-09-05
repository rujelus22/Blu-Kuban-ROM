.class public Lcom/google/googlenav/ui/wizard/bf;
.super Lcom/google/googlenav/ui/wizard/z;


# instance fields
.field protected a:Lau/b;

.field protected g:Lcom/google/googlenav/bN;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bf;->a:Lau/b;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bf;->g:Lcom/google/googlenav/bN;

    return-void
.end method


# virtual methods
.method public W_()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bf;->a:Lau/b;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bf;->g:Lcom/google/googlenav/bN;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bf;->a()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bf;->a:Lau/b;

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/bf;->g:Lcom/google/googlenav/bN;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bf;->l()V

    return-void
.end method

.method public a(Lau/b;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/wizard/bf;->b(Lau/b;)V

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->l()V

    return-void
.end method

.method public a(Lcom/google/googlenav/bN;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/wizard/bf;->b(Lcom/google/googlenav/bN;)V

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->l()V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 3

    const-string v0, "al"

    invoke-static {v0}, LaY/G;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bf;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->F()Lcom/google/googlenav/ay;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/ay;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected b()V
    .registers 2

    new-instance v0, Lcom/google/googlenav/ui/wizard/bi;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/bi;-><init>(Lcom/google/googlenav/ui/wizard/bf;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bf;->f:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bf;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bs;->show()V

    return-void
.end method

.method public b(Lau/b;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bf;->a:Lau/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bf;->g:Lcom/google/googlenav/bN;

    return-void
.end method

.method public b(Lcom/google/googlenav/bN;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bf;->g:Lcom/google/googlenav/bN;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bf;->a:Lau/b;

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .registers 6

    const-string v0, "ac"

    invoke-static {v0}, LaY/G;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bf;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->F()Lcom/google/googlenav/ay;

    move-result-object v0

    invoke-static {p1}, Las/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ay;->a(Ljava/lang/String;Lcom/google/googlenav/az;Z)V

    return-void
.end method

.method protected c()V
    .registers 2

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bf;->g:Lcom/google/googlenav/bN;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bf;->a:Lau/b;

    return-void
.end method
