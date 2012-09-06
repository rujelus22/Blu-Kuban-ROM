.class public LaM/aT;
.super LaM/i;
.source "SourceFile"


# instance fields
.field private A:Lad/y;

.field private B:Lad/y;

.field private C:Lad/z;

.field private D:Lcom/google/googlenav/aX;

.field private E:I

.field private final F:LaM/aU;

.field u:Lad/b;

.field private v:I

.field private w:I

.field private x:I

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/F;I)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-direct/range {p0 .. p5}, LaM/i;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/F;)V

    .line 143
    const/4 v0, 0x0

    iput v0, p0, LaM/aT;->E:I

    .line 151
    iput p6, p0, LaM/aT;->E:I

    .line 153
    const-string v0, "locationMemory"

    invoke-static {v0}, Lad/z;->b(Ljava/lang/String;)Lad/z;

    move-result-object v0

    iput-object v0, p0, LaM/aT;->C:Lad/z;

    .line 154
    new-instance v0, LaM/aU;

    invoke-direct {v0, p0}, LaM/aU;-><init>(LaM/aT;)V

    iput-object v0, p0, LaM/aT;->F:LaM/aU;

    .line 155
    return-void
.end method

.method private bi()V
    .registers 13

    .prologue
    const/4 v9, 0x0

    const/4 v11, -0x1

    .line 229
    iget-boolean v0, p0, LaM/aT;->y:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, LaM/aT;->u:Lad/b;

    invoke-virtual {v0}, Lad/b;->C()[Lad/y;

    move-result-object v0

    move-object v7, v0

    .line 231
    :goto_d
    array-length v0, v7

    new-array v10, v0, [Lcom/google/googlenav/ai;

    move v8, v9

    .line 232
    :goto_11
    array-length v0, v7

    if-ge v8, v0, :cond_3e

    .line 233
    new-instance v0, Lcom/google/googlenav/ai;

    aget-object v1, v7, v8

    invoke-virtual {v1}, Lad/y;->f()Lat/B;

    move-result-object v1

    aget-object v2, v7, v8

    invoke-virtual {v2}, Lad/y;->h()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v7, v8

    invoke-virtual {v3}, Lad/y;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ai;-><init>(Lat/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    aput-object v0, v10, v8

    .line 232
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_11

    .line 229
    :cond_36
    iget-object v0, p0, LaM/aT;->u:Lad/b;

    invoke-virtual {v0}, Lad/b;->D()[Lad/y;

    move-result-object v0

    move-object v7, v0

    goto :goto_d

    .line 237
    :cond_3e
    const/4 v0, 0x0

    invoke-static {v10, v0, v11, v11}, Lcom/google/googlenav/aW;->a([Lcom/google/googlenav/ai;Lat/H;II)Lcom/google/googlenav/aW;

    move-result-object v0

    .line 239
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/googlenav/aW;->d(I)V

    .line 240
    iget v1, p0, LaM/aT;->v:I

    invoke-virtual {p0, v0, v9, v1}, LaM/aT;->a(Lcom/google/googlenav/aW;ZI)V

    .line 241
    return-void
.end method

.method private bj()V
    .registers 8

    .prologue
    const v2, 0x7fffffff

    const/high16 v1, -0x8000

    .line 283
    .line 287
    const/4 v0, 0x0

    move v3, v1

    move v4, v2

    :goto_8
    iget-object v5, p0, LaM/aT;->f:Lcom/google/googlenav/F;

    invoke-interface {v5}, Lcom/google/googlenav/F;->f()I

    move-result v5

    if-ge v0, v5, :cond_3f

    .line 288
    iget-object v5, p0, LaM/aT;->f:Lcom/google/googlenav/F;

    invoke-interface {v5, v0}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v5

    .line 289
    if-eqz v5, :cond_3c

    .line 290
    invoke-virtual {v5}, Lat/B;->c()I

    move-result v6

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 291
    invoke-virtual {v5}, Lat/B;->c()I

    move-result v6

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 292
    invoke-virtual {v5}, Lat/B;->e()I

    move-result v6

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 293
    invoke-virtual {v5}, Lat/B;->e()I

    move-result v5

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 287
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 296
    :cond_3f
    sub-int v0, v3, v4

    iput v0, p0, LaM/aT;->w:I

    .line 297
    sub-int v0, v1, v2

    iput v0, p0, LaM/aT;->x:I

    .line 298
    return-void
.end method

.method private bk()V
    .registers 8

    .prologue
    .line 302
    iget v0, p0, LaM/aT;->v:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4d

    .line 303
    invoke-virtual {p0}, LaM/aT;->f()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->I()[Lcom/google/googlenav/ai;

    move-result-object v0

    array-length v0, v0

    .line 307
    :goto_e
    const/16 v1, 0x38

    const-string v2, "s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "m="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, LaM/aT;->bl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "c="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v3}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 311
    return-void

    .line 305
    :cond_4d
    iget-object v0, p0, LaM/aT;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->f()I

    move-result v0

    goto :goto_e
.end method

.method private bl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 327
    invoke-virtual {p0}, LaM/aT;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 328
    iget v0, p0, LaM/aT;->v:I

    if-nez v0, :cond_d

    const-string v0, "s"

    .line 331
    :goto_c
    return-object v0

    .line 328
    :cond_d
    const-string v0, "m"

    goto :goto_c

    .line 331
    :cond_10
    const-string v0, "w"

    goto :goto_c
.end method

.method private bm()V
    .registers 2

    .prologue
    .line 393
    const/4 v0, -0x1

    invoke-direct {p0, v0}, LaM/aT;->h(I)V

    .line 394
    return-void
.end method

.method private h(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 397
    invoke-virtual {p0}, LaM/aT;->f()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->v()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0}, LaM/aT;->ae()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 399
    iget v0, p0, LaM/aT;->v:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_76

    .line 400
    invoke-virtual {p0}, LaM/aT;->f()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/aW;->e(I)V

    .line 406
    :cond_1d
    :goto_1d
    invoke-virtual {p0}, LaM/aT;->f()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->aO()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 407
    iget-object v0, p0, LaM/aT;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->e()Lcom/google/googlenav/E;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 408
    iget-object v0, p0, LaM/aT;->d:Lat/u;

    iget-object v1, p0, LaM/aT;->f:Lcom/google/googlenav/F;

    invoke-interface {v1}, Lcom/google/googlenav/F;->e()Lcom/google/googlenav/E;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lat/u;->c(Lat/B;)V

    .line 410
    :cond_3e
    const/4 v0, 0x1

    .line 411
    iget-object v1, p0, LaM/aT;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/v;->q(Z)V

    .line 415
    :cond_44
    invoke-virtual {p0}, LaM/aT;->e()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 417
    iget-boolean v0, p0, LaM/aT;->y:Z

    if-eqz v0, :cond_7a

    .line 418
    iget-object v0, p0, LaM/aT;->u:Lad/b;

    invoke-virtual {v0}, Lad/b;->C()[Lad/y;

    move-result-object v0

    aget-object v0, v0, p1

    .line 419
    iput-object v0, p0, LaM/aT;->A:Lad/y;

    .line 426
    :goto_58
    if-eqz v0, :cond_65

    invoke-virtual {v0}, Lad/y;->c()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 428
    iget-object v1, p0, LaM/aT;->C:Lad/z;

    invoke-virtual {v1, v0}, Lad/z;->a(Lad/y;)Z

    .line 433
    :cond_65
    iget-boolean v0, p0, LaM/aT;->z:Z

    if-nez v0, :cond_85

    iget-boolean v0, p0, LaM/aT;->y:Z

    if-eqz v0, :cond_85

    .line 434
    invoke-direct {p0, v2}, LaM/aT;->k(Z)V

    .line 435
    iput-boolean v2, p0, LaM/aT;->y:Z

    .line 436
    invoke-direct {p0}, LaM/aT;->bi()V

    .line 456
    :goto_75
    return-void

    .line 402
    :cond_76
    invoke-virtual {p0, p1}, LaM/aT;->b(I)V

    goto :goto_1d

    .line 421
    :cond_7a
    iget-object v0, p0, LaM/aT;->u:Lad/b;

    invoke-virtual {v0}, Lad/b;->D()[Lad/y;

    move-result-object v0

    aget-object v0, v0, p1

    .line 422
    iput-object v0, p0, LaM/aT;->B:Lad/y;

    goto :goto_58

    .line 441
    :cond_85
    iget-object v0, p0, LaM/aT;->A:Lad/y;

    if-eqz v0, :cond_90

    .line 442
    iget-object v0, p0, LaM/aT;->u:Lad/b;

    iget-object v1, p0, LaM/aT;->A:Lad/y;

    invoke-virtual {v0, v1}, Lad/b;->a(Lad/y;)V

    .line 444
    :cond_90
    iget-object v0, p0, LaM/aT;->B:Lad/y;

    if-eqz v0, :cond_9b

    .line 445
    iget-object v0, p0, LaM/aT;->u:Lad/b;

    iget-object v1, p0, LaM/aT;->B:Lad/y;

    invoke-virtual {v0, v1}, Lad/b;->b(Lad/y;)V

    .line 447
    :cond_9b
    iget-object v0, p0, LaM/aT;->u:Lad/b;

    invoke-virtual {v0}, Lad/b;->w()V

    .line 450
    :cond_a0
    invoke-direct {p0, v2}, LaM/aT;->k(Z)V

    .line 451
    iget-object v0, p0, LaM/aT;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/v;->a(LaM/aT;)V

    .line 452
    iget-object v0, p0, LaM/aT;->D:Lcom/google/googlenav/aX;

    if-eqz v0, :cond_c2

    iget v0, p0, LaM/aT;->v:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c2

    .line 453
    iget-object v1, p0, LaM/aT;->D:Lcom/google/googlenav/aX;

    iget-object v0, p0, LaM/aT;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->e()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    invoke-virtual {p0}, LaM/aT;->f()Lcom/google/googlenav/aW;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/googlenav/aX;->a(Lcom/google/googlenav/ai;Lcom/google/googlenav/aW;)V

    .line 455
    :cond_c2
    iget-object v0, p0, LaM/aT;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/v;->a(LaM/i;)V

    goto :goto_75
.end method

.method private k(Z)V
    .registers 9
    .parameter

    .prologue
    .line 315
    iget v0, p0, LaM/aT;->v:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_50

    .line 316
    invoke-virtual {p0}, LaM/aT;->f()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->J()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 321
    :goto_11
    const/16 v1, 0x38

    const-string v2, "e"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "m="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, LaM/aT;->bl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v3}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 324
    return-void

    .line 318
    :cond_50
    if-eqz p1, :cond_55

    const-string v0, "b"

    goto :goto_11

    :cond_55
    iget-object v0, p0, LaM/aT;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method


# virtual methods
.method protected U()I
    .registers 2

    .prologue
    .line 276
    const/16 v0, 0xf

    return v0
.end method

.method public a()I
    .registers 2

    .prologue
    .line 269
    iget v0, p0, LaM/aT;->v:I

    return v0
.end method

.method public a(Lad/b;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 209
    iput-object p1, p0, LaM/aT;->u:Lad/b;

    .line 210
    iput p2, p0, LaM/aT;->v:I

    .line 211
    iput-object v0, p0, LaM/aT;->A:Lad/y;

    .line 212
    iput-object v0, p0, LaM/aT;->B:Lad/y;

    .line 214
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2e

    move v0, v1

    :goto_f
    iput-boolean v0, p0, LaM/aT;->y:Z

    .line 215
    if-ne p2, v1, :cond_34

    .line 216
    invoke-virtual {p1}, Lad/b;->C()[Lad/y;

    move-result-object v0

    if-eqz v0, :cond_30

    move v0, v1

    .line 217
    :goto_1a
    invoke-virtual {p1}, Lad/b;->D()[Lad/y;

    move-result-object v3

    if-eqz v3, :cond_32

    move v3, v1

    .line 218
    :goto_21
    iput-boolean v0, p0, LaM/aT;->y:Z

    .line 219
    if-eqz v0, :cond_27

    if-nez v3, :cond_28

    :cond_27
    move v2, v1

    :cond_28
    iput-boolean v2, p0, LaM/aT;->z:Z

    .line 224
    :goto_2a
    invoke-direct {p0}, LaM/aT;->bi()V

    .line 225
    return-void

    :cond_2e
    move v0, v2

    .line 214
    goto :goto_f

    :cond_30
    move v0, v2

    .line 216
    goto :goto_1a

    :cond_32
    move v3, v2

    .line 217
    goto :goto_21

    .line 221
    :cond_34
    iput-boolean v1, p0, LaM/aT;->z:Z

    goto :goto_2a
.end method

.method protected a(Lcom/google/googlenav/F;)V
    .registers 5
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, LaM/aT;->f:Lcom/google/googlenav/F;

    .line 374
    instance-of v0, p1, Lcom/google/googlenav/aW;

    if-nez v0, :cond_7

    .line 386
    :cond_6
    :goto_6
    return-void

    .line 379
    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-interface {p1}, Lcom/google/googlenav/F;->f()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 380
    invoke-interface {p1, v0}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/E;->c()B

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 385
    :cond_1c
    invoke-virtual {p0}, LaM/aT;->y()V

    goto :goto_6
.end method

.method public a(Lcom/google/googlenav/aW;Lcom/google/googlenav/aX;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, LaM/aT;->a(Lcom/google/googlenav/aW;ZI)V

    .line 159
    iput-object p2, p0, LaM/aT;->D:Lcom/google/googlenav/aX;

    .line 160
    return-void
.end method

.method public a(Lcom/google/googlenav/aW;ZI)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    iput p3, p0, LaM/aT;->v:I

    .line 171
    if-nez p1, :cond_5

    .line 200
    :goto_4
    return-void

    .line 174
    :cond_5
    invoke-virtual {p0, p1}, LaM/aT;->b(Lcom/google/googlenav/F;)V

    .line 175
    invoke-direct {p0}, LaM/aT;->bk()V

    .line 179
    const/4 v0, 0x5

    if-eq p3, v0, :cond_12

    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LaM/aT;->b(I)V

    .line 183
    :cond_12
    if-eqz p2, :cond_32

    .line 184
    invoke-direct {p0}, LaM/aT;->bj()V

    .line 186
    iget-object v0, p0, LaM/aT;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->Q()V

    .line 187
    iget-object v0, p0, LaM/aT;->d:Lat/u;

    invoke-virtual {p0}, LaM/aT;->s()Lcom/google/googlenav/E;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lat/u;->c(Lat/B;)V

    .line 188
    iget-object v0, p0, LaM/aT;->d:Lat/u;

    iget v1, p0, LaM/aT;->w:I

    iget v2, p0, LaM/aT;->x:I

    invoke-virtual {v0, v1, v2}, Lat/u;->d(II)V

    .line 190
    :cond_32
    const/4 v0, 0x0

    iput-object v0, p0, LaM/aT;->D:Lcom/google/googlenav/aX;

    .line 193
    const/4 v0, 0x6

    if-ne p3, v0, :cond_3c

    .line 194
    invoke-direct {p0}, LaM/aT;->bm()V

    goto :goto_4

    .line 197
    :cond_3c
    invoke-virtual {p0}, LaM/aT;->al()V

    .line 198
    invoke-virtual {p0}, LaM/aT;->l()V

    goto :goto_4
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 256
    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 460
    invoke-virtual {p0}, LaM/aT;->ae()Z

    move-result v2

    if-nez v2, :cond_9

    .line 478
    :goto_8
    return v0

    .line 464
    :cond_9
    packed-switch p1, :pswitch_data_26

    goto :goto_8

    .line 466
    :pswitch_d
    invoke-direct {p0, p2}, LaM/aT;->h(I)V

    move v0, v1

    .line 467
    goto :goto_8

    .line 472
    :pswitch_12
    invoke-virtual {p0}, LaM/aT;->f()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/aW;->a(Z)V

    .line 473
    iget-object v0, p0, LaM/aT;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/v;->a(LaM/i;)V

    .line 474
    iget-object v0, p0, LaM/aT;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/v;->b(LaM/aT;)V

    move v0, v1

    .line 475
    goto :goto_8

    .line 464
    nop

    :pswitch_data_26
    .packed-switch 0x64
        :pswitch_d
        :pswitch_12
    .end packed-switch
.end method

.method protected ap()V
    .registers 1

    .prologue
    .line 246
    return-void
.end method

.method protected aq()V
    .registers 2

    .prologue
    .line 250
    iget-object v0, p0, LaM/aT;->F:LaM/aU;

    invoke-virtual {v0}, LaM/aU;->a()Lcom/google/googlenav/ui/view/android/bb;

    move-result-object v0

    iput-object v0, p0, LaM/aT;->r:Lcom/google/googlenav/ui/view/android/bb;

    .line 251
    return-void
.end method

.method public au()Z
    .registers 2

    .prologue
    .line 484
    const/4 v0, 0x0

    return v0
.end method

.method public av()I
    .registers 2

    .prologue
    .line 547
    const/4 v0, 0x5

    return v0
.end method

.method public b(Lcom/google/googlenav/E;)I
    .registers 3
    .parameter

    .prologue
    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .registers 3

    .prologue
    .line 349
    invoke-virtual {p0}, LaM/aT;->f()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->H()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, LaM/aT;->v:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public bd()Ljava/lang/String;
    .registers 3

    .prologue
    .line 522
    invoke-virtual {p0}, LaM/aT;->f()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->v()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 523
    invoke-virtual {p0}, LaM/aT;->f()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->G()Ljava/lang/String;

    move-result-object v0

    .line 526
    :goto_12
    return-object v0

    .line 525
    :cond_13
    iget-object v0, p0, LaM/aT;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->c()I

    move-result v0

    .line 526
    iget-object v1, p0, LaM/aT;->f:Lcom/google/googlenav/F;

    invoke-interface {v1, v0}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->G()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public be()Lcom/google/googlenav/ai;
    .registers 3

    .prologue
    .line 533
    iget v0, p0, LaM/aT;->v:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_14

    .line 534
    invoke-virtual {p0}, LaM/aT;->f()Lcom/google/googlenav/aW;

    move-result-object v0

    .line 535
    invoke-virtual {v0}, Lcom/google/googlenav/aW;->I()[Lcom/google/googlenav/ai;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->J()I

    move-result v0

    aget-object v0, v1, v0

    .line 537
    :goto_13
    return-object v0

    :cond_14
    iget-object v0, p0, LaM/aT;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->e()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    goto :goto_13
.end method

.method public bf()Lad/b;
    .registers 2

    .prologue
    .line 542
    iget-object v0, p0, LaM/aT;->u:Lad/b;

    return-object v0
.end method

.method public bg()Z
    .registers 2

    .prologue
    .line 551
    iget-boolean v0, p0, LaM/aT;->y:Z

    return v0
.end method

.method public bh()I
    .registers 2

    .prologue
    .line 556
    iget v0, p0, LaM/aT;->E:I

    return v0
.end method

.method public c(Lcom/google/googlenav/E;)I
    .registers 3
    .parameter

    .prologue
    .line 342
    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 354
    iget v0, p0, LaM/aT;->v:I

    if-eqz v0, :cond_9

    iget v0, p0, LaM/aT;->v:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b

    :cond_9
    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public e()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 359
    iget v1, p0, LaM/aT;->v:I

    if-eq v1, v0, :cond_f

    iget v1, p0, LaM/aT;->v:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_f

    iget v1, p0, LaM/aT;->v:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public f()Lcom/google/googlenav/aW;
    .registers 2

    .prologue
    .line 366
    iget-object v0, p0, LaM/aT;->f:Lcom/google/googlenav/F;

    check-cast v0, Lcom/google/googlenav/aW;

    return-object v0
.end method

.method protected f(LZ/a;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 509
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_d

    .line 510
    invoke-virtual {p0}, LaM/aT;->h()V

    .line 515
    :cond_c
    :goto_c
    return v0

    :cond_d
    invoke-virtual {p1}, LZ/a;->e()C

    move-result v1

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_c

    const/4 v0, 0x0

    goto :goto_c
.end method

.method public h()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 494
    invoke-direct {p0, v1}, LaM/aT;->k(Z)V

    .line 497
    invoke-virtual {p0}, LaM/aT;->e()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, LaM/aT;->z:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, LaM/aT;->y:Z

    if-nez v0, :cond_18

    .line 498
    iput-boolean v1, p0, LaM/aT;->y:Z

    .line 499
    invoke-direct {p0}, LaM/aT;->bi()V

    .line 505
    :goto_17
    return-void

    .line 503
    :cond_18
    iget-object v0, p0, LaM/aT;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/v;->a(LaM/i;)V

    .line 504
    iget-object v0, p0, LaM/aT;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/v;->c(LaM/aT;)V

    goto :goto_17
.end method

.method protected i()LaO/a;
    .registers 2

    .prologue
    .line 489
    new-instance v0, LaO/h;

    invoke-direct {v0, p0}, LaO/h;-><init>(LaM/i;)V

    return-object v0
.end method

.method protected m()V
    .registers 1

    .prologue
    .line 266
    return-void
.end method

.method protected n()V
    .registers 1

    .prologue
    .line 261
    return-void
.end method
