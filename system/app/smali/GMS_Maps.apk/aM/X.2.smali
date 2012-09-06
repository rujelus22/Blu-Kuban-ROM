.class public LaM/X;
.super LaM/m;
.source "SourceFile"

# interfaces
.implements LaM/ag;
.implements Lah/p;
.implements Lcom/google/googlenav/friend/ap;


# instance fields
.field private final B:Lcom/google/googlenav/ui/friend/q;

.field private C:Lcom/google/googlenav/friend/J;

.field private D:Lcom/google/googlenav/friend/p;

.field private E:LaM/ae;

.field private F:Lcom/google/googlenav/friend/ai;

.field private G:Lah/a;

.field private H:Lcom/google/googlenav/ui/friend/D;

.field private I:Lcom/google/googlenav/ui/friend/D;

.field private J:LaM/a;

.field private K:Lcom/google/googlenav/android/Y;

.field private L:Lcom/google/googlenav/friend/aM;

.field private M:Z

.field private N:[Lcom/google/googlenav/ui/aH;

.field private O:Lcom/google/googlenav/friend/t;

.field private P:Landroid/graphics/Point;

.field private Q:LaM/aF;

.field private R:Z

.field private S:Lcom/google/googlenav/ui/friend/C;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/friend/J;Lcom/google/googlenav/friend/p;Lcom/google/googlenav/friend/ai;LaM/a;)V
    .registers 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 234
    invoke-direct {p0, p1, p2, p3, p5}, LaM/m;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;)V

    .line 126
    new-instance v0, Lcom/google/googlenav/ui/friend/q;

    invoke-direct {v0}, Lcom/google/googlenav/ui/friend/q;-><init>()V

    iput-object v0, p0, LaM/X;->B:Lcom/google/googlenav/ui/friend/q;

    .line 172
    new-instance v1, Lcom/google/googlenav/friend/aM;

    const/4 v0, 0x0

    check-cast v0, Ljava/util/Vector;

    invoke-direct {v1, v0}, Lcom/google/googlenav/friend/aM;-><init>(Ljava/util/Vector;)V

    iput-object v1, p0, LaM/X;->L:Lcom/google/googlenav/friend/aM;

    .line 190
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, LaM/X;->P:Landroid/graphics/Point;

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, LaM/X;->Q:LaM/aF;

    .line 235
    invoke-virtual {p1}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v5

    move-object v0, p0

    move-object v1, p4

    move-object v2, p6

    move-object v3, p7

    move-object/from16 v4, p8

    move-object v6, p1

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v7}, LaM/X;->a(Lcom/google/googlenav/android/Y;Lcom/google/googlenav/friend/J;Lcom/google/googlenav/friend/p;Lcom/google/googlenav/friend/ai;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/ui/v;LaM/a;)V

    .line 237
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/friend/J;Lcom/google/googlenav/friend/p;Lcom/google/googlenav/friend/ai;Lcom/google/googlenav/F;LaM/a;)V
    .registers 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 220
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object/from16 v5, p9

    invoke-direct/range {v0 .. v5}, LaM/m;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/F;)V

    .line 126
    new-instance v0, Lcom/google/googlenav/ui/friend/q;

    invoke-direct {v0}, Lcom/google/googlenav/ui/friend/q;-><init>()V

    iput-object v0, p0, LaM/X;->B:Lcom/google/googlenav/ui/friend/q;

    .line 172
    new-instance v1, Lcom/google/googlenav/friend/aM;

    const/4 v0, 0x0

    check-cast v0, Ljava/util/Vector;

    invoke-direct {v1, v0}, Lcom/google/googlenav/friend/aM;-><init>(Ljava/util/Vector;)V

    iput-object v1, p0, LaM/X;->L:Lcom/google/googlenav/friend/aM;

    .line 190
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, LaM/X;->P:Landroid/graphics/Point;

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, LaM/X;->Q:LaM/aF;

    .line 221
    invoke-virtual {p1}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v5

    move-object v0, p0

    move-object v1, p4

    move-object v2, p6

    move-object v3, p7

    move-object/from16 v4, p8

    move-object v6, p1

    move-object/from16 v7, p10

    invoke-direct/range {v0 .. v7}, LaM/X;->a(Lcom/google/googlenav/android/Y;Lcom/google/googlenav/friend/J;Lcom/google/googlenav/friend/p;Lcom/google/googlenav/friend/ai;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/ui/v;LaM/a;)V

    .line 223
    return-void
.end method

.method static synthetic a(LaM/X;)Lcom/google/googlenav/ui/friend/q;
    .registers 2
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, LaM/X;->B:Lcom/google/googlenav/ui/friend/q;

    return-object v0
.end method

.method static synthetic a(LaM/X;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1}, LaM/X;->l(Z)V

    return-void
.end method

.method private a(Lcom/google/googlenav/android/Y;Lcom/google/googlenav/friend/J;Lcom/google/googlenav/friend/p;Lcom/google/googlenav/friend/ai;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/ui/v;LaM/a;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 247
    new-instance v0, LaM/S;

    invoke-virtual {p6}, Lcom/google/googlenav/ui/v;->l()Lcom/google/googlenav/L;

    move-result-object v1

    invoke-direct {v0, p0, v1}, LaM/S;-><init>(LaM/m;Lcom/google/googlenav/L;)V

    iput-object v0, p0, LaM/X;->A:LaM/bd;

    .line 249
    invoke-virtual {p6}, Lcom/google/googlenav/ui/v;->k()Lah/o;

    move-result-object v0

    invoke-virtual {v0}, Lah/o;->a()Lah/a;

    move-result-object v0

    iput-object v0, p0, LaM/X;->G:Lah/a;

    .line 250
    new-instance v0, Lcom/google/googlenav/ui/friend/D;

    iget-object v1, p0, LaM/X;->G:Lah/a;

    const/4 v2, 0x0

    sget v3, Lcom/google/googlenav/ui/bn;->bp:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlenav/ui/friend/D;-><init>(Lah/a;Lcom/google/googlenav/friend/aM;I)V

    iput-object v0, p0, LaM/X;->H:Lcom/google/googlenav/ui/friend/D;

    .line 252
    new-instance v0, Lcom/google/googlenav/ui/friend/D;

    iget-object v1, p0, LaM/X;->G:Lah/a;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlenav/ui/friend/D;-><init>(Lah/a;Lcom/google/googlenav/friend/aM;I)V

    iput-object v0, p0, LaM/X;->I:Lcom/google/googlenav/ui/friend/D;

    .line 254
    iput-object p2, p0, LaM/X;->C:Lcom/google/googlenav/friend/J;

    .line 255
    iput-object p3, p0, LaM/X;->D:Lcom/google/googlenav/friend/p;

    .line 256
    iput-object p4, p0, LaM/X;->F:Lcom/google/googlenav/friend/ai;

    .line 257
    iput-object p1, p0, LaM/X;->K:Lcom/google/googlenav/android/Y;

    .line 258
    iput-object p7, p0, LaM/X;->J:LaM/a;

    .line 262
    new-instance v0, LaM/ae;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LaM/ae;-><init>(LaM/X;LaM/Y;)V

    iput-object v0, p0, LaM/X;->E:LaM/ae;

    .line 264
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/googlenav/ui/aH;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iput-object v0, p0, LaM/X;->N:[Lcom/google/googlenav/ui/aH;

    .line 267
    new-instance v0, Lcom/google/googlenav/friend/t;

    iget-object v3, p0, LaM/X;->d:Lat/u;

    iget-object v4, p0, LaM/X;->B:Lcom/google/googlenav/ui/friend/q;

    move-object v1, p1

    move-object v2, p6

    move-object v5, p0

    move-object v6, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/googlenav/friend/t;-><init>(Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/v;Lat/u;Lcom/google/googlenav/ui/friend/q;LaM/X;Lcom/google/googlenav/friend/p;Lcom/google/googlenav/ui/wizard/ju;)V

    iput-object v0, p0, LaM/X;->O:Lcom/google/googlenav/friend/t;

    .line 270
    const-string v0, "WIFI_DETECTION_ALERT_ALLOWED"

    const/4 v1, 0x1

    new-instance v2, LaM/Y;

    invoke-direct {v2, p0}, LaM/Y;-><init>(LaM/X;)V

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/friend/aW;->a(Ljava/lang/String;ILcom/google/googlenav/friend/bd;)V

    .line 281
    iget-object v0, p0, LaM/X;->G:Lah/a;

    invoke-virtual {v0, p0}, Lah/a;->a(Lah/p;)V

    .line 282
    new-instance v0, Lcom/google/googlenav/ui/friend/C;

    invoke-direct {v0}, Lcom/google/googlenav/ui/friend/C;-><init>()V

    iput-object v0, p0, LaM/X;->S:Lcom/google/googlenav/ui/friend/C;

    .line 284
    new-instance v0, LaM/aF;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    new-instance v2, LaM/ac;

    iget-object v3, p0, LaM/X;->S:Lcom/google/googlenav/ui/friend/C;

    invoke-direct {v2, p0, v3}, LaM/ac;-><init>(LaM/X;Lcom/google/googlenav/ui/friend/C;)V

    invoke-direct {v0, v1, v2}, LaM/aF;-><init>(LY/c;LaM/aG;)V

    iput-object v0, p0, LaM/X;->Q:LaM/aF;

    .line 287
    return-void
.end method

.method private a(Lcom/google/googlenav/friend/aK;IILS/e;Lcom/google/googlenav/ui/u;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1667
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aK;->v()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1711
    :cond_6
    :goto_6
    return-void

    .line 1674
    :cond_7
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aK;->d()Lat/B;

    move-result-object v0

    .line 1675
    iget-object v1, p0, LaM/X;->c:Lat/p;

    iget-object v2, p0, LaM/X;->e:Landroid/graphics/Point;

    invoke-virtual {v1, v0, v2}, Lat/p;->a(Lat/B;Landroid/graphics/Point;)V

    .line 1682
    iget-object v0, p0, LaM/X;->e:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, p2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 1683
    iget-object v0, p0, LaM/X;->e:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, p3

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 1686
    iget-object v0, p0, LaM/X;->e:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, LaM/X;->e:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {p4, v0, v1, p2, p3}, LS/r;->a(LS/e;IIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1692
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aK;->z()C

    move-result v0

    .line 1693
    iget-object v1, p0, LaM/X;->a:Lcom/google/googlenav/ui/bn;

    invoke-virtual {p5}, Lcom/google/googlenav/ui/u;->a()LS/e;

    move-result-object v2

    iget-object v3, p0, LaM/X;->e:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, LaM/X;->e:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/googlenav/ui/bn;->a(CLS/e;II)V

    .line 1695
    iget-object v0, p0, LaM/X;->e:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sget v1, Lah/m;->a:I

    add-int/2addr v0, v1

    .line 1696
    iget-object v1, p0, LaM/X;->e:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sget v2, Lah/m;->b:I

    add-int/2addr v1, v2

    .line 1699
    iget-object v2, p0, LaM/X;->G:Lah/a;

    new-instance v3, Lcom/google/googlenav/ui/friend/E;

    invoke-virtual {p1}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v4

    sget v5, Lcom/google/googlenav/ui/bn;->bq:I

    invoke-direct {v3, v4, v5}, Lcom/google/googlenav/ui/friend/E;-><init>(Ljava/lang/Long;I)V

    invoke-virtual {v2, v3}, Lah/a;->a(Lcom/google/googlenav/ui/friend/E;)LS/f;

    move-result-object v2

    .line 1702
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aK;->j()Z

    move-result v3

    if-eqz v3, :cond_74

    if-eqz v2, :cond_74

    .line 1704
    invoke-virtual {p5}, Lcom/google/googlenav/ui/u;->a()LS/e;

    move-result-object v3

    invoke-interface {v3, v2, v0, v1}, LS/e;->a(LS/f;II)V

    goto :goto_6

    .line 1707
    :cond_74
    invoke-virtual {p5}, Lcom/google/googlenav/ui/u;->a()LS/e;

    move-result-object v2

    iget-object v3, p0, LaM/X;->a:Lcom/google/googlenav/ui/bn;

    invoke-virtual {p1}, Lcom/google/googlenav/friend/aK;->j()Z

    move-result v4

    sget v5, Lcom/google/googlenav/ui/bn;->bq:I

    invoke-virtual {v3, v4, v5}, Lcom/google/googlenav/ui/bn;->a(ZI)LS/f;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, LS/e;->a(LS/f;II)V

    goto/16 :goto_6
.end method

.method static synthetic b(LaM/X;)Lcom/google/googlenav/friend/p;
    .registers 2
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, LaM/X;->D:Lcom/google/googlenav/friend/p;

    return-object v0
.end method

.method static synthetic b(LaM/X;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 93
    iput-boolean p1, p0, LaM/X;->R:Z

    return p1
.end method

.method public static bL()I
    .registers 3

    .prologue
    .line 1596
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    const-wide v1, 0x4007333333333333L

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/Config;->a(D)I

    move-result v0

    return v0
.end method

.method private bS()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5

    .prologue
    .line 483
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/ag;->g:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 486
    const/16 v1, 0xf

    invoke-virtual {p0}, LaM/X;->bO()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 488
    return-object v0
.end method

.method private bT()Lcom/google/googlenav/friend/aK;
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 545
    iget-object v1, p0, LaM/X;->f:Lcom/google/googlenav/F;

    if-nez v1, :cond_7

    .line 556
    :cond_6
    :goto_6
    return-object v0

    .line 548
    :cond_7
    iget-object v1, p0, LaM/X;->f:Lcom/google/googlenav/F;

    invoke-interface {v1}, Lcom/google/googlenav/F;->c()I

    move-result v1

    .line 549
    iget-object v3, p0, LaM/X;->f:Lcom/google/googlenav/F;

    invoke-interface {v3}, Lcom/google/googlenav/F;->f()I

    move-result v3

    if-lt v1, v3, :cond_1b

    .line 551
    iget-object v1, p0, LaM/X;->f:Lcom/google/googlenav/F;

    invoke-interface {v1, v2}, Lcom/google/googlenav/F;->a(I)V

    move v1, v2

    .line 553
    :cond_1b
    if-eq v1, v2, :cond_6

    .line 556
    invoke-virtual {p0}, LaM/X;->c()Lcom/google/googlenav/friend/aM;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/aM;->a(I)Lcom/google/googlenav/friend/aK;

    move-result-object v0

    goto :goto_6
.end method

.method private bU()V
    .registers 6

    .prologue
    .line 1150
    .line 1152
    invoke-direct {p0}, LaM/X;->bW()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1153
    invoke-virtual {p0}, LaM/X;->bE()Lcom/google/googlenav/friend/aK;

    move-result-object v0

    .line 1157
    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->r()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    mul-long/2addr v1, v3

    long-to-int v1, v1

    .line 1158
    iget-object v2, p0, LaM/X;->N:[Lcom/google/googlenav/ui/aH;

    const/4 v3, 0x0

    new-instance v4, LaM/aa;

    invoke-direct {v4, p0, v1, v0}, LaM/aa;-><init>(LaM/X;ILcom/google/googlenav/friend/aK;)V

    aput-object v4, v2, v3

    .line 1225
    :cond_1c
    return-void
.end method

.method private bV()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1235
    iget-boolean v0, p0, LaM/X;->o:Z

    if-nez v0, :cond_32

    move v0, v1

    .line 1238
    :goto_7
    iget-object v3, p0, LaM/X;->f:Lcom/google/googlenav/F;

    if-nez v3, :cond_34

    move v3, v1

    .line 1241
    :goto_c
    iget-object v4, p0, LaM/X;->f:Lcom/google/googlenav/F;

    if-eqz v4, :cond_36

    invoke-virtual {p0}, LaM/X;->ah()Z

    move-result v4

    if-eqz v4, :cond_36

    move v4, v1

    .line 1245
    :goto_17
    iget-object v5, p0, LaM/X;->f:Lcom/google/googlenav/F;

    if-eqz v5, :cond_38

    invoke-virtual {p0}, LaM/X;->af()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-virtual {p0}, LaM/X;->bE()Lcom/google/googlenav/friend/aK;

    move-result-object v5

    if-nez v5, :cond_38

    move v5, v1

    .line 1251
    :goto_28
    if-nez v0, :cond_30

    if-nez v3, :cond_30

    if-nez v4, :cond_30

    if-eqz v5, :cond_31

    :cond_30
    move v2, v1

    :cond_31
    return v2

    :cond_32
    move v0, v2

    .line 1235
    goto :goto_7

    :cond_34
    move v3, v2

    .line 1238
    goto :goto_c

    :cond_36
    move v4, v2

    .line 1241
    goto :goto_17

    :cond_38
    move v5, v2

    .line 1245
    goto :goto_28
.end method

.method private bW()Z
    .registers 5

    .prologue
    .line 1727
    invoke-virtual {p0}, LaM/X;->bE()Lcom/google/googlenav/friend/aK;

    move-result-object v0

    .line 1729
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->v()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->b()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {}, Lcom/google/googlenav/friend/aJ;->b()Z

    move-result v1

    if-eqz v1, :cond_28

    :cond_18
    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->r()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_28

    iget-boolean v0, p0, LaM/X;->o:Z

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method private bX()V
    .registers 2

    .prologue
    .line 1939
    const/4 v0, 0x0

    iput-object v0, p0, LaM/X;->h:Lcom/google/googlenav/E;

    .line 1940
    invoke-virtual {p0}, LaM/X;->an()Z

    .line 1941
    return-void
.end method

.method static synthetic c(LaM/X;)LaM/ae;
    .registers 2
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, LaM/X;->E:LaM/ae;

    return-object v0
.end method

.method private c(Lcom/google/googlenav/aW;)V
    .registers 16
    .parameter

    .prologue
    .line 756
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->f()I

    move-result v0

    if-nez v0, :cond_9

    .line 894
    :cond_8
    :goto_8
    return-void

    .line 762
    :cond_9
    invoke-virtual {p0}, LaM/X;->c()Lcom/google/googlenav/friend/aM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aM;->c()Z

    move-result v6

    .line 765
    const-wide/16 v0, -0x1

    .line 767
    if-eqz v6, :cond_5f

    .line 771
    invoke-direct {p0}, LaM/X;->bT()Lcom/google/googlenav/friend/aK;

    move-result-object v2

    .line 772
    if-eqz v2, :cond_23

    .line 773
    invoke-virtual {v2}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 779
    :cond_23
    iget-object v2, p0, LaM/X;->f:Lcom/google/googlenav/F;

    invoke-interface {v2}, Lcom/google/googlenav/F;->d()B

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/googlenav/aW;->a(B)V

    move-wide v1, v0

    .line 789
    :goto_2d
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    .line 790
    if-eqz v6, :cond_6d

    .line 791
    const/4 v0, 0x0

    :goto_35
    iget-object v3, p0, LaM/X;->f:Lcom/google/googlenav/F;

    invoke-interface {v3}, Lcom/google/googlenav/F;->f()I

    move-result v3

    if-ge v0, v3, :cond_6d

    .line 792
    invoke-virtual {p0}, LaM/X;->c()Lcom/google/googlenav/friend/aM;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/googlenav/friend/aM;->a(I)Lcom/google/googlenav/friend/aK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 793
    invoke-virtual {p0}, LaM/X;->c()Lcom/google/googlenav/friend/aM;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/googlenav/friend/aM;->a(I)Lcom/google/googlenav/friend/aK;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 780
    :cond_5f
    if-nez v6, :cond_6b

    invoke-virtual {p0}, LaM/X;->ae()Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 784
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/google/googlenav/aW;->a(B)V

    :cond_6b
    move-wide v1, v0

    goto :goto_2d

    .line 798
    :cond_6d
    new-instance v0, Lcom/google/googlenav/friend/aM;

    invoke-direct {v0, p1}, Lcom/google/googlenav/friend/aM;-><init>(Lcom/google/googlenav/F;)V

    iput-object v0, p0, LaM/X;->L:Lcom/google/googlenav/friend/aM;

    .line 803
    const/4 v3, 0x0

    .line 805
    const/4 v4, 0x0

    .line 807
    const/4 v0, 0x0

    iget-object v5, p0, LaM/X;->L:Lcom/google/googlenav/friend/aM;

    invoke-virtual {v5}, Lcom/google/googlenav/friend/aM;->b()I

    move-result v8

    move v5, v0

    :goto_7e
    if-ge v5, v8, :cond_12f

    .line 808
    iget-object v0, p0, LaM/X;->L:Lcom/google/googlenav/friend/aM;

    invoke-virtual {v0, v5}, Lcom/google/googlenav/friend/aM;->a(I)Lcom/google/googlenav/friend/aK;

    move-result-object v9

    .line 815
    invoke-virtual {v9}, Lcom/google/googlenav/friend/aK;->b()Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-static {}, Lcom/google/googlenav/friend/aJ;->b()Z

    move-result v0

    if-nez v0, :cond_97

    .line 817
    iget-object v0, p0, LaM/X;->E:LaM/ae;

    invoke-virtual {v0, v9}, LaM/ae;->a(Lcom/google/googlenav/friend/aK;)Z

    .line 822
    :cond_97
    invoke-virtual {v9}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/aK;

    .line 823
    if-eqz v0, :cond_18c

    .line 824
    invoke-virtual {v9}, Lcom/google/googlenav/friend/aK;->d()Lat/B;

    move-result-object v10

    invoke-virtual {v9}, Lcom/google/googlenav/friend/aK;->r()J

    move-result-wide v11

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->d()Lat/B;

    move-result-object v13

    invoke-static {v10, v11, v12, v13}, Lcom/google/googlenav/friend/J;->a(Lat/B;JLat/B;)Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/google/googlenav/friend/aK;->d(Z)V

    .line 831
    invoke-virtual {v9}, Lcom/google/googlenav/friend/aK;->H()Z

    move-result v10

    if-eqz v10, :cond_bd

    .line 832
    const/4 v3, 0x1

    .line 834
    :cond_bd
    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->H()Z

    move-result v10

    if-eqz v10, :cond_d3

    .line 837
    invoke-virtual {v9}, Lcom/google/googlenav/friend/aK;->o()J

    move-result-wide v10

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->o()J

    move-result-wide v12

    cmp-long v0, v10, v12

    if-nez v0, :cond_102

    .line 839
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lcom/google/googlenav/friend/aK;->h(Z)V

    .line 848
    :cond_d3
    :goto_d3
    if-nez v4, :cond_18c

    invoke-virtual {v9}, Lcom/google/googlenav/friend/aK;->b()Z

    move-result v0

    if-nez v0, :cond_18c

    invoke-virtual {v9}, Lcom/google/googlenav/friend/aK;->k()Z

    move-result v0

    if-nez v0, :cond_18c

    .line 849
    const/4 v0, 0x1

    .line 855
    :goto_e2
    if-nez v6, :cond_108

    invoke-virtual {v9}, Lcom/google/googlenav/friend/aK;->b()Z

    move-result v4

    if-eqz v4, :cond_108

    const-wide/16 v10, -0x1

    cmp-long v4, v1, v10

    if-nez v4, :cond_108

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->az()Z

    move-result v4

    if-nez v4, :cond_108

    .line 859
    invoke-virtual {p1, v5}, Lcom/google/googlenav/aW;->a(I)V

    .line 871
    :cond_f9
    :goto_f9
    invoke-virtual {v9}, Lcom/google/googlenav/friend/aK;->y()V

    .line 807
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v0

    goto/16 :goto_7e

    .line 843
    :cond_102
    iget-object v0, p0, LaM/X;->S:Lcom/google/googlenav/ui/friend/C;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/friend/C;->a()V

    goto :goto_d3

    .line 860
    :cond_108
    invoke-virtual {v9}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v4, v1, v10

    if-nez v4, :cond_f9

    .line 861
    invoke-virtual {p1, v5}, Lcom/google/googlenav/aW;->a(I)V

    .line 865
    if-eqz v6, :cond_f9

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->d()B

    move-result v4

    iget-object v10, p0, LaM/X;->f:Lcom/google/googlenav/F;

    invoke-interface {v10}, Lcom/google/googlenav/F;->d()B

    move-result v10

    if-eq v4, v10, :cond_f9

    .line 866
    iget-object v4, p0, LaM/X;->f:Lcom/google/googlenav/F;

    invoke-interface {v4}, Lcom/google/googlenav/F;->d()B

    move-result v4

    invoke-virtual {p1, v4}, Lcom/google/googlenav/aW;->a(B)V

    goto :goto_f9

    .line 874
    :cond_12f
    if-eqz v3, :cond_13d

    .line 875
    iget-object v0, p0, LaM/X;->S:Lcom/google/googlenav/ui/friend/C;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/friend/C;->b()V

    .line 876
    invoke-virtual {p0}, LaM/X;->bM()LaM/aF;

    move-result-object v0

    invoke-virtual {v0}, LaM/aF;->a()V

    .line 881
    :cond_13d
    iget-object v0, p0, LaM/X;->L:Lcom/google/googlenav/friend/aM;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aM;->a()V

    .line 883
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 884
    const/4 v0, 0x0

    iget-object v2, p0, LaM/X;->L:Lcom/google/googlenav/friend/aM;

    invoke-virtual {v2}, Lcom/google/googlenav/friend/aM;->b()I

    move-result v2

    :goto_14e
    if-ge v0, v2, :cond_16b

    .line 885
    invoke-virtual {p0}, LaM/X;->c()Lcom/google/googlenav/friend/aM;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/googlenav/friend/aM;->a(I)Lcom/google/googlenav/friend/aK;

    move-result-object v3

    .line 886
    new-instance v4, Lah/n;

    invoke-virtual {v3}, Lcom/google/googlenav/friend/aK;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lah/n;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v1, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 884
    add-int/lit8 v0, v0, 0x1

    goto :goto_14e

    .line 889
    :cond_16b
    iget-object v0, p0, LaM/X;->G:Lah/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lah/a;->a(Ljava/util/Vector;Lah/p;)Z

    .line 890
    new-instance v0, Lcom/google/googlenav/ui/friend/D;

    iget-object v1, p0, LaM/X;->G:Lah/a;

    iget-object v2, p0, LaM/X;->L:Lcom/google/googlenav/friend/aM;

    sget v3, Lcom/google/googlenav/ui/bn;->bp:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlenav/ui/friend/D;-><init>(Lah/a;Lcom/google/googlenav/friend/aM;I)V

    iput-object v0, p0, LaM/X;->H:Lcom/google/googlenav/ui/friend/D;

    .line 892
    new-instance v0, Lcom/google/googlenav/ui/friend/D;

    iget-object v1, p0, LaM/X;->G:Lah/a;

    iget-object v2, p0, LaM/X;->L:Lcom/google/googlenav/friend/aM;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlenav/ui/friend/D;-><init>(Lah/a;Lcom/google/googlenav/friend/aM;I)V

    iput-object v0, p0, LaM/X;->I:Lcom/google/googlenav/ui/friend/D;

    goto/16 :goto_8

    :cond_18c
    move v0, v4

    goto/16 :goto_e2
.end method

.method static synthetic d(LaM/X;)V
    .registers 1
    .parameter

    .prologue
    .line 93
    invoke-direct {p0}, LaM/X;->bX()V

    return-void
.end method

.method static synthetic e(LaM/X;)Lcom/google/googlenav/android/Y;
    .registers 2
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, LaM/X;->K:Lcom/google/googlenav/android/Y;

    return-object v0
.end method

.method static synthetic f(LaM/X;)Z
    .registers 2
    .parameter

    .prologue
    .line 93
    iget-boolean v0, p0, LaM/X;->M:Z

    return v0
.end method

.method private g(LZ/a;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1263
    invoke-virtual {p0}, LaM/X;->s()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    .line 1266
    if-nez v0, :cond_c

    move v0, v1

    .line 1281
    :goto_b
    return v0

    .line 1271
    :cond_c
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1f

    invoke-virtual {p0}, LaM/X;->af()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1272
    invoke-virtual {p0}, LaM/X;->bI()V

    move v0, v2

    .line 1273
    goto :goto_b

    .line 1276
    :cond_1f
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_31

    invoke-virtual {p0}, LaM/X;->ag()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1278
    invoke-virtual {p0}, LaM/X;->bJ()V

    move v0, v2

    .line 1279
    goto :goto_b

    :cond_31
    move v0, v1

    .line 1281
    goto :goto_b
.end method

.method private l(Z)V
    .registers 10
    .parameter

    .prologue
    const/16 v1, 0x11

    .line 1402
    invoke-virtual {p0}, LaM/X;->ax()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1462
    :cond_8
    :goto_8
    return-void

    .line 1407
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, LaM/X;->M:Z

    .line 1410
    invoke-virtual {p0}, LaM/X;->bE()Lcom/google/googlenav/friend/aK;

    move-result-object v2

    .line 1411
    if-eqz v2, :cond_8

    .line 1414
    invoke-virtual {v2}, Lcom/google/googlenav/friend/aK;->v()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1418
    invoke-virtual {v2}, Lcom/google/googlenav/friend/aK;->d()Lat/B;

    move-result-object v3

    .line 1419
    if-eqz v3, :cond_8

    .line 1420
    invoke-virtual {v2}, Lcom/google/googlenav/friend/aK;->r()J

    move-result-wide v4

    .line 1421
    long-to-int v0, v4

    .line 1422
    int-to-long v6, v0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2b

    .line 1423
    const v0, 0x7fffffff

    .line 1425
    :cond_2b
    invoke-static {v0, v3}, Lcom/google/googlenav/ui/ap;->a(ILat/B;)Lat/Y;

    move-result-object v0

    .line 1429
    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_37

    if-nez v0, :cond_3d

    .line 1430
    :cond_37
    const/16 v0, 0xf

    invoke-static {v0}, Lat/Y;->b(I)Lat/Y;

    move-result-object v0

    .line 1437
    :cond_3d
    iget-object v4, p0, LaM/X;->d:Lat/u;

    invoke-virtual {v4, v3}, Lat/u;->e(Lat/B;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 1438
    iget-object v4, p0, LaM/X;->d:Lat/u;

    invoke-virtual {v4}, Lat/u;->d()Lat/Y;

    move-result-object v4

    invoke-virtual {v4}, Lat/Y;->a()I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1442
    :cond_53
    invoke-virtual {v0}, Lat/Y;->a()I

    move-result v4

    if-le v4, v1, :cond_5d

    .line 1443
    invoke-static {v1}, Lat/Y;->b(I)Lat/Y;

    move-result-object v0

    .line 1446
    :cond_5d
    if-eqz p1, :cond_74

    .line 1447
    invoke-virtual {v2}, Lcom/google/googlenav/friend/aK;->b()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 1450
    iget-object v1, p0, LaM/X;->d:Lat/u;

    invoke-virtual {v1, v3, v0}, Lat/u;->a(Lat/B;Lat/Y;)V

    .line 1460
    :goto_6a
    const/4 v0, 0x1

    iput-boolean v0, p0, LaM/X;->M:Z

    goto :goto_8

    .line 1452
    :cond_6e
    iget-object v1, p0, LaM/X;->d:Lat/u;

    invoke-virtual {v1, v3, v0}, Lat/u;->d(Lat/B;Lat/Y;)V

    goto :goto_6a

    .line 1455
    :cond_74
    iget-object v1, p0, LaM/X;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->Q()V

    .line 1456
    iget-object v1, p0, LaM/X;->d:Lat/u;

    invoke-virtual {v1, v3, v0}, Lat/u;->e(Lat/B;Lat/Y;)V

    goto :goto_6a
.end method


# virtual methods
.method protected B()V
    .registers 1

    .prologue
    .line 1974
    invoke-super {p0}, LaM/m;->B()V

    .line 1975
    invoke-virtual {p0}, LaM/X;->w()V

    .line 1976
    return-void
.end method

.method public I()Z
    .registers 2

    .prologue
    .line 426
    const/4 v0, 0x1

    return v0
.end method

.method public M()Z
    .registers 2

    .prologue
    .line 1551
    const/4 v0, 0x1

    return v0
.end method

.method public N()Z
    .registers 2

    .prologue
    .line 1556
    const/4 v0, 0x1

    return v0
.end method

.method protected O()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1543
    iget-object v2, p0, LaM/X;->L:Lcom/google/googlenav/friend/aM;

    if-eqz v2, :cond_17

    invoke-super {p0}, LaM/m;->O()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1544
    iget-object v2, p0, LaM/X;->L:Lcom/google/googlenav/friend/aM;

    invoke-virtual {v2}, Lcom/google/googlenav/friend/aM;->g()I

    move-result v2

    if-le v2, v0, :cond_15

    .line 1546
    :goto_14
    return v0

    :cond_15
    move v0, v1

    .line 1544
    goto :goto_14

    :cond_17
    move v0, v1

    .line 1546
    goto :goto_14
.end method

.method public P_()V
    .registers 2

    .prologue
    .line 1754
    iget-object v0, p0, LaM/X;->r:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_11

    iget-object v0, p0, LaM/X;->r:Lcom/google/googlenav/ui/view/android/bb;

    instance-of v0, v0, Lah/p;

    if-eqz v0, :cond_11

    .line 1755
    iget-object v0, p0, LaM/X;->r:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lah/p;

    invoke-interface {v0}, Lah/p;->P_()V

    .line 1757
    :cond_11
    return-void
.end method

.method public R()V
    .registers 1

    .prologue
    .line 973
    invoke-super {p0}, LaM/m;->R()V

    .line 974
    return-void
.end method

.method protected T()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1561
    const/16 v0, 0x222

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected U()I
    .registers 2

    .prologue
    .line 1566
    const/16 v0, 0x11

    return v0
.end method

.method protected X()Z
    .registers 3

    .prologue
    .line 962
    invoke-super {p0}, LaM/m;->X()Z

    move-result v0

    .line 963
    iget-boolean v1, p0, LaM/X;->R:Z

    or-int/2addr v0, v1

    .line 964
    const/4 v1, 0x0

    iput-boolean v1, p0, LaM/X;->R:Z

    .line 965
    return v0
.end method

.method public Y()V
    .registers 2

    .prologue
    .line 1112
    invoke-super {p0}, LaM/m;->Y()V

    .line 1113
    const/4 v0, 0x0

    iput-boolean v0, p0, LaM/X;->M:Z

    .line 1114
    return-void
.end method

.method public Z()V
    .registers 2

    .prologue
    .line 363
    invoke-super {p0}, LaM/m;->Z()V

    .line 368
    iget-object v0, p0, LaM/X;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0, p0}, LaM/am;->c(LaM/i;)V

    .line 369
    return-void
.end method

.method public a(Lat/B;Ljava/lang/Long;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1503
    invoke-virtual {p0}, LaM/X;->c()Lcom/google/googlenav/friend/aM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aM;->d()Lcom/google/googlenav/friend/aK;

    move-result-object v0

    .line 1506
    if-nez v0, :cond_b

    .line 1539
    :goto_a
    return-void

    .line 1513
    :cond_b
    if-eqz p1, :cond_26

    .line 1514
    invoke-virtual {v0, p1}, Lcom/google/googlenav/friend/aK;->a(Lat/g;)V

    .line 1515
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/friend/aK;->a(J)V

    .line 1519
    if-nez p2, :cond_26

    .line 1520
    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/friend/aK;->c(J)V

    .line 1525
    :cond_26
    if-eqz p2, :cond_2f

    .line 1526
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/friend/aK;->c(J)V

    .line 1530
    :cond_2f
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LaM/X;->j(I)V

    .line 1533
    if-eqz p1, :cond_38

    .line 1534
    const/4 v0, 0x1

    iput-boolean v0, p0, LaM/X;->M:Z

    .line 1538
    :cond_38
    invoke-virtual {p0}, LaM/X;->b()V

    goto :goto_a
.end method

.method protected a(Lcom/google/googlenav/F;)V
    .registers 3
    .parameter

    .prologue
    .line 932
    check-cast p1, Lcom/google/googlenav/aW;

    .line 935
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->w()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 936
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0}, Las/f;->p()V

    .line 958
    :cond_f
    :goto_f
    return-void

    .line 940
    :cond_10
    invoke-direct {p0, p1}, LaM/X;->c(Lcom/google/googlenav/aW;)V

    .line 943
    iput-object p1, p0, LaM/X;->f:Lcom/google/googlenav/F;

    .line 946
    invoke-virtual {p0}, LaM/X;->bG()V

    .line 950
    invoke-virtual {p0}, LaM/X;->ax()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 951
    invoke-virtual {p0}, LaM/X;->j()V

    .line 955
    :cond_21
    invoke-static {}, Lcom/google/googlenav/friend/aJ;->b()Z

    move-result v0

    if-nez v0, :cond_f

    .line 956
    iget-object v0, p0, LaM/X;->E:LaM/ae;

    invoke-virtual {v0}, LaM/ae;->a()V

    goto :goto_f
.end method

.method public a(Lcom/google/googlenav/R;Lcom/google/googlenav/E;I)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 1762
    invoke-super {p0, p1, p2, p3}, LaM/m;->a(Lcom/google/googlenav/R;Lcom/google/googlenav/E;I)V

    .line 1765
    invoke-static {p3}, Lcom/google/googlenav/Q;->a(I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1766
    invoke-virtual {p0}, LaM/X;->c()Lcom/google/googlenav/friend/aM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aM;->d()Lcom/google/googlenav/friend/aK;

    move-result-object v0

    .line 1767
    if-eqz v0, :cond_38

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1768
    :goto_1d
    invoke-virtual {p0}, LaM/X;->bE()Lcom/google/googlenav/friend/aK;

    move-result-object v4

    .line 1769
    if-eqz v4, :cond_2b

    invoke-virtual {v4}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1775
    :cond_2b
    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/R;->b(Ljava/lang/String;)Lcom/google/googlenav/R;

    .line 1779
    :cond_33
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/R;->c(Ljava/lang/String;)Lcom/google/googlenav/R;

    .line 1780
    return-void

    :cond_38
    move-wide v0, v2

    .line 1767
    goto :goto_1d
.end method

.method public a(Lcom/google/googlenav/friend/aK;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 566
    if-nez p1, :cond_9

    .line 567
    iget-object v0, p0, LaM/X;->f:Lcom/google/googlenav/F;

    invoke-interface {v0, v3}, Lcom/google/googlenav/F;->a(I)V

    .line 575
    :cond_8
    :goto_8
    return-void

    .line 569
    :cond_9
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 570
    invoke-virtual {p0}, LaM/X;->c()Lcom/google/googlenav/friend/aM;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/friend/aM;->a(J)I

    move-result v0

    .line 571
    if-eq v0, v3, :cond_8

    .line 572
    iget-object v1, p0, LaM/X;->f:Lcom/google/googlenav/F;

    invoke-interface {v1, v0}, Lcom/google/googlenav/F;->a(I)V

    goto :goto_8
.end method

.method protected a(Ljava/io/DataOutput;)V
    .registers 3
    .parameter

    .prologue
    .line 436
    iget-object v0, p0, LaM/X;->f:Lcom/google/googlenav/F;

    check-cast v0, Lcom/google/googlenav/aW;

    .line 437
    if-eqz v0, :cond_d

    .line 438
    invoke-direct {p0}, LaM/X;->bS()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 439
    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Ljava/io/DataOutput;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 441
    :cond_d
    return-void
.end method

.method public a(ZLcom/google/googlenav/aW;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 713
    invoke-virtual {p0}, LaM/X;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    .line 714
    instance-of v3, v0, Lcom/google/googlenav/aW;

    if-eqz v3, :cond_19

    check-cast v0, Lcom/google/googlenav/aW;

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->ay()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/google/googlenav/aW;->ay()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-ltz v0, :cond_19

    .line 748
    :goto_18
    return-void

    .line 722
    :cond_19
    invoke-virtual {p0, p2}, LaM/X;->b(Lcom/google/googlenav/F;)V

    .line 726
    if-eqz p1, :cond_46

    iget-boolean v0, p0, LaM/X;->M:Z

    if-nez v0, :cond_28

    invoke-virtual {p0}, LaM/X;->ae()Z

    move-result v0

    if-eqz v0, :cond_46

    :cond_28
    move v0, v1

    .line 730
    :goto_29
    if-eqz v0, :cond_52

    .line 732
    invoke-virtual {p2}, Lcom/google/googlenav/aW;->c()I

    move-result v0

    if-ltz v0, :cond_48

    .line 733
    invoke-virtual {p2}, Lcom/google/googlenav/aW;->c()I

    move-result v0

    invoke-virtual {p0, v0}, LaM/X;->b(I)V

    .line 739
    :cond_38
    :goto_38
    invoke-virtual {p0}, LaM/X;->an()Z

    .line 740
    invoke-direct {p0, v1}, LaM/X;->l(Z)V

    .line 747
    :cond_3e
    :goto_3e
    const/16 v0, 0x144

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, LaM/X;->a(IILjava/lang/Object;)Z

    goto :goto_18

    :cond_46
    move v0, v2

    .line 726
    goto :goto_29

    .line 734
    :cond_48
    invoke-virtual {p2}, Lcom/google/googlenav/aW;->f()I

    move-result v0

    if-lez v0, :cond_38

    .line 735
    invoke-virtual {p0, v2}, LaM/X;->b(I)V

    goto :goto_38

    .line 741
    :cond_52
    invoke-virtual {p0}, LaM/X;->ag()Z

    move-result v0

    if-nez v0, :cond_5e

    invoke-virtual {p0}, LaM/X;->af()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 742
    :cond_5e
    invoke-virtual {p2}, Lcom/google/googlenav/aW;->c()I

    move-result v0

    invoke-virtual {p0, v0}, LaM/X;->b(I)V

    .line 743
    invoke-virtual {p0}, LaM/X;->an()Z

    goto :goto_3e
.end method

.method public a([Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 900
    if-nez p1, :cond_4

    .line 923
    :cond_3
    :goto_3
    return-void

    .line 904
    :cond_4
    const/4 v0, 0x0

    :goto_5
    array-length v1, p1

    if-ge v0, v1, :cond_34

    .line 905
    aget-object v1, p1, v0

    .line 906
    invoke-static {v1, v6}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 907
    if-eqz v2, :cond_31

    .line 908
    invoke-static {v2, v6}, Lcom/google/googlenav/common/io/protocol/b;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v2

    .line 910
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_31

    .line 911
    iget-object v4, p0, LaM/X;->L:Lcom/google/googlenav/friend/aM;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/google/googlenav/friend/aM;->a(Ljava/lang/Long;)Lcom/google/googlenav/friend/aK;

    move-result-object v2

    .line 912
    if-eqz v2, :cond_31

    invoke-virtual {v2, v1}, Lcom/google/googlenav/friend/aK;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 914
    iget-object v1, p0, LaM/X;->S:Lcom/google/googlenav/ui/friend/C;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/friend/C;->a()V

    .line 904
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 920
    :cond_34
    invoke-virtual {p0}, LaM/X;->ae()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 921
    iget-object v0, p0, LaM/X;->r:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/friend/r;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/friend/r;->k()V

    goto :goto_3
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1020
    iget-object v0, p0, LaM/X;->O:Lcom/google/googlenav/friend/t;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/googlenav/friend/t;->a(IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1, p2, p3}, LaM/m;->a(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public a(Lcom/google/googlenav/ui/view/J;)Z
    .registers 3
    .parameter

    .prologue
    .line 1287
    iget-object v0, p0, LaM/X;->f:Lcom/google/googlenav/F;

    invoke-static {v0}, Lcom/google/googlenav/friend/af;->a(Lcom/google/googlenav/F;)V

    .line 1288
    invoke-super {p0, p1}, LaM/m;->a(Lcom/google/googlenav/ui/view/J;)Z

    move-result v0

    return v0
.end method

.method protected a(Ljava/io/DataInput;)Z
    .registers 7
    .parameter

    .prologue
    .line 452
    new-instance v0, Lcom/google/googlenav/aW;

    invoke-direct {v0}, Lcom/google/googlenav/aW;-><init>()V

    .line 453
    iput-object v0, p0, LaM/X;->f:Lcom/google/googlenav/F;

    .line 454
    iget-object v1, p0, LaM/X;->J:LaM/a;

    invoke-virtual {p0}, LaM/X;->av()I

    move-result v2

    iget-object v3, p0, LaM/X;->K:Lcom/google/googlenav/android/Y;

    new-instance v4, LaM/Z;

    invoke-direct {v4, p0, v0}, LaM/Z;-><init>(LaM/X;Lcom/google/googlenav/aW;)V

    invoke-virtual {v1, v2, v3, v4}, LaM/a;->a(ILcom/google/googlenav/android/Y;LaM/f;)V

    .line 478
    const/4 v0, 0x1

    return v0
.end method

.method public aB()Z
    .registers 2

    .prologue
    .line 323
    const/4 v0, 0x1

    return v0
.end method

.method public aD()Z
    .registers 2

    .prologue
    .line 338
    const/4 v0, 0x1

    return v0
.end method

.method public aF()I
    .registers 2

    .prologue
    .line 497
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, LaM/X;->ag()Z

    move-result v0

    if-eqz v0, :cond_14

    const v0, 0x7f11000c

    :goto_13
    return v0

    :cond_14
    invoke-super {p0}, LaM/m;->aF()I

    move-result v0

    goto :goto_13
.end method

.method public aG()I
    .registers 2

    .prologue
    .line 507
    invoke-virtual {p0}, LaM/X;->ag()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f02027f

    :goto_9
    return v0

    :cond_a
    invoke-super {p0}, LaM/m;->aG()I

    move-result v0

    goto :goto_9
.end method

.method public aH()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 512
    invoke-virtual {p0}, LaM/X;->ag()Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x1a2

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    invoke-super {p0}, LaM/m;->aH()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c
.end method

.method public aJ()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 517
    const/16 v0, 0x162

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 518
    return-object v0
.end method

.method public aK()Ljava/lang/String;
    .registers 2

    .prologue
    .line 313
    const/16 v0, 0x246

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aL()LS/f;
    .registers 3

    .prologue
    .line 318
    iget-object v0, p0, LaM/X;->a:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->p()LS/g;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/bn;->af:C

    invoke-interface {v0, v1}, LS/g;->e(C)LS/f;

    move-result-object v0

    return-object v0
.end method

.method public aM()Z
    .registers 2

    .prologue
    .line 333
    const/4 v0, 0x1

    return v0
.end method

.method protected aT()Z
    .registers 5

    .prologue
    .line 344
    iget-object v0, p0, LaM/X;->F:Lcom/google/googlenav/friend/ai;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/friend/ai;->a(Lcom/google/googlenav/friend/ap;)V

    .line 346
    iget-object v0, p0, LaM/X;->C:Lcom/google/googlenav/friend/J;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/J;->a()Lcom/google/googlenav/friend/K;

    move-result-object v0

    .line 348
    if-eqz v0, :cond_18

    .line 350
    iget-object v1, p0, LaM/X;->E:LaM/ae;

    iget-object v2, v0, Lcom/google/googlenav/friend/K;->a:Lat/B;

    iget v3, v0, Lcom/google/googlenav/friend/K;->c:I

    iget-object v0, v0, Lcom/google/googlenav/friend/K;->d:Ln/B;

    invoke-virtual {v1, v2, v3, v0}, LaM/ae;->a(Lat/B;ILn/B;)V

    .line 353
    :cond_18
    iget-object v0, p0, LaM/X;->C:Lcom/google/googlenav/friend/J;

    iget-object v1, p0, LaM/X;->E:LaM/ae;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/J;->a(Lan/y;)V

    .line 355
    const/4 v0, 0x1

    return v0
.end method

.method public aU()V
    .registers 3

    .prologue
    .line 405
    invoke-static {}, LaM/ch;->e()V

    .line 406
    iget-object v0, p0, LaM/X;->G:Lah/a;

    invoke-virtual {v0, p0}, Lah/a;->b(Lah/p;)V

    .line 407
    iget-object v0, p0, LaM/X;->C:Lcom/google/googlenav/friend/J;

    iget-object v1, p0, LaM/X;->E:LaM/ae;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/J;->b(Lan/y;)V

    .line 411
    invoke-static {}, Lcom/google/googlenav/friend/aK;->x()V

    .line 412
    iget-object v0, p0, LaM/X;->L:Lcom/google/googlenav/friend/aM;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aM;->h()V

    .line 414
    invoke-super {p0}, LaM/m;->aU()V

    .line 415
    return-void
.end method

.method public aV()V
    .registers 5

    .prologue
    .line 396
    invoke-super {p0}, LaM/m;->aV()V

    .line 399
    iget-object v0, p0, LaM/X;->D:Lcom/google/googlenav/friend/p;

    const/4 v1, 0x0

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/friend/p;->a(Lcom/google/googlenav/aY;J)V

    .line 400
    return-void
.end method

.method public aW()V
    .registers 2

    .prologue
    .line 377
    invoke-super {p0}, LaM/m;->aW()V

    .line 378
    invoke-static {}, Lcom/google/googlenav/friend/p;->g()Lcom/google/googlenav/friend/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/o;->c()V

    .line 379
    return-void
.end method

.method public aX()V
    .registers 2

    .prologue
    .line 383
    invoke-super {p0}, LaM/m;->aX()V

    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, LaM/X;->M:Z

    .line 389
    iget-object v0, p0, LaM/X;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0, p0}, LaM/am;->m(LaM/i;)V

    .line 391
    invoke-static {}, Lcom/google/googlenav/friend/p;->g()Lcom/google/googlenav/friend/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/o;->d()V

    .line 392
    return-void
.end method

.method public al()V
    .registers 2

    .prologue
    .line 672
    invoke-super {p0}, LaM/m;->al()V

    .line 675
    iget-object v0, p0, LaM/X;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0, p0}, LaM/am;->m(LaM/i;)V

    .line 676
    return-void
.end method

.method public an()Z
    .registers 2

    .prologue
    .line 1121
    invoke-super {p0}, LaM/m;->an()Z

    move-result v0

    .line 1122
    if-eqz v0, :cond_9

    .line 1123
    invoke-direct {p0}, LaM/X;->bU()V

    .line 1125
    :cond_9
    return v0
.end method

.method protected aq()V
    .registers 4

    .prologue
    .line 1968
    new-instance v0, Lcom/google/googlenav/ui/friend/r;

    iget-object v1, p0, LaM/X;->B:Lcom/google/googlenav/ui/friend/q;

    iget-object v2, p0, LaM/X;->H:Lcom/google/googlenav/ui/friend/D;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/google/googlenav/ui/friend/r;-><init>(LaM/ag;Lcom/google/googlenav/ui/g;Lcom/google/googlenav/ui/friend/q;Lcom/google/googlenav/ui/af;)V

    iput-object v0, p0, LaM/X;->r:Lcom/google/googlenav/ui/view/android/bb;

    .line 1970
    return-void
.end method

.method public au()Z
    .registers 2

    .prologue
    .line 526
    invoke-virtual {p0}, LaM/X;->ae()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0}, LaM/m;->au()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public av()I
    .registers 2

    .prologue
    .line 304
    const/4 v0, 0x3

    return v0
.end method

.method public b(Lcom/google/googlenav/E;)I
    .registers 3
    .parameter

    .prologue
    .line 1576
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .registers 4

    .prologue
    .line 1466
    iget-object v0, p0, LaM/X;->K:Lcom/google/googlenav/android/Y;

    new-instance v1, LaM/ab;

    invoke-direct {v1, p0}, LaM/ab;-><init>(LaM/X;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 1492
    return-void
.end method

.method protected b(Lcom/google/googlenav/friend/aK;)V
    .registers 3
    .parameter

    .prologue
    .line 1069
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aK;->w()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1070
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aK;->y()V

    .line 1071
    const/4 v0, 0x1

    iput-boolean v0, p0, LaM/X;->R:Z

    .line 1073
    :cond_c
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 1096
    const/4 v0, 0x0

    iget-object v1, p0, LaM/X;->f:Lcom/google/googlenav/F;

    invoke-interface {v1}, Lcom/google/googlenav/F;->f()I

    move-result v1

    :goto_7
    if-ge v0, v1, :cond_2e

    .line 1097
    invoke-virtual {p0}, LaM/X;->c()Lcom/google/googlenav/friend/aM;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/googlenav/friend/aM;->a(I)Lcom/google/googlenav/friend/aK;

    move-result-object v2

    .line 1098
    invoke-virtual {v2}, Lcom/google/googlenav/friend/aK;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    invoke-virtual {v2}, Lcom/google/googlenav/friend/aK;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1100
    :cond_29
    iget-object v1, p0, LaM/X;->f:Lcom/google/googlenav/F;

    invoke-interface {v1, v0}, Lcom/google/googlenav/F;->a(I)V

    .line 1104
    :cond_2e
    invoke-virtual {p0}, LaM/X;->bI()V

    .line 1105
    return-void

    .line 1096
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public bE()Lcom/google/googlenav/friend/aK;
    .registers 2

    .prologue
    .line 534
    iget-object v0, p0, LaM/X;->f:Lcom/google/googlenav/F;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, LaM/X;->ah()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 535
    :cond_a
    const/4 v0, 0x0

    .line 537
    :goto_b
    return-object v0

    :cond_c
    invoke-direct {p0}, LaM/X;->bT()Lcom/google/googlenav/friend/aK;

    move-result-object v0

    goto :goto_b
.end method

.method public bF()V
    .registers 3

    .prologue
    .line 620
    invoke-static {}, Lcom/google/googlenav/friend/af;->j()V

    .line 622
    invoke-virtual {p0}, LaM/X;->J()V

    .line 623
    invoke-static {}, Lcom/google/googlenav/android/Q;->a()Lcom/google/googlenav/android/Q;

    move-result-object v0

    const-class v1, Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/Q;->a(Ljava/lang/Class;)V

    .line 624
    return-void
.end method

.method public bG()V
    .registers 2

    .prologue
    .line 642
    invoke-virtual {p0}, LaM/X;->ae()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 645
    iget-object v0, p0, LaM/X;->r:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_11

    .line 646
    iget-object v0, p0, LaM/X;->r:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/friend/r;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/friend/r;->i()V

    .line 661
    :cond_11
    :goto_11
    return-void

    .line 648
    :cond_12
    invoke-virtual {p0}, LaM/X;->af()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 649
    invoke-virtual {p0}, LaM/X;->bE()Lcom/google/googlenav/friend/aK;

    move-result-object v0

    .line 655
    if-nez v0, :cond_22

    .line 656
    invoke-virtual {p0}, LaM/X;->l()V

    goto :goto_11

    .line 657
    :cond_22
    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->b()Z

    move-result v0

    if-nez v0, :cond_11

    .line 658
    iget-object v0, p0, LaM/X;->r:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/friend/a;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/friend/a;->i()V

    goto :goto_11
.end method

.method public bH()J
    .registers 6

    .prologue
    const-wide/16 v0, 0x0

    .line 680
    invoke-virtual {p0}, LaM/X;->bO()J

    move-result-wide v2

    .line 681
    cmp-long v4, v2, v0

    if-lez v4, :cond_17

    .line 682
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    sub-long/2addr v0, v2

    .line 686
    :cond_17
    return-wide v0
.end method

.method public bI()V
    .registers 2

    .prologue
    .line 1053
    invoke-virtual {p0}, LaM/X;->bE()Lcom/google/googlenav/friend/aK;

    move-result-object v0

    .line 1056
    if-eqz v0, :cond_10

    .line 1058
    invoke-virtual {p0, v0}, LaM/X;->b(Lcom/google/googlenav/friend/aK;)V

    .line 1060
    const/4 v0, 0x0

    invoke-direct {p0, v0}, LaM/X;->l(Z)V

    .line 1061
    invoke-static {}, Lcom/google/googlenav/friend/af;->a()V

    .line 1064
    :cond_10
    invoke-virtual {p0}, LaM/X;->n()V

    .line 1065
    return-void
.end method

.method public bJ()V
    .registers 3

    .prologue
    .line 1076
    invoke-virtual {p0}, LaM/X;->bE()Lcom/google/googlenav/friend/aK;

    move-result-object v0

    .line 1079
    if-eqz v0, :cond_1c

    .line 1080
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->an()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1081
    invoke-virtual {p0, v0}, LaM/X;->b(Lcom/google/googlenav/friend/aK;)V

    .line 1083
    :cond_13
    const/4 v0, 0x0

    invoke-direct {p0, v0}, LaM/X;->l(Z)V

    .line 1084
    iget-object v0, p0, LaM/X;->f:Lcom/google/googlenav/F;

    invoke-static {v0}, Lcom/google/googlenav/friend/af;->a(Lcom/google/googlenav/F;)V

    .line 1087
    :cond_1c
    invoke-virtual {p0}, LaM/X;->m()V

    .line 1088
    return-void
.end method

.method public bK()V
    .registers 2

    .prologue
    .line 1382
    iget-object v0, p0, LaM/X;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->f()I

    move-result v0

    if-lez v0, :cond_15

    .line 1383
    invoke-static {}, Lcom/google/googlenav/friend/aJ;->b()Z

    move-result v0

    if-nez v0, :cond_16

    .line 1384
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LaM/X;->b(I)V

    .line 1385
    invoke-virtual {p0}, LaM/X;->an()Z

    .line 1392
    :cond_15
    :goto_15
    return-void

    .line 1389
    :cond_16
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, LaM/X;->b(I)V

    goto :goto_15
.end method

.method public bM()LaM/aF;
    .registers 2

    .prologue
    .line 1944
    iget-object v0, p0, LaM/X;->Q:LaM/aF;

    return-object v0
.end method

.method public bN()Z
    .registers 2

    .prologue
    .line 1953
    iget-object v0, p0, LaM/X;->Q:LaM/aF;

    invoke-virtual {v0}, LaM/aF;->b()Z

    move-result v0

    return v0
.end method

.method public bO()J
    .registers 3

    .prologue
    .line 1958
    iget-object v0, p0, LaM/X;->f:Lcom/google/googlenav/F;

    check-cast v0, Lcom/google/googlenav/aW;

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->ay()J

    move-result-wide v0

    return-wide v0
.end method

.method public bP()Lcom/google/googlenav/friend/t;
    .registers 2

    .prologue
    .line 1963
    iget-object v0, p0, LaM/X;->O:Lcom/google/googlenav/friend/t;

    return-object v0
.end method

.method public bQ()I
    .registers 2

    .prologue
    .line 1999
    invoke-static {}, Lcom/google/googlenav/friend/aJ;->d()I

    move-result v0

    return v0
.end method

.method public bR()Z
    .registers 2

    .prologue
    .line 2004
    invoke-static {}, Lcom/google/googlenav/friend/aJ;->e()Z

    move-result v0

    return v0
.end method

.method public c(Lcom/google/googlenav/E;)I
    .registers 4
    .parameter

    .prologue
    .line 1585
    invoke-interface {p1}, Lcom/google/googlenav/E;->c()B

    move-result v0

    if-nez v0, :cond_8

    .line 1586
    const/4 v0, 0x0

    .line 1590
    :goto_7
    return v0

    .line 1589
    :cond_8
    invoke-static {}, LaM/X;->bL()I

    move-result v0

    .line 1590
    invoke-virtual {p0, p1}, LaM/X;->f(Lcom/google/googlenav/E;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_7
.end method

.method public c()Lcom/google/googlenav/friend/aM;
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, LaM/X;->L:Lcom/google/googlenav/friend/aM;

    return-object v0
.end method

.method protected c(Lcom/google/googlenav/ui/u;)V
    .registers 5
    .parameter

    .prologue
    .line 1620
    iget-object v0, p0, LaM/X;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->e()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    .line 1621
    if-nez v0, :cond_b

    .line 1628
    :cond_a
    :goto_a
    return-void

    .line 1624
    :cond_b
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v1

    .line 1625
    invoke-virtual {p0}, LaM/X;->aj()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_a

    .line 1626
    invoke-virtual {p0, p1, v0}, LaM/X;->b(Lcom/google/googlenav/ui/u;Lcom/google/googlenav/E;)V

    goto :goto_a
.end method

.method public d(Lcom/google/googlenav/ui/u;)V
    .registers 11
    .parameter

    .prologue
    const/16 v1, 0xe

    .line 1636
    invoke-virtual {p1}, Lcom/google/googlenav/ui/u;->b()LS/e;

    move-result-object v4

    .line 1639
    iget-object v0, p0, LaM/X;->a:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bn;->d(B)I

    move-result v2

    .line 1640
    iget-object v0, p0, LaM/X;->a:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bn;->c(B)I

    move-result v3

    .line 1643
    invoke-virtual {p0}, LaM/X;->c()Lcom/google/googlenav/friend/aM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aM;->j()Lcom/google/googlenav/common/f;

    move-result-object v7

    .line 1644
    const/4 v0, 0x0

    invoke-virtual {v7}, Lcom/google/googlenav/common/f;->b()I

    move-result v8

    move v6, v0

    :goto_20
    if-ge v6, v8, :cond_36

    .line 1645
    invoke-virtual {v7, v6}, Lcom/google/googlenav/common/f;->a(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 1646
    iget-object v1, p0, LaM/X;->L:Lcom/google/googlenav/friend/aM;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/friend/aM;->a(I)Lcom/google/googlenav/friend/aK;

    move-result-object v1

    move-object v0, p0

    move-object v5, p1

    .line 1647
    invoke-direct/range {v0 .. v5}, LaM/X;->a(Lcom/google/googlenav/friend/aK;IILS/e;Lcom/google/googlenav/ui/u;)V

    .line 1644
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_20

    .line 1651
    :cond_36
    invoke-virtual {p0}, LaM/X;->bE()Lcom/google/googlenav/friend/aK;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 1652
    invoke-virtual {p0}, LaM/X;->bE()Lcom/google/googlenav/friend/aK;

    move-result-object v1

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, LaM/X;->a(Lcom/google/googlenav/friend/aK;IILS/e;Lcom/google/googlenav/ui/u;)V

    .line 1654
    :cond_45
    return-void
.end method

.method public d()[Lcom/google/googlenav/ui/aH;
    .registers 2

    .prologue
    .line 1605
    invoke-virtual {p0}, LaM/X;->ax()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, LaM/X;->ag()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-direct {p0}, LaM/X;->bW()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1606
    iget-object v0, p0, LaM/X;->N:[Lcom/google/googlenav/ui/aH;

    .line 1609
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public e()Lcom/google/googlenav/ui/friend/D;
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, LaM/X;->H:Lcom/google/googlenav/ui/friend/D;

    return-object v0
.end method

.method public e(LZ/a;)Z
    .registers 12
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    const/16 v9, 0x34

    const/4 v2, 0x1

    .line 1306
    iget-object v0, p0, LaM/X;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->c()I

    move-result v4

    .line 1307
    invoke-virtual {p1}, LZ/a;->e()C

    move-result v5

    .line 1310
    invoke-virtual {p0}, LaM/X;->ae()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1366
    :cond_15
    :goto_15
    return v2

    .line 1316
    :cond_16
    if-eq v5, v9, :cond_1e

    const/16 v0, 0x36

    if-eq v5, v0, :cond_1e

    move v2, v3

    .line 1317
    goto :goto_15

    .line 1320
    :cond_1e
    if-ne v5, v9, :cond_31

    const-string v0, "pf"

    :goto_22
    invoke-static {v0}, Lcom/google/googlenav/friend/af;->a(Ljava/lang/String;)V

    .line 1326
    invoke-virtual {p0}, LaM/X;->ah()Z

    move-result v0

    if-eqz v0, :cond_34

    if-eq v4, v1, :cond_34

    .line 1327
    invoke-virtual {p0, v4}, LaM/X;->j(I)V

    goto :goto_15

    .line 1320
    :cond_31
    const-string v0, "nf"

    goto :goto_22

    .line 1332
    :cond_34
    invoke-virtual {p0}, LaM/X;->c()Lcom/google/googlenav/friend/aM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aM;->b()I

    move-result v0

    if-le v0, v2, :cond_73

    .line 1334
    invoke-virtual {p0}, LaM/X;->c()Lcom/google/googlenav/friend/aM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aM;->i()Lcom/google/googlenav/common/f;

    move-result-object v6

    .line 1337
    int-to-long v7, v4

    invoke-virtual {v6, v7, v8}, Lcom/google/googlenav/common/f;->c(J)I

    move-result v7

    .line 1340
    if-ltz v7, :cond_15

    .line 1345
    if-ne v5, v9, :cond_71

    move v0, v1

    :goto_50
    add-int/2addr v0, v7

    invoke-virtual {v6}, Lcom/google/googlenav/common/f;->b()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v6}, Lcom/google/googlenav/common/f;->b()I

    move-result v1

    rem-int/2addr v0, v1

    .line 1349
    invoke-virtual {v6, v0}, Lcom/google/googlenav/common/f;->a(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 1352
    if-eq v0, v4, :cond_73

    .line 1355
    invoke-virtual {p0, v0}, LaM/X;->j(I)V

    .line 1358
    invoke-virtual {p0}, LaM/X;->af()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1359
    iget-object v0, p0, LaM/X;->f:Lcom/google/googlenav/F;

    invoke-static {v0}, Lcom/google/googlenav/friend/af;->a(Lcom/google/googlenav/F;)V

    goto :goto_15

    :cond_71
    move v0, v2

    .line 1345
    goto :goto_50

    :cond_73
    move v2, v3

    .line 1366
    goto :goto_15
.end method

.method public f()Lcom/google/googlenav/ui/friend/q;
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, LaM/X;->B:Lcom/google/googlenav/ui/friend/q;

    return-object v0
.end method

.method protected f(LZ/a;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 987
    invoke-virtual {p1}, LZ/a;->e()C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_27

    .line 989
    invoke-virtual {p0}, LaM/X;->ae()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 990
    invoke-virtual {p0}, LaM/X;->bI()V

    .line 1009
    :cond_13
    :goto_13
    return v0

    .line 991
    :cond_14
    invoke-virtual {p0}, LaM/X;->af()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 992
    iput v1, p0, LaM/X;->v:I

    .line 993
    invoke-virtual {p0}, LaM/X;->bI()V

    goto :goto_13

    .line 996
    :cond_20
    invoke-static {}, Lcom/google/googlenav/friend/af;->c()V

    .line 997
    invoke-virtual {p0}, LaM/X;->l()V

    goto :goto_13

    .line 1002
    :cond_27
    invoke-direct {p0, p1}, LaM/X;->g(LZ/a;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1006
    invoke-virtual {p0, p1}, LaM/X;->d(LZ/a;)Z

    move-result v2

    if-nez v2, :cond_13

    move v0, v1

    .line 1009
    goto :goto_13
.end method

.method public h()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 1026
    invoke-virtual {p0}, LaM/X;->by()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1050
    :goto_7
    return-void

    .line 1029
    :cond_8
    iget-object v1, p0, LaM/X;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v1

    .line 1034
    invoke-virtual {p0}, LaM/X;->af()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/K;->an()Z

    move-result v2

    if-eqz v2, :cond_42

    iget-object v2, p0, LaM/X;->B:Lcom/google/googlenav/ui/friend/q;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/friend/q;->a()B

    move-result v2

    if-eq v2, v0, :cond_42

    .line 1038
    :goto_26
    invoke-virtual {p0}, LaM/X;->af()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/K;->an()Z

    move-result v2

    if-eqz v2, :cond_38

    :cond_36
    if-eqz v0, :cond_44

    .line 1041
    :cond_38
    iget-object v0, p0, LaM/X;->B:Lcom/google/googlenav/ui/friend/q;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/friend/q;->a()B

    move-result v0

    invoke-virtual {p0, v0}, LaM/X;->a(B)V

    goto :goto_7

    .line 1034
    :cond_42
    const/4 v0, 0x0

    goto :goto_26

    .line 1045
    :cond_44
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-nez v0, :cond_51

    .line 1046
    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/z;->d()Lcom/google/googlenav/ui/wizard/A;

    .line 1048
    :cond_51
    invoke-super {p0}, LaM/m;->h()V

    goto :goto_7
.end method

.method protected i()LaO/a;
    .registers 2

    .prologue
    .line 1014
    new-instance v0, LaO/e;

    invoke-direct {v0, p0}, LaO/e;-><init>(LaM/i;)V

    return-object v0
.end method

.method public j()V
    .registers 1

    .prologue
    .line 978
    invoke-super {p0}, LaM/m;->j()V

    .line 979
    return-void
.end method

.method public j(I)V
    .registers 5
    .parameter

    .prologue
    .line 1370
    iget-object v0, p0, LaM/X;->B:Lcom/google/googlenav/ui/friend/q;

    iget-object v1, p0, LaM/X;->L:Lcom/google/googlenav/friend/aM;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/friend/aM;->a(I)Lcom/google/googlenav/friend/aK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/friend/aK;->n()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/friend/q;->a(J)V

    .line 1372
    invoke-virtual {p0, p1}, LaM/X;->b(I)V

    .line 1373
    invoke-virtual {p0}, LaM/X;->an()Z

    .line 1374
    const/4 v0, 0x1

    invoke-direct {p0, v0}, LaM/X;->l(Z)V

    .line 1375
    return-void
.end method

.method public k(Z)V
    .registers 3
    .parameter

    .prologue
    .line 1987
    iget-object v0, p0, LaM/X;->B:Lcom/google/googlenav/ui/friend/q;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/friend/q;->a(Z)V

    .line 1988
    invoke-virtual {p0}, LaM/X;->bG()V

    .line 1989
    return-void
.end method

.method protected l()V
    .registers 2

    .prologue
    .line 583
    invoke-super {p0}, LaM/m;->l()V

    .line 584
    invoke-static {}, Lcom/google/googlenav/friend/p;->g()Lcom/google/googlenav/friend/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/o;->b()V

    .line 585
    return-void
.end method

.method public m()V
    .registers 3

    .prologue
    .line 610
    invoke-virtual {p0}, LaM/X;->af()Z

    move-result v0

    if-nez v0, :cond_11

    .line 611
    iget-object v0, p0, LaM/X;->B:Lcom/google/googlenav/ui/friend/q;

    iget-object v1, p0, LaM/X;->f:Lcom/google/googlenav/F;

    invoke-interface {v1}, Lcom/google/googlenav/F;->d()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/friend/q;->a(B)V

    .line 613
    :cond_11
    invoke-super {p0}, LaM/m;->m()V

    .line 614
    return-void
.end method

.method protected n()V
    .registers 3

    .prologue
    .line 592
    invoke-virtual {p0}, LaM/X;->bE()Lcom/google/googlenav/friend/aK;

    move-result-object v0

    .line 593
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aK;->v()Z

    move-result v0

    if-nez v0, :cond_16

    .line 594
    iget-object v0, p0, LaM/X;->f:Lcom/google/googlenav/F;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/google/googlenav/F;->a(I)V

    .line 601
    :cond_12
    :goto_12
    invoke-super {p0}, LaM/m;->n()V

    .line 602
    return-void

    .line 596
    :cond_16
    iget-boolean v0, p0, LaM/X;->M:Z

    if-eqz v0, :cond_12

    .line 598
    const/4 v0, 0x0

    invoke-direct {p0, v0}, LaM/X;->l(Z)V

    goto :goto_12
.end method

.method protected z()V
    .registers 2

    .prologue
    .line 1140
    invoke-direct {p0}, LaM/X;->bV()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1147
    :goto_6
    return-void

    .line 1144
    :cond_7
    invoke-super {p0}, LaM/m;->z()V

    .line 1146
    invoke-direct {p0}, LaM/X;->bU()V

    goto :goto_6
.end method
