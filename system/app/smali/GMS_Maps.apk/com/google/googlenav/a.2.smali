.class public Lcom/google/googlenav/A;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static i:J


# instance fields
.field private final a:Lcom/google/googlenav/J;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lad/k;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:J

.field private final j:Lan/h;

.field private final k:Lat/u;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 140
    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/google/googlenav/A;->i:J

    return-void
.end method

.method public constructor <init>(Lan/h;Lat/u;Lcom/google/googlenav/J;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/A;->l:Z

    .line 154
    iput-object p1, p0, Lcom/google/googlenav/A;->j:Lan/h;

    .line 155
    iput-object p2, p0, Lcom/google/googlenav/A;->k:Lat/u;

    .line 156
    iput-object p3, p0, Lcom/google/googlenav/A;->a:Lcom/google/googlenav/J;

    .line 157
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/A;)Lcom/google/googlenav/J;
    .registers 2
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/googlenav/A;->a:Lcom/google/googlenav/J;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/A;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/googlenav/A;->b:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lad/y;)V
    .registers 3
    .parameter

    .prologue
    .line 351
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lad/y;->c()Z

    move-result v0

    if-nez v0, :cond_9

    .line 358
    :cond_8
    :goto_8
    return-void

    .line 355
    :cond_9
    const-string v0, "locationMemory"

    invoke-static {v0}, Lad/z;->b(Ljava/lang/String;)Lad/z;

    move-result-object v0

    .line 357
    invoke-virtual {v0, p1}, Lad/z;->a(Lad/y;)Z

    goto :goto_8
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lat/B;II)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 597
    new-instance v0, Lcom/google/googlenav/ai;

    const/16 v6, 0xa

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ai;-><init>(Lat/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    .line 599
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/googlenav/ai;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iget-object v2, p0, Lcom/google/googlenav/A;->k:Lat/u;

    invoke-virtual {v2}, Lat/u;->f()Lat/H;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v0

    invoke-virtual {v2, v0}, Lat/H;->a(Lat/B;)Lat/H;

    move-result-object v0

    const/4 v2, -0x1

    if-ne p6, v2, :cond_29

    iget-object v2, p0, Lcom/google/googlenav/A;->k:Lat/u;

    invoke-virtual {v2}, Lat/u;->a()I

    move-result p6

    :cond_29
    const/4 v2, -0x1

    if-ne p7, v2, :cond_32

    iget-object v2, p0, Lcom/google/googlenav/A;->k:Lat/u;

    invoke-virtual {v2}, Lat/u;->b()I

    move-result p7

    :cond_32
    invoke-static {v1, v0, p6, p7}, Lcom/google/googlenav/aW;->a([Lcom/google/googlenav/ai;Lat/H;II)Lcom/google/googlenav/aW;

    move-result-object v0

    .line 603
    iget-object v1, p0, Lcom/google/googlenav/A;->a:Lcom/google/googlenav/J;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/google/googlenav/J;->a(Lcom/google/googlenav/aW;Z)LaM/bj;

    move-result-object v0

    .line 604
    invoke-virtual {v0}, LaM/bj;->bK()V

    .line 605
    return-void
.end method

.method private static b(Lad/k;)Z
    .registers 2
    .parameter

    .prologue
    .line 392
    invoke-interface {p0}, Lad/k;->aq()Lad/y;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Lad/k;->aq()Lad/y;

    move-result-object v0

    invoke-virtual {v0}, Lad/y;->q()Z

    move-result v0

    if-nez v0, :cond_20

    :cond_10
    invoke-interface {p0}, Lad/k;->as()Lad/y;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Lad/k;->as()Lad/y;

    move-result-object v0

    invoke-virtual {v0}, Lad/y;->q()Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private e()Lat/H;
    .registers 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/googlenav/A;->j:Lan/h;

    invoke-interface {v0}, Lan/h;->m()Lan/s;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lan/s;->a()Lat/B;

    move-result-object v0

    .line 228
    :goto_c
    iget-object v1, p0, Lcom/google/googlenav/A;->k:Lat/u;

    invoke-virtual {v1}, Lat/u;->f()Lat/H;

    move-result-object v1

    invoke-virtual {v1, v0}, Lat/H;->a(Lat/B;)Lat/H;

    move-result-object v0

    .line 229
    iget-boolean v1, p0, Lcom/google/googlenav/A;->l:Z

    if-eqz v1, :cond_2a

    .line 233
    iget-object v1, p0, Lcom/google/googlenav/A;->a:Lcom/google/googlenav/J;

    invoke-interface {v1}, Lcom/google/googlenav/J;->p()Lcom/google/googlenav/ui/ap;

    move-result-object v1

    .line 234
    invoke-virtual {v1}, Lcom/google/googlenav/ui/ap;->k()Lat/Y;

    move-result-object v1

    .line 235
    if-eqz v1, :cond_2d

    .line 236
    invoke-virtual {v0, v1}, Lat/H;->a(Lat/Y;)Lat/H;

    move-result-object v0

    .line 244
    :cond_2a
    :goto_2a
    return-object v0

    .line 227
    :cond_2b
    const/4 v0, 0x0

    goto :goto_c

    .line 241
    :cond_2d
    const/16 v1, 0x16

    invoke-static {v1}, Lat/Y;->b(I)Lat/Y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lat/H;->a(Lat/Y;)Lat/H;

    move-result-object v0

    goto :goto_2a
.end method

.method private f()V
    .registers 6

    .prologue
    const/16 v4, 0x5f4

    .line 401
    iget-object v1, p0, Lcom/google/googlenav/A;->d:Lad/k;

    .line 403
    invoke-virtual {p0}, Lcom/google/googlenav/A;->c()V

    .line 404
    iget-object v0, p0, Lcom/google/googlenav/A;->a:Lcom/google/googlenav/J;

    invoke-interface {v0}, Lcom/google/googlenav/J;->a()V

    .line 406
    const/4 v0, 0x0

    .line 407
    iget-object v2, p0, Lcom/google/googlenav/A;->j:Lan/h;

    invoke-interface {v2}, Lan/h;->h()Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/google/googlenav/A;->j:Lan/h;

    invoke-interface {v2}, Lan/h;->g()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 408
    iget-object v2, p0, Lcom/google/googlenav/A;->j:Lan/h;

    invoke-interface {v2}, Lan/h;->m()Lan/s;

    move-result-object v2

    .line 409
    if-eqz v2, :cond_37

    invoke-virtual {v2}, Lan/s;->a()Lat/B;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 410
    invoke-virtual {v2}, Lan/s;->a()Lat/B;

    move-result-object v0

    invoke-virtual {v2}, Lan/s;->b()Ln/B;

    move-result-object v2

    invoke-static {v0, v2}, Lad/y;->b(Lat/B;Ln/B;)Lad/y;

    move-result-object v0

    .line 415
    :cond_37
    invoke-interface {v1}, Lad/k;->aq()Lad/y;

    move-result-object v2

    if-eqz v2, :cond_72

    invoke-interface {v1}, Lad/k;->aq()Lad/y;

    move-result-object v2

    invoke-virtual {v2}, Lad/y;->q()Z

    move-result v2

    if-eqz v2, :cond_72

    .line 416
    if-nez v0, :cond_52

    .line 418
    iget-object v2, p0, Lcom/google/googlenav/A;->a:Lcom/google/googlenav/J;

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/googlenav/J;->a(Ljava/lang/String;)V

    .line 421
    :cond_52
    invoke-interface {v1, v0}, Lad/k;->a(Lad/y;)V

    .line 434
    :cond_55
    :goto_55
    instance-of v0, v1, Lad/b;

    if-nez v0, :cond_99

    .line 435
    new-instance v0, Lad/s;

    invoke-direct {v0, v1}, Lad/s;-><init>(Lad/k;)V

    .line 439
    :goto_5e
    invoke-interface {v0}, Lad/k;->aq()Lad/y;

    move-result-object v1

    if-eqz v1, :cond_6a

    invoke-interface {v0}, Lad/k;->as()Lad/y;

    move-result-object v1

    if-nez v1, :cond_91

    .line 440
    :cond_6a
    iget-object v1, p0, Lcom/google/googlenav/A;->a:Lcom/google/googlenav/J;

    check-cast v0, Lad/b;

    invoke-interface {v1, v0}, Lcom/google/googlenav/J;->c(Lad/b;)V

    .line 444
    :goto_71
    return-void

    .line 422
    :cond_72
    invoke-interface {v1}, Lad/k;->as()Lad/y;

    move-result-object v2

    if-eqz v2, :cond_55

    invoke-interface {v1}, Lad/k;->as()Lad/y;

    move-result-object v2

    invoke-virtual {v2}, Lad/y;->q()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 423
    if-nez v0, :cond_8d

    .line 425
    iget-object v2, p0, Lcom/google/googlenav/A;->a:Lcom/google/googlenav/J;

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/googlenav/J;->a(Ljava/lang/String;)V

    .line 428
    :cond_8d
    invoke-interface {v1, v0}, Lad/k;->b(Lad/y;)V

    goto :goto_55

    .line 442
    :cond_91
    iget-object v1, p0, Lcom/google/googlenav/A;->a:Lcom/google/googlenav/J;

    check-cast v0, Lad/b;

    invoke-interface {v1, v0}, Lcom/google/googlenav/J;->a(Lad/b;)V

    goto :goto_71

    :cond_99
    move-object v0, v1

    goto :goto_5e
.end method


# virtual methods
.method public a(Lad/k;)V
    .registers 8
    .parameter

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/google/googlenav/A;->c()V

    .line 369
    iput-object p1, p0, Lcom/google/googlenav/A;->d:Lad/k;

    .line 372
    invoke-interface {p1}, Lad/k;->aq()Lad/y;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/A;->a(Lad/y;)V

    .line 373
    invoke-interface {p1}, Lad/k;->as()Lad/y;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/A;->a(Lad/y;)V

    .line 377
    iget-object v0, p0, Lcom/google/googlenav/A;->j:Lan/h;

    invoke-interface {v0}, Lan/h;->h()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/googlenav/A;->j:Lan/h;

    invoke-interface {v0}, Lan/h;->g()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-static {p1}, Lcom/google/googlenav/A;->b(Lad/k;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 379
    :cond_29
    invoke-direct {p0}, Lcom/google/googlenav/A;->f()V

    .line 388
    :goto_2c
    return-void

    .line 384
    :cond_2d
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    sget-wide v2, Lcom/google/googlenav/A;->i:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/googlenav/A;->h:J

    .line 386
    iget-object v0, p0, Lcom/google/googlenav/A;->a:Lcom/google/googlenav/J;

    const/16 v1, 0x299

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/google/googlenav/ui/wizard/z;->a:Lcom/google/googlenav/ui/wizard/A;

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/googlenav/J;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;J)V

    goto :goto_2c
.end method

.method public a(Lcom/google/googlenav/ai;)V
    .registers 10
    .parameter

    .prologue
    const/4 v6, -0x1

    .line 503
    iget-object v0, p0, Lcom/google/googlenav/A;->f:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    .line 505
    if-eqz v0, :cond_21

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->E()Ljava/lang/String;

    move-result-object v2

    .line 507
    :goto_d
    if-eqz v0, :cond_24

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->F()Ljava/lang/String;

    move-result-object v3

    .line 508
    :goto_13
    iget-object v1, p0, Lcom/google/googlenav/A;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/googlenav/A;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v5

    move-object v0, p0

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/google/googlenav/A;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lat/B;II)V

    .line 510
    return-void

    .line 505
    :cond_21
    iget-object v2, p0, Lcom/google/googlenav/A;->f:Ljava/lang/String;

    goto :goto_d

    .line 507
    :cond_24
    const/4 v3, 0x0

    goto :goto_13
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/c;IIZZZ)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/A;->b:Ljava/lang/String;

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/A;->c:Ljava/lang/String;

    .line 269
    const/4 v0, -0x1

    if-ne p4, v0, :cond_c

    const/4 v0, -0x1

    if-eq p5, v0, :cond_5c

    .line 270
    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/A;->k:Lat/u;

    invoke-virtual {v0, p4, p5}, Lat/u;->d(II)V

    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/A;->l:Z

    .line 276
    :goto_14
    const/4 v0, 0x0

    .line 277
    invoke-virtual {p3}, Lcom/google/googlenav/c;->c()I

    move-result v1

    packed-switch v1, :pswitch_data_ec

    .line 333
    :cond_1c
    :goto_1c
    iget-object v1, p0, Lcom/google/googlenav/A;->b:Ljava/lang/String;

    if-nez v1, :cond_5b

    .line 334
    new-instance v1, Lcom/google/googlenav/bd;

    invoke-direct {v1}, Lcom/google/googlenav/bd;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/googlenav/bd;->a(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bd;->a(Lat/H;)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/google/googlenav/bd;->a(Z)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0, p7}, Lcom/google/googlenav/bd;->c(Z)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0, p8}, Lcom/google/googlenav/bd;->f(Z)Lcom/google/googlenav/bd;

    move-result-object v0

    .line 341
    invoke-static {p2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 342
    const/16 v1, 0x4f5

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bd;->c(Ljava/lang/String;)Lcom/google/googlenav/bd;

    .line 345
    :cond_52
    iget-object v1, p0, Lcom/google/googlenav/A;->a:Lcom/google/googlenav/J;

    invoke-virtual {v0}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/googlenav/J;->a(Lcom/google/googlenav/bc;)V

    .line 347
    :cond_5b
    return-void

    .line 273
    :cond_5c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/A;->l:Z

    goto :goto_14

    .line 280
    :pswitch_60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " loc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/googlenav/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1c

    .line 284
    :pswitch_7c
    iget-object v1, p0, Lcom/google/googlenav/A;->k:Lat/u;

    invoke-virtual {p3}, Lcom/google/googlenav/c;->b()Lat/B;

    move-result-object v2

    invoke-virtual {v1, v2}, Lat/u;->c(Lat/B;)V

    goto :goto_1c

    .line 288
    :pswitch_86
    iget-object v1, p0, Lcom/google/googlenav/A;->j:Lan/h;

    invoke-interface {v1}, Lan/h;->h()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/google/googlenav/A;->j:Lan/h;

    invoke-interface {v1}, Lan/h;->e()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 290
    iget-object v1, p0, Lcom/google/googlenav/A;->j:Lan/h;

    invoke-interface {v1}, Lan/h;->g()Z

    move-result v1

    if-eqz v1, :cond_e9

    .line 291
    invoke-direct {p0}, Lcom/google/googlenav/A;->e()Lat/H;

    move-result-object v6

    .line 296
    :goto_a2
    if-eqz v6, :cond_aa

    invoke-virtual {v6}, Lat/H;->a()Lat/B;

    move-result-object v0

    if-nez v0, :cond_e6

    .line 298
    :cond_aa
    iput-object p1, p0, Lcom/google/googlenav/A;->b:Ljava/lang/String;

    .line 299
    iput-object p2, p0, Lcom/google/googlenav/A;->c:Ljava/lang/String;

    .line 300
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    sget-wide v2, Lcom/google/googlenav/A;->i:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/googlenav/A;->h:J

    .line 305
    new-instance v2, Lcom/google/googlenav/B;

    invoke-direct {v2, p0}, Lcom/google/googlenav/B;-><init>(Lcom/google/googlenav/A;)V

    .line 313
    const/16 v0, 0x4fd

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 316
    iget-object v0, p0, Lcom/google/googlenav/A;->a:Lcom/google/googlenav/J;

    new-instance v3, Lcom/google/googlenav/ui/wizard/A;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/googlenav/ui/wizard/A;-><init>(ILjava/lang/Object;)V

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/googlenav/J;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;J)V

    move-object v0, v6

    .line 319
    goto/16 :goto_1c

    :cond_e6
    move-object v0, v6

    goto/16 :goto_1c

    :cond_e9
    move-object v6, v0

    goto :goto_a2

    .line 277
    nop

    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_60
        :pswitch_7c
        :pswitch_86
    .end packed-switch
.end method

.method public a()Z
    .registers 5

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/googlenav/A;->e:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-wide v0, p0, Lcom/google/googlenav/A;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public a(Lcom/google/googlenav/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 529
    if-ne p5, v1, :cond_7

    if-eq p6, v1, :cond_c

    .line 531
    :cond_7
    iget-object v1, p0, Lcom/google/googlenav/A;->k:Lat/u;

    invoke-virtual {v1, p5, p6}, Lat/u;->d(II)V

    .line 534
    :cond_c
    invoke-virtual {p1}, Lcom/google/googlenav/c;->c()I

    move-result v1

    packed-switch v1, :pswitch_data_86

    .line 587
    :cond_13
    :goto_13
    :pswitch_13
    return v0

    .line 537
    :pswitch_14
    iput-object p2, p0, Lcom/google/googlenav/A;->e:Ljava/lang/String;

    .line 538
    iput-object p3, p0, Lcom/google/googlenav/A;->f:Ljava/lang/String;

    .line 539
    iput-object p4, p0, Lcom/google/googlenav/A;->g:Ljava/lang/String;

    .line 540
    iget-object v0, p0, Lcom/google/googlenav/A;->a:Lcom/google/googlenav/J;

    new-instance v1, Lcom/google/googlenav/bd;

    invoke-direct {v1}, Lcom/google/googlenav/bd;-><init>()V

    invoke-virtual {p1}, Lcom/google/googlenav/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->a(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/google/googlenav/bd;->a(I)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->a(Lcom/google/googlenav/bc;)V

    move v0, v8

    .line 544
    goto :goto_13

    .line 547
    :pswitch_36
    invoke-virtual {p1}, Lcom/google/googlenav/c;->b()Lat/B;

    move-result-object v5

    .line 585
    :goto_3a
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/googlenav/A;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lat/B;II)V

    .line 586
    invoke-virtual {p0}, Lcom/google/googlenav/A;->d()V

    move v0, v8

    .line 587
    goto :goto_13

    .line 551
    :pswitch_49
    iget-object v0, p0, Lcom/google/googlenav/A;->k:Lat/u;

    invoke-virtual {v0}, Lat/u;->c()Lat/B;

    move-result-object v5

    goto :goto_3a

    .line 555
    :pswitch_50
    iget-object v1, p0, Lcom/google/googlenav/A;->j:Lan/h;

    invoke-interface {v1}, Lan/h;->h()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 556
    iget-object v0, p0, Lcom/google/googlenav/A;->j:Lan/h;

    invoke-interface {v0}, Lan/h;->m()Lan/s;

    move-result-object v0

    .line 557
    iget-object v1, p0, Lcom/google/googlenav/A;->j:Lan/h;

    invoke-interface {v1}, Lan/h;->g()Z

    move-result v1

    if-eqz v1, :cond_6d

    if-eqz v0, :cond_6d

    .line 558
    invoke-virtual {v0}, Lan/s;->a()Lat/B;

    move-result-object v5

    goto :goto_3a

    .line 560
    :cond_6d
    iput-object p2, p0, Lcom/google/googlenav/A;->e:Ljava/lang/String;

    .line 561
    iput-object p3, p0, Lcom/google/googlenav/A;->f:Ljava/lang/String;

    .line 562
    iput-object p4, p0, Lcom/google/googlenav/A;->g:Ljava/lang/String;

    .line 563
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    sget-wide v2, Lcom/google/googlenav/A;->i:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/googlenav/A;->h:J

    move v0, v8

    .line 566
    goto :goto_13

    .line 534
    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_14
        :pswitch_36
        :pswitch_50
        :pswitch_49
        :pswitch_13
    .end packed-switch
.end method

.method public b()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 194
    iget-wide v2, p0, Lcom/google/googlenav/A;->h:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_73

    .line 195
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v2

    .line 196
    iget-object v4, p0, Lcom/google/googlenav/A;->j:Lan/h;

    invoke-interface {v4}, Lan/h;->g()Z

    move-result v4

    if-nez v4, :cond_24

    iget-wide v4, p0, Lcom/google/googlenav/A;->h:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_73

    .line 197
    :cond_24
    iget-object v2, p0, Lcom/google/googlenav/A;->b:Ljava/lang/String;

    if-eqz v2, :cond_6b

    .line 199
    iget-object v2, p0, Lcom/google/googlenav/A;->a:Lcom/google/googlenav/J;

    invoke-interface {v2}, Lcom/google/googlenav/J;->a()V

    .line 201
    new-instance v2, Lcom/google/googlenav/bd;

    invoke-direct {v2}, Lcom/google/googlenav/bd;-><init>()V

    .line 202
    iget-object v3, p0, Lcom/google/googlenav/A;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/googlenav/bd;->a(Ljava/lang/String;)Lcom/google/googlenav/bd;

    .line 203
    iget-object v3, p0, Lcom/google/googlenav/A;->c:Ljava/lang/String;

    invoke-static {v3}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_52

    .line 204
    const/16 v3, 0x4f5

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/String;

    iget-object v5, p0, Lcom/google/googlenav/A;->c:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/googlenav/bd;->c(Ljava/lang/String;)Lcom/google/googlenav/bd;

    .line 207
    :cond_52
    iget-object v1, p0, Lcom/google/googlenav/A;->j:Lan/h;

    invoke-interface {v1}, Lan/h;->g()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 208
    invoke-direct {p0}, Lcom/google/googlenav/A;->e()Lat/H;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/googlenav/bd;->a(Lat/H;)Lcom/google/googlenav/bd;

    .line 210
    :cond_61
    iget-object v1, p0, Lcom/google/googlenav/A;->a:Lcom/google/googlenav/J;

    invoke-virtual {v2}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/googlenav/J;->a(Lcom/google/googlenav/bc;)V

    .line 217
    :cond_6a
    :goto_6a
    return v0

    .line 211
    :cond_6b
    iget-object v1, p0, Lcom/google/googlenav/A;->d:Lad/k;

    if-eqz v1, :cond_6a

    .line 212
    invoke-direct {p0}, Lcom/google/googlenav/A;->f()V

    goto :goto_6a

    :cond_73
    move v0, v1

    .line 217
    goto :goto_6a
.end method

.method public c()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 612
    iput-object v0, p0, Lcom/google/googlenav/A;->b:Ljava/lang/String;

    .line 613
    iput-object v0, p0, Lcom/google/googlenav/A;->c:Ljava/lang/String;

    .line 614
    iput-object v0, p0, Lcom/google/googlenav/A;->d:Lad/k;

    .line 615
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/A;->h:J

    .line 616
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 624
    iput-object v0, p0, Lcom/google/googlenav/A;->f:Ljava/lang/String;

    .line 625
    iput-object v0, p0, Lcom/google/googlenav/A;->e:Ljava/lang/String;

    .line 626
    iput-object v0, p0, Lcom/google/googlenav/A;->g:Ljava/lang/String;

    .line 627
    return-void
.end method
