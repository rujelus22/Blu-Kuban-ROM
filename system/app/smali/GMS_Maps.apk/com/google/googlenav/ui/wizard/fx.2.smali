.class public Lcom/google/googlenav/ui/wizard/fX;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/ui/wizard/fZ;

.field private b:Lcom/google/googlenav/ui/wizard/gb;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 3
    .parameter

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->a:Lcom/google/googlenav/ui/wizard/fZ;

    .line 96
    return-void
.end method


# virtual methods
.method public T_()V
    .registers 3

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->a:Lcom/google/googlenav/ui/wizard/fZ;

    .line 232
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/fX;->a:Lcom/google/googlenav/ui/wizard/fZ;

    .line 233
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fX;->a()V

    .line 235
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->a:Lcom/google/googlenav/ui/wizard/fZ;

    .line 236
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fX;->j()V

    .line 237
    return-void
.end method

.method public a(LZ/a;)I
    .registers 4
    .parameter

    .prologue
    .line 249
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    .line 250
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fX;->h()V

    .line 251
    iget v0, p0, Lcom/google/googlenav/ui/wizard/fX;->g:I

    .line 254
    :goto_d
    return v0

    :cond_e
    iget v0, p0, Lcom/google/googlenav/ui/wizard/fX;->g:I

    goto :goto_d
.end method

.method public a(LZ/b;)I
    .registers 3
    .parameter

    .prologue
    .line 259
    iget v0, p0, Lcom/google/googlenav/ui/wizard/fX;->g:I

    return v0
.end method

.method a(Lcom/google/googlenav/h;)V
    .registers 3
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->a:Lcom/google/googlenav/ui/wizard/fZ;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->a:Lcom/google/googlenav/ui/wizard/fZ;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/fZ;->e(Lcom/google/googlenav/ui/wizard/fZ;)Lcom/google/googlenav/ui/wizard/ga;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 213
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->a:Lcom/google/googlenav/ui/wizard/fZ;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/fZ;->e(Lcom/google/googlenav/ui/wizard/fZ;)Lcom/google/googlenav/ui/wizard/ga;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/wizard/ga;->a(Lcom/google/googlenav/h;)V

    .line 215
    :cond_15
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fX;->a()V

    .line 216
    return-void
.end method

.method protected a(Lcom/google/googlenav/ui/wizard/fZ;)V
    .registers 2
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fX;->a:Lcom/google/googlenav/ui/wizard/fZ;

    .line 105
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->j()V

    .line 106
    return-void
.end method

.method public b()V
    .registers 6

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_c

    .line 113
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->hide()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 120
    :cond_c
    new-instance v0, Lcom/google/googlenav/ui/wizard/gb;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fX;->d:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/fX;->a:Lcom/google/googlenav/ui/wizard/fZ;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/fZ;->a(Lcom/google/googlenav/ui/wizard/fZ;)Lcom/google/googlenav/ui/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/v;->p()Lcom/google/googlenav/ui/ap;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/fX;->a:Lcom/google/googlenav/ui/wizard/fZ;

    invoke-static {v3}, Lcom/google/googlenav/ui/wizard/fZ;->b(Lcom/google/googlenav/ui/wizard/fZ;)Lan/s;

    move-result-object v3

    new-instance v4, Lcom/google/googlenav/ui/wizard/fY;

    invoke-direct {v4, p0}, Lcom/google/googlenav/ui/wizard/fY;-><init>(Lcom/google/googlenav/ui/wizard/fX;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlenav/ui/wizard/gb;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/ui/ap;Lan/s;Lcom/google/googlenav/ui/wizard/gg;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->b:Lcom/google/googlenav/ui/wizard/gb;

    .line 166
    new-instance v0, Lcom/google/googlenav/ui/wizard/fL;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fX;->a:Lcom/google/googlenav/ui/wizard/fZ;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/fZ;->c(Lcom/google/googlenav/ui/wizard/fZ;)Lcom/google/googlenav/ui/view/android/aK;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/fX;->a:Lcom/google/googlenav/ui/wizard/fZ;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/fZ;->d(Lcom/google/googlenav/ui/wizard/fZ;)Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/googlenav/ui/wizard/fL;-><init>(Lcom/google/googlenav/ui/g;Lcom/google/googlenav/ui/view/android/aK;Z)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 170
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->h:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/wizard/fL;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fX;->b:Lcom/google/googlenav/ui/wizard/gb;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/gb;->a()Lcom/google/googlenav/ui/wizard/fU;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/fL;->a(Lcom/google/googlenav/ui/wizard/fU;)V

    .line 173
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fX;->b:Lcom/google/googlenav/ui/wizard/gb;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->h:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/wizard/fL;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/gb;->a(Lcom/google/googlenav/ui/wizard/fL;)V

    .line 175
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 178
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->b:Lcom/google/googlenav/ui/wizard/gb;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fX;->a:Lcom/google/googlenav/ui/wizard/fZ;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/fZ;->b(Lcom/google/googlenav/ui/wizard/fZ;)Lan/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/gb;->a(Lan/s;)V

    .line 179
    return-void
.end method

.method protected c()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 183
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->b:Lcom/google/googlenav/ui/wizard/gb;

    if-eqz v0, :cond_c

    .line 184
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->b:Lcom/google/googlenav/ui/wizard/gb;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/gb;->a(Lcom/google/googlenav/ui/wizard/fL;)V

    .line 185
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/fX;->b:Lcom/google/googlenav/ui/wizard/gb;

    .line 188
    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_17

    .line 189
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->h:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/wizard/fL;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/fL;->a(Lcom/google/googlenav/ui/wizard/fU;)V

    .line 192
    :cond_17
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->a:Lcom/google/googlenav/ui/wizard/fZ;

    if-eqz v0, :cond_2a

    .line 197
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->a:Lcom/google/googlenav/ui/wizard/fZ;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/fZ;->a(Lcom/google/googlenav/ui/wizard/fZ;)Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->n()Lcom/google/googlenav/ui/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/av;->d()V

    .line 200
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/fX;->a:Lcom/google/googlenav/ui/wizard/fZ;

    .line 204
    :cond_2a
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 205
    return-void
.end method

.method e()V
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->a:Lcom/google/googlenav/ui/wizard/fZ;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->a:Lcom/google/googlenav/ui/wizard/fZ;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/fZ;->e(Lcom/google/googlenav/ui/wizard/fZ;)Lcom/google/googlenav/ui/wizard/ga;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 224
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->a:Lcom/google/googlenav/ui/wizard/fZ;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/fZ;->e(Lcom/google/googlenav/ui/wizard/fZ;)Lcom/google/googlenav/ui/wizard/ga;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/ga;->a()V

    .line 226
    :cond_15
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fX;->a()V

    .line 227
    return-void
.end method

.method public h()V
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->b:Lcom/google/googlenav/ui/wizard/gb;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fX;->b:Lcom/google/googlenav/ui/wizard/gb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gb;->b()Z

    move-result v0

    if-nez v0, :cond_f

    .line 243
    :cond_c
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fX;->e()V

    .line 245
    :cond_f
    return-void
.end method
