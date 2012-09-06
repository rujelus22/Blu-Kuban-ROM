.class public Lcom/google/googlenav/ui/wizard/bw;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"


# instance fields
.field protected a:Lad/b;

.field protected b:Lcom/google/googlenav/ca;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 44
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bw;->a:Lad/b;

    .line 45
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bw;->b:Lcom/google/googlenav/ca;

    .line 49
    return-void
.end method


# virtual methods
.method public T_()V
    .registers 3

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bw;->a:Lad/b;

    .line 353
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bw;->b:Lcom/google/googlenav/ca;

    .line 354
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bw;->a()V

    .line 355
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bw;->a:Lad/b;

    .line 356
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/bw;->b:Lcom/google/googlenav/ca;

    .line 357
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bw;->j()V

    .line 358
    return-void
.end method

.method public a(Lad/b;)V
    .registers 2
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/wizard/bw;->b(Lad/b;)V

    .line 58
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->j()V

    .line 59
    return-void
.end method

.method public a(Lcom/google/googlenav/ca;)V
    .registers 2
    .parameter

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/wizard/bw;->b(Lcom/google/googlenav/ca;)V

    .line 63
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->j()V

    .line 64
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 81
    const-string v0, "al"

    invoke-static {v0}, LaM/O;->b(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bw;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->F()Lcom/google/googlenav/aA;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/aA;->a(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method protected b()V
    .registers 2

    .prologue
    .line 99
    new-instance v0, Lcom/google/googlenav/ui/wizard/bz;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/bz;-><init>(Lcom/google/googlenav/ui/wizard/bw;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bw;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 100
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bw;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 101
    return-void
.end method

.method public b(Lad/b;)V
    .registers 3
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bw;->a:Lad/b;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bw;->b:Lcom/google/googlenav/ca;

    .line 69
    return-void
.end method

.method public b(Lcom/google/googlenav/ca;)V
    .registers 3
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bw;->b:Lcom/google/googlenav/ca;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bw;->a:Lad/b;

    .line 74
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 88
    const-string v0, "ac"

    invoke-static {v0}, LaM/O;->b(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bw;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->F()Lcom/google/googlenav/aA;

    move-result-object v0

    invoke-static {p1}, Laa/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/aA;->a(Ljava/lang/String;Lcom/google/googlenav/aB;Z)V

    .line 95
    return-void
.end method

.method protected c()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 345
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 346
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bw;->b:Lcom/google/googlenav/ca;

    .line 347
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bw;->a:Lad/b;

    .line 348
    return-void
.end method
