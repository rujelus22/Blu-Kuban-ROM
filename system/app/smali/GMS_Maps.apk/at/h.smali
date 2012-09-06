.class public Lat/h;
.super Lat/u;
.source "SourceFile"


# instance fields
.field private final c:Z

.field private final d:Lat/p;

.field private final e:Lcom/google/googlenav/ui/bK;

.field private f:Lat/s;


# direct methods
.method public constructor <init>(Lat/p;Lcom/google/googlenav/ui/bK;Lcom/google/googlenav/ui/s;Z)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lat/u;-><init>()V

    .line 42
    iput-object p1, p0, Lat/h;->d:Lat/p;

    .line 43
    iput-object p2, p0, Lat/h;->e:Lcom/google/googlenav/ui/bK;

    .line 44
    iput-boolean p4, p0, Lat/h;->c:Z

    .line 45
    if-eqz p2, :cond_13

    .line 46
    new-instance v0, Lat/i;

    invoke-direct {v0, p0}, Lat/i;-><init>(Lat/h;)V

    invoke-virtual {p2, v0}, Lcom/google/googlenav/ui/bK;->a(Lcom/google/googlenav/ui/bL;)V

    .line 60
    :cond_13
    if-eqz p3, :cond_1d

    .line 61
    new-instance v0, Lat/j;

    invoke-direct {v0, p0}, Lat/j;-><init>(Lat/h;)V

    invoke-virtual {p3, v0}, Lcom/google/googlenav/ui/s;->a(Lcom/google/googlenav/ui/t;)V

    .line 75
    :cond_1d
    invoke-virtual {p1}, Lat/p;->t()I

    move-result v0

    invoke-virtual {p1}, Lat/p;->s()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lat/h;->c(II)V

    .line 76
    return-void
.end method

.method private g(Lat/B;)Z
    .registers 5
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lat/h;->d:Lat/p;

    invoke-virtual {v0, p1}, Lat/p;->c(Lat/B;)Landroid/graphics/Point;

    move-result-object v0

    .line 203
    iget-boolean v1, p0, Lat/h;->c:Z

    if-eqz v1, :cond_2c

    iget v1, v0, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lat/h;->d:Lat/p;

    invoke-virtual {v2}, Lat/p;->t()I

    move-result v2

    mul-int/lit8 v2, v2, 0x7

    if-ge v1, v2, :cond_2c

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lat/h;->d:Lat/p;

    invoke-virtual {v1}, Lat/p;->s()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    if-ge v0, v1, :cond_2c

    const/4 v0, 0x1

    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method private q()V
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lat/h;->e:Lcom/google/googlenav/ui/bK;

    if-eqz v0, :cond_9

    .line 227
    iget-object v0, p0, Lat/h;->e:Lcom/google/googlenav/ui/bK;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bK;->c()V

    .line 229
    :cond_9
    return-void
.end method


# virtual methods
.method public a(ILat/B;)F
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lat/h;->d:Lat/p;

    invoke-virtual {v0, p1}, Lat/p;->c(I)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public a()I
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lat/h;->d:Lat/p;

    invoke-virtual {v0}, Lat/p;->m()I

    move-result v0

    return v0
.end method

.method public a(Lat/B;)I
    .registers 3
    .parameter

    .prologue
    .line 291
    iget-object v0, p0, Lat/h;->d:Lat/p;

    invoke-virtual {v0, p1}, Lat/p;->e(Lat/B;)I

    move-result v0

    return v0
.end method

.method public a(Lat/H;)I
    .registers 3
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lat/h;->d:Lat/p;

    invoke-virtual {v0, p1}, Lat/p;->b(Lat/H;)I

    move-result v0

    return v0
.end method

.method protected a(Lat/B;Lat/Y;II)Lat/B;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 331
    iget-object v0, p0, Lat/h;->d:Lat/p;

    invoke-virtual {v0, p1, p2, p3, p4}, Lat/p;->a(Lat/B;Lat/Y;II)Lat/B;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .registers 3
    .parameter

    .prologue
    .line 148
    invoke-direct {p0}, Lat/h;->q()V

    .line 149
    iget-object v0, p0, Lat/h;->d:Lat/p;

    invoke-virtual {v0, p1}, Lat/p;->b(I)V

    .line 150
    return-void
.end method

.method public a(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 254
    invoke-virtual {p0}, Lat/h;->h()V

    .line 255
    invoke-direct {p0}, Lat/h;->q()V

    .line 259
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1}, Lat/h;->a(ZZZ)V

    .line 260
    iget-object v0, p0, Lat/h;->d:Lat/p;

    invoke-virtual {v0}, Lat/p;->d()Lat/B;

    move-result-object v0

    iget-object v1, p0, Lat/h;->d:Lat/p;

    invoke-virtual {v1}, Lat/p;->c()Lat/Y;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lat/s;->a(Lat/B;IILat/Y;)Lat/s;

    move-result-object v0

    iput-object v0, p0, Lat/h;->f:Lat/s;

    .line 261
    return-void
.end method

.method protected a(Lat/B;Landroid/graphics/Point;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 326
    iget-object v0, p0, Lat/h;->d:Lat/p;

    invoke-virtual {v0, p1, p2}, Lat/p;->b(Lat/B;Landroid/graphics/Point;)V

    .line 327
    return-void
.end method

.method public a(Lat/B;Lat/Y;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-virtual {p0, p1, p2}, Lat/h;->d(Lat/B;Lat/Y;)V

    .line 159
    return-void
.end method

.method protected a(Lat/B;Lat/Y;Lat/B;Landroid/graphics/Point;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 321
    iget-object v0, p0, Lat/h;->d:Lat/p;

    invoke-virtual {v0, p1, p2, p3, p4}, Lat/p;->a(Lat/B;Lat/Y;Lat/B;Landroid/graphics/Point;)V

    .line 322
    return-void
.end method

.method protected a(Lat/Y;II)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 265
    iget-object v0, p0, Lat/h;->e:Lcom/google/googlenav/ui/bK;

    if-nez v0, :cond_15

    .line 269
    invoke-static {}, Lcom/google/googlenav/common/util/t;->a()V

    .line 270
    invoke-virtual {p0, p2, p3}, Lat/h;->b(II)Lat/B;

    move-result-object v0

    neg-int v1, p2

    neg-int v2, p3

    invoke-virtual {v0, v1, v2, p1}, Lat/B;->a(IILat/Y;)Lat/B;

    move-result-object v0

    .line 271
    invoke-virtual {p0, v0, p1}, Lat/h;->e(Lat/B;Lat/Y;)V

    .line 275
    :goto_14
    return-void

    .line 274
    :cond_15
    iget-object v0, p0, Lat/h;->e:Lcom/google/googlenav/ui/bK;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/googlenav/ui/bK;->a(Lat/Y;II)V

    goto :goto_14
.end method

.method public a(Ln/B;)V
    .registers 2
    .parameter

    .prologue
    .line 337
    return-void
.end method

.method public a([Lat/B;IIILat/Y;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 233
    if-nez p1, :cond_5

    .line 250
    :goto_4
    return-void

    .line 236
    :cond_5
    invoke-virtual {p0, p5}, Lat/h;->a(Lat/Y;)V

    .line 237
    invoke-direct {p0}, Lat/h;->q()V

    .line 238
    aget-object v0, p1, p3

    .line 239
    iget-object v2, p0, Lat/h;->d:Lat/p;

    invoke-virtual {v2, v0}, Lat/p;->d(Lat/B;)V

    .line 240
    invoke-direct {p0, v0}, Lat/h;->g(Lat/B;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 243
    invoke-virtual {p0}, Lat/h;->h()V

    .line 244
    invoke-virtual {p0}, Lat/h;->c()Lat/B;

    move-result-object v2

    invoke-virtual {v0, v2}, Lat/B;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    move v0, v1

    :goto_26
    invoke-virtual {p0, v0, v6, v1}, Lat/h;->a(ZZZ)V

    .line 245
    new-instance v0, Lat/s;

    int-to-long v1, p4

    sget-wide v3, Lat/s;->a:J

    mul-long v4, v1, v3

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lat/s;-><init>([Lat/B;IIJI)V

    iput-object v0, p0, Lat/h;->f:Lat/s;

    goto :goto_4

    :cond_39
    move v0, v6

    .line 244
    goto :goto_26

    .line 248
    :cond_3b
    invoke-virtual {p0, v0}, Lat/h;->c(Lat/B;)V

    goto :goto_4
.end method

.method public b()I
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lat/h;->d:Lat/p;

    invoke-virtual {v0}, Lat/p;->n()I

    move-result v0

    return v0
.end method

.method public b(Lat/H;)I
    .registers 3
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lat/h;->d:Lat/p;

    invoke-virtual {v0, p1}, Lat/p;->c(Lat/H;)I

    move-result v0

    return v0
.end method

.method public b(II)Lat/B;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 315
    iget-object v0, p0, Lat/h;->d:Lat/p;

    invoke-virtual {v0, p1, p2}, Lat/p;->b(II)Lat/B;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lat/B;Lat/Y;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 169
    invoke-virtual {p0}, Lat/h;->h()V

    .line 170
    invoke-direct {p0}, Lat/h;->q()V

    .line 172
    if-nez p2, :cond_e

    .line 173
    invoke-virtual {p0}, Lat/h;->d()Lat/Y;

    move-result-object p2

    .line 175
    :cond_e
    iget-object v0, p0, Lat/h;->d:Lat/p;

    invoke-virtual {v0, p2}, Lat/p;->a(Lat/Y;)V

    .line 178
    iget-object v0, p0, Lat/h;->d:Lat/p;

    invoke-virtual {v0}, Lat/p;->c()Lat/Y;

    move-result-object v0

    invoke-virtual {p1, v2, v2, v0}, Lat/B;->a(IILat/Y;)Lat/B;

    move-result-object v4

    .line 181
    invoke-direct {p0, v4}, Lat/h;->g(Lat/B;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 183
    invoke-virtual {p0}, Lat/h;->c()Lat/B;

    move-result-object v0

    invoke-virtual {v4, v0}, Lat/B;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    move v0, v1

    :goto_2e
    invoke-virtual {p0}, Lat/h;->d()Lat/Y;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6a

    move v3, v1

    :goto_39
    invoke-virtual {p0, v0, v3, v1}, Lat/h;->a(ZZZ)V

    .line 185
    iget-object v0, p0, Lat/h;->d:Lat/p;

    invoke-virtual {v0, v4}, Lat/p;->d(Lat/B;)V

    .line 187
    iget-object v0, p0, Lat/h;->d:Lat/p;

    invoke-virtual {v0}, Lat/p;->d()Lat/B;

    move-result-object v0

    iget-object v1, p0, Lat/h;->d:Lat/p;

    invoke-virtual {v1}, Lat/p;->c()Lat/Y;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lat/B;->a(Lat/B;Lat/Y;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lcom/google/googlenav/common/util/j;->b(I)I

    move-result v0

    .line 190
    new-instance v1, Lat/s;

    iget-object v3, p0, Lat/h;->d:Lat/p;

    invoke-virtual {v3}, Lat/p;->d()Lat/B;

    move-result-object v3

    invoke-static {v0}, Lat/h;->b(I)I

    move-result v0

    invoke-direct {v1, v3, v4, v0, v2}, Lat/s;-><init>(Lat/B;Lat/B;II)V

    iput-object v1, p0, Lat/h;->f:Lat/s;

    .line 195
    :goto_67
    return-void

    :cond_68
    move v0, v2

    .line 183
    goto :goto_2e

    :cond_6a
    move v3, v2

    goto :goto_39

    .line 193
    :cond_6c
    invoke-virtual {p0, v4}, Lat/h;->c(Lat/B;)V

    goto :goto_67
.end method

.method public c()Lat/B;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lat/h;->d:Lat/p;

    invoke-virtual {v0}, Lat/p;->d()Lat/B;

    move-result-object v0

    return-object v0
.end method

.method protected c(Lat/B;Lat/Y;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 279
    .line 280
    invoke-virtual {p0}, Lat/h;->h()V

    .line 281
    invoke-direct {p0}, Lat/h;->q()V

    .line 282
    invoke-virtual {p0}, Lat/h;->c()Lat/B;

    move-result-object v0

    invoke-virtual {p1, v0}, Lat/B;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    move v0, v1

    :goto_13
    invoke-virtual {p0}, Lat/h;->d()Lat/Y;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    :goto_1d
    invoke-virtual {p0, v0, v1, v2}, Lat/h;->a(ZZZ)V

    .line 284
    iget-object v0, p0, Lat/h;->d:Lat/p;

    invoke-virtual {v0, p1}, Lat/p;->b(Lat/B;)V

    .line 285
    iget-object v0, p0, Lat/h;->d:Lat/p;

    invoke-virtual {v0, p2}, Lat/p;->a(Lat/Y;)V

    .line 286
    invoke-virtual {p0}, Lat/h;->l()V

    .line 287
    return-void

    :cond_2e
    move v0, v2

    .line 282
    goto :goto_13

    :cond_30
    move v1, v2

    goto :goto_1d
.end method

.method public d()Lat/Y;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lat/h;->d:Lat/p;

    invoke-virtual {v0}, Lat/p;->c()Lat/Y;

    move-result-object v0

    return-object v0
.end method

.method public e()F
    .registers 2

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public f()Lat/H;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lat/h;->d:Lat/p;

    invoke-virtual {v0}, Lat/p;->b()Lat/H;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .registers 3

    .prologue
    .line 209
    iget-object v0, p0, Lat/h;->f:Lat/s;

    if-eqz v0, :cond_f

    .line 210
    iget-object v0, p0, Lat/h;->f:Lat/s;

    invoke-virtual {v0}, Lat/s;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 211
    invoke-virtual {p0}, Lat/h;->h()V

    .line 216
    :cond_f
    :goto_f
    return-void

    .line 213
    :cond_10
    iget-object v0, p0, Lat/h;->d:Lat/p;

    iget-object v1, p0, Lat/h;->f:Lat/s;

    invoke-virtual {v1}, Lat/s;->a()Lat/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lat/p;->b(Lat/B;)V

    goto :goto_f
.end method

.method public h()V
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lat/h;->f:Lat/s;

    if-eqz v0, :cond_a

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lat/h;->f:Lat/s;

    .line 221
    invoke-virtual {p0}, Lat/h;->l()V

    .line 223
    :cond_a
    return-void
.end method

.method public i()Z
    .registers 3

    .prologue
    .line 296
    invoke-virtual {p0}, Lat/h;->d()Lat/Y;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Lat/Y;->c()Lat/Y;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Lat/Y;->a()I

    move-result v0

    invoke-virtual {p0}, Lat/h;->c()Lat/B;

    move-result-object v1

    invoke-virtual {p0, v1}, Lat/h;->a(Lat/B;)I

    move-result v1

    if-lt v0, v1, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public j()Z
    .registers 3

    .prologue
    .line 303
    invoke-virtual {p0}, Lat/h;->d()Lat/Y;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Lat/Y;->d()Lat/Y;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lat/Y;->a()I

    move-result v0

    invoke-static {}, Lat/Y;->e()I

    move-result v1

    if-gt v0, v1, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public k()Z
    .registers 2

    .prologue
    .line 310
    iget-object v0, p0, Lat/h;->f:Lat/s;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
