.class public LaM/y;
.super LaM/m;
.source "SourceFile"

# interfaces
.implements Lat/m;


# instance fields
.field protected B:Lat/k;

.field private C:Lcom/google/googlenav/layer/m;

.field private D:Z

.field private final E:Lcom/google/googlenav/layer/s;

.field private F:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lat/k;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, LaM/m;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;)V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, LaM/y;->D:Z

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, LaM/y;->F:Z

    .line 93
    iput-object p5, p0, LaM/y;->B:Lat/k;

    .line 94
    new-instance v0, Lcom/google/googlenav/layer/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/layer/s;-><init>(LaM/i;Lcom/google/googlenav/layer/m;)V

    iput-object v0, p0, LaM/y;->E:Lcom/google/googlenav/layer/s;

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/layer/m;Lat/k;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    new-instance v5, Lcom/google/googlenav/T;

    invoke-direct {v5, p5, p6, p2, p3}, Lcom/google/googlenav/T;-><init>(Lcom/google/googlenav/layer/m;Lat/o;Lat/p;Lat/u;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, LaM/m;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/F;)V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, LaM/y;->D:Z

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, LaM/y;->F:Z

    .line 105
    iput-object p5, p0, LaM/y;->C:Lcom/google/googlenav/layer/m;

    .line 106
    iput-object p6, p0, LaM/y;->B:Lat/k;

    .line 107
    new-instance v0, Lcom/google/googlenav/layer/s;

    invoke-direct {v0, p0, p5}, Lcom/google/googlenav/layer/s;-><init>(LaM/i;Lcom/google/googlenav/layer/m;)V

    iput-object v0, p0, LaM/y;->E:Lcom/google/googlenav/layer/s;

    .line 108
    return-void
.end method

.method protected constructor <init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/layer/m;Lat/o;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    new-instance v5, Lcom/google/googlenav/T;

    invoke-direct {v5, p5, p6, p2, p3}, Lcom/google/googlenav/T;-><init>(Lcom/google/googlenav/layer/m;Lat/o;Lat/p;Lat/u;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, LaM/m;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/F;)V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, LaM/y;->D:Z

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, LaM/y;->F:Z

    .line 119
    iput-object p5, p0, LaM/y;->C:Lcom/google/googlenav/layer/m;

    .line 120
    new-instance v0, Lcom/google/googlenav/layer/s;

    invoke-direct {v0, p0, p5}, Lcom/google/googlenav/layer/s;-><init>(LaM/i;Lcom/google/googlenav/layer/m;)V

    iput-object v0, p0, LaM/y;->E:Lcom/google/googlenav/layer/s;

    .line 121
    return-void
.end method

.method private bI()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 255
    iget-boolean v1, p0, LaM/y;->D:Z

    if-eqz v1, :cond_1e

    .line 256
    invoke-virtual {p0}, LaM/y;->f()Lcom/google/googlenav/T;

    move-result-object v1

    .line 257
    invoke-virtual {v1}, Lcom/google/googlenav/T;->a()V

    .line 258
    invoke-virtual {p0}, LaM/y;->e()V

    .line 261
    iput-boolean v0, p0, LaM/y;->D:Z

    .line 264
    invoke-virtual {v1}, Lcom/google/googlenav/T;->e()Lcom/google/googlenav/E;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 265
    invoke-virtual {p0}, LaM/y;->Z()V

    .line 267
    :cond_1a
    invoke-virtual {p0}, LaM/y;->R()V

    .line 268
    const/4 v0, 0x1

    .line 270
    :cond_1e
    return v0
.end method


# virtual methods
.method protected O()Z
    .registers 2

    .prologue
    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method protected P()Z
    .registers 2

    .prologue
    .line 385
    const/4 v0, 0x0

    return v0
.end method

.method protected X()Z
    .registers 3

    .prologue
    .line 231
    invoke-super {p0}, LaM/m;->X()Z

    .line 235
    invoke-virtual {p0}, LaM/y;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 236
    invoke-direct {p0}, LaM/y;->bI()Z

    move-result v0

    .line 243
    :goto_d
    return v0

    .line 237
    :cond_e
    iget-object v0, p0, LaM/y;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->d()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 241
    invoke-virtual {p0}, LaM/y;->f()Lcom/google/googlenav/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/T;->b()V

    .line 243
    :cond_1e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public Y()V
    .registers 2

    .prologue
    .line 154
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaM/y;->e(Z)V

    .line 155
    invoke-super {p0}, LaM/m;->Y()V

    .line 156
    return-void
.end method

.method protected a(Lcom/google/googlenav/F;)V
    .registers 2
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, LaM/y;->f:Lcom/google/googlenav/F;

    .line 188
    return-void
.end method

.method public a(Lcom/google/googlenav/R;Lcom/google/googlenav/E;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 548
    invoke-super {p0, p1, p2, p3}, LaM/m;->a(Lcom/google/googlenav/R;Lcom/google/googlenav/E;I)V

    .line 551
    invoke-virtual {p0}, LaM/y;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/R;->a(Ljava/lang/String;)Lcom/google/googlenav/R;

    .line 552
    return-void
.end method

.method protected a(Lcom/google/googlenav/ui/u;Lcom/google/googlenav/E;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 284
    move-object v0, p2

    check-cast v0, Lcom/google/googlenav/W;

    .line 285
    invoke-virtual {v0}, Lcom/google/googlenav/W;->n()I

    move-result v0

    .line 286
    const/4 v1, -0x1

    if-eq v0, v1, :cond_40

    .line 287
    const/4 v1, 0x4

    .line 288
    invoke-interface {p2}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v2

    .line 289
    if-eqz v2, :cond_40

    .line 290
    iget-object v3, p0, LaM/y;->c:Lat/p;

    iget-object v4, p0, LaM/y;->e:Landroid/graphics/Point;

    invoke-virtual {v3, v2, v4}, Lat/p;->a(Lat/B;Landroid/graphics/Point;)V

    .line 294
    iget-object v2, p0, LaM/y;->C:Lcom/google/googlenav/layer/m;

    invoke-virtual {v2, v0}, Lcom/google/googlenav/layer/m;->a(I)Lcom/google/googlenav/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/e;->a()LS/f;

    move-result-object v0

    .line 295
    invoke-virtual {p1}, Lcom/google/googlenav/ui/u;->b()LS/e;

    move-result-object v2

    iget-object v3, p0, LaM/y;->e:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-interface {v0}, LS/f;->a()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget-object v4, p0, LaM/y;->e:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-interface {v0}, LS/f;->b()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int/2addr v1, v4

    invoke-interface {v2, v0, v3, v1}, LS/e;->a(LS/f;II)V

    .line 300
    :cond_40
    return-void
.end method

.method protected a(Ljava/io/DataOutput;)V
    .registers 3
    .parameter

    .prologue
    .line 428
    iget-object v0, p0, LaM/y;->C:Lcom/google/googlenav/layer/m;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->o()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 429
    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Ljava/io/DataOutput;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 430
    return-void
.end method

.method public a(Ljava/lang/String;[Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, LaM/y;->C:Lcom/google/googlenav/layer/m;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 132
    iget-object v0, p0, LaM/y;->C:Lcom/google/googlenav/layer/m;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/layer/m;->a([Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 134
    :cond_11
    return-void
.end method

.method public a(Ljava/util/Vector;Lat/B;I)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 314
    invoke-virtual {p0}, LaM/y;->a()Z

    move-result v0

    if-nez v0, :cond_9

    .line 315
    invoke-direct {p0}, LaM/y;->bI()Z

    .line 320
    :cond_9
    invoke-virtual {p0}, LaM/y;->f()Lcom/google/googlenav/T;

    move-result-object v1

    .line 321
    invoke-virtual {v1, p2}, Lcom/google/googlenav/T;->a(Lat/B;)Ljava/util/Enumeration;

    move-result-object v2

    .line 322
    if-nez v2, :cond_14

    .line 336
    :cond_13
    return-void

    .line 325
    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 326
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/W;

    .line 327
    invoke-virtual {p0, v0, p2}, LaM/y;->a(Lcom/google/googlenav/E;Lat/B;)J

    move-result-wide v3

    .line 328
    int-to-long v5, p3

    cmp-long v5, v3, v5

    if-gez v5, :cond_14

    .line 329
    invoke-virtual {v0}, Lcom/google/googlenav/W;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/googlenav/T;->a(Ljava/lang/String;)I

    move-result v5

    .line 330
    invoke-static {p0, v0, v5, v3, v4}, LaM/ai;->a(LaM/i;Lcom/google/googlenav/E;IJ)LaM/ai;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_14
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 250
    iget-object v0, p0, LaM/y;->C:Lcom/google/googlenav/layer/m;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->n()Z

    move-result v0

    return v0
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 463
    packed-switch p1, :pswitch_data_48

    .line 480
    invoke-super {p0, p1, p2, p3}, LaM/m;->a(IILjava/lang/Object;)Z

    move-result v0

    :goto_8
    return v0

    .line 465
    :pswitch_9
    invoke-virtual {p0}, LaM/y;->bt()Lcom/google/googlenav/ai;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/W;

    .line 467
    const/4 v2, 0x1

    :try_start_10
    invoke-virtual {v0, v2}, Lcom/google/googlenav/W;->a(Z)V

    .line 468
    iget-object v2, p0, LaM/y;->E:Lcom/google/googlenav/layer/s;

    invoke-virtual {v2, v0}, Lcom/google/googlenav/layer/s;->a(Lcom/google/googlenav/ai;)Lac/g;

    .line 469
    const/4 v2, 0x1

    iput-boolean v2, p0, LaM/y;->w:Z
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_1b} :catch_1d

    :goto_1b
    move v0, v1

    .line 478
    goto :goto_8

    .line 470
    :catch_1d
    move-exception v2

    .line 474
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UI - null placemark "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " at "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, LaM/y;->ar()Lcom/google/googlenav/F;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/googlenav/F;->c()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b

    .line 463
    nop

    :pswitch_data_48
    .packed-switch 0x1f8
        :pswitch_9
    .end packed-switch
.end method

.method protected a(Ljava/io/DataInput;)Z
    .registers 7
    .parameter

    .prologue
    .line 450
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/dX;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 452
    new-instance v1, Lcom/google/googlenav/layer/m;

    invoke-direct {v1, v0}, Lcom/google/googlenav/layer/m;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    iput-object v1, p0, LaM/y;->C:Lcom/google/googlenav/layer/m;

    .line 454
    iget-object v0, p0, LaM/y;->C:Lcom/google/googlenav/layer/m;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->i()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_20

    .line 455
    new-instance v0, Lat/k;

    invoke-direct {v0}, Lat/k;-><init>()V

    iput-object v0, p0, LaM/y;->B:Lat/k;

    .line 457
    :cond_20
    new-instance v0, Lcom/google/googlenav/T;

    iget-object v1, p0, LaM/y;->C:Lcom/google/googlenav/layer/m;

    iget-object v2, p0, LaM/y;->B:Lat/k;

    iget-object v3, p0, LaM/y;->c:Lat/p;

    iget-object v4, p0, LaM/y;->d:Lat/u;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlenav/T;-><init>(Lcom/google/googlenav/layer/m;Lat/o;Lat/p;Lat/u;)V

    iput-object v0, p0, LaM/y;->f:Lcom/google/googlenav/F;

    .line 458
    const/4 v0, 0x1

    return v0
.end method

.method public aB()Z
    .registers 2

    .prologue
    .line 410
    const/4 v0, 0x1

    return v0
.end method

.method public aK()Ljava/lang/String;
    .registers 2

    .prologue
    .line 396
    iget-object v0, p0, LaM/y;->C:Lcom/google/googlenav/layer/m;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aL()LS/f;
    .registers 3

    .prologue
    .line 401
    iget-object v0, p0, LaM/y;->C:Lcom/google/googlenav/layer/m;

    iget-object v1, p0, LaM/y;->C:Lcom/google/googlenav/layer/m;

    invoke-virtual {v1}, Lcom/google/googlenav/layer/m;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/m;->a(I)Lcom/google/googlenav/e;

    move-result-object v0

    .line 402
    if-nez v0, :cond_1b

    .line 403
    iget-object v0, p0, LaM/y;->a:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->p()LS/g;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/bn;->aj:C

    invoke-interface {v0, v1}, LS/g;->e(C)LS/f;

    move-result-object v0

    .line 405
    :goto_1a
    return-object v0

    :cond_1b
    invoke-virtual {v0}, Lcom/google/googlenav/e;->a()LS/f;

    move-result-object v0

    goto :goto_1a
.end method

.method public aM()Z
    .registers 2

    .prologue
    .line 420
    const/4 v0, 0x1

    return v0
.end method

.method protected aP()V
    .registers 3

    .prologue
    .line 434
    invoke-virtual {p0}, LaM/y;->bF()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 435
    invoke-super {p0}, LaM/m;->aP()V

    .line 441
    :goto_9
    return-void

    .line 437
    :cond_a
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    .line 438
    invoke-static {p0}, LaM/am;->l(LaM/i;)Ljava/lang/String;

    move-result-object v1

    .line 439
    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z

    goto :goto_9
.end method

.method public aT()Z
    .registers 3

    .prologue
    .line 502
    iget-object v0, p0, LaM/y;->B:Lat/k;

    invoke-virtual {v0, p0}, Lat/k;->a(Lat/m;)V

    .line 503
    iget-object v0, p0, LaM/y;->c:Lat/p;

    iget-object v1, p0, LaM/y;->B:Lat/k;

    invoke-virtual {v0, v1}, Lat/p;->a(Lat/k;)V

    .line 504
    invoke-virtual {p0}, LaM/y;->bE()V

    .line 505
    invoke-static {p0}, Lcom/google/googlenav/common/j;->a(Lcom/google/googlenav/common/h;)V

    .line 506
    const/4 v0, 0x1

    return v0
.end method

.method public aU()V
    .registers 3

    .prologue
    .line 516
    invoke-static {p0}, Lcom/google/googlenav/common/j;->c(Lcom/google/googlenav/common/h;)V

    .line 518
    iget-object v0, p0, LaM/y;->B:Lat/k;

    if-eqz v0, :cond_1b

    .line 519
    iget-object v0, p0, LaM/y;->B:Lat/k;

    invoke-virtual {v0, p0}, Lat/k;->b(Lat/m;)V

    .line 520
    iget-object v0, p0, LaM/y;->B:Lat/k;

    invoke-virtual {v0}, Lat/k;->b()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 521
    iget-object v0, p0, LaM/y;->c:Lat/p;

    iget-object v1, p0, LaM/y;->B:Lat/k;

    invoke-virtual {v0, v1}, Lat/p;->b(Lat/k;)V

    .line 528
    :cond_1b
    invoke-virtual {p0}, LaM/y;->f()Lcom/google/googlenav/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/T;->g()V

    .line 529
    invoke-super {p0}, LaM/m;->aU()V

    .line 530
    return-void
.end method

.method protected am()V
    .registers 5

    .prologue
    .line 160
    invoke-virtual {p0}, LaM/y;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/F;->e()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    .line 161
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->h()Z

    move-result v1

    if-eqz v1, :cond_25

    move-object v1, v0

    .line 162
    check-cast v1, Lcom/google/googlenav/W;

    .line 163
    const/16 v2, 0x43

    const-string v3, "o"

    invoke-virtual {v1}, Lcom/google/googlenav/W;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, LaM/y;->E:Lcom/google/googlenav/layer/s;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/layer/s;->b(Lcom/google/googlenav/ai;)Lac/g;

    .line 168
    :cond_25
    return-void
.end method

.method protected aq()V
    .registers 1

    .prologue
    .line 512
    return-void
.end method

.method public av()I
    .registers 2

    .prologue
    .line 415
    const/4 v0, 0x6

    return v0
.end method

.method public b(Lat/B;)I
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, -0x1

    .line 349
    invoke-virtual {p0}, LaM/y;->a()Z

    move-result v0

    if-nez v0, :cond_b

    .line 350
    invoke-direct {p0}, LaM/y;->bI()Z

    .line 354
    :cond_b
    iget-object v0, p0, LaM/y;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->c()I

    move-result v0

    .line 355
    if-ltz v0, :cond_20

    iget-object v2, p0, LaM/y;->f:Lcom/google/googlenav/F;

    invoke-interface {v2, v0}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v2

    invoke-virtual {p0, v2, p1, v5}, LaM/y;->a(Lcom/google/googlenav/E;Lat/B;LS/e;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 375
    :goto_1f
    return v0

    .line 361
    :cond_20
    invoke-virtual {p0}, LaM/y;->f()Lcom/google/googlenav/T;

    move-result-object v2

    .line 362
    invoke-virtual {v2, p1}, Lcom/google/googlenav/T;->a(Lat/B;)Ljava/util/Enumeration;

    move-result-object v3

    .line 363
    if-nez v3, :cond_2c

    move v0, v1

    .line 364
    goto :goto_1f

    .line 366
    :cond_2c
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 367
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/W;

    .line 368
    invoke-virtual {p0, v0, p1, v5}, LaM/y;->a(Lcom/google/googlenav/E;Lat/B;LS/e;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 369
    invoke-virtual {v0}, Lcom/google/googlenav/W;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/T;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_1f

    :cond_47
    move v0, v1

    .line 375
    goto :goto_1f
.end method

.method public b(Lcom/google/googlenav/E;)I
    .registers 3
    .parameter

    .prologue
    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public b()Lcom/google/googlenav/layer/m;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, LaM/y;->C:Lcom/google/googlenav/layer/m;

    return-object v0
.end method

.method protected bE()V
    .registers 3

    .prologue
    .line 488
    invoke-virtual {p0}, LaM/y;->f()Lcom/google/googlenav/T;

    move-result-object v0

    new-instance v1, LaM/z;

    invoke-direct {v1, p0}, LaM/z;-><init>(LaM/y;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/T;->a(Lcom/google/googlenav/V;)V

    .line 498
    return-void
.end method

.method public bF()Z
    .registers 2

    .prologue
    .line 576
    iget-boolean v0, p0, LaM/y;->F:Z

    return v0
.end method

.method public bG()V
    .registers 2

    .prologue
    .line 583
    iget-boolean v0, p0, LaM/y;->F:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, LaM/y;->k(Z)V

    .line 584
    return-void

    .line 583
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public bH()Z
    .registers 2

    .prologue
    .line 594
    const/4 v0, 0x1

    return v0
.end method

.method protected bw()Z
    .registers 3

    .prologue
    .line 172
    iget-object v0, p0, LaM/y;->C:Lcom/google/googlenav/layer/m;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->h()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public c(Lcom/google/googlenav/E;)I
    .registers 3
    .parameter

    .prologue
    .line 226
    invoke-virtual {p0, p1}, LaM/y;->f(Lcom/google/googlenav/E;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    rsub-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public c()V
    .registers 2

    .prologue
    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, LaM/y;->D:Z

    .line 139
    return-void
.end method

.method public d(Lcom/google/googlenav/ui/u;)V
    .registers 3
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, LaM/y;->C:Lcom/google/googlenav/layer/m;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->n()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 213
    invoke-super {p0, p1}, LaM/m;->d(Lcom/google/googlenav/ui/u;)V

    .line 215
    :cond_b
    return-void
.end method

.method protected e()V
    .registers 1

    .prologue
    .line 280
    return-void
.end method

.method protected e(Lcom/google/googlenav/ui/u;)V
    .registers 3
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, LaM/y;->C:Lcom/google/googlenav/layer/m;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->n()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 205
    invoke-super {p0, p1}, LaM/m;->e(Lcom/google/googlenav/ui/u;)V

    .line 207
    :cond_b
    return-void
.end method

.method public f()Lcom/google/googlenav/T;
    .registers 2

    .prologue
    .line 379
    iget-object v0, p0, LaM/y;->f:Lcom/google/googlenav/F;

    check-cast v0, Lcom/google/googlenav/T;

    return-object v0
.end method

.method protected f(LZ/a;)Z
    .registers 5
    .parameter

    .prologue
    .line 192
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1f

    invoke-virtual {p0}, LaM/y;->ag()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 193
    iget-object v0, p0, LaM/y;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->c()I

    move-result v0

    const-string v1, "s"

    const-string v2, "k"

    invoke-virtual {p0, v0, v1, v2}, LaM/y;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, LaM/y;->m()V

    .line 196
    const/4 v0, 0x1

    .line 198
    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public g(I)Z
    .registers 3
    .parameter

    .prologue
    .line 534
    packed-switch p1, :pswitch_data_16

    .line 541
    invoke-super {p0, p1}, LaM/m;->g(I)Z

    move-result v0

    :goto_7
    return v0

    .line 538
    :pswitch_8
    invoke-virtual {p0}, LaM/y;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->k()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_7

    :cond_14
    const/4 v0, 0x0

    goto :goto_7

    .line 534
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method protected h(Lcom/google/googlenav/ai;)Z
    .registers 3
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, LaM/y;->E:Lcom/google/googlenav/layer/s;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/layer/s;->a(Lcom/google/googlenav/ai;)Lac/g;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected i()LaO/a;
    .registers 2

    .prologue
    .line 177
    new-instance v0, LaO/c;

    invoke-direct {v0, p0}, LaO/c;-><init>(LaM/i;)V

    return-object v0
.end method

.method protected k(Z)V
    .registers 2
    .parameter

    .prologue
    .line 603
    iput-boolean p1, p0, LaM/y;->F:Z

    .line 604
    return-void
.end method

.method protected l()V
    .registers 1

    .prologue
    .line 183
    return-void
.end method
