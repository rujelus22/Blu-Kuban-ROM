.class public Lcom/google/googlenav/ui/wizard/em;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/ui/wizard/ep;

.field private b:Lcom/google/googlenav/ui/wizard/aO;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 2
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 53
    return-void
.end method

.method private e()Lcom/google/googlenav/ui/wizard/dX;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/em;->h:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/wizard/dX;

    return-object v0
.end method


# virtual methods
.method public T_()V
    .registers 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/em;->a:Lcom/google/googlenav/ui/wizard/ep;

    .line 126
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/em;->a:Lcom/google/googlenav/ui/wizard/ep;

    .line 127
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/em;->a()V

    .line 128
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/em;->a(Lcom/google/googlenav/ui/wizard/ep;)V

    .line 129
    return-void
.end method

.method public a(LZ/a;)I
    .registers 4
    .parameter

    .prologue
    .line 138
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    .line 139
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/em;->h()V

    .line 140
    iget v0, p0, Lcom/google/googlenav/ui/wizard/em;->g:I

    .line 142
    :goto_d
    return v0

    :cond_e
    iget v0, p0, Lcom/google/googlenav/ui/wizard/em;->g:I

    goto :goto_d
.end method

.method public a(LZ/b;)I
    .registers 3
    .parameter

    .prologue
    .line 147
    iget v0, p0, Lcom/google/googlenav/ui/wizard/em;->g:I

    return v0
.end method

.method public a(Lcom/google/googlenav/ui/wizard/ep;)V
    .registers 2
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/em;->a:Lcom/google/googlenav/ui/wizard/ep;

    .line 62
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/em;->j()V

    .line 63
    return-void
.end method

.method protected b()V
    .registers 7

    .prologue
    .line 73
    new-instance v2, Lcom/google/googlenav/ui/wizard/H;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/em;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->I()Lcom/google/googlenav/friend/j;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/em;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->A()Lcom/google/googlenav/android/Y;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/google/googlenav/ui/wizard/H;-><init>(Lcom/google/googlenav/friend/j;Lcom/google/googlenav/android/Y;)V

    .line 78
    new-instance v0, Lcom/google/googlenav/ui/wizard/dX;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/em;->a:Lcom/google/googlenav/ui/wizard/ep;

    iget-boolean v1, v1, Lcom/google/googlenav/ui/wizard/ep;->c:Z

    invoke-direct {v0, v1, p0}, Lcom/google/googlenav/ui/wizard/dX;-><init>(ZLcom/google/googlenav/ui/g;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/em;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 80
    new-instance v0, Lcom/google/googlenav/ui/wizard/aO;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/em;->a:Lcom/google/googlenav/ui/wizard/ep;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/ep;->d:LaM/a;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/em;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/ju;->A()Lcom/google/googlenav/android/Y;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/google/googlenav/ui/wizard/aO;-><init>(LaM/a;Lcom/google/googlenav/android/Y;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/em;->b:Lcom/google/googlenav/ui/wizard/aO;

    .line 84
    new-instance v0, Lcom/google/googlenav/ui/wizard/dR;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/em;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/em;->e()Lcom/google/googlenav/ui/wizard/dX;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/em;->b:Lcom/google/googlenav/ui/wizard/aO;

    new-instance v5, Lcom/google/googlenav/ui/wizard/en;

    invoke-direct {v5, p0}, Lcom/google/googlenav/ui/wizard/en;-><init>(Lcom/google/googlenav/ui/wizard/em;)V

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/wizard/dR;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/ui/wizard/H;Lcom/google/googlenav/ui/wizard/dX;Lcom/google/googlenav/ui/wizard/aO;Lcom/google/googlenav/ui/wizard/dW;)V

    .line 95
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/em;->e()Lcom/google/googlenav/ui/wizard/dX;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/dR;->a()Lcom/google/googlenav/ui/wizard/eb;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/wizard/dX;->a(Lcom/google/googlenav/ui/wizard/eb;)V

    .line 98
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/em;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 101
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/em;->a:Lcom/google/googlenav/ui/wizard/ep;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/ep;->a:Lcom/google/googlenav/h;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/dR;->a(Lcom/google/googlenav/h;)V

    .line 102
    return-void
.end method

.method protected c()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/em;->e()Lcom/google/googlenav/ui/wizard/dX;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/dX;->a(Lcom/google/googlenav/ui/wizard/eb;)V

    .line 107
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/em;->b:Lcom/google/googlenav/ui/wizard/aO;

    .line 109
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/em;->a:Lcom/google/googlenav/ui/wizard/ep;

    if-eqz v0, :cond_21

    .line 110
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/em;->a:Lcom/google/googlenav/ui/wizard/ep;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ep;->b:Lcom/google/googlenav/ui/wizard/eo;

    if-eqz v0, :cond_1b

    .line 111
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/em;->a:Lcom/google/googlenav/ui/wizard/ep;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ep;->b:Lcom/google/googlenav/ui/wizard/eo;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/eo;->a()V

    .line 113
    :cond_1b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/em;->a:Lcom/google/googlenav/ui/wizard/ep;

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/ep;->b:Lcom/google/googlenav/ui/wizard/eo;

    .line 116
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/em;->a:Lcom/google/googlenav/ui/wizard/ep;

    .line 120
    :cond_21
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 121
    return-void
.end method

.method public h()V
    .registers 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/em;->a()V

    .line 134
    return-void
.end method
