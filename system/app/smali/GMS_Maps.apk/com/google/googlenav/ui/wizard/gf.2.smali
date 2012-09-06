.class public Lcom/google/googlenav/ui/wizard/gF;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/ui/wizard/gI;

.field private b:Lcom/google/googlenav/ui/wizard/gJ;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 3
    .parameter

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gF;->a:Lcom/google/googlenav/ui/wizard/gI;

    .line 240
    return-void
.end method

.method private a(Lcom/google/googlenav/ui/wizard/gH;)Lcom/google/googlenav/ui/wizard/gN;
    .registers 3
    .parameter

    .prologue
    .line 282
    new-instance v0, Lcom/google/googlenav/ui/wizard/gG;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/ui/wizard/gG;-><init>(Lcom/google/googlenav/ui/wizard/gF;Lcom/google/googlenav/ui/wizard/gH;)V

    .line 300
    return-object v0
.end method


# virtual methods
.method public T_()V
    .registers 3

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gF;->a:Lcom/google/googlenav/ui/wizard/gI;

    .line 318
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/gF;->a:Lcom/google/googlenav/ui/wizard/gI;

    .line 319
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gF;->a()V

    .line 321
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gF;->a:Lcom/google/googlenav/ui/wizard/gI;

    .line 322
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gF;->j()V

    .line 323
    return-void
.end method

.method public a(LZ/a;)I
    .registers 4
    .parameter

    .prologue
    .line 336
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    .line 337
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gF;->h()V

    .line 338
    iget v0, p0, Lcom/google/googlenav/ui/wizard/gF;->g:I

    .line 340
    :goto_d
    return v0

    :cond_e
    iget v0, p0, Lcom/google/googlenav/ui/wizard/gF;->g:I

    goto :goto_d
.end method

.method public a(LZ/b;)I
    .registers 3
    .parameter

    .prologue
    .line 345
    iget v0, p0, Lcom/google/googlenav/ui/wizard/gF;->g:I

    return v0
.end method

.method protected a(Lcom/google/googlenav/ui/wizard/gI;)V
    .registers 3
    .parameter

    .prologue
    .line 248
    const-string v0, "o"

    invoke-static {v0}, Lcom/google/googlenav/friend/af;->g(Ljava/lang/String;)V

    .line 249
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gF;->a:Lcom/google/googlenav/ui/wizard/gI;

    .line 250
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->j()V

    .line 251
    return-void
.end method

.method public b()V
    .registers 6

    .prologue
    .line 256
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/gF;->g:I

    .line 259
    new-instance v0, Lcom/google/googlenav/ui/wizard/gJ;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gF;->a:Lcom/google/googlenav/ui/wizard/gI;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/gI;->b()Lah/s;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gF;->a:Lcom/google/googlenav/ui/wizard/gI;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/gI;->e()Lcom/google/googlenav/ui/wizard/gH;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/wizard/gF;->a(Lcom/google/googlenav/ui/wizard/gH;)Lcom/google/googlenav/ui/wizard/gN;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/gF;->a:Lcom/google/googlenav/ui/wizard/gI;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/gI;->c()Z

    move-result v3

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/gF;->a:Lcom/google/googlenav/ui/wizard/gI;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/wizard/gI;->d()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlenav/ui/wizard/gJ;-><init>(Lah/s;Lcom/google/googlenav/ui/wizard/gN;ZZ)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gF;->b:Lcom/google/googlenav/ui/wizard/gJ;

    .line 264
    new-instance v0, Lcom/google/googlenav/ui/wizard/gT;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gF;->a:Lcom/google/googlenav/ui/wizard/gI;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/gI;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gF;->a:Lcom/google/googlenav/ui/wizard/gI;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/gI;->h()I

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/gF;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/ju;->H()Lah/s;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/googlenav/ui/wizard/gT;-><init>(Ljava/lang/String;ILah/s;Lcom/google/googlenav/ui/g;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gF;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 268
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gF;->h:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/wizard/gT;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gF;->b:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/gJ;->a()Lcom/google/googlenav/ui/wizard/gL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/gT;->a(Lcom/google/googlenav/ui/wizard/gL;)V

    .line 271
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gF;->b:Lcom/google/googlenav/ui/wizard/gJ;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gF;->h:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/wizard/gT;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/gJ;->a(Lcom/google/googlenav/ui/wizard/gT;)V

    .line 274
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gF;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 277
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gF;->b:Lcom/google/googlenav/ui/wizard/gJ;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gF;->a:Lcom/google/googlenav/ui/wizard/gI;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/gI;->f()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gF;->a:Lcom/google/googlenav/ui/wizard/gI;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/gI;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/gJ;->a(Ljava/util/List;Ljava/util/List;)V

    .line 278
    return-void
.end method

.method protected c()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 305
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gF;->b:Lcom/google/googlenav/ui/wizard/gJ;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/gJ;->a(Lcom/google/googlenav/ui/wizard/gT;)V

    .line 306
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/gF;->b:Lcom/google/googlenav/ui/wizard/gJ;

    .line 309
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/gF;->a:Lcom/google/googlenav/ui/wizard/gI;

    .line 312
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 313
    return-void
.end method

.method public h()V
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gF;->a:Lcom/google/googlenav/ui/wizard/gI;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gI;->e()Lcom/google/googlenav/ui/wizard/gH;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 328
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gF;->a:Lcom/google/googlenav/ui/wizard/gI;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gI;->e()Lcom/google/googlenav/ui/wizard/gH;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/gH;->a()V

    .line 330
    :cond_11
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gF;->a()V

    .line 331
    const-string v0, "d"

    invoke-static {v0}, Lcom/google/googlenav/friend/af;->g(Ljava/lang/String;)V

    .line 332
    return-void
.end method
