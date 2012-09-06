.class public LaM/bH;
.super LaM/m;
.source "SourceFile"


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/F;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct/range {p0 .. p5}, LaM/m;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/F;)V

    .line 44
    return-void
.end method

.method static synthetic a(LaM/bH;)V
    .registers 1
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, LaM/bH;->bE()V

    return-void
.end method

.method private bE()V
    .registers 4

    .prologue
    .line 262
    iget-object v0, p0, LaM/bH;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    const/16 v1, 0x26

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, LaM/bH;->d(ILjava/lang/Object;)Lcom/google/googlenav/ui/wizard/A;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    .line 264
    invoke-super {p0}, LaM/m;->m()V

    .line 265
    return-void
.end method

.method private c()V
    .registers 2

    .prologue
    .line 76
    invoke-virtual {p0}, LaM/bH;->a()V

    .line 79
    iget-object v0, p0, LaM/bH;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->I()LaM/i;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_12

    .line 81
    invoke-virtual {v0}, LaM/i;->aR()V

    .line 83
    :cond_12
    return-void
.end method

.method private e()V
    .registers 3

    .prologue
    .line 132
    iget-object v0, p0, LaM/bH;->f:Lcom/google/googlenav/F;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v0

    .line 133
    iget-object v1, p0, LaM/bH;->d:Lat/u;

    invoke-virtual {v1, v0}, Lat/u;->c(Lat/B;)V

    .line 134
    return-void
.end method

.method private f()Lcom/google/googlenav/ca;
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, LaM/bH;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->e()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/cq;

    invoke-virtual {v0}, Lcom/google/googlenav/cq;->au()Lcom/google/googlenav/ca;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, LaM/bH;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0, p0}, LaM/am;->g(LaM/i;)V

    .line 87
    return-void
.end method

.method protected a(Lcom/google/googlenav/F;)V
    .registers 3
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, LaM/bH;->f:Lcom/google/googlenav/F;

    .line 123
    check-cast p1, Lcom/google/googlenav/bO;

    invoke-virtual {p1}, Lcom/google/googlenav/bO;->a()I

    move-result v0

    .line 124
    if-gez v0, :cond_b

    .line 125
    const/4 v0, 0x0

    .line 127
    :cond_b
    invoke-virtual {p0, v0}, LaM/bH;->b(I)V

    .line 128
    invoke-direct {p0}, LaM/bH;->e()V

    .line 129
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 106
    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 218
    packed-switch p1, :pswitch_data_1a

    .line 224
    invoke-super {p0, p1, p2, p3}, LaM/m;->a(IILjava/lang/Object;)Z

    move-result v0

    :goto_7
    return v0

    .line 220
    :pswitch_8
    invoke-virtual {p0}, LaM/bH;->ae()Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0x25

    :goto_10
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LaM/bH;->b(ILjava/lang/Object;)V

    .line 222
    const/4 v0, 0x1

    goto :goto_7

    .line 220
    :cond_16
    const/16 v0, 0x27

    goto :goto_10

    .line 218
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public aF()I
    .registers 2

    .prologue
    .line 312
    const v0, 0x7f11000d

    return v0
.end method

.method protected aT()Z
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, LaM/bH;->b(B)V

    .line 49
    invoke-super {p0}, LaM/m;->aT()Z

    move-result v0

    return v0
.end method

.method public aW()V
    .registers 1

    .prologue
    .line 116
    invoke-super {p0}, LaM/m;->aW()V

    .line 117
    invoke-virtual {p0}, LaM/bH;->aR()V

    .line 118
    return-void
.end method

.method public aX()V
    .registers 1

    .prologue
    .line 110
    invoke-virtual {p0}, LaM/bH;->aQ()V

    .line 111
    invoke-super {p0}, LaM/m;->aX()V

    .line 112
    return-void
.end method

.method public aa()Z
    .registers 2

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method protected aq()V
    .registers 2

    .prologue
    .line 138
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/cK;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/dialog/cK;-><init>(LaM/bH;)V

    iput-object v0, p0, LaM/bH;->r:Lcom/google/googlenav/ui/view/android/bb;

    .line 139
    return-void
.end method

.method public av()I
    .registers 2

    .prologue
    .line 269
    const/16 v0, 0x18

    return v0
.end method

.method public b(Lcom/google/googlenav/E;)I
    .registers 3
    .parameter

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 305
    invoke-virtual {p0}, LaM/bH;->R()V

    .line 306
    iget-object v0, p0, LaM/bH;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0, p0}, LaM/am;->m(LaM/i;)V

    .line 307
    invoke-direct {p0}, LaM/bH;->e()V

    .line 308
    return-void
.end method

.method public c(Lcom/google/googlenav/E;)I
    .registers 3
    .parameter

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public d()[Lcom/google/googlenav/ui/aH;
    .registers 13

    .prologue
    .line 278
    iget-object v0, p0, LaM/bH;->f:Lcom/google/googlenav/F;

    check-cast v0, Lcom/google/googlenav/bO;

    .line 279
    invoke-virtual {v0}, Lcom/google/googlenav/bO;->b()Lcom/google/googlenav/bW;

    move-result-object v4

    .line 281
    invoke-virtual {v0}, Lcom/google/googlenav/bO;->g()Ljava/util/List;

    move-result-object v1

    .line 282
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/googlenav/cq;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/googlenav/cq;

    .line 284
    invoke-virtual {v4}, Lcom/google/googlenav/bW;->c()I

    move-result v8

    .line 285
    invoke-virtual {v4}, Lcom/google/googlenav/bW;->d()I

    move-result v9

    .line 286
    invoke-virtual {v0}, Lcom/google/googlenav/bO;->h()LaM/bG;

    move-result-object v0

    invoke-virtual {v0}, LaM/bG;->a()Lcom/google/googlenav/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/cn;->l()I

    move-result v10

    .line 287
    if-gez v9, :cond_59

    .line 288
    const/4 v0, 0x2

    new-array v7, v0, [Lcom/google/googlenav/ui/aG;

    const/4 v9, 0x0

    new-instance v0, Lcom/google/googlenav/ui/aJ;

    const/4 v2, 0x0

    add-int/lit8 v3, v8, 0x1

    const v5, -0x777778

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/google/googlenav/ui/aJ;->a(Z)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/aJ;-><init>([Lcom/google/googlenav/cq;IILcom/google/googlenav/bW;II)V

    aput-object v0, v7, v9

    const/4 v9, 0x1

    new-instance v0, Lcom/google/googlenav/ui/aJ;

    invoke-virtual {v4}, Lcom/google/googlenav/bW;->a()I

    move-result v3

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/google/googlenav/ui/aJ;->a(Z)I

    move-result v6

    move v2, v8

    move v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/aJ;-><init>([Lcom/google/googlenav/cq;IILcom/google/googlenav/bW;II)V

    aput-object v0, v7, v9

    move-object v0, v7

    .line 294
    :goto_58
    return-object v0

    :cond_59
    const/4 v0, 0x3

    new-array v7, v0, [Lcom/google/googlenav/ui/aG;

    const/4 v11, 0x0

    new-instance v0, Lcom/google/googlenav/ui/aJ;

    const/4 v2, 0x0

    add-int/lit8 v3, v8, 0x1

    const v5, -0x777778

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/google/googlenav/ui/aJ;->a(Z)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/aJ;-><init>([Lcom/google/googlenav/cq;IILcom/google/googlenav/bW;II)V

    aput-object v0, v7, v11

    const/4 v11, 0x1

    new-instance v0, Lcom/google/googlenav/ui/aJ;

    add-int/lit8 v3, v9, 0x1

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/google/googlenav/ui/aJ;->a(Z)I

    move-result v6

    move v2, v8

    move v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/aJ;-><init>([Lcom/google/googlenav/cq;IILcom/google/googlenav/bW;II)V

    aput-object v0, v7, v11

    const/4 v8, 0x2

    new-instance v0, Lcom/google/googlenav/ui/aJ;

    invoke-virtual {v4}, Lcom/google/googlenav/bW;->a()I

    move-result v3

    const v5, -0x777778

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/google/googlenav/ui/aJ;->a(Z)I

    move-result v6

    move v2, v9

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/aJ;-><init>([Lcom/google/googlenav/cq;IILcom/google/googlenav/bW;II)V

    aput-object v0, v7, v8

    move-object v0, v7

    goto :goto_58
.end method

.method public e(LZ/a;)Z
    .registers 8
    .parameter

    .prologue
    const/16 v5, 0x36

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 147
    invoke-virtual {p0}, LaM/bH;->ae()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 171
    :cond_a
    :goto_a
    return v1

    .line 151
    :cond_b
    invoke-virtual {p1}, LZ/a;->b()I

    move-result v3

    .line 152
    if-eq v3, v5, :cond_15

    const/16 v0, 0x34

    if-ne v3, v0, :cond_a

    .line 154
    :cond_15
    iget-object v0, p0, LaM/bH;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->c()I

    move-result v0

    .line 155
    invoke-virtual {p0}, LaM/bH;->ac()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 156
    if-ne v3, v5, :cond_44

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, LaM/bH;->f:Lcom/google/googlenav/F;

    invoke-interface {v3}, Lcom/google/googlenav/F;->f()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 160
    :cond_31
    :goto_31
    if-gez v0, :cond_34

    move v0, v1

    .line 164
    :cond_34
    iget-object v1, p0, LaM/bH;->f:Lcom/google/googlenav/F;

    invoke-interface {v1, v2}, Lcom/google/googlenav/F;->a(B)V

    .line 165
    invoke-virtual {p0, v0}, LaM/bH;->b(I)V

    .line 166
    invoke-virtual {p0}, LaM/bH;->an()Z

    .line 167
    invoke-virtual {p0, v2}, LaM/bH;->k(Z)V

    move v1, v2

    .line 168
    goto :goto_a

    .line 156
    :cond_44
    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_31
.end method

.method protected f(LZ/a;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 57
    invoke-virtual {p1}, LZ/a;->a()I

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_1e

    invoke-virtual {p1}, LZ/a;->c()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1e

    .line 59
    invoke-virtual {p0}, LaM/bH;->ae()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 60
    const/16 v1, 0x26

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, LaM/bH;->c(ILjava/lang/Object;)V

    .line 72
    :goto_1d
    return v0

    .line 66
    :cond_1e
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_30

    invoke-virtual {p0}, LaM/bH;->aa()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 67
    invoke-virtual {p0}, LaM/bH;->h()V

    goto :goto_1d

    .line 72
    :cond_30
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public h()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 191
    iget-object v0, p0, LaM/bH;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->d()Lcom/google/googlenav/ui/wizard/A;

    move-result-object v1

    .line 193
    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/A;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_3c

    .line 214
    :goto_13
    return-void

    .line 195
    :sswitch_14
    invoke-virtual {p0}, LaM/bH;->a()V

    .line 196
    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/A;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/Y;

    .line 198
    invoke-virtual {v0, v2}, Lcom/google/googlenav/Y;->a(I)V

    .line 199
    iget-object v0, p0, LaM/bH;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/A;->b()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/Object;B)V

    goto :goto_13

    .line 202
    :sswitch_2b
    invoke-virtual {p0, v2, v3}, LaM/bH;->c(ILjava/lang/Object;)V

    goto :goto_13

    .line 205
    :sswitch_2f
    invoke-virtual {p0, v2, v3}, LaM/bH;->b(ILjava/lang/Object;)V

    goto :goto_13

    .line 208
    :sswitch_33
    invoke-virtual {p0, v2, v3}, LaM/bH;->a(ILjava/lang/Object;)V

    goto :goto_13

    .line 211
    :sswitch_37
    invoke-direct {p0}, LaM/bH;->c()V

    goto :goto_13

    .line 193
    nop

    :sswitch_data_3c
    .sparse-switch
        0x0 -> :sswitch_37
        0x1f -> :sswitch_14
        0x25 -> :sswitch_2b
        0x26 -> :sswitch_2f
        0x27 -> :sswitch_33
    .end sparse-switch
.end method

.method protected k(Z)V
    .registers 5
    .parameter

    .prologue
    .line 180
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 181
    invoke-virtual {p0, p1}, LaM/bH;->b(Z)V

    .line 187
    :goto_d
    return-void

    .line 183
    :cond_e
    iget-object v0, p0, LaM/bH;->d:Lat/u;

    iget-object v1, p0, LaM/bH;->f:Lcom/google/googlenav/F;

    invoke-interface {v1}, Lcom/google/googlenav/F;->e()Lcom/google/googlenav/E;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v1

    iget-object v2, p0, LaM/bH;->d:Lat/u;

    invoke-virtual {v2}, Lat/u;->d()Lat/Y;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, LaM/bH;->a(Lat/B;Lat/Y;)Lat/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lat/u;->c(Lat/B;)V

    goto :goto_d
.end method

.method protected m()V
    .registers 5

    .prologue
    .line 234
    invoke-direct {p0}, LaM/bH;->f()Lcom/google/googlenav/ca;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lcom/google/googlenav/ca;->e()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 236
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    .line 237
    new-instance v2, Lcom/google/googlenav/ci;

    new-instance v3, LaM/bI;

    invoke-direct {v3, p0, v0}, LaM/bI;-><init>(LaM/bH;Lcom/google/googlenav/ca;)V

    invoke-direct {v2, v0, v3}, Lcom/google/googlenav/ci;-><init>(Lcom/google/googlenav/ca;Lcom/google/googlenav/cj;)V

    .line 251
    invoke-virtual {v1, v2}, Lac/h;->c(Lac/g;)V

    .line 255
    :goto_1b
    return-void

    .line 253
    :cond_1c
    invoke-direct {p0}, LaM/bH;->bE()V

    goto :goto_1b
.end method
