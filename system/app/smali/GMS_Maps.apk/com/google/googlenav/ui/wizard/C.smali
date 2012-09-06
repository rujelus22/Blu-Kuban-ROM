.class public abstract Lcom/google/googlenav/ui/wizard/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/g;


# instance fields
.field protected final d:Lcom/google/googlenav/ui/wizard/ju;

.field protected final e:Lcom/google/googlenav/ui/bn;

.field protected f:Z

.field protected g:I

.field protected h:Lcom/google/googlenav/ui/view/android/bb;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 3
    .parameter

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/C;->g:I

    .line 110
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/C;->d:Lcom/google/googlenav/ui/wizard/ju;

    .line 111
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/C;->e:Lcom/google/googlenav/ui/bn;

    .line 112
    return-void
.end method


# virtual methods
.method public T_()V
    .registers 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/C;->a()V

    .line 233
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/C;->j()V

    .line 234
    return-void
.end method

.method public a(LZ/a;)I
    .registers 4
    .parameter

    .prologue
    .line 145
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    .line 146
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/C;->a()V

    .line 147
    const/4 v0, 0x1

    .line 149
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x3

    goto :goto_c
.end method

.method public a(LZ/b;)I
    .registers 3
    .parameter

    .prologue
    .line 170
    const/4 v0, 0x4

    return v0
.end method

.method public a(Lat/B;)I
    .registers 3
    .parameter

    .prologue
    .line 182
    const/4 v0, 0x3

    return v0
.end method

.method public final a()V
    .registers 2

    .prologue
    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/C;->f:Z

    .line 208
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 209
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/C;->d:Lcom/google/googlenav/ui/wizard/ju;

    if-eqz v0, :cond_f

    .line 210
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/C;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/wizard/ju;->b(Lcom/google/googlenav/ui/wizard/C;)V

    .line 212
    :cond_f
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/u;)V
    .registers 2
    .parameter

    .prologue
    .line 123
    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method public af_()V
    .registers 1

    .prologue
    .line 262
    return-void
.end method

.method public ag_()Z
    .registers 2

    .prologue
    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method protected ah_()I
    .registers 2

    .prologue
    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method public b(LZ/a;)I
    .registers 3
    .parameter

    .prologue
    .line 161
    const/4 v0, 0x3

    return v0
.end method

.method protected b()V
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/C;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_9

    .line 242
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/C;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 244
    :cond_9
    return-void
.end method

.method public b(Lcom/google/googlenav/ui/u;)V
    .registers 2
    .parameter

    .prologue
    .line 136
    return-void
.end method

.method public b(Z)Z
    .registers 3
    .parameter

    .prologue
    .line 348
    const/4 v0, 0x0

    return v0
.end method

.method protected c()V
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/C;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_c

    .line 252
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/C;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->dismiss()V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/C;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 255
    :cond_c
    return-void
.end method

.method public h()V
    .registers 4

    .prologue
    .line 380
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/C;->d:Lcom/google/googlenav/ui/wizard/ju;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ju;->a(ILZ/a;)V

    .line 381
    return-void
.end method

.method public final j()V
    .registers 2

    .prologue
    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/C;->f:Z

    .line 191
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/C;->d:Lcom/google/googlenav/ui/wizard/ju;

    if-eqz v0, :cond_c

    .line 192
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/C;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/wizard/C;)V

    .line 194
    :cond_c
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/C;->b()V

    .line 195
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/C;->d:Lcom/google/googlenav/ui/wizard/ju;

    if-eqz v0, :cond_18

    .line 196
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/C;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->o()V

    .line 198
    :cond_18
    return-void
.end method

.method public k()I
    .registers 2

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public m()V
    .registers 1

    .prologue
    .line 268
    return-void
.end method

.method public n()Z
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/C;->h:Lcom/google/googlenav/ui/view/android/bb;

    instance-of v0, v0, Lcom/google/googlenav/ui/view/android/V;

    if-nez v0, :cond_8

    .line 275
    const/4 v0, 0x1

    .line 277
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/C;->h:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/view/android/V;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/V;->O_()Z

    move-result v0

    goto :goto_7
.end method

.method public o()Z
    .registers 2

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/C;->f:Z

    return v0
.end method

.method public p()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 292
    iget v1, p0, Lcom/google/googlenav/ui/wizard/C;->g:I

    if-eq v1, v0, :cond_a

    iget v1, p0, Lcom/google/googlenav/ui/wizard/C;->g:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public r()I
    .registers 2

    .prologue
    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public s()I
    .registers 2

    .prologue
    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public t()I
    .registers 2

    .prologue
    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method public u()I
    .registers 2

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public v()Z
    .registers 2

    .prologue
    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public x()Ljava/lang/String;
    .registers 2

    .prologue
    .line 418
    const/4 v0, 0x0

    return-object v0
.end method
