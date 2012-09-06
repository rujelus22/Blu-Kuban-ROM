.class public abstract LaM/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/common/h;
.implements Lcom/google/googlenav/common/util/n;
.implements Lcom/google/googlenav/ui/ad;
.implements Lcom/google/googlenav/ui/g;
.implements Lcom/google/googlenav/ui/view/c;
.implements Ln/A;


# instance fields
.field private A:LaM/j;

.field private B:I

.field private C:B

.field private D:Lcom/google/googlenav/settings/e;

.field protected final a:Lcom/google/googlenav/ui/bn;

.field protected final b:Lcom/google/googlenav/ui/v;

.field protected final c:Lat/p;

.field protected final d:Lat/u;

.field protected final e:Landroid/graphics/Point;

.field protected f:Lcom/google/googlenav/F;

.field protected g:Lcom/google/googlenav/ui/view/d;

.field protected h:Lcom/google/googlenav/E;

.field protected final i:Lcom/google/googlenav/ui/ac;

.field protected j:Lcom/google/googlenav/ui/view/d;

.field protected k:Lcom/google/googlenav/ui/view/d;

.field protected l:Lcom/google/googlenav/ui/view/d;

.field protected m:Lcom/google/googlenav/ui/view/d;

.field protected n:LS/f;

.field protected o:Z

.field protected p:Z

.field protected q:[Ljava/lang/Boolean;

.field protected r:Lcom/google/googlenav/ui/view/android/bb;

.field protected s:LaM/w;

.field protected t:LaO/a;

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:LaM/k;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/F;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, LaM/i;->e:Landroid/graphics/Point;

    .line 217
    iput v3, p0, LaM/i;->u:I

    .line 226
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Boolean;

    iput-object v1, p0, LaM/i;->q:[Ljava/lang/Boolean;

    .line 232
    iput-boolean v2, p0, LaM/i;->v:Z

    .line 238
    iput-boolean v2, p0, LaM/i;->w:Z

    .line 248
    iput-boolean v4, p0, LaM/i;->x:Z

    .line 256
    iput-boolean v2, p0, LaM/i;->y:Z

    .line 327
    iput v3, p0, LaM/i;->B:I

    .line 334
    iput-byte v4, p0, LaM/i;->C:B

    .line 341
    iput-object v0, p0, LaM/i;->D:Lcom/google/googlenav/settings/e;

    .line 350
    iput-object p1, p0, LaM/i;->b:Lcom/google/googlenav/ui/v;

    .line 351
    iput-object p2, p0, LaM/i;->c:Lat/p;

    .line 352
    iput-object p3, p0, LaM/i;->d:Lat/u;

    .line 353
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v1

    iput-object v1, p0, LaM/i;->a:Lcom/google/googlenav/ui/bn;

    .line 354
    iput-object p4, p0, LaM/i;->i:Lcom/google/googlenav/ui/ac;

    .line 356
    invoke-static {}, LaM/al;->a()LaM/al;

    move-result-object v1

    .line 358
    if-eqz p1, :cond_45

    invoke-virtual {p1}, Lcom/google/googlenav/ui/v;->k()Lah/o;

    move-result-object v2

    if-eqz v2, :cond_45

    .line 359
    invoke-virtual {p1}, Lcom/google/googlenav/ui/v;->k()Lah/o;

    move-result-object v0

    invoke-virtual {v0}, Lah/o;->b()Lah/s;

    move-result-object v0

    .line 361
    :cond_45
    invoke-virtual {v1, p0, v0}, LaM/al;->a(LaM/i;Lah/s;)LaM/w;

    move-result-object v0

    iput-object v0, p0, LaM/i;->s:LaM/w;

    .line 362
    invoke-virtual {p0}, LaM/i;->i()LaO/a;

    move-result-object v0

    iput-object v0, p0, LaM/i;->t:LaO/a;

    .line 366
    iput-object p5, p0, LaM/i;->f:Lcom/google/googlenav/F;

    .line 367
    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    .line 1326
    iget-object v0, p0, LaM/i;->k:Lcom/google/googlenav/ui/view/d;

    if-eqz v0, :cond_d

    .line 1327
    iget-object v0, p0, LaM/i;->k:Lcom/google/googlenav/ui/view/d;

    invoke-virtual {p0}, LaM/i;->M()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/d;->a(Z)V

    .line 1329
    :cond_d
    iget-object v0, p0, LaM/i;->j:Lcom/google/googlenav/ui/view/d;

    if-eqz v0, :cond_1a

    .line 1330
    iget-object v0, p0, LaM/i;->j:Lcom/google/googlenav/ui/view/d;

    invoke-virtual {p0}, LaM/i;->N()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/d;->a(Z)V

    .line 1332
    :cond_1a
    return-void
.end method

.method private a(Lcom/google/googlenav/ui/u;III)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1675
    if-nez p1, :cond_3

    .line 1679
    :goto_2
    return-void

    .line 1678
    :cond_3
    invoke-virtual {p0, p4}, LaM/i;->c(I)Lcom/google/googlenav/e;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/google/googlenav/e;->a(Lcom/google/googlenav/e;Lcom/google/googlenav/ui/u;II)V

    goto :goto_2
.end method

.method private b()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1478
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/googlenav/ui/view/e;->a(ILcom/google/googlenav/ui/view/c;Ljava/lang/String;)Lcom/google/googlenav/ui/view/d;

    move-result-object v0

    iput-object v0, p0, LaM/i;->k:Lcom/google/googlenav/ui/view/d;

    .line 1481
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/googlenav/ui/view/e;->a(ILcom/google/googlenav/ui/view/c;Ljava/lang/String;)Lcom/google/googlenav/ui/view/d;

    move-result-object v0

    iput-object v0, p0, LaM/i;->j:Lcom/google/googlenav/ui/view/d;

    .line 1484
    return-void
.end method

.method private b(Lat/B;I)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2451
    invoke-direct {p0, p2}, LaM/i;->h(I)I

    move-result v2

    .line 2452
    iget-object v3, p0, LaM/i;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/v;->ad()Lcom/google/googlenav/j;

    move-result-object v3

    invoke-virtual {v3, v2, p1, v0}, Lcom/google/googlenav/j;->a(ILat/B;Z)Z

    move-result v3

    if-nez v3, :cond_13

    .line 2467
    :cond_12
    :goto_12
    return v0

    .line 2456
    :cond_13
    invoke-static {}, Lan/l;->p()Lan/h;

    move-result-object v3

    if-eqz v3, :cond_23

    invoke-static {}, Lan/l;->p()Lan/h;

    move-result-object v3

    invoke-interface {v3}, Lan/h;->g()Z

    move-result v3

    if-nez v3, :cond_25

    :cond_23
    move v0, v1

    .line 2459
    goto :goto_12

    .line 2461
    :cond_25
    invoke-static {}, Lan/l;->p()Lan/h;

    move-result-object v3

    invoke-interface {v3}, Lan/h;->n()Lan/s;

    move-result-object v3

    .line 2462
    if-eqz v3, :cond_3f

    iget-object v4, p0, LaM/i;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v4}, Lcom/google/googlenav/ui/v;->ad()Lcom/google/googlenav/j;

    move-result-object v4

    invoke-virtual {v3}, Lan/s;->a()Lat/B;

    move-result-object v3

    invoke-virtual {v4, v2, v3, v0}, Lcom/google/googlenav/j;->a(ILat/B;Z)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_3f
    move v0, v1

    .line 2465
    goto :goto_12
.end method

.method private b(Lat/B;Lat/B;I)Z
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2503
    if-ne p3, v0, :cond_5

    .line 2517
    :cond_4
    :goto_4
    return v0

    .line 2510
    :cond_5
    invoke-direct {p0, p3}, LaM/i;->h(I)I

    move-result v2

    .line 2511
    iget-object v3, p0, LaM/i;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/v;->ad()Lcom/google/googlenav/j;

    move-result-object v3

    invoke-virtual {v3, v2, p1, v1}, Lcom/google/googlenav/j;->a(ILat/B;Z)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, p0, LaM/i;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/v;->ad()Lcom/google/googlenav/j;

    move-result-object v3

    invoke-virtual {v3, v2, p2, v1}, Lcom/google/googlenav/j;->a(ILat/B;Z)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_21
    move v0, v1

    .line 2517
    goto :goto_4
.end method

.method private b(Lcom/google/googlenav/E;Lat/B;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2170
    if-eqz p1, :cond_11

    invoke-interface {p1}, Lcom/google/googlenav/E;->d()I

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, LaM/i;->i:Lcom/google/googlenav/ui/ac;

    invoke-interface {v0}, Lcom/google/googlenav/ui/ac;->d()Lcom/google/googlenav/ui/aR;

    move-result-object v0

    if-nez v0, :cond_13

    :cond_11
    move v0, v1

    .line 2197
    :goto_12
    return v0

    .line 2176
    :cond_13
    check-cast p1, Lcom/google/googlenav/ai;

    .line 2177
    iget-object v0, p0, LaM/i;->d:Lat/u;

    invoke-virtual {v0}, Lat/u;->d()Lat/Y;

    move-result-object v2

    .line 2183
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->D()Lat/g;

    move-result-object v0

    .line 2184
    if-nez v0, :cond_23

    move v0, v1

    .line 2185
    goto :goto_12

    .line 2187
    :cond_23
    invoke-interface {v0}, Lat/g;->a()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3b

    .line 2188
    iget-object v1, p0, LaM/i;->i:Lcom/google/googlenav/ui/ac;

    invoke-interface {v1}, Lcom/google/googlenav/ui/ac;->d()Lcom/google/googlenav/ui/aR;

    move-result-object v1

    check-cast v0, Lat/M;

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/ui/aR;->a(Lcom/google/googlenav/ui/aH;Lat/Y;)[J

    move-result-object v0

    .line 2190
    invoke-static {v0, p2, v2}, Lat/M;->a([JLat/B;Lat/Y;)Z

    move-result v0

    goto :goto_12

    .line 2191
    :cond_3b
    invoke-interface {v0}, Lat/g;->a()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_53

    .line 2192
    iget-object v1, p0, LaM/i;->i:Lcom/google/googlenav/ui/ac;

    invoke-interface {v1}, Lcom/google/googlenav/ui/ac;->d()Lcom/google/googlenav/ui/aR;

    move-result-object v1

    check-cast v0, Lat/N;

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/ui/aR;->a(Lcom/google/googlenav/ui/aH;Lat/Y;)[J

    move-result-object v0

    .line 2194
    invoke-static {v0, p2, v2}, Lat/N;->b([JLat/B;Lat/Y;)Z

    move-result v0

    goto :goto_12

    :cond_53
    move v0, v1

    .line 2197
    goto :goto_12
.end method

.method private bd()V
    .registers 2

    .prologue
    .line 2842
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2854
    :cond_a
    :goto_a
    return-void

    .line 2846
    :cond_b
    invoke-virtual {p0}, LaM/i;->ai()Z

    move-result v0

    if-nez v0, :cond_15

    .line 2847
    invoke-virtual {p0}, LaM/i;->aY()Z

    goto :goto_a

    .line 2848
    :cond_15
    invoke-virtual {p0}, LaM/i;->af()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2849
    invoke-virtual {p0}, LaM/i;->W()V

    .line 2850
    invoke-virtual {p0}, LaM/i;->aY()Z

    goto :goto_a

    .line 2851
    :cond_22
    invoke-virtual {p0}, LaM/i;->ae()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2852
    invoke-virtual {p0}, LaM/i;->W()V

    goto :goto_a
.end method

.method private c()V
    .registers 4

    .prologue
    .line 1508
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1509
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/googlenav/ui/view/e;->a(ILcom/google/googlenav/ui/view/c;Ljava/lang/String;)Lcom/google/googlenav/ui/view/d;

    move-result-object v0

    iput-object v0, p0, LaM/i;->m:Lcom/google/googlenav/ui/view/d;

    .line 1512
    :cond_12
    return-void
.end method

.method private e()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1515
    iget-object v0, p0, LaM/i;->k:Lcom/google/googlenav/ui/view/d;

    if-eqz v0, :cond_c

    .line 1516
    iget-object v0, p0, LaM/i;->k:Lcom/google/googlenav/ui/view/d;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/d;->c()V

    .line 1517
    iput-object v1, p0, LaM/i;->k:Lcom/google/googlenav/ui/view/d;

    .line 1519
    :cond_c
    iget-object v0, p0, LaM/i;->j:Lcom/google/googlenav/ui/view/d;

    if-eqz v0, :cond_17

    .line 1520
    iget-object v0, p0, LaM/i;->j:Lcom/google/googlenav/ui/view/d;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/d;->c()V

    .line 1521
    iput-object v1, p0, LaM/i;->j:Lcom/google/googlenav/ui/view/d;

    .line 1523
    :cond_17
    return-void
.end method

.method private f()V
    .registers 2

    .prologue
    .line 1533
    iget-object v0, p0, LaM/i;->m:Lcom/google/googlenav/ui/view/d;

    if-eqz v0, :cond_c

    .line 1534
    iget-object v0, p0, LaM/i;->m:Lcom/google/googlenav/ui/view/d;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/d;->c()V

    .line 1535
    const/4 v0, 0x0

    iput-object v0, p0, LaM/i;->m:Lcom/google/googlenav/ui/view/d;

    .line 1537
    :cond_c
    return-void
.end method

.method private f(Lcom/google/googlenav/ui/u;)V
    .registers 3
    .parameter

    .prologue
    .line 1311
    if-nez p1, :cond_3

    .line 1323
    :cond_2
    :goto_2
    return-void

    .line 1314
    :cond_3
    invoke-virtual {p0}, LaM/i;->O()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1315
    invoke-direct {p0, p1}, LaM/i;->i(Lcom/google/googlenav/ui/u;)V

    .line 1317
    :cond_c
    invoke-virtual {p0}, LaM/i;->P()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1318
    invoke-direct {p0, p1}, LaM/i;->g(Lcom/google/googlenav/ui/u;)V

    .line 1320
    :cond_15
    invoke-virtual {p0}, LaM/i;->Q()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1321
    invoke-direct {p0, p1}, LaM/i;->h(Lcom/google/googlenav/ui/u;)V

    goto :goto_2
.end method

.method private g(Lcom/google/googlenav/ui/u;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1360
    iget-object v0, p0, LaM/i;->e:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 1362
    iget-object v0, p0, LaM/i;->l:Lcom/google/googlenav/ui/view/d;

    if-eqz v0, :cond_17

    .line 1363
    iget-object v0, p0, LaM/i;->l:Lcom/google/googlenav/ui/view/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/d;->a(Z)V

    .line 1364
    iget-object v0, p0, LaM/i;->l:Lcom/google/googlenav/ui/view/d;

    iget-object v1, p0, LaM/i;->e:Landroid/graphics/Point;

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/ui/view/d;->a(Landroid/graphics/Point;Lcom/google/googlenav/ui/u;)V

    .line 1366
    :cond_17
    return-void
.end method

.method private g(Lcom/google/googlenav/E;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1658
    invoke-interface {p1}, Lcom/google/googlenav/E;->d()I

    move-result v1

    if-eqz v1, :cond_8

    .line 1663
    :cond_7
    :goto_7
    return v0

    .line 1662
    :cond_8
    check-cast p1, Lcom/google/googlenav/ai;

    .line 1663
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->bo()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->ab()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private h(I)I
    .registers 3
    .parameter

    .prologue
    .line 2521
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 2522
    const/4 v0, 0x3

    .line 2526
    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x1

    goto :goto_4
.end method

.method private h(Lcom/google/googlenav/ui/u;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1369
    iget-object v0, p0, LaM/i;->e:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 1371
    iget-object v0, p0, LaM/i;->m:Lcom/google/googlenav/ui/view/d;

    if-eqz v0, :cond_17

    .line 1372
    iget-object v0, p0, LaM/i;->m:Lcom/google/googlenav/ui/view/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/d;->a(Z)V

    .line 1373
    iget-object v0, p0, LaM/i;->m:Lcom/google/googlenav/ui/view/d;

    iget-object v1, p0, LaM/i;->e:Landroid/graphics/Point;

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/ui/view/d;->a(Landroid/graphics/Point;Lcom/google/googlenav/ui/u;)V

    .line 1375
    :cond_17
    return-void
.end method

.method private i(Lcom/google/googlenav/ui/u;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1378
    iget-object v0, p0, LaM/i;->e:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 1379
    iget-object v0, p0, LaM/i;->k:Lcom/google/googlenav/ui/view/d;

    if-eqz v0, :cond_1a

    .line 1380
    iget-object v0, p0, LaM/i;->k:Lcom/google/googlenav/ui/view/d;

    invoke-virtual {p0}, LaM/i;->M()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/d;->a(Z)V

    .line 1381
    iget-object v0, p0, LaM/i;->k:Lcom/google/googlenav/ui/view/d;

    iget-object v1, p0, LaM/i;->e:Landroid/graphics/Point;

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/ui/view/d;->a(Landroid/graphics/Point;Lcom/google/googlenav/ui/u;)V

    .line 1383
    :cond_1a
    iget-object v0, p0, LaM/i;->j:Lcom/google/googlenav/ui/view/d;

    if-eqz v0, :cond_2e

    .line 1384
    iget-object v0, p0, LaM/i;->j:Lcom/google/googlenav/ui/view/d;

    invoke-virtual {p0}, LaM/i;->N()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/d;->a(Z)V

    .line 1385
    iget-object v0, p0, LaM/i;->j:Lcom/google/googlenav/ui/view/d;

    iget-object v1, p0, LaM/i;->e:Landroid/graphics/Point;

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/ui/view/d;->a(Landroid/graphics/Point;Lcom/google/googlenav/ui/u;)V

    .line 1387
    :cond_2e
    return-void
.end method


# virtual methods
.method protected A()V
    .registers 2

    .prologue
    .line 1150
    iget-object v0, p0, LaM/i;->r:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_9

    .line 1151
    iget-object v0, p0, LaM/i;->r:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 1153
    :cond_9
    return-void
.end method

.method protected B()V
    .registers 2

    .prologue
    .line 1160
    iget-object v0, p0, LaM/i;->r:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_9

    .line 1161
    iget-object v0, p0, LaM/i;->r:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 1163
    :cond_9
    return-void
.end method

.method protected C()V
    .registers 4

    .prologue
    .line 1170
    iget-boolean v0, p0, LaM/i;->o:Z

    if-nez v0, :cond_5

    .line 1214
    :cond_4
    :goto_4
    return-void

    .line 1176
    :cond_5
    invoke-virtual {p0}, LaM/i;->P()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1177
    invoke-virtual {p0}, LaM/i;->S()V

    .line 1182
    :goto_e
    iget-object v0, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->d()B

    move-result v0

    packed-switch v0, :pswitch_data_6e

    .line 1212
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v2}, Lcom/google/googlenav/F;->d()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1179
    :cond_36
    invoke-virtual {p0}, LaM/i;->V()V

    goto :goto_e

    .line 1186
    :pswitch_3a
    invoke-virtual {p0}, LaM/i;->r()V

    .line 1187
    invoke-virtual {p0}, LaM/i;->al()V

    goto :goto_4

    .line 1192
    :pswitch_41
    invoke-virtual {p0}, LaM/i;->r()V

    .line 1193
    invoke-virtual {p0}, LaM/i;->an()Z

    goto :goto_4

    .line 1196
    :pswitch_48
    invoke-virtual {p0}, LaM/i;->an()Z

    .line 1197
    invoke-virtual {p0}, LaM/i;->I()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1198
    invoke-virtual {p0}, LaM/i;->r()V

    .line 1199
    invoke-virtual {p0}, LaM/i;->ap()V

    .line 1200
    invoke-virtual {p0}, LaM/i;->A()V

    goto :goto_4

    .line 1204
    :pswitch_5b
    invoke-virtual {p0}, LaM/i;->an()Z

    .line 1205
    invoke-virtual {p0}, LaM/i;->H()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1206
    invoke-virtual {p0}, LaM/i;->r()V

    .line 1207
    invoke-virtual {p0}, LaM/i;->aq()V

    .line 1208
    invoke-virtual {p0}, LaM/i;->B()V

    goto :goto_4

    .line 1182
    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_41
        :pswitch_48
        :pswitch_5b
    .end packed-switch
.end method

.method protected D()V
    .registers 1

    .prologue
    .line 1218
    return-void
.end method

.method protected E()V
    .registers 1

    .prologue
    .line 1222
    return-void
.end method

.method public F()I
    .registers 3

    .prologue
    .line 1228
    invoke-virtual {p0}, LaM/i;->az()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 1230
    :cond_f
    const/4 v0, 0x0

    .line 1232
    :goto_10
    return v0

    :cond_11
    iget-object v0, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->c()I

    move-result v0

    invoke-virtual {p0}, LaM/i;->x()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_10
.end method

.method protected G()I
    .registers 2

    .prologue
    .line 1239
    const/4 v0, -0x1

    return v0
.end method

.method public H()Z
    .registers 2

    .prologue
    .line 1264
    iget-boolean v0, p0, LaM/i;->v:Z

    return v0
.end method

.method public I()Z
    .registers 2

    .prologue
    .line 1272
    iget-boolean v0, p0, LaM/i;->w:Z

    return v0
.end method

.method public J()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1290
    invoke-virtual {p0}, LaM/i;->ae()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1291
    invoke-virtual {p0, v1}, LaM/i;->d(Z)V

    .line 1292
    invoke-virtual {p0}, LaM/i;->l()V

    .line 1299
    :cond_d
    :goto_d
    return-void

    .line 1293
    :cond_e
    invoke-virtual {p0}, LaM/i;->af()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1294
    invoke-virtual {p0, v1}, LaM/i;->e(Z)V

    .line 1295
    invoke-virtual {p0}, LaM/i;->m()V

    goto :goto_d

    .line 1296
    :cond_1b
    invoke-virtual {p0}, LaM/i;->ag()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1297
    invoke-virtual {p0}, LaM/i;->n()V

    goto :goto_d
.end method

.method protected K()V
    .registers 4

    .prologue
    .line 1339
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->u()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1357
    :cond_a
    :goto_a
    return-void

    .line 1343
    :cond_b
    invoke-virtual {p0}, LaM/i;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/F;->e()Lcom/google/googlenav/E;

    move-result-object v0

    .line 1344
    if-eqz v0, :cond_a

    .line 1350
    invoke-interface {v0}, Lcom/google/googlenav/E;->b()Ljava/util/List;

    move-result-object v0

    .line 1354
    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 1355
    iget-object v1, p0, LaM/i;->d:Lat/u;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/B;

    invoke-virtual {v1, v0}, Lat/u;->a(Ln/B;)V

    goto :goto_a
.end method

.method public L()Z
    .registers 2

    .prologue
    .line 1393
    invoke-virtual {p0}, LaM/i;->O()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, LaM/i;->P()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, LaM/i;->Q()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public M()Z
    .registers 2

    .prologue
    .line 1401
    iget-object v0, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->c()I

    move-result v0

    if-gtz v0, :cond_10

    iget-object v0, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->d()B

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public N()Z
    .registers 3

    .prologue
    .line 1410
    iget-object v0, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->c()I

    move-result v0

    iget-object v1, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v1}, Lcom/google/googlenav/F;->f()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected O()Z
    .registers 2

    .prologue
    .line 1419
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ar()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, LaM/i;->ax()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected P()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1429
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->an()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1431
    invoke-virtual {p0}, LaM/i;->ai()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {p0}, LaM/i;->ax()Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v0, 0x1

    .line 1438
    :cond_18
    :goto_18
    return v0

    .line 1432
    :cond_19
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->ar()Z

    move-result v1

    if-nez v1, :cond_18

    .line 1438
    invoke-virtual {p0}, LaM/i;->ax()Z

    move-result v0

    goto :goto_18
.end method

.method protected Q()Z
    .registers 2

    .prologue
    .line 1447
    iget-object v0, p0, LaM/i;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->aw()Z

    move-result v0

    return v0
.end method

.method protected R()V
    .registers 2

    .prologue
    .line 1468
    iget-object v0, p0, LaM/i;->z:LaM/k;

    if-eqz v0, :cond_9

    .line 1469
    iget-object v0, p0, LaM/i;->z:LaM/k;

    invoke-interface {v0, p0}, LaM/k;->b(LaM/i;)V

    .line 1471
    :cond_9
    return-void
.end method

.method protected S()V
    .registers 4

    .prologue
    .line 1487
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v0

    invoke-virtual {p0}, LaM/i;->U()I

    move-result v1

    invoke-virtual {p0}, LaM/i;->T()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/googlenav/ui/view/e;->a(ILcom/google/googlenav/ui/view/c;Ljava/lang/String;)Lcom/google/googlenav/ui/view/d;

    move-result-object v0

    iput-object v0, p0, LaM/i;->l:Lcom/google/googlenav/ui/view/d;

    .line 1489
    return-void
.end method

.method protected T()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1496
    const/4 v0, 0x0

    return-object v0
.end method

.method protected U()I
    .registers 2

    .prologue
    .line 1504
    const/4 v0, 0x5

    return v0
.end method

.method protected V()V
    .registers 2

    .prologue
    .line 1526
    iget-object v0, p0, LaM/i;->l:Lcom/google/googlenav/ui/view/d;

    if-eqz v0, :cond_c

    .line 1527
    iget-object v0, p0, LaM/i;->l:Lcom/google/googlenav/ui/view/d;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/d;->c()V

    .line 1528
    const/4 v0, 0x0

    iput-object v0, p0, LaM/i;->l:Lcom/google/googlenav/ui/view/d;

    .line 1530
    :cond_c
    return-void
.end method

.method protected W()V
    .registers 3

    .prologue
    .line 1540
    iget-object v0, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->c()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    .line 1541
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaM/i;->b(B)V

    .line 1545
    :goto_d
    invoke-virtual {p0}, LaM/i;->r()V

    .line 1548
    invoke-virtual {p0}, LaM/i;->P()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1549
    invoke-virtual {p0}, LaM/i;->S()V

    .line 1553
    :goto_19
    return-void

    .line 1543
    :cond_1a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LaM/i;->b(B)V

    goto :goto_d

    .line 1551
    :cond_1f
    invoke-virtual {p0}, LaM/i;->V()V

    goto :goto_19
.end method

.method protected X()Z
    .registers 2

    .prologue
    .line 1564
    iget-object v0, p0, LaM/i;->t:LaO/a;

    invoke-virtual {v0}, LaO/a;->a()Z

    move-result v0

    return v0
.end method

.method public Y()V
    .registers 1

    .prologue
    .line 1752
    return-void
.end method

.method public Z()V
    .registers 2

    .prologue
    .line 1756
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LaM/i;->b(B)V

    .line 1757
    invoke-virtual {p0}, LaM/i;->al()V

    .line 1758
    invoke-virtual {p0}, LaM/i;->r()V

    .line 1759
    return-void
.end method

.method protected a(Lcom/google/googlenav/E;Lat/B;)J
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2051
    iget-object v0, p0, LaM/i;->d:Lat/u;

    invoke-virtual {v0}, Lat/u;->d()Lat/Y;

    move-result-object v3

    .line 2052
    invoke-interface {p1}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v0

    .line 2053
    if-eqz v0, :cond_50

    .line 2054
    invoke-virtual {p0, p1}, LaM/i;->d(Lcom/google/googlenav/E;)I

    move-result v1

    .line 2055
    invoke-virtual {p0, p1}, LaM/i;->e(Lcom/google/googlenav/E;)I

    move-result v4

    .line 2056
    invoke-virtual {p0, p1}, LaM/i;->f(Lcom/google/googlenav/E;)I

    move-result v5

    .line 2060
    packed-switch v1, :pswitch_data_56

    :pswitch_1c
    move v1, v2

    .line 2080
    :goto_1d
    if-nez v2, :cond_21

    if-eqz v1, :cond_25

    .line 2081
    :cond_21
    invoke-virtual {v0, v2, v1, v3}, Lat/B;->a(IILat/Y;)Lat/B;

    move-result-object v0

    .line 2083
    :cond_25
    invoke-virtual {p2, v0, v3}, Lat/B;->a(Lat/B;Lat/Y;)J

    move-result-wide v0

    .line 2085
    :goto_29
    return-wide v0

    .line 2062
    :pswitch_2a
    iget-object v1, p0, LaM/i;->a:Lcom/google/googlenav/ui/bn;

    invoke-interface {p1}, Lcom/google/googlenav/E;->c()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/bn;->b(B)I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v2, v1, 0x2

    .line 2063
    iget-object v1, p0, LaM/i;->a:Lcom/google/googlenav/ui/bn;

    invoke-interface {p1}, Lcom/google/googlenav/E;->c()B

    move-result v4

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/bn;->a(B)I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    goto :goto_1d

    .line 2067
    :pswitch_45
    neg-int v1, v5

    div-int/lit8 v1, v1, 0x2

    goto :goto_1d

    .line 2070
    :pswitch_49
    neg-int v1, v4

    div-int/lit8 v2, v1, 0x2

    .line 2071
    neg-int v1, v5

    div-int/lit8 v1, v1, 0x2

    goto :goto_1d

    .line 2085
    :cond_50
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_29

    .line 2060
    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_45
        :pswitch_1c
        :pswitch_49
        :pswitch_2a
    .end packed-switch
.end method

.method protected a(Lat/B;IILat/Y;)Lat/B;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 670
    mul-int v0, p2, p2

    mul-int v1, p3, p3

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 671
    int-to-double v2, p3

    int-to-double v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    iget-object v4, p0, LaM/i;->d:Lat/u;

    invoke-virtual {v4}, Lat/u;->e()F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x400921fb54442d18L

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 672
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v0

    double-to-int v4, v4

    .line 673
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 677
    if-nez v4, :cond_34

    if-eqz v0, :cond_38

    .line 678
    :cond_34
    invoke-virtual {p1, v4, v0, p4}, Lat/B;->a(IILat/Y;)Lat/B;

    move-result-object p1

    .line 680
    :cond_38
    return-object p1
.end method

.method public a(Lat/B;Lat/Y;)Lat/B;
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 733
    .line 735
    invoke-virtual {p0}, LaM/i;->aj()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 736
    invoke-virtual {p0}, LaM/i;->s()Lcom/google/googlenav/E;

    move-result-object v1

    .line 737
    iget-object v0, p0, LaM/i;->g:Lcom/google/googlenav/ui/view/d;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/d;->f()[I

    move-result-object v2

    .line 744
    iget-object v0, p0, LaM/i;->d:Lat/u;

    invoke-virtual {p0, v1}, LaM/i;->e(Lcom/google/googlenav/E;)I

    move-result v3

    invoke-virtual {p0, v1}, LaM/i;->f(Lcom/google/googlenav/E;)I

    move-result v4

    aget v5, v2, v9

    const/4 v6, 0x1

    aget v6, v2, v6

    invoke-virtual {p0, v1}, LaM/i;->b(Lcom/google/googlenav/E;)I

    move-result v7

    invoke-virtual {p0}, LaM/i;->q()I

    move-result v8

    invoke-virtual {p0, v9}, LaM/i;->c(Z)I

    move-result v9

    move-object v2, p1

    move-object v10, p2

    invoke-virtual/range {v0 .. v10}, Lat/u;->a(Lcom/google/googlenav/E;Lat/B;IIIIIIILat/Y;)Lat/B;

    move-result-object p1

    .line 749
    :cond_32
    return-object p1
.end method

.method protected a(Lcom/google/googlenav/E;)Lat/B;
    .registers 5
    .parameter

    .prologue
    .line 1887
    invoke-interface {p1}, Lcom/google/googlenav/E;->d()I

    move-result v0

    if-nez v0, :cond_26

    move-object v0, p1

    .line 1888
    check-cast v0, Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->D()Lat/g;

    move-result-object v0

    .line 1889
    if-nez v0, :cond_11

    .line 1890
    const/4 v0, 0x0

    .line 1900
    :goto_10
    return-object v0

    .line 1892
    :cond_11
    invoke-interface {v0}, Lat/g;->a()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1f

    invoke-interface {v0}, Lat/g;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_26

    .line 1896
    :cond_1f
    iget-object v0, p0, LaM/i;->d:Lat/u;

    invoke-virtual {v0}, Lat/u;->c()Lat/B;

    move-result-object v0

    goto :goto_10

    .line 1900
    :cond_26
    invoke-interface {p1}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v0

    goto :goto_10
.end method

.method protected a(Lcom/google/googlenav/E;Lat/Y;)Lat/B;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 657
    invoke-interface {p1}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v0

    .line 658
    if-eqz v0, :cond_1a

    .line 659
    invoke-virtual {p0, p1}, LaM/i;->b(Lcom/google/googlenav/E;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, LaM/i;->c(Z)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 660
    invoke-virtual {p0}, LaM/i;->p()I

    move-result v2

    .line 661
    invoke-virtual {p0, v0, v1, v2, p2}, LaM/i;->a(Lat/B;IILat/Y;)Lat/B;

    move-result-object v0

    .line 663
    :cond_1a
    return-object v0
.end method

.method public a(Lat/B;)Ln/B;
    .registers 3
    .parameter

    .prologue
    .line 3075
    iget-object v0, p0, LaM/i;->c:Lat/p;

    invoke-virtual {v0, p1}, Lat/p;->a(Lat/B;)Ln/B;

    move-result-object v0

    return-object v0
.end method

.method public final a(B)V
    .registers 2
    .parameter

    .prologue
    .line 517
    packed-switch p1, :pswitch_data_14

    .line 531
    :goto_3
    return-void

    .line 519
    :pswitch_4
    invoke-virtual {p0}, LaM/i;->l()V

    goto :goto_3

    .line 522
    :pswitch_8
    invoke-virtual {p0}, LaM/i;->m()V

    goto :goto_3

    .line 525
    :pswitch_c
    invoke-virtual {p0}, LaM/i;->n()V

    goto :goto_3

    .line 528
    :pswitch_10
    invoke-virtual {p0}, LaM/i;->Z()V

    goto :goto_3

    .line 517
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_4
    .end packed-switch
.end method

.method protected final a(ILjava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 575
    iget-object v0, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->e()Lcom/google/googlenav/E;

    .line 595
    iget-object v0, p0, LaM/i;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, LaM/i;->d(ILjava/lang/Object;)Lcom/google/googlenav/ui/wizard/A;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    .line 596
    invoke-virtual {p0}, LaM/i;->m()V

    .line 597
    return-void
.end method

.method protected a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2919
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, LaM/i;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2920
    return-void
.end method

.method protected a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2924
    invoke-virtual {p0}, LaM/i;->av()I

    move-result v0

    sparse-switch v0, :sswitch_data_7a

    .line 2951
    :goto_7
    return-void

    .line 2926
    :sswitch_8
    const-string v0, "0"

    .line 2943
    :goto_a
    const/16 v2, 0x12

    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "a="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "s="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x3

    if-nez p4, :cond_65

    const/4 v1, 0x0

    :goto_55
    aput-object v1, v3, v4

    invoke-static {v3}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 2929
    :sswitch_5f
    const-string v0, "dd"

    goto :goto_a

    .line 2936
    :sswitch_62
    const-string v0, "ct"

    goto :goto_a

    .line 2943
    :cond_65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "u="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_55

    .line 2924
    nop

    :sswitch_data_7a
    .sparse-switch
        0x0 -> :sswitch_8
        0x1 -> :sswitch_5f
        0x6 -> :sswitch_62
        0x7 -> :sswitch_62
        0xb -> :sswitch_62
        0x10 -> :sswitch_62
        0x1a -> :sswitch_62
    .end sparse-switch
.end method

.method public final a(LS/f;)V
    .registers 2
    .parameter

    .prologue
    .line 2616
    iput-object p1, p0, LaM/i;->n:LS/f;

    .line 2617
    return-void
.end method

.method public a(LaM/j;)V
    .registers 2
    .parameter

    .prologue
    .line 1474
    iput-object p1, p0, LaM/i;->A:LaM/j;

    .line 1475
    return-void
.end method

.method public a(LaM/k;)V
    .registers 2
    .parameter

    .prologue
    .line 1464
    iput-object p1, p0, LaM/i;->z:LaM/k;

    .line 1465
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter

    .prologue
    .line 1040
    return-void
.end method

.method public final a(Lcom/google/googlenav/E;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2911
    invoke-virtual {p0, p2}, LaM/i;->g(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2912
    new-instance v0, Lcom/google/googlenav/R;

    invoke-direct {v0}, Lcom/google/googlenav/R;-><init>()V

    .line 2913
    invoke-virtual {p0, v0, p1, p2}, LaM/i;->a(Lcom/google/googlenav/R;Lcom/google/googlenav/E;I)V

    .line 2914
    invoke-virtual {v0}, Lcom/google/googlenav/R;->a()V

    .line 2916
    :cond_11
    return-void
.end method

.method protected abstract a(Lcom/google/googlenav/F;)V
.end method

.method public a(Lcom/google/googlenav/R;Lcom/google/googlenav/E;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2967
    invoke-virtual {p0}, LaM/i;->av()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/R;->a(I)Lcom/google/googlenav/R;

    .line 2968
    invoke-virtual {p1, p3}, Lcom/google/googlenav/R;->b(I)Lcom/google/googlenav/R;

    .line 2969
    return-void
.end method

.method public a(Lcom/google/googlenav/ai;)V
    .registers 2
    .parameter

    .prologue
    .line 2010
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/u;)V
    .registers 3
    .parameter

    .prologue
    .line 1253
    iget-object v0, p0, LaM/i;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->A()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1254
    invoke-virtual {p0}, LaM/i;->ac()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1255
    invoke-virtual {p0, p1}, LaM/i;->c(Lcom/google/googlenav/ui/u;)V

    .line 1257
    :cond_11
    invoke-virtual {p0}, LaM/i;->aa()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1258
    invoke-direct {p0, p1}, LaM/i;->f(Lcom/google/googlenav/ui/u;)V

    .line 1261
    :cond_1a
    return-void
.end method

.method protected a(Lcom/google/googlenav/ui/u;Lcom/google/googlenav/E;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 1720
    invoke-interface {p2}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v0

    .line 1721
    if-eqz v0, :cond_22

    .line 1722
    iget-object v1, p0, LaM/i;->c:Lat/p;

    iget-object v2, p0, LaM/i;->e:Landroid/graphics/Point;

    invoke-virtual {v1, v0, v2}, Lat/p;->a(Lat/B;Landroid/graphics/Point;)V

    .line 1723
    iget-object v0, p0, LaM/i;->a:Lcom/google/googlenav/ui/bn;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/u;->b()LS/e;

    move-result-object v1

    invoke-interface {p2}, Lcom/google/googlenav/E;->c()B

    move-result v2

    iget-object v3, p0, LaM/i;->e:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, LaM/i;->e:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/googlenav/ui/bn;->a(LS/e;BII)V

    .line 1726
    :cond_22
    return-void
.end method

.method protected a(Lcom/google/googlenav/ui/u;Lcom/google/googlenav/F;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1699
    if-nez p1, :cond_3

    .line 1711
    :cond_2
    return-void

    .line 1704
    :cond_3
    const/4 v0, 0x0

    invoke-interface {p2}, Lcom/google/googlenav/F;->f()I

    move-result v1

    :goto_8
    if-ge v0, v1, :cond_2

    .line 1705
    invoke-interface {p2, v0}, Lcom/google/googlenav/F;->c(I)I

    move-result v2

    .line 1706
    invoke-interface {p2, v2}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v2

    .line 1707
    if-eqz v2, :cond_1d

    invoke-direct {p0, v2}, LaM/i;->g(Lcom/google/googlenav/E;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1708
    invoke-virtual {p0, p1, v2}, LaM/i;->a(Lcom/google/googlenav/ui/u;Lcom/google/googlenav/E;)V

    .line 1704
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method protected a(Ljava/io/DataOutput;)V
    .registers 2
    .parameter

    .prologue
    .line 2714
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    const/16 v2, 0xb

    .line 2895
    invoke-virtual {p0, v2}, LaM/i;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2896
    new-instance v0, Lcom/google/googlenav/R;

    invoke-direct {v0}, Lcom/google/googlenav/R;-><init>()V

    .line 2897
    invoke-virtual {p0}, LaM/i;->s()Lcom/google/googlenav/E;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, LaM/i;->a(Lcom/google/googlenav/R;Lcom/google/googlenav/E;I)V

    .line 2899
    invoke-virtual {v0, p1}, Lcom/google/googlenav/R;->c(Ljava/lang/String;)Lcom/google/googlenav/R;

    .line 2900
    invoke-virtual {v0}, Lcom/google/googlenav/R;->a()V

    .line 2902
    :cond_1a
    return-void
.end method

.method public a(Ljava/util/Vector;Lat/B;I)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2022
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v1}, Lcom/google/googlenav/F;->f()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 2023
    iget-object v1, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v1, v0}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v1

    .line 2024
    invoke-interface {v1}, Lcom/google/googlenav/E;->e()Z

    move-result v2

    if-nez v2, :cond_18

    .line 2022
    :cond_15
    :goto_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2030
    :cond_18
    invoke-virtual {p0, v1, p2}, LaM/i;->a(Lcom/google/googlenav/E;Lat/B;)J

    move-result-wide v2

    .line 2031
    int-to-long v4, p3

    cmp-long v4, v2, v4

    if-gez v4, :cond_15

    .line 2032
    invoke-static {p0, v1, v0, v2, v3}, LaM/ai;->a(LaM/i;Lcom/google/googlenav/E;IJ)LaM/ai;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_15

    .line 2035
    :cond_29
    return-void
.end method

.method protected a(ZLat/Y;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 628
    invoke-virtual {p0}, LaM/i;->s()Lcom/google/googlenav/E;

    move-result-object v0

    .line 629
    if-eqz v0, :cond_3d

    invoke-interface {v0}, Lcom/google/googlenav/E;->e()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 630
    invoke-virtual {p0, v0, p2}, LaM/i;->a(Lcom/google/googlenav/E;Lat/Y;)Lat/B;

    move-result-object v1

    .line 631
    if-eqz v1, :cond_1e

    .line 632
    iget-object v2, p0, LaM/i;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/v;->Q()V

    .line 633
    if-eqz p1, :cond_3e

    .line 634
    iget-object v2, p0, LaM/i;->d:Lat/u;

    invoke-virtual {v2, v1, p2}, Lat/u;->d(Lat/B;Lat/Y;)V

    .line 643
    :cond_1e
    :goto_1e
    sget-object v1, Lak/e;->a:Lak/e;

    invoke-virtual {v1}, Lak/e;->e()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 644
    invoke-interface {v0}, Lcom/google/googlenav/E;->d()I

    move-result v1

    if-nez v1, :cond_49

    .line 645
    check-cast v0, Lcom/google/googlenav/ai;

    .line 646
    invoke-static {}, Lcom/google/googlenav/intersectionexplorer/d;->c()Lcom/google/googlenav/intersectionexplorer/d;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/intersectionexplorer/d;->a(Lat/B;Ljava/lang/String;)V

    .line 654
    :cond_3d
    :goto_3d
    return-void

    .line 636
    :cond_3e
    iget-object v2, p0, LaM/i;->d:Lat/u;

    invoke-virtual {v2, v1}, Lat/u;->c(Lat/B;)V

    .line 637
    iget-object v1, p0, LaM/i;->d:Lat/u;

    invoke-virtual {v1, p2}, Lat/u;->a(Lat/Y;)V

    goto :goto_1e

    .line 649
    :cond_49
    invoke-static {}, Lcom/google/googlenav/intersectionexplorer/d;->c()Lcom/google/googlenav/intersectionexplorer/d;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/intersectionexplorer/d;->a(Lat/B;Ljava/lang/String;)V

    goto :goto_3d
.end method

.method protected final a(CI)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2868
    new-instance v0, LZ/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p1, p2, v1}, LZ/a;-><init>(IIIZ)V

    invoke-virtual {p0, v0}, LaM/i;->a(LZ/a;)Z

    move-result v0

    return v0
.end method

.method protected a(I)Z
    .registers 5
    .parameter

    .prologue
    .line 927
    iget-object v0, p0, LaM/i;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, LaM/am;->a(LaM/i;I)V

    .line 930
    const-string v0, "o"

    const-string v1, "c"

    invoke-virtual {p0}, LaM/i;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, LaM/i;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    const/4 v0, 0x1

    return v0
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 987
    packed-switch p1, :pswitch_data_20

    .line 1002
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 989
    :pswitch_5
    check-cast p3, Ljava/lang/String;

    .line 990
    invoke-static {p3}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 991
    const-string v0, "LaunchUrl"

    const-string v1, "missing url"

    invoke-static {v0, v1}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    :goto_14
    const/4 v0, 0x1

    goto :goto_4

    .line 994
    :cond_16
    invoke-virtual {p0, p3}, LaM/i;->a(Ljava/lang/String;)V

    .line 997
    iget-object v0, p0, LaM/i;->b:Lcom/google/googlenav/ui/v;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;Lcom/google/googlenav/ai;)V

    goto :goto_14

    .line 987
    :pswitch_data_20
    .packed-switch 0x5
        :pswitch_5
    .end packed-switch
.end method

.method public final a(LZ/a;)Z
    .registers 3
    .parameter

    .prologue
    .line 400
    invoke-virtual {p0, p1}, LaM/i;->f(LZ/a;)Z

    move-result v0

    return v0
.end method

.method public a(LZ/b;)Z
    .registers 3
    .parameter

    .prologue
    .line 838
    invoke-virtual {p0}, LaM/i;->aj()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, LaM/i;->a(LZ/b;Z)Z

    move-result v0

    return v0
.end method

.method protected a(LZ/b;Z)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 842
    .line 844
    invoke-virtual {p1}, LZ/b;->h()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {p1}, LZ/b;->f()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 848
    :cond_e
    iget-object v2, p0, LaM/i;->c:Lat/p;

    invoke-virtual {p1}, LZ/b;->k()I

    move-result v3

    invoke-virtual {p1}, LZ/b;->l()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lat/p;->b(II)Lat/B;

    move-result-object v2

    .line 849
    invoke-virtual {p0, v2}, LaM/i;->b(Lat/B;)I

    move-result v2

    .line 850
    if-ltz v2, :cond_27

    .line 851
    invoke-virtual {p0, v2}, LaM/i;->a(I)Z

    move-result v0

    .line 880
    :cond_26
    :goto_26
    return v0

    .line 853
    :cond_27
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/K;->an()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 858
    invoke-virtual {p0}, LaM/i;->al()V

    goto :goto_26

    :cond_35
    move v2, v1

    .line 868
    :goto_36
    if-eqz v2, :cond_26

    .line 870
    const/4 v2, -0x1

    const-string v3, "c"

    const-string v4, "c"

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, LaM/i;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    invoke-virtual {p0}, LaM/i;->Z()V

    .line 873
    if-eqz p2, :cond_26

    invoke-virtual {p1}, LZ/b;->j()Z

    move-result v2

    if-nez v2, :cond_26

    move v0, v1

    .line 877
    goto :goto_26

    .line 864
    :cond_4e
    invoke-virtual {p1}, LZ/b;->j()Z

    move-result v2

    if-eqz v2, :cond_56

    move v2, v1

    .line 865
    goto :goto_36

    :cond_56
    move v2, v0

    goto :goto_36
.end method

.method public a(LaM/i;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2297
    invoke-virtual {p0}, LaM/i;->av()I

    move-result v1

    invoke-virtual {p1}, LaM/i;->av()I

    move-result v2

    if-eq v1, v2, :cond_c

    .line 2313
    :cond_b
    :goto_b
    return v0

    .line 2303
    :cond_c
    invoke-virtual {p0}, LaM/i;->aB()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {p1}, LaM/i;->aB()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 2304
    invoke-virtual {p0}, LaM/i;->aK()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, LaM/i;->aK()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2306
    const/4 v0, 0x1

    goto :goto_b

    .line 2313
    :cond_38
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_b
.end method

.method public a(Lat/B;I)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 2422
    if-eqz p1, :cond_18

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ak()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, LaM/i;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->w()LaM/bK;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2424
    :cond_18
    const/4 v0, 0x0

    .line 2431
    :goto_19
    return v0

    .line 2426
    :cond_1a
    iget-object v0, p0, LaM/i;->q:[Ljava/lang/Boolean;

    aget-object v0, v0, p2

    if-nez v0, :cond_2d

    .line 2427
    iget-object v0, p0, LaM/i;->q:[Ljava/lang/Boolean;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2}, LaM/i;->b(Lat/B;I)Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v1, v0, p2

    .line 2431
    :cond_2d
    iget-object v0, p0, LaM/i;->q:[Ljava/lang/Boolean;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_19
.end method

.method public a(Lat/B;Lat/B;I)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2487
    if-eqz p1, :cond_1a

    if-eqz p2, :cond_1a

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ak()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, LaM/i;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->w()LaM/bK;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 2489
    :cond_1a
    const/4 v0, 0x0

    .line 2496
    :goto_1b
    return v0

    .line 2491
    :cond_1c
    iget-object v0, p0, LaM/i;->q:[Ljava/lang/Boolean;

    aget-object v0, v0, p3

    if-nez v0, :cond_2f

    .line 2492
    iget-object v0, p0, LaM/i;->q:[Ljava/lang/Boolean;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2, p3}, LaM/i;->b(Lat/B;Lat/B;I)Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v1, v0, p3

    .line 2496
    :cond_2f
    iget-object v0, p0, LaM/i;->q:[Ljava/lang/Boolean;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1b
.end method

.method public a(Lat/g;)Z
    .registers 3
    .parameter

    .prologue
    .line 887
    if-eqz p1, :cond_a

    invoke-static {}, Lcom/google/googlenav/K;->y()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected a(Lcom/google/googlenav/E;Lat/B;LS/e;)Z
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 2136
    if-nez p1, :cond_4

    .line 2159
    :cond_3
    :goto_3
    return v7

    .line 2142
    :cond_4
    invoke-interface {p1}, Lcom/google/googlenav/E;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2146
    invoke-interface {p1}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v2

    .line 2148
    invoke-virtual {p0, p1}, LaM/i;->d(Lcom/google/googlenav/E;)I

    move-result v3

    .line 2149
    invoke-virtual {p0, p1}, LaM/i;->e(Lcom/google/googlenav/E;)I

    move-result v4

    .line 2150
    invoke-virtual {p0, p1}, LaM/i;->f(Lcom/google/googlenav/E;)I

    move-result v5

    .line 2154
    const/4 v0, 0x3

    if-ne v3, v0, :cond_3e

    .line 2155
    iget-object v0, p0, LaM/i;->a:Lcom/google/googlenav/ui/bn;

    invoke-interface {p1}, Lcom/google/googlenav/E;->c()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bn;->b(B)I

    move-result v6

    .line 2156
    iget-object v0, p0, LaM/i;->a:Lcom/google/googlenav/ui/bn;

    invoke-interface {p1}, Lcom/google/googlenav/E;->c()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bn;->a(B)I

    move-result v7

    .line 2159
    :goto_31
    iget-object v0, p0, LaM/i;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    move-object v1, p2

    move-object v8, p3

    invoke-virtual/range {v0 .. v8}, LaM/am;->a(Lat/B;Lat/B;IIIIILS/e;)Z

    move-result v7

    goto :goto_3

    :cond_3e
    move v6, v7

    goto :goto_31
.end method

.method public a(Lcom/google/googlenav/ui/view/J;)Z
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0x36

    const/16 v3, 0x34

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 785
    iget-object v2, p0, LaM/i;->k:Lcom/google/googlenav/ui/view/d;

    if-eqz v2, :cond_18

    iget-object v2, p0, LaM/i;->k:Lcom/google/googlenav/ui/view/d;

    if-ne p1, v2, :cond_18

    .line 786
    new-instance v0, LZ/a;

    invoke-direct {v0, v3, v3, v1, v1}, LZ/a;-><init>(IIIZ)V

    invoke-virtual {p0, v0}, LaM/i;->e(LZ/a;)Z

    move-result v0

    .line 807
    :goto_17
    return v0

    .line 788
    :cond_18
    iget-object v2, p0, LaM/i;->j:Lcom/google/googlenav/ui/view/d;

    if-eqz v2, :cond_2a

    iget-object v2, p0, LaM/i;->j:Lcom/google/googlenav/ui/view/d;

    if-ne p1, v2, :cond_2a

    .line 789
    new-instance v0, LZ/a;

    invoke-direct {v0, v4, v4, v1, v1}, LZ/a;-><init>(IIIZ)V

    invoke-virtual {p0, v0}, LaM/i;->e(LZ/a;)Z

    move-result v0

    goto :goto_17

    .line 791
    :cond_2a
    iget-object v2, p0, LaM/i;->l:Lcom/google/googlenav/ui/view/d;

    if-eqz v2, :cond_45

    iget-object v2, p0, LaM/i;->l:Lcom/google/googlenav/ui/view/d;

    if-ne p1, v2, :cond_45

    .line 792
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/K;->an()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 793
    invoke-direct {p0}, LaM/i;->bd()V

    goto :goto_17

    .line 796
    :cond_40
    invoke-virtual {p0}, LaM/i;->aY()Z

    :cond_43
    move v0, v1

    .line 807
    goto :goto_17

    .line 798
    :cond_45
    iget-object v2, p0, LaM/i;->m:Lcom/google/googlenav/ui/view/d;

    if-eqz v2, :cond_53

    iget-object v2, p0, LaM/i;->m:Lcom/google/googlenav/ui/view/d;

    if-ne p1, v2, :cond_53

    .line 799
    iget-object v1, p0, LaM/i;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/v;->n(Z)V

    goto :goto_17

    .line 801
    :cond_53
    iget-object v2, p0, LaM/i;->g:Lcom/google/googlenav/ui/view/d;

    if-eqz v2, :cond_43

    iget-object v2, p0, LaM/i;->g:Lcom/google/googlenav/ui/view/d;

    if-ne p1, v2, :cond_43

    .line 802
    invoke-virtual {p0}, LaM/i;->m()V

    .line 803
    iget-object v1, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v1}, Lcom/google/googlenav/F;->c()I

    move-result v1

    const-string v2, "s"

    const-string v3, "c"

    invoke-virtual {p0}, LaM/i;->u()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, LaM/i;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method

.method protected a(Ljava/io/DataInput;)Z
    .registers 3
    .parameter

    .prologue
    .line 2728
    const/4 v0, 0x1

    return v0
.end method

.method public aA()I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 2363
    move v2, v0

    move v1, v0

    .line 2364
    :goto_3
    const/4 v0, 0x4

    if-ge v2, v0, :cond_22

    .line 2365
    iget-object v0, p0, LaM/i;->q:[Ljava/lang/Boolean;

    aget-object v0, v0, v2

    if-eqz v0, :cond_23

    .line 2366
    iget-object v0, p0, LaM/i;->q:[Ljava/lang/Boolean;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x3

    :goto_17
    mul-int/lit8 v3, v2, 0x2

    shl-int/2addr v0, v3

    or-int/2addr v0, v1

    .line 2364
    :goto_1b
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_3

    .line 2366
    :cond_20
    const/4 v0, 0x2

    goto :goto_17

    .line 2369
    :cond_22
    return v1

    :cond_23
    move v0, v1

    goto :goto_1b
.end method

.method public aB()Z
    .registers 2

    .prologue
    .line 2392
    const/4 v0, 0x0

    return v0
.end method

.method public aC()Z
    .registers 2

    .prologue
    .line 2401
    const/4 v0, 0x1

    return v0
.end method

.method public aD()Z
    .registers 2

    .prologue
    .line 2409
    const/4 v0, 0x0

    return v0
.end method

.method public aE()Z
    .registers 2

    .prologue
    .line 2547
    const/4 v0, 0x1

    return v0
.end method

.method public aF()I
    .registers 2

    .prologue
    .line 2555
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ap()I

    move-result v0

    return v0
.end method

.method public aG()I
    .registers 2

    .prologue
    .line 2563
    const v0, 0x7f020219

    return v0
.end method

.method public aH()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 2571
    const/16 v0, 0x2af

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aI()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 2580
    const/4 v0, 0x0

    return-object v0
.end method

.method public aJ()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 2588
    const/16 v0, 0xe2

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aK()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2598
    const/4 v0, 0x0

    return-object v0
.end method

.method public aL()LS/f;
    .registers 2

    .prologue
    .line 2608
    iget-object v0, p0, LaM/i;->n:LS/f;

    return-object v0
.end method

.method public aM()Z
    .registers 2

    .prologue
    .line 2640
    const/4 v0, 0x0

    return v0
.end method

.method protected aN()Z
    .registers 2

    .prologue
    .line 2651
    const/4 v0, 0x0

    return v0
.end method

.method public final aO()I
    .registers 2

    .prologue
    .line 2659
    iget v0, p0, LaM/i;->u:I

    return v0
.end method

.method protected aP()V
    .registers 6

    .prologue
    .line 2682
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v1

    .line 2683
    invoke-static {p0}, LaM/am;->l(LaM/i;)Ljava/lang/String;

    move-result-object v2

    .line 2685
    :try_start_c
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2686
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2687
    invoke-virtual {p0, v3}, LaM/i;->a(Ljava/io/DataOutput;)V

    .line 2688
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/google/googlenav/common/io/j;->b([BLjava/lang/String;)I
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_20} :catch_21
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_20} :catch_52

    .line 2702
    :goto_20
    return-void

    .line 2689
    :catch_21
    move-exception v0

    .line 2692
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Layer Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, LaM/i;->av()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "UI"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Error saving"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2694
    invoke-interface {v1, v2}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z

    goto :goto_20

    .line 2695
    :catch_52
    move-exception v0

    .line 2698
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Layer Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, LaM/i;->av()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "UI"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Error saving"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2700
    invoke-interface {v1, v2}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z

    goto :goto_20
.end method

.method public aQ()V
    .registers 2

    .prologue
    .line 2738
    invoke-virtual {p0}, LaM/i;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/F;->c()I

    move-result v0

    iput v0, p0, LaM/i;->B:I

    .line 2739
    invoke-virtual {p0}, LaM/i;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/F;->d()B

    move-result v0

    iput-byte v0, p0, LaM/i;->C:B

    .line 2740
    return-void
.end method

.method public aR()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 2747
    invoke-virtual {p0}, LaM/i;->ah()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2748
    iget v0, p0, LaM/i;->B:I

    if-eq v0, v2, :cond_10

    .line 2749
    iget v0, p0, LaM/i;->B:I

    invoke-virtual {p0, v0}, LaM/i;->b(I)V

    .line 2751
    :cond_10
    iget-byte v0, p0, LaM/i;->C:B

    if-eqz v0, :cond_1d

    .line 2752
    invoke-virtual {p0}, LaM/i;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    iget-byte v1, p0, LaM/i;->C:B

    invoke-interface {v0, v1}, Lcom/google/googlenav/F;->a(B)V

    .line 2754
    :cond_1d
    invoke-virtual {p0}, LaM/i;->y()V

    .line 2756
    :cond_20
    iput v2, p0, LaM/i;->B:I

    .line 2757
    const/4 v0, 0x0

    iput-byte v0, p0, LaM/i;->C:B

    .line 2758
    return-void
.end method

.method public final aS()Z
    .registers 2

    .prologue
    .line 2767
    iget-object v0, p0, LaM/i;->f:Lcom/google/googlenav/F;

    if-eqz v0, :cond_9

    .line 2768
    iget-object v0, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-virtual {p0, v0}, LaM/i;->b(Lcom/google/googlenav/F;)V

    .line 2770
    :cond_9
    invoke-virtual {p0}, LaM/i;->aT()Z

    move-result v0

    return v0
.end method

.method protected aT()Z
    .registers 2

    .prologue
    .line 2780
    const/4 v0, 0x1

    return v0
.end method

.method public aU()V
    .registers 1

    .prologue
    .line 2788
    return-void
.end method

.method public aV()V
    .registers 1

    .prologue
    .line 2796
    invoke-virtual {p0}, LaM/i;->j()V

    .line 2797
    return-void
.end method

.method public aW()V
    .registers 2

    .prologue
    .line 2806
    const/4 v0, 0x1

    iput-boolean v0, p0, LaM/i;->o:Z

    .line 2809
    invoke-virtual {p0}, LaM/i;->y()V

    .line 2812
    invoke-virtual {p0}, LaM/i;->j()V

    .line 2813
    return-void
.end method

.method public aX()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 2819
    iput-boolean v0, p0, LaM/i;->o:Z

    .line 2823
    invoke-virtual {p0, v0}, LaM/i;->b(B)V

    .line 2824
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, LaM/i;->b(I)V

    .line 2826
    invoke-virtual {p0}, LaM/i;->r()V

    .line 2827
    invoke-virtual {p0}, LaM/i;->al()V

    .line 2830
    invoke-direct {p0}, LaM/i;->e()V

    .line 2831
    invoke-virtual {p0}, LaM/i;->V()V

    .line 2832
    invoke-direct {p0}, LaM/i;->f()V

    .line 2833
    return-void
.end method

.method public final aY()Z
    .registers 3

    .prologue
    .line 2857
    const/16 v0, 0x23

    const/16 v1, 0xd

    invoke-virtual {p0, v0, v1}, LaM/i;->a(CI)Z

    move-result v0

    return v0
.end method

.method public aZ()Z
    .registers 2

    .prologue
    .line 2877
    invoke-virtual {p0}, LaM/i;->ai()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2878
    const/4 v0, 0x0

    .line 2883
    :goto_7
    return v0

    .line 2880
    :cond_8
    iget-object v0, p0, LaM/i;->r:Lcom/google/googlenav/ui/view/android/bb;

    instance-of v0, v0, Lcom/google/googlenav/ui/view/android/V;

    if-nez v0, :cond_10

    .line 2881
    const/4 v0, 0x1

    goto :goto_7

    .line 2883
    :cond_10
    iget-object v0, p0, LaM/i;->r:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/view/android/V;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/V;->O_()Z

    move-result v0

    goto :goto_7
.end method

.method public aa()Z
    .registers 2

    .prologue
    .line 1766
    invoke-virtual {p0}, LaM/i;->ai()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public ab()Z
    .registers 2

    .prologue
    .line 1773
    const/4 v0, 0x0

    return v0
.end method

.method protected ac()Z
    .registers 2

    .prologue
    .line 1780
    invoke-virtual {p0}, LaM/i;->ag()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, LaM/i;->af()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public ad()Z
    .registers 2

    .prologue
    .line 1794
    const/4 v0, 0x1

    return v0
.end method

.method public final ae()Z
    .registers 3

    .prologue
    .line 1801
    iget-object v0, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->d()B

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final af()Z
    .registers 3

    .prologue
    .line 1808
    iget-object v0, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->d()B

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final ag()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1816
    iget-object v1, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v1}, Lcom/google/googlenav/F;->d()B

    move-result v1

    if-ne v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final ah()Z
    .registers 2

    .prologue
    .line 1823
    iget-object v0, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->d()B

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public ai()Z
    .registers 2

    .prologue
    .line 1831
    iget-object v0, p0, LaM/i;->r:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, LaM/i;->af()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, LaM/i;->ae()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final aj()Z
    .registers 3

    .prologue
    .line 1838
    iget-object v0, p0, LaM/i;->g:Lcom/google/googlenav/ui/view/d;

    if-eqz v0, :cond_25

    invoke-virtual {p0}, LaM/i;->ag()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, LaM/i;->ah()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->c()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_25

    :cond_23
    const/4 v0, 0x1

    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public ak()Lcom/google/googlenav/ui/view/d;
    .registers 2

    .prologue
    .line 1847
    iget-object v0, p0, LaM/i;->g:Lcom/google/googlenav/ui/view/d;

    return-object v0
.end method

.method public al()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1925
    iget-object v0, p0, LaM/i;->g:Lcom/google/googlenav/ui/view/d;

    if-eqz v0, :cond_19

    .line 1926
    iget-object v0, p0, LaM/i;->g:Lcom/google/googlenav/ui/view/d;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/d;->c()V

    .line 1927
    iput-object v1, p0, LaM/i;->g:Lcom/google/googlenav/ui/view/d;

    .line 1928
    iput-object v1, p0, LaM/i;->h:Lcom/google/googlenav/E;

    .line 1929
    iget-object v0, p0, LaM/i;->A:LaM/j;

    if-eqz v0, :cond_17

    .line 1930
    iget-object v0, p0, LaM/i;->A:LaM/j;

    invoke-interface {v0, p0}, LaM/j;->a(LaM/i;)V

    .line 1933
    :cond_17
    iput-object v1, p0, LaM/i;->D:Lcom/google/googlenav/settings/e;

    .line 1936
    :cond_19
    return-void
.end method

.method protected am()V
    .registers 1

    .prologue
    .line 1941
    return-void
.end method

.method public an()Z
    .registers 2

    .prologue
    .line 1945
    const/4 v0, 0x0

    .line 1946
    invoke-virtual {p0, v0}, LaM/i;->g(Z)Z

    move-result v0

    return v0
.end method

.method public ao()Z
    .registers 2

    .prologue
    .line 2000
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract ap()V
.end method

.method protected abstract aq()V
.end method

.method public ar()Lcom/google/googlenav/F;
    .registers 2

    .prologue
    .line 2227
    iget-object v0, p0, LaM/i;->f:Lcom/google/googlenav/F;

    return-object v0
.end method

.method public as()Z
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2235
    .line 2236
    iget-object v0, p0, LaM/i;->f:Lcom/google/googlenav/F;

    if-eqz v0, :cond_2e

    .line 2237
    iget-object v0, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->f()I

    move-result v5

    move v4, v3

    move v1, v3

    :goto_e
    if-ge v4, v5, :cond_2f

    .line 2238
    iget-object v0, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v0, v4}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    .line 2239
    invoke-interface {v0}, Lcom/google/googlenav/E;->d()I

    move-result v6

    if-eqz v6, :cond_23

    .line 2240
    add-int/lit8 v0, v1, 0x1

    .line 2237
    :goto_1e
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_e

    .line 2242
    :cond_23
    check-cast v0, Lcom/google/googlenav/ai;

    .line 2243
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ab()Z

    move-result v0

    if-nez v0, :cond_35

    .line 2244
    add-int/lit8 v0, v1, 0x1

    goto :goto_1e

    :cond_2e
    move v1, v3

    .line 2249
    :cond_2f
    if-ne v1, v2, :cond_33

    move v0, v2

    :goto_32
    return v0

    :cond_33
    move v0, v3

    goto :goto_32

    :cond_35
    move v0, v1

    goto :goto_1e
.end method

.method public at()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 2254
    iget-object v1, p0, LaM/i;->f:Lcom/google/googlenav/F;

    if-eqz v1, :cond_1d

    .line 2255
    iget-object v1, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v1}, Lcom/google/googlenav/F;->f()I

    move-result v2

    move v1, v0

    :goto_c
    if-ge v1, v2, :cond_1d

    .line 2256
    iget-object v3, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v3, v1}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v3

    .line 2257
    if-eqz v3, :cond_1e

    invoke-interface {v3}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v3

    if-eqz v3, :cond_1e

    .line 2258
    const/4 v0, 0x1

    .line 2262
    :cond_1d
    return v0

    .line 2255
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method public au()Z
    .registers 2

    .prologue
    .line 2275
    const/4 v0, 0x1

    return v0
.end method

.method public abstract av()I
.end method

.method public aw()Lat/Y;
    .registers 2

    .prologue
    .line 2334
    iget-object v0, p0, LaM/i;->d:Lat/u;

    invoke-virtual {v0}, Lat/u;->d()Lat/Y;

    move-result-object v0

    return-object v0
.end method

.method public ax()Z
    .registers 2

    .prologue
    .line 2338
    iget-boolean v0, p0, LaM/i;->o:Z

    return v0
.end method

.method public ay()Z
    .registers 2

    .prologue
    .line 2342
    iget-boolean v0, p0, LaM/i;->p:Z

    return v0
.end method

.method protected az()Z
    .registers 2

    .prologue
    .line 2350
    iget-boolean v0, p0, LaM/i;->y:Z

    return v0
.end method

.method public b(Lat/B;)I
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 2099
    iget-object v0, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->c()I

    move-result v0

    .line 2100
    if-ltz v0, :cond_17

    iget-object v2, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v2, v0}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v2

    invoke-virtual {p0, v2, p1, v3}, LaM/i;->a(Lcom/google/googlenav/E;Lat/B;LS/e;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2122
    :cond_16
    :goto_16
    return v0

    :cond_17
    move v0, v1

    .line 2107
    :goto_18
    iget-object v2, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v2}, Lcom/google/googlenav/F;->f()I

    move-result v2

    if-ge v0, v2, :cond_31

    .line 2108
    iget-object v2, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v2, v0}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v2

    .line 2109
    invoke-virtual {p0, v2, p1, v3}, LaM/i;->a(Lcom/google/googlenav/E;Lat/B;LS/e;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 2107
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 2115
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    :cond_31
    iget-object v0, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->f()I

    move-result v0

    if-ge v1, v0, :cond_47

    .line 2116
    iget-object v0, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v0, v1}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    .line 2117
    invoke-direct {p0, v0, p1}, LaM/i;->b(Lcom/google/googlenav/E;Lat/B;)Z

    move-result v0

    if-eqz v0, :cond_2f

    move v0, v1

    .line 2118
    goto :goto_16

    .line 2122
    :cond_47
    const/4 v0, -0x1

    goto :goto_16
.end method

.method public b(Lcom/google/googlenav/E;)I
    .registers 3
    .parameter

    .prologue
    .line 1911
    const/4 v0, 0x0

    return v0
.end method

.method public final b(B)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 540
    packed-switch p1, :pswitch_data_46

    .line 564
    :goto_4
    return-void

    .line 544
    :pswitch_5
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, LaM/i;->ae()Z

    move-result v0

    if-nez v0, :cond_18

    .line 545
    invoke-virtual {p0, v1}, LaM/i;->d(Z)V

    .line 547
    :cond_18
    iget-object v0, p0, LaM/i;->f:Lcom/google/googlenav/F;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/google/googlenav/F;->a(B)V

    goto :goto_4

    .line 552
    :pswitch_1f
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, LaM/i;->af()Z

    move-result v0

    if-nez v0, :cond_32

    .line 553
    invoke-virtual {p0, v1}, LaM/i;->e(Z)V

    .line 555
    :cond_32
    iget-object v0, p0, LaM/i;->f:Lcom/google/googlenav/F;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/googlenav/F;->a(B)V

    goto :goto_4

    .line 558
    :pswitch_39
    iget-object v0, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v0, v1}, Lcom/google/googlenav/F;->a(B)V

    goto :goto_4

    .line 561
    :pswitch_3f
    iget-object v0, p0, LaM/i;->f:Lcom/google/googlenav/F;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/googlenav/F;->a(B)V

    goto :goto_4

    .line 540
    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_39
        :pswitch_1f
        :pswitch_5
    .end packed-switch
.end method

.method public b(I)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 944
    invoke-virtual {p0}, LaM/i;->N()Z

    move-result v0

    .line 945
    invoke-virtual {p0}, LaM/i;->M()Z

    move-result v1

    .line 947
    iget-object v2, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v2, p1}, Lcom/google/googlenav/F;->a(I)V

    .line 950
    invoke-direct {p0}, LaM/i;->a()V

    .line 952
    invoke-virtual {p0}, LaM/i;->av()I

    move-result v2

    .line 953
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/K;->as()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-virtual {p0}, LaM/i;->ag()Z

    move-result v3

    if-eqz v3, :cond_48

    const/4 v3, 0x3

    if-eq v2, v3, :cond_33

    const/4 v3, 0x1

    if-eq v2, v3, :cond_33

    const/16 v3, 0x17

    if-eq v2, v3, :cond_33

    const/16 v3, 0x18

    if-ne v2, v3, :cond_48

    :cond_33
    invoke-virtual {p0}, LaM/i;->N()Z

    move-result v2

    if-ne v0, v2, :cond_3f

    invoke-virtual {p0}, LaM/i;->M()Z

    move-result v0

    if-eq v1, v0, :cond_48

    .line 966
    :cond_3f
    iget-object v0, p0, LaM/i;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->n()Lcom/google/googlenav/ui/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/av;->b()V

    .line 969
    :cond_48
    if-ne p1, v4, :cond_4d

    .line 970
    invoke-virtual {p0}, LaM/i;->al()V

    .line 974
    :cond_4d
    if-eq p1, v4, :cond_59

    invoke-virtual {p0}, LaM/i;->af()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 975
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, LaM/i;->f(I)V

    .line 978
    :cond_59
    invoke-virtual {p0}, LaM/i;->K()V

    .line 979
    return-void
.end method

.method protected b(ILjava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 607
    iget-object v0, p0, LaM/i;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, LaM/i;->d(ILjava/lang/Object;)Lcom/google/googlenav/ui/wizard/A;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    .line 608
    invoke-virtual {p0}, LaM/i;->n()V

    .line 609
    return-void
.end method

.method public b(Lcom/google/googlenav/F;)V
    .registers 2
    .parameter

    .prologue
    .line 1459
    invoke-virtual {p0, p1}, LaM/i;->a(Lcom/google/googlenav/F;)V

    .line 1460
    invoke-virtual {p0}, LaM/i;->R()V

    .line 1461
    return-void
.end method

.method protected b(Lcom/google/googlenav/ui/u;)V
    .registers 2
    .parameter

    .prologue
    .line 1577
    return-void
.end method

.method protected b(Lcom/google/googlenav/ui/u;Lcom/google/googlenav/E;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1859
    iget-object v1, p0, LaM/i;->g:Lcom/google/googlenav/ui/view/d;

    if-nez v1, :cond_6

    .line 1883
    :cond_5
    :goto_5
    return-void

    .line 1863
    :cond_6
    invoke-virtual {p0, p2}, LaM/i;->a(Lcom/google/googlenav/E;)Lat/B;

    move-result-object v1

    .line 1864
    if-eqz v1, :cond_5

    .line 1868
    iget-object v2, p0, LaM/i;->g:Lcom/google/googlenav/ui/view/d;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/view/d;->e()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 1869
    iget-object v2, p0, LaM/i;->c:Lat/p;

    iget-object v3, p0, LaM/i;->e:Landroid/graphics/Point;

    invoke-virtual {v2, v1, v3}, Lat/p;->a(Lat/B;Landroid/graphics/Point;)V

    .line 1874
    :goto_1b
    if-nez p1, :cond_53

    move v1, v0

    .line 1875
    :goto_1e
    if-nez p1, :cond_58

    .line 1876
    :goto_20
    iget-object v2, p0, LaM/i;->e:Landroid/graphics/Point;

    iget-object v3, p0, LaM/i;->e:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v3

    invoke-virtual {p0, p2}, LaM/i;->b(Lcom/google/googlenav/E;)I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, LaM/i;->e:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v3

    invoke-virtual {p0, p2}, LaM/i;->c(Lcom/google/googlenav/E;)I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Point;->set(II)V

    .line 1880
    if-nez p1, :cond_43

    iget-object v0, p0, LaM/i;->g:Lcom/google/googlenav/ui/view/d;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/d;->e()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1881
    :cond_43
    iget-object v0, p0, LaM/i;->g:Lcom/google/googlenav/ui/view/d;

    iget-object v1, p0, LaM/i;->e:Landroid/graphics/Point;

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/ui/view/d;->a(Landroid/graphics/Point;Lcom/google/googlenav/ui/u;)V

    goto :goto_5

    .line 1871
    :cond_4b
    iget-object v2, p0, LaM/i;->c:Lat/p;

    iget-object v3, p0, LaM/i;->e:Landroid/graphics/Point;

    invoke-virtual {v2, v1, v3}, Lat/p;->b(Lat/B;Landroid/graphics/Point;)V

    goto :goto_1b

    .line 1874
    :cond_53
    invoke-virtual {p1}, Lcom/google/googlenav/ui/u;->c()I

    move-result v1

    goto :goto_1e

    .line 1875
    :cond_58
    invoke-virtual {p1}, Lcom/google/googlenav/ui/u;->d()I

    move-result v0

    goto :goto_20
.end method

.method protected b(Z)V
    .registers 3
    .parameter

    .prologue
    .line 617
    iget-object v0, p0, LaM/i;->d:Lat/u;

    invoke-virtual {v0}, Lat/u;->d()Lat/Y;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LaM/i;->a(ZLat/Y;)V

    .line 618
    return-void
.end method

.method public final b(LZ/a;)Z
    .registers 3
    .parameter

    .prologue
    .line 404
    invoke-virtual {p0, p1}, LaM/i;->c(LZ/a;)Z

    move-result v0

    return v0
.end method

.method public b(Lat/g;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 894
    if-nez p1, :cond_4

    .line 900
    :cond_3
    :goto_3
    return v0

    .line 897
    :cond_4
    invoke-virtual {p0, p1}, LaM/i;->a(Lat/g;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 900
    invoke-interface {p1}, Lat/g;->b()Lat/B;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, LaM/i;->a(Lat/B;I)Z

    move-result v0

    goto :goto_3
.end method

.method public b(Lcom/google/googlenav/ui/view/J;)Z
    .registers 3
    .parameter

    .prologue
    .line 826
    const/4 v0, 0x0

    return v0
.end method

.method public ba()Lcom/google/googlenav/ui/v;
    .registers 2

    .prologue
    .line 2981
    iget-object v0, p0, LaM/i;->b:Lcom/google/googlenav/ui/v;

    return-object v0
.end method

.method public bb()LaO/a;
    .registers 2

    .prologue
    .line 2992
    iget-object v0, p0, LaM/i;->t:LaO/a;

    return-object v0
.end method

.method public bc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3003
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Lcom/google/googlenav/E;)I
    .registers 3
    .parameter

    .prologue
    .line 1921
    const/4 v0, 0x0

    return v0
.end method

.method public c(Z)I
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 710
    iget-object v1, p0, LaM/i;->a:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bn;->G()I

    move-result v2

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->an()Z

    move-result v1

    if-eqz v1, :cond_1e

    sget v1, Lcom/google/googlenav/ui/bn;->c:I

    :goto_13
    add-int/2addr v1, v2

    .line 715
    if-nez p1, :cond_1c

    invoke-virtual {p0}, LaM/i;->ai()Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_1c
    move v0, v1

    :cond_1d
    return v0

    :cond_1e
    move v1, v0

    .line 710
    goto :goto_13
.end method

.method public final c(I)Lcom/google/googlenav/e;
    .registers 3
    .parameter

    .prologue
    .line 1735
    iget-object v0, p0, LaM/i;->t:LaO/a;

    invoke-virtual {v0, p1}, LaO/a;->b(I)Lcom/google/googlenav/e;

    move-result-object v0

    return-object v0
.end method

.method protected c(ILjava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 759
    iget-object v0, p0, LaM/i;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, LaM/i;->d(ILjava/lang/Object;)Lcom/google/googlenav/ui/wizard/A;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    .line 760
    invoke-virtual {p0}, LaM/i;->l()V

    .line 761
    return-void
.end method

.method protected c(Lcom/google/googlenav/ui/u;)V
    .registers 6
    .parameter

    .prologue
    .line 1594
    iget-object v0, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->e()Lcom/google/googlenav/E;

    move-result-object v0

    .line 1595
    if-eqz v0, :cond_3b

    invoke-interface {v0}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 1596
    invoke-interface {v0}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v1

    .line 1597
    invoke-virtual {p0}, LaM/i;->aj()Z

    move-result v2

    if-eqz v2, :cond_3b

    if-eqz v1, :cond_3b

    .line 1599
    invoke-interface {v0}, Lcom/google/googlenav/E;->c()B

    move-result v2

    if-eqz v2, :cond_38

    .line 1600
    iget-object v2, p0, LaM/i;->c:Lat/p;

    iget-object v3, p0, LaM/i;->e:Landroid/graphics/Point;

    invoke-virtual {v2, v1, v3}, Lat/p;->a(Lat/B;Landroid/graphics/Point;)V

    .line 1601
    iget-object v1, p0, LaM/i;->e:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, LaM/i;->e:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v3}, Lcom/google/googlenav/F;->c()I

    move-result v3

    invoke-direct {p0, p1, v1, v2, v3}, LaM/i;->a(Lcom/google/googlenav/ui/u;III)V

    .line 1603
    :cond_38
    invoke-virtual {p0, p1, v0}, LaM/i;->b(Lcom/google/googlenav/ui/u;Lcom/google/googlenav/E;)V

    .line 1606
    :cond_3b
    return-void
.end method

.method protected c(LZ/a;)Z
    .registers 3
    .parameter

    .prologue
    .line 408
    const/4 v0, 0x0

    return v0
.end method

.method public c(Lat/B;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2535
    if-eqz p1, :cond_11

    iget-object v1, p0, LaM/i;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->ad()Lcom/google/googlenav/j;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/googlenav/j;->a(ILat/B;Z)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public c(Lat/g;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 907
    if-nez p1, :cond_4

    .line 913
    :cond_3
    :goto_3
    return v0

    .line 910
    :cond_4
    invoke-virtual {p0, p1}, LaM/i;->a(Lat/g;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 913
    invoke-interface {p1}, Lat/g;->b()Lat/B;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, LaM/i;->a(Lat/B;I)Z

    move-result v0

    goto :goto_3
.end method

.method protected d(Lcom/google/googlenav/E;)I
    .registers 3
    .parameter

    .prologue
    .line 2205
    iget-object v0, p0, LaM/i;->a:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/E;)I

    move-result v0

    return v0
.end method

.method protected d(ILjava/lang/Object;)Lcom/google/googlenav/ui/wizard/A;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 765
    new-instance v0, Lcom/google/googlenav/ui/wizard/A;

    invoke-direct {v0, p1, p2}, Lcom/google/googlenav/ui/wizard/A;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public d(I)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2377
    new-array v0, v6, [Ljava/lang/Boolean;

    iput-object v0, p0, LaM/i;->q:[Ljava/lang/Boolean;

    move v3, v2

    .line 2378
    :goto_8
    if-ge v3, v6, :cond_26

    .line 2379
    mul-int/lit8 v0, v3, 0x2

    .line 2380
    const/4 v4, 0x2

    shl-int/2addr v4, v0

    and-int/2addr v4, p1

    if-eqz v4, :cond_20

    .line 2381
    iget-object v4, p0, LaM/i;->q:[Ljava/lang/Boolean;

    new-instance v5, Ljava/lang/Boolean;

    shl-int v0, v1, v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_24

    move v0, v1

    :goto_1b
    invoke-direct {v5, v0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v4, v3

    .line 2378
    :cond_20
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_8

    :cond_24
    move v0, v2

    .line 2381
    goto :goto_1b

    .line 2384
    :cond_26
    return-void
.end method

.method public d(Lcom/google/googlenav/ui/u;)V
    .registers 7
    .parameter

    .prologue
    .line 1615
    if-nez p1, :cond_3

    .line 1631
    :cond_2
    return-void

    .line 1620
    :cond_3
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v1}, Lcom/google/googlenav/F;->f()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1621
    iget-object v1, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v1, v0}, Lcom/google/googlenav/F;->c(I)I

    move-result v1

    .line 1622
    iget-object v2, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v2, v1}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v2

    .line 1623
    if-eqz v2, :cond_38

    invoke-interface {v2}, Lcom/google/googlenav/E;->c()B

    move-result v3

    if-eqz v3, :cond_38

    .line 1624
    invoke-interface {v2}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v2

    .line 1625
    if-eqz v2, :cond_38

    .line 1626
    iget-object v3, p0, LaM/i;->c:Lat/p;

    iget-object v4, p0, LaM/i;->e:Landroid/graphics/Point;

    invoke-virtual {v3, v2, v4}, Lat/p;->a(Lat/B;Landroid/graphics/Point;)V

    .line 1627
    iget-object v2, p0, LaM/i;->e:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, LaM/i;->e:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-direct {p0, p1, v2, v3, v1}, LaM/i;->a(Lcom/google/googlenav/ui/u;III)V

    .line 1620
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public d(Z)V
    .registers 2
    .parameter

    .prologue
    .line 1268
    iput-boolean p1, p0, LaM/i;->v:Z

    .line 1269
    return-void
.end method

.method public d(LZ/a;)Z
    .registers 3
    .parameter

    .prologue
    .line 415
    const/4 v0, 0x0

    return v0
.end method

.method public d()[Lcom/google/googlenav/ui/aH;
    .registers 2

    .prologue
    .line 2330
    const/4 v0, 0x0

    return-object v0
.end method

.method protected e(Lcom/google/googlenav/E;)I
    .registers 3
    .parameter

    .prologue
    .line 2209
    iget-object v0, p0, LaM/i;->t:LaO/a;

    invoke-virtual {v0, p1}, LaO/a;->a(Lcom/google/googlenav/E;)I

    move-result v0

    return v0
.end method

.method public final e(I)V
    .registers 2
    .parameter

    .prologue
    .line 2670
    iput p1, p0, LaM/i;->u:I

    .line 2671
    return-void
.end method

.method protected e(Lcom/google/googlenav/ui/u;)V
    .registers 3
    .parameter

    .prologue
    .line 1688
    iget-object v0, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-virtual {p0, p1, v0}, LaM/i;->a(Lcom/google/googlenav/ui/u;Lcom/google/googlenav/F;)V

    .line 1689
    return-void
.end method

.method public e(Z)V
    .registers 3
    .parameter

    .prologue
    .line 1276
    iput-boolean p1, p0, LaM/i;->w:Z

    .line 1277
    const/4 v0, 0x0

    iput-object v0, p0, LaM/i;->h:Lcom/google/googlenav/E;

    .line 1278
    return-void
.end method

.method public e(LZ/a;)Z
    .registers 3
    .parameter

    .prologue
    .line 814
    const/4 v0, 0x0

    return v0
.end method

.method protected f(Lcom/google/googlenav/E;)I
    .registers 3
    .parameter

    .prologue
    .line 2213
    iget-object v0, p0, LaM/i;->t:LaO/a;

    invoke-virtual {v0, p1}, LaO/a;->b(Lcom/google/googlenav/E;)I

    move-result v0

    return v0
.end method

.method public final f(I)V
    .registers 3
    .parameter

    .prologue
    .line 2906
    invoke-virtual {p0}, LaM/i;->s()Lcom/google/googlenav/E;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, LaM/i;->a(Lcom/google/googlenav/E;I)V

    .line 2907
    return-void
.end method

.method public f(Z)V
    .registers 2
    .parameter

    .prologue
    .line 1285
    iput-boolean p1, p0, LaM/i;->x:Z

    .line 1286
    return-void
.end method

.method protected abstract f(LZ/a;)Z
.end method

.method public g()Lcom/google/googlenav/common/util/l;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 3059
    invoke-virtual {p0}, LaM/i;->aB()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, LaM/i;->aK()Ljava/lang/String;

    move-result-object v0

    .line 3060
    :goto_b
    new-instance v2, Lcom/google/googlenav/common/util/l;

    invoke-direct {v2, v0, v1}, Lcom/google/googlenav/common/util/l;-><init>(Ljava/lang/String;I)V

    move v0, v1

    move-object v1, v2

    .line 3061
    :goto_12
    iget-object v2, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v2}, Lcom/google/googlenav/F;->f()I

    move-result v2

    if-ge v0, v2, :cond_34

    .line 3062
    iget-object v2, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v2, v0}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v2

    .line 3063
    invoke-interface {v2}, Lcom/google/googlenav/E;->g()Lcom/google/googlenav/common/util/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/util/l;->a(Lcom/google/googlenav/common/util/l;)Lcom/google/googlenav/common/util/l;

    move-result-object v1

    .line 3061
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 3059
    :cond_2b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 3065
    :cond_34
    return-object v1
.end method

.method public g(I)Z
    .registers 3
    .parameter

    .prologue
    .line 2958
    const/4 v0, 0x1

    return v0
.end method

.method public g(Z)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1959
    invoke-virtual {p0}, LaM/i;->s()Lcom/google/googlenav/E;

    move-result-object v1

    .line 1960
    if-nez v1, :cond_b

    .line 1961
    invoke-virtual {p0}, LaM/i;->al()V

    .line 1992
    :cond_a
    :goto_a
    return v0

    .line 1965
    :cond_b
    iget-object v2, p0, LaM/i;->h:Lcom/google/googlenav/E;

    if-ne v1, v2, :cond_11

    if-eqz p1, :cond_3b

    .line 1966
    :cond_11
    invoke-virtual {p0}, LaM/i;->am()V

    .line 1967
    iget-object v2, p0, LaM/i;->s:LaM/w;

    if-eqz v2, :cond_a

    .line 1972
    iget-object v2, p0, LaM/i;->s:LaM/w;

    invoke-interface {v2}, LaM/w;->a()Lcom/google/googlenav/ui/view/d;

    move-result-object v2

    .line 1973
    if-nez v2, :cond_24

    .line 1974
    invoke-virtual {p0}, LaM/i;->al()V

    goto :goto_a

    .line 1978
    :cond_24
    iput-object v2, p0, LaM/i;->g:Lcom/google/googlenav/ui/view/d;

    .line 1979
    iput-object v1, p0, LaM/i;->h:Lcom/google/googlenav/E;

    .line 1980
    iget-object v0, p0, LaM/i;->A:LaM/j;

    if-eqz v0, :cond_31

    .line 1981
    iget-object v0, p0, LaM/i;->A:LaM/j;

    invoke-interface {v0, p0, v2}, LaM/j;->a(LaM/i;Lcom/google/googlenav/ui/view/d;)V

    .line 1986
    :cond_31
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aw()Lcom/google/googlenav/settings/e;

    move-result-object v0

    iput-object v0, p0, LaM/i;->D:Lcom/google/googlenav/settings/e;

    .line 1991
    :cond_3b
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, LaM/i;->f(I)V

    .line 1992
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public h()V
    .registers 1

    .prologue
    .line 426
    invoke-virtual {p0}, LaM/i;->n()V

    .line 427
    return-void
.end method

.method public h(Z)V
    .registers 2
    .parameter

    .prologue
    .line 2346
    iput-boolean p1, p0, LaM/i;->p:Z

    .line 2347
    return-void
.end method

.method protected i()LaO/a;
    .registers 2

    .prologue
    .line 374
    new-instance v0, LaO/a;

    invoke-direct {v0, p0}, LaO/a;-><init>(LaM/i;)V

    return-object v0
.end method

.method protected i(Z)V
    .registers 2
    .parameter

    .prologue
    .line 2354
    iput-boolean p1, p0, LaM/i;->y:Z

    .line 2355
    return-void
.end method

.method protected j()V
    .registers 2

    .prologue
    .line 378
    invoke-virtual {p0}, LaM/i;->O()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 379
    invoke-direct {p0}, LaM/i;->b()V

    .line 384
    :goto_9
    invoke-virtual {p0}, LaM/i;->P()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 385
    invoke-virtual {p0}, LaM/i;->S()V

    .line 390
    :goto_12
    invoke-virtual {p0}, LaM/i;->Q()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 391
    invoke-direct {p0}, LaM/i;->c()V

    .line 395
    :goto_1b
    return-void

    .line 381
    :cond_1c
    invoke-direct {p0}, LaM/i;->e()V

    goto :goto_9

    .line 387
    :cond_20
    invoke-virtual {p0}, LaM/i;->V()V

    goto :goto_12

    .line 393
    :cond_24
    invoke-direct {p0}, LaM/i;->f()V

    goto :goto_1b
.end method

.method public j(Z)V
    .registers 3
    .parameter

    .prologue
    .line 3011
    iget-object v0, p0, LaM/i;->r:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_11

    iget-object v0, p0, LaM/i;->r:Lcom/google/googlenav/ui/view/android/bb;

    instance-of v0, v0, Lcom/google/googlenav/ui/view/android/V;

    if-eqz v0, :cond_11

    .line 3012
    iget-object v0, p0, LaM/i;->r:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/view/android/V;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/android/V;->a(Z)V

    .line 3014
    :cond_11
    return-void
.end method

.method public k()Lcom/google/googlenav/settings/e;
    .registers 2

    .prologue
    .line 419
    iget-object v0, p0, LaM/i;->D:Lcom/google/googlenav/settings/e;

    return-object v0
.end method

.method protected l()V
    .registers 8

    .prologue
    .line 435
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, LaM/i;->b(B)V

    .line 436
    invoke-virtual {p0}, LaM/i;->y()V

    .line 437
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, LaM/i;->f(I)V

    .line 439
    invoke-virtual {p0}, LaM/i;->t()Ljava/lang/String;

    move-result-object v0

    .line 440
    if-eqz v0, :cond_36

    .line 441
    const/16 v1, 0x72

    const-string v2, ""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "u="

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

    .line 451
    :cond_36
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, LaM/i;->d:Lat/u;

    invoke-virtual {v0}, Lat/u;->k()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 452
    iget-object v0, p0, LaM/i;->d:Lat/u;

    iget-object v1, p0, LaM/i;->d:Lat/u;

    invoke-virtual {v1}, Lat/u;->c()Lat/B;

    move-result-object v1

    iget-object v2, p0, LaM/i;->d:Lat/u;

    invoke-virtual {v2}, Lat/u;->d()Lat/Y;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, LaM/i;->a(Lat/B;Lat/Y;)Lat/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lat/u;->b(Lat/B;)V

    .line 461
    :cond_5d
    iget-object v0, p0, LaM/i;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->ae()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 462
    iget-object v0, p0, LaM/i;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->J()Lcom/google/googlenav/ui/wizard/gj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/wizard/gj;->a(LaM/i;)V

    .line 464
    :cond_7e
    iget-object v0, p0, LaM/i;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->H()Lcom/google/googlenav/ui/wizard/hZ;

    move-result-object v0

    if-eqz v0, :cond_b3

    iget-object v0, p0, LaM/i;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->H()Lcom/google/googlenav/ui/wizard/hZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hZ;->o()Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 466
    iget-object v0, p0, LaM/i;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->H()Lcom/google/googlenav/ui/wizard/hZ;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/wizard/hZ;->a(LaM/i;)V

    .line 468
    :cond_b3
    return-void
.end method

.method protected m()V
    .registers 2

    .prologue
    .line 476
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, LaM/i;->b(B)V

    .line 477
    invoke-virtual {p0}, LaM/i;->y()V

    .line 481
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 482
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaM/i;->b(Z)V

    .line 490
    :cond_15
    iget-object v0, p0, LaM/i;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->ae()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 491
    iget-object v0, p0, LaM/i;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->J()Lcom/google/googlenav/ui/wizard/gj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gj;->a()V

    .line 493
    :cond_36
    return-void
.end method

.method protected n()V
    .registers 2

    .prologue
    .line 501
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaM/i;->b(B)V

    .line 502
    invoke-virtual {p0}, LaM/i;->y()V

    .line 503
    return-void
.end method

.method public o()B
    .registers 2

    .prologue
    .line 507
    iget-object v0, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->d()B

    move-result v0

    return v0
.end method

.method protected p()I
    .registers 2

    .prologue
    .line 687
    invoke-virtual {p0}, LaM/i;->q()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public q()I
    .registers 3

    .prologue
    .line 695
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/e;->d()Lcom/google/googlenav/ui/android/ButtonContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/ButtonContainer;->d()Lcom/google/googlenav/ui/android/ab;

    move-result-object v0

    .line 697
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/actionbar/a;->k()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/ab;->a()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method protected r()V
    .registers 2

    .prologue
    .line 770
    iget-object v0, p0, LaM/i;->r:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_c

    .line 771
    iget-object v0, p0, LaM/i;->r:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->dismiss()V

    .line 772
    const/4 v0, 0x0

    iput-object v0, p0, LaM/i;->r:Lcom/google/googlenav/ui/view/android/bb;

    .line 774
    :cond_c
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Boolean;

    iput-object v0, p0, LaM/i;->q:[Ljava/lang/Boolean;

    .line 775
    return-void
.end method

.method public s()Lcom/google/googlenav/E;
    .registers 2

    .prologue
    .line 1007
    invoke-virtual {p0}, LaM/i;->ah()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->e()Lcom/google/googlenav/E;

    move-result-object v0

    goto :goto_7
.end method

.method protected t()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1016
    const/4 v0, 0x0

    return-object v0
.end method

.method protected u()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1024
    const/4 v0, 0x0

    return-object v0
.end method

.method protected v()V
    .registers 1

    .prologue
    .line 1048
    return-void
.end method

.method protected w()V
    .registers 1

    .prologue
    .line 1057
    return-void
.end method

.method protected x()I
    .registers 2

    .prologue
    .line 1066
    invoke-virtual {p0}, LaM/i;->au()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final y()V
    .registers 2

    .prologue
    .line 1077
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1078
    invoke-virtual {p0}, LaM/i;->C()V

    .line 1085
    :goto_d
    invoke-virtual {p0}, LaM/i;->D()V

    .line 1087
    invoke-virtual {p0}, LaM/i;->E()V

    .line 1088
    return-void

    .line 1080
    :cond_14
    invoke-virtual {p0}, LaM/i;->z()V

    goto :goto_d
.end method

.method protected z()V
    .registers 4

    .prologue
    .line 1096
    iget-boolean v0, p0, LaM/i;->o:Z

    if-nez v0, :cond_f

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1144
    :cond_e
    :goto_e
    return-void

    .line 1103
    :cond_f
    invoke-virtual {p0}, LaM/i;->v()V

    .line 1105
    iget-object v0, p0, LaM/i;->r:Lcom/google/googlenav/ui/view/android/bb;

    .line 1106
    iget-object v1, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v1}, Lcom/google/googlenav/F;->d()B

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_35

    .line 1107
    invoke-virtual {p0}, LaM/i;->aq()V

    .line 1111
    iget-object v1, p0, LaM/i;->r:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v1, :cond_31

    .line 1112
    invoke-virtual {p0}, LaM/i;->B()V

    .line 1141
    :goto_27
    if-eqz v0, :cond_e

    iget-object v1, p0, LaM/i;->r:Lcom/google/googlenav/ui/view/android/bb;

    if-eq v0, v1, :cond_e

    .line 1142
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->dismiss()V

    goto :goto_e

    .line 1115
    :cond_31
    invoke-virtual {p0}, LaM/i;->n()V

    goto :goto_27

    .line 1117
    :cond_35
    iget-object v1, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v1}, Lcom/google/googlenav/F;->d()B

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4d

    .line 1118
    invoke-virtual {p0}, LaM/i;->ap()V

    .line 1122
    iget-object v1, p0, LaM/i;->r:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v1, :cond_49

    .line 1123
    invoke-virtual {p0}, LaM/i;->A()V

    goto :goto_27

    .line 1126
    :cond_49
    invoke-virtual {p0}, LaM/i;->n()V

    goto :goto_27

    .line 1128
    :cond_4d
    iget-object v1, p0, LaM/i;->f:Lcom/google/googlenav/F;

    invoke-interface {v1}, Lcom/google/googlenav/F;->d()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5d

    .line 1129
    invoke-virtual {p0}, LaM/i;->an()Z

    .line 1130
    invoke-virtual {p0}, LaM/i;->r()V

    goto :goto_27

    .line 1133
    :cond_5d
    invoke-virtual {p0}, LaM/i;->al()V

    .line 1134
    invoke-virtual {p0}, LaM/i;->r()V

    goto :goto_27
.end method
