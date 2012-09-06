.class public LaN/b;
.super LaM/am;
.source "SourceFile"

# interfaces
.implements LaM/j;
.implements LaM/k;
.implements Lcom/google/android/maps/driveabout/vector/T;
.implements Ll/s;


# static fields
.field public static final k:Lat/Y;


# instance fields
.field private volatile A:Z

.field private final l:Lcom/google/common/collect/Q;

.field private final m:Ljava/util/Map;

.field private n:Lcom/google/android/maps/driveabout/vector/d;

.field private final o:Ljava/lang/Object;

.field private p:Lcom/google/android/maps/driveabout/vector/VectorMapView;

.field private q:Lcom/google/android/maps/driveabout/vector/g;

.field private r:Lcom/google/android/maps/driveabout/vector/cl;

.field private final s:Ln/P;

.field private final t:LaN/k;

.field private u:Lcom/google/android/maps/driveabout/vector/ch;

.field private v:Z

.field private final w:Ljava/lang/Object;

.field private final x:Ljava/lang/Object;

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 130
    const/16 v0, 0x12

    invoke-static {v0}, Lat/Y;->b(I)Lat/Y;

    move-result-object v0

    sput-object v0, LaN/b;->k:Lat/Y;

    return-void
.end method

.method private constructor <init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lan/h;Lcom/google/googlenav/friend/J;Lcom/google/googlenav/friend/p;Lcom/google/googlenav/friend/ai;Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/wizard/ju;Lat/k;Lcom/google/googlenav/layer/r;Lcom/google/googlenav/offers/j;)V
    .registers 17
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
    .parameter
    .parameter
    .parameter

    .prologue
    .line 224
    invoke-direct/range {p0 .. p13}, LaM/am;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lan/h;Lcom/google/googlenav/friend/J;Lcom/google/googlenav/friend/p;Lcom/google/googlenav/friend/ai;Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/wizard/ju;Lat/k;Lcom/google/googlenav/layer/r;Lcom/google/googlenav/offers/j;)V

    .line 139
    invoke-static {}, Lcom/google/common/collect/bm;->e()Lcom/google/common/collect/bm;

    move-result-object v0

    iput-object v0, p0, LaN/b;->l:Lcom/google/common/collect/Q;

    .line 145
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, LaN/b;->m:Ljava/util/Map;

    .line 155
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LaN/b;->o:Ljava/lang/Object;

    .line 167
    new-instance v0, Ln/P;

    invoke-direct {v0}, Ln/P;-><init>()V

    iput-object v0, p0, LaN/b;->s:Ln/P;

    .line 184
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LaN/b;->w:Ljava/lang/Object;

    .line 187
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LaN/b;->x:Ljava/lang/Object;

    .line 189
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LaN/b;->y:J

    .line 190
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LaN/b;->z:J

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, LaN/b;->A:Z

    .line 227
    new-instance v0, LaN/k;

    invoke-direct {v0}, LaN/k;-><init>()V

    iput-object v0, p0, LaN/b;->t:LaN/k;

    .line 228
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dD;->b()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 229
    invoke-static {}, Ll/q;->a()Ll/q;

    move-result-object v0

    invoke-virtual {v0, p0}, Ll/q;->a(Ll/s;)V

    .line 232
    :cond_4a
    new-instance v0, LaN/c;

    const-string v1, "LayerTileCompactor"

    invoke-direct {v0, p0, v1}, LaN/c;-><init>(LaN/b;Ljava/lang/String;)V

    .line 273
    sget-object v1, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v2, LaN/d;

    invoke-direct {v2, p0, v0}, LaN/d;-><init>(LaN/b;Lt/c;)V

    invoke-static {v1, v2}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    .line 279
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lan/h;Lcom/google/googlenav/friend/J;Lcom/google/googlenav/friend/p;Lcom/google/googlenav/friend/ai;Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/wizard/ju;Lat/k;Lcom/google/googlenav/layer/r;Lcom/google/googlenav/offers/j;LaN/c;)V
    .registers 15
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
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-direct/range {p0 .. p13}, LaN/b;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lan/h;Lcom/google/googlenav/friend/J;Lcom/google/googlenav/friend/p;Lcom/google/googlenav/friend/ai;Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/wizard/ju;Lat/k;Lcom/google/googlenav/layer/r;Lcom/google/googlenav/offers/j;)V

    return-void
.end method

.method static synthetic a(LaN/b;J)J
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 122
    iput-wide p1, p0, LaN/b;->z:J

    return-wide p1
.end method

.method static synthetic a(LaN/b;Lcom/google/android/maps/driveabout/vector/d;)Lcom/google/android/maps/driveabout/vector/d;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, LaN/b;->n:Lcom/google/android/maps/driveabout/vector/d;

    return-object p1
.end method

.method private static a(Landroid/view/View;)Lcom/google/android/maps/driveabout/vector/g;
    .registers 4
    .parameter

    .prologue
    .line 1084
    const v0, 0x7f10004a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1089
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_23

    instance-of v1, v0, Lcom/google/googlenav/ui/android/TemplateView;

    if-eqz v1, :cond_23

    .line 1094
    check-cast v0, Lcom/google/googlenav/ui/android/TemplateView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/TemplateView;->e()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1095
    new-instance v0, Lcom/google/googlenav/ui/android/ae;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/ae;-><init>(Landroid/view/View;)V

    .line 1098
    :goto_22
    return-object v0

    :cond_23
    new-instance v0, Lcom/google/android/maps/driveabout/vector/g;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/vector/g;-><init>(Landroid/view/View;)V

    goto :goto_22
.end method

.method static synthetic a(LaN/b;LaM/i;I)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-virtual {p0, p1, p2}, LaN/b;->a(LaM/i;I)V

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/d;Lcom/google/android/maps/driveabout/vector/g;LN/c;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1175
    return-void
.end method

.method private a(LaM/i;Lcom/google/googlenav/E;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 954
    invoke-virtual {p1}, LaM/i;->av()I

    move-result v0

    if-nez v0, :cond_10

    move-object v0, p2

    check-cast v0, Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->h()Z

    move-result v0

    if-nez v0, :cond_21

    .line 956
    :cond_10
    invoke-interface {p2}, Lcom/google/googlenav/E;->e()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p2}, Lcom/google/googlenav/E;->c()B

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    :goto_1d
    move v1, v0

    .line 963
    :cond_1e
    :goto_1e
    return v1

    :cond_1f
    move v0, v1

    .line 956
    goto :goto_1d

    .line 958
    :cond_21
    check-cast p1, LaM/bj;

    move-object v0, p2

    .line 959
    check-cast v0, Lcom/google/googlenav/W;

    .line 960
    invoke-virtual {p1}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/googlenav/W;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/aW;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 963
    invoke-interface {p2}, Lcom/google/googlenav/E;->e()Z

    move-result v1

    goto :goto_1e
.end method

.method static synthetic a(LaN/b;)Z
    .registers 2
    .parameter

    .prologue
    .line 122
    iget-boolean v0, p0, LaN/b;->v:Z

    return v0
.end method

.method static synthetic a(LaN/b;LaM/i;Lcom/google/googlenav/E;)Z
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, LaN/b;->a(LaM/i;Lcom/google/googlenav/E;)Z

    move-result v0

    return v0
.end method

.method private ae()V
    .registers 2

    .prologue
    .line 723
    iget-object v0, p0, LaN/b;->p:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v0, :cond_9

    .line 724
    iget-object v0, p0, LaN/b;->p:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->d_()V

    .line 726
    :cond_9
    return-void
.end method

.method private af()V
    .registers 4

    .prologue
    .line 1051
    invoke-virtual {p0}, LaN/b;->I()LaM/i;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, LaN/b;->p:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v0, :cond_25

    .line 1052
    iget-object v0, p0, LaN/b;->p:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->h()Ly/b;

    move-result-object v0

    .line 1053
    if-eqz v0, :cond_25

    .line 1054
    invoke-virtual {p0}, LaN/b;->I()LaM/i;

    move-result-object v1

    invoke-virtual {v1}, LaM/i;->L()Z

    move-result v1

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/K;->at()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ly/b;->a(ZZ)V

    .line 1058
    :cond_25
    return-void
.end method

.method private ag()V
    .registers 3

    .prologue
    .line 1309
    const-string v0, "LayerTransit"

    invoke-virtual {p0, v0}, LaN/b;->e(Ljava/lang/String;)LaM/i;

    move-result-object v0

    check-cast v0, LaN/q;

    .line 1311
    if-eqz v0, :cond_16

    .line 1312
    invoke-virtual {v0}, LaN/q;->bF()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1313
    const/4 v1, 0x0

    check-cast v1, Ln/m;

    invoke-virtual {v0, v1}, LaN/q;->a(Ln/m;)V

    .line 1318
    :cond_16
    :goto_16
    return-void

    .line 1315
    :cond_17
    invoke-virtual {p0, v0}, LaN/b;->g(LaM/i;)V

    goto :goto_16
.end method

.method private ah()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1342
    invoke-virtual {p0}, LaN/b;->I()LaM/i;

    move-result-object v0

    instance-of v0, v0, LaM/O;

    if-eqz v0, :cond_b

    .line 1343
    const-string v0, "dd"

    .line 1345
    :goto_a
    return-object v0

    :cond_b
    const-string v0, "1"

    goto :goto_a
.end method

.method private ai()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1638
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dD;->b()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, LaN/b;->r:Lcom/google/android/maps/driveabout/vector/cl;

    if-nez v1, :cond_c

    .line 1658
    :cond_b
    :goto_b
    return-void

    .line 1642
    :cond_c
    iget-object v1, p0, LaN/b;->r:Lcom/google/android/maps/driveabout/vector/cl;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cl;->f()Ln/B;

    move-result-object v1

    .line 1643
    if-nez v1, :cond_1a

    .line 1646
    iget-object v1, p0, LaN/b;->s:Ln/P;

    invoke-virtual {v1, v0}, Ln/P;->b(Z)V

    goto :goto_b

    .line 1650
    :cond_1a
    invoke-static {}, Ll/q;->a()Ll/q;

    move-result-object v2

    .line 1651
    invoke-virtual {v2}, Ll/q;->f()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1654
    iget-object v1, p0, LaN/b;->s:Ln/P;

    invoke-virtual {v1, v0}, Ln/P;->b(Z)V

    goto :goto_b

    .line 1656
    :cond_2e
    iget-object v2, p0, LaN/b;->s:Ln/P;

    invoke-static {}, Ll/q;->a()Ll/q;

    move-result-object v3

    invoke-virtual {v3, v1}, Ll/q;->c(Ln/B;)Z

    move-result v1

    if-nez v1, :cond_3b

    const/4 v0, 0x1

    :cond_3b
    invoke-virtual {v2, v0}, Ln/P;->b(Z)V

    goto :goto_b
.end method

.method private static b(LaM/i;I)LaN/j;
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 875
    invoke-virtual {p0}, LaM/i;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v2

    .line 876
    if-nez v2, :cond_d

    .line 950
    :cond_c
    :goto_c
    return-object v4

    .line 886
    :cond_d
    invoke-interface {v2}, Lcom/google/googlenav/E;->c()B

    move-result v0

    if-eqz v0, :cond_91

    .line 889
    invoke-virtual {p0, p1}, LaM/i;->c(I)Lcom/google/googlenav/e;

    move-result-object v1

    .line 890
    if-eqz v1, :cond_91

    .line 891
    invoke-virtual {v1}, Lcom/google/googlenav/e;->a()LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 892
    invoke-virtual {v1}, Lcom/google/googlenav/e;->b()I

    move-result v5

    .line 893
    invoke-virtual {v1}, Lcom/google/googlenav/e;->c()I

    move-result v6

    .line 894
    invoke-virtual {v1}, Lcom/google/googlenav/e;->d()Z

    move-result v9

    .line 901
    :goto_2f
    instance-of v0, p0, LaM/az;

    if-eqz v0, :cond_81

    move-object v1, v2

    .line 902
    check-cast v1, LaM/aE;

    .line 903
    new-instance v0, LaN/n;

    invoke-virtual {p0, v2}, LaM/i;->b(Lcom/google/googlenav/E;)I

    move-result v7

    invoke-virtual {p0, v2}, LaM/i;->c(Lcom/google/googlenav/E;)I

    move-result v8

    invoke-virtual {v1}, LaM/aE;->h()I

    move-result v10

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, LaN/n;-><init>(LaM/i;Lcom/google/googlenav/E;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIIIZI)V

    move-object v4, v0

    .line 911
    :goto_49
    instance-of v0, p0, LaM/O;

    if-eqz v0, :cond_c

    if-eqz p1, :cond_5b

    invoke-virtual {p0}, LaM/i;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/F;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_c

    .line 913
    :cond_5b
    invoke-interface {v2}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v0

    invoke-virtual {v0}, Lat/B;->c()I

    move-result v0

    invoke-interface {v2}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v1

    invoke-virtual {v1}, Lat/B;->e()I

    move-result v1

    invoke-static {v0, v1}, Ln/Q;->b(II)Ln/Q;

    move-result-object v5

    move-object v1, p0

    .line 915
    check-cast v1, LaM/O;

    .line 916
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, LaN/j;->b(Z)V

    .line 920
    new-instance v0, LaN/f;

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, LaN/f;-><init>(LaM/O;LaM/i;ILaN/j;Ln/Q;)V

    invoke-virtual {v4, v0}, LaN/j;->a(Lcom/google/android/maps/driveabout/vector/az;)V

    goto :goto_c

    .line 907
    :cond_81
    new-instance v0, LaN/j;

    invoke-virtual {p0, v2}, LaM/i;->b(Lcom/google/googlenav/E;)I

    move-result v7

    invoke-virtual {p0, v2}, LaM/i;->c(Lcom/google/googlenav/E;)I

    move-result v8

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, LaN/j;-><init>(LaM/i;Lcom/google/googlenav/E;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIIIZ)V

    move-object v4, v0

    goto :goto_49

    :cond_91
    move v6, v9

    move v5, v9

    move-object v3, v4

    goto :goto_2f
.end method

.method static synthetic b(LaN/b;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, LaN/b;->w:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(LaN/b;LaM/i;I)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-virtual {p0, p1, p2}, LaN/b;->a(LaM/i;I)V

    return-void
.end method

.method static synthetic c(LaN/b;)J
    .registers 3
    .parameter

    .prologue
    .line 122
    iget-wide v0, p0, LaN/b;->z:J

    return-wide v0
.end method

.method static synthetic d(LaN/b;)Lat/p;
    .registers 2
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, LaN/b;->e:Lat/p;

    return-object v0
.end method

.method static synthetic e(LaN/b;)J
    .registers 3
    .parameter

    .prologue
    .line 122
    iget-wide v0, p0, LaN/b;->y:J

    return-wide v0
.end method

.method static synthetic f(LaN/b;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, LaN/b;->x:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic g(LaN/b;)LaM/C;
    .registers 2
    .parameter

    .prologue
    .line 122
    invoke-virtual {p0}, LaN/b;->h()LaM/C;

    move-result-object v0

    return-object v0
.end method

.method private g(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1284
    invoke-static {}, Lcom/google/googlenav/layer/f;->a()Lcom/google/googlenav/layer/f;

    move-result-object v0

    const-string v1, "LayerTransit"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/f;->b(Ljava/lang/String;)Lcom/google/googlenav/layer/e;

    move-result-object v0

    .line 1286
    if-eqz v0, :cond_20

    .line 1287
    invoke-virtual {v0}, Lcom/google/googlenav/layer/e;->b()Lcom/google/googlenav/layer/m;

    move-result-object v1

    .line 1290
    invoke-virtual {v1}, Lcom/google/googlenav/layer/m;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LaN/b;->b(Ljava/lang/String;)LaM/y;

    move-result-object v0

    .line 1292
    if-eqz v0, :cond_21

    .line 1293
    check-cast v0, LaN/q;

    invoke-virtual {v0, p1}, LaN/q;->b(Ljava/lang/String;)V

    .line 1306
    :cond_20
    :goto_20
    return-void

    .line 1299
    :cond_21
    const/4 v0, 0x1

    .line 1301
    invoke-virtual {v1, p1}, Lcom/google/googlenav/layer/m;->a(Ljava/lang/String;)V

    .line 1302
    invoke-virtual {p0, v1, v2, v0, v2}, LaN/b;->a(Lcom/google/googlenav/layer/m;ZZZ)LaM/y;

    goto :goto_20
.end method

.method static synthetic h(LaN/b;)Lcom/google/common/collect/Q;
    .registers 2
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, LaN/b;->l:Lcom/google/common/collect/Q;

    return-object v0
.end method

.method static synthetic i(LaN/b;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, LaN/b;->o:Ljava/lang/Object;

    return-object v0
.end method

.method private n(LaM/i;)V
    .registers 10
    .parameter

    .prologue
    .line 427
    iget-object v0, p0, LaN/b;->p:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-nez v0, :cond_5

    .line 465
    :goto_4
    return-void

    .line 431
    :cond_5
    invoke-virtual {p1}, LaM/i;->d()[Lcom/google/googlenav/ui/aH;

    move-result-object v3

    .line 432
    if-nez v3, :cond_f

    .line 433
    invoke-direct {p0, p1}, LaN/b;->o(LaM/i;)V

    goto :goto_4

    .line 437
    :cond_f
    iget-object v0, p0, LaN/b;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 438
    array-length v1, v3

    invoke-static {v1}, Lcom/google/common/collect/Maps;->a(I)Ljava/util/HashMap;

    move-result-object v4

    .line 441
    array-length v5, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1f
    if-ge v2, v5, :cond_47

    aget-object v6, v3, v2

    .line 442
    if-eqz v6, :cond_43

    .line 443
    const/4 v1, 0x0

    .line 446
    if-eqz v0, :cond_2e

    .line 447
    invoke-interface {v0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LaN/a;

    .line 450
    :cond_2e
    if-nez v1, :cond_40

    .line 451
    new-instance v1, LaN/a;

    iget-object v7, p0, LaN/b;->p:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7, v6}, LaN/a;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/aH;)V

    .line 452
    iget-object v7, p0, LaN/b;->p:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v7, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 454
    :cond_40
    invoke-interface {v4, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    :cond_43
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1f

    .line 459
    :cond_47
    if-eqz v0, :cond_63

    .line 460
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_51
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaN/a;

    .line 461
    iget-object v2, p0, LaN/b;->p:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v2, v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->b(Lcom/google/android/maps/driveabout/vector/aD;)V

    goto :goto_51

    .line 464
    :cond_63
    iget-object v0, p0, LaN/b;->m:Ljava/util/Map;

    invoke-interface {v0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method private o(LaM/i;)V
    .registers 5
    .parameter

    .prologue
    .line 468
    iget-object v0, p0, LaN/b;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 470
    if-nez v0, :cond_b

    .line 477
    :goto_a
    return-void

    .line 473
    :cond_b
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaN/a;

    .line 474
    iget-object v2, p0, LaN/b;->p:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v2, v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->b(Lcom/google/android/maps/driveabout/vector/aD;)V

    goto :goto_13

    .line 476
    :cond_25
    iget-object v0, p0, LaN/b;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a
.end method

.method private p(LaM/i;)V
    .registers 6
    .parameter

    .prologue
    .line 1120
    invoke-virtual {p1}, LaM/i;->av()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1f

    .line 1121
    iget-object v0, p0, LaN/b;->n:Lcom/google/android/maps/driveabout/vector/d;

    if-eqz v0, :cond_1e

    .line 1123
    iget-object v0, p0, LaN/b;->p:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v1, p0, LaN/b;->n:Lcom/google/android/maps/driveabout/vector/d;

    iget-object v2, p0, LaN/b;->q:Lcom/google/android/maps/driveabout/vector/g;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/d;Lcom/google/android/maps/driveabout/vector/g;)V

    .line 1126
    iget-object v0, p0, LaN/b;->n:Lcom/google/android/maps/driveabout/vector/d;

    iget-object v1, p0, LaN/b;->q:Lcom/google/android/maps/driveabout/vector/g;

    sget-object v2, LN/c;->a:LN/c;

    invoke-direct {p0, v0, v1, v2}, LaN/b;->a(Lcom/google/android/maps/driveabout/vector/d;Lcom/google/android/maps/driveabout/vector/g;LN/c;)V

    .line 1155
    :cond_1e
    :goto_1e
    return-void

    .line 1128
    :cond_1f
    invoke-virtual {p1}, LaM/i;->av()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_43

    move-object v0, p1

    check-cast v0, LaM/C;

    invoke-virtual {v0}, LaM/C;->bG()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1130
    iget-object v0, p0, LaN/b;->p:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v1, p0, LaN/b;->r:Lcom/google/android/maps/driveabout/vector/cl;

    iget-object v2, p0, LaN/b;->q:Lcom/google/android/maps/driveabout/vector/g;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/d;Lcom/google/android/maps/driveabout/vector/g;)V

    .line 1133
    iget-object v0, p0, LaN/b;->r:Lcom/google/android/maps/driveabout/vector/cl;

    iget-object v1, p0, LaN/b;->q:Lcom/google/android/maps/driveabout/vector/g;

    sget-object v2, LN/c;->c:LN/c;

    invoke-direct {p0, v0, v1, v2}, LaN/b;->a(Lcom/google/android/maps/driveabout/vector/d;Lcom/google/android/maps/driveabout/vector/g;LN/c;)V

    goto :goto_1e

    .line 1135
    :cond_43
    const/4 v1, 0x0

    .line 1136
    iget-object v0, p0, LaN/b;->l:Lcom/google/common/collect/Q;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aB;

    .line 1137
    if-eqz v0, :cond_7f

    .line 1138
    invoke-virtual {p1}, LaM/i;->ar()Lcom/google/googlenav/F;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/F;->c()I

    move-result v2

    .line 1139
    if-ltz v2, :cond_7f

    .line 1140
    invoke-virtual {p1}, LaM/i;->ar()Lcom/google/googlenav/F;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/F;->e()Lcom/google/googlenav/E;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/E;->f()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/aB;->a(Ljava/lang/Object;)Lcom/google/android/maps/driveabout/vector/ay;

    move-result-object v2

    .line 1142
    if-eqz v2, :cond_7f

    .line 1143
    const/4 v0, 0x1

    .line 1144
    iget-object v1, p0, LaN/b;->p:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v3, p0, LaN/b;->q:Lcom/google/android/maps/driveabout/vector/g;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/d;Lcom/google/android/maps/driveabout/vector/g;)V

    .line 1147
    iget-object v1, p0, LaN/b;->q:Lcom/google/android/maps/driveabout/vector/g;

    sget-object v3, LN/c;->b:LN/c;

    invoke-direct {p0, v2, v1, v3}, LaN/b;->a(Lcom/google/android/maps/driveabout/vector/d;Lcom/google/android/maps/driveabout/vector/g;LN/c;)V

    .line 1151
    :goto_79
    if-nez v0, :cond_1e

    .line 1152
    invoke-virtual {p0, p1}, LaN/b;->a(LaM/i;)V

    goto :goto_1e

    :cond_7f
    move v0, v1

    goto :goto_79
.end method


# virtual methods
.method public E()V
    .registers 3

    .prologue
    .line 481
    iget-object v0, p0, LaN/b;->r:Lcom/google/android/maps/driveabout/vector/cl;

    if-eqz v0, :cond_1a

    .line 482
    iget-object v0, p0, LaN/b;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->p()Lcom/google/googlenav/ui/ap;

    move-result-object v0

    .line 483
    iget-object v1, p0, LaN/b;->s:Ln/P;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/ap;->l()Z

    move-result v0

    invoke-virtual {v1, v0}, Ln/P;->c(Z)V

    .line 484
    iget-object v0, p0, LaN/b;->r:Lcom/google/android/maps/driveabout/vector/cl;

    iget-object v1, p0, LaN/b;->s:Ln/P;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cl;->a(Ln/P;)V

    .line 486
    :cond_1a
    return-void
.end method

.method public F()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/high16 v1, -0x4080

    .line 496
    .line 498
    iget-object v3, p0, LaN/b;->d:Lan/h;

    invoke-interface {v3}, Lan/h;->g()Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 499
    iget-object v3, p0, LaN/b;->d:Lan/h;

    invoke-interface {v3}, Lan/h;->m()Lan/s;

    move-result-object v3

    .line 500
    if-eqz v3, :cond_b1

    .line 501
    invoke-virtual {v3}, Lan/s;->a()Lat/B;

    move-result-object v0

    move-object v4, v3

    move-object v3, v0

    .line 506
    :goto_1a
    if-nez v3, :cond_43

    invoke-virtual {p0}, LaN/b;->I()LaM/i;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-virtual {p0}, LaN/b;->I()LaM/i;

    move-result-object v0

    invoke-virtual {v0}, LaM/i;->av()I

    move-result v0

    const/16 v5, 0xd

    if-ne v0, v5, :cond_43

    .line 509
    invoke-virtual {p0}, LaN/b;->I()LaM/i;

    move-result-object v0

    check-cast v0, LaM/C;

    .line 510
    invoke-virtual {v0}, LaM/C;->bG()Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-virtual {v0}, LaM/C;->aa()Z

    move-result v5

    if-eqz v5, :cond_43

    .line 511
    invoke-virtual {p0, v0}, LaN/b;->g(LaM/i;)V

    .line 517
    :cond_43
    iget-object v0, p0, LaN/b;->r:Lcom/google/android/maps/driveabout/vector/cl;

    if-nez v0, :cond_48

    .line 546
    :goto_47
    return-void

    .line 522
    :cond_48
    if-nez v3, :cond_5d

    .line 523
    iget-object v0, p0, LaN/b;->s:Ln/P;

    invoke-virtual {v0}, Ln/P;->i()V

    .line 543
    :goto_4f
    invoke-direct {p0}, LaN/b;->ai()V

    .line 544
    iget-object v0, p0, LaN/b;->r:Lcom/google/android/maps/driveabout/vector/cl;

    iget-object v1, p0, LaN/b;->s:Ln/P;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cl;->a(Ln/P;)V

    .line 545
    invoke-direct {p0}, LaN/b;->ae()V

    goto :goto_47

    .line 526
    :cond_5d
    iget-object v0, p0, LaN/b;->d:Lan/h;

    invoke-interface {v0}, Lan/h;->i()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 527
    invoke-static {v4}, Lan/s;->b(Landroid/location/Location;)I

    move-result v0

    int-to-float v0, v0

    .line 534
    :goto_6a
    invoke-static {v3}, Lt/e;->a(Lat/B;)Ln/Q;

    move-result-object v3

    .line 535
    iget-object v5, p0, LaN/b;->s:Ln/P;

    invoke-virtual {v5, v3}, Ln/P;->a(Ln/Q;)V

    .line 536
    iget-object v3, p0, LaN/b;->s:Ln/P;

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_ab

    const/4 v1, 0x1

    :goto_7a
    invoke-virtual {v3, v1}, Ln/P;->a(Z)V

    .line 537
    iget-object v1, p0, LaN/b;->s:Ln/P;

    invoke-virtual {v1, v0}, Ln/P;->a(F)V

    .line 538
    invoke-static {v4}, Lan/s;->a(Landroid/location/Location;)I

    move-result v0

    .line 539
    iget-object v1, p0, LaN/b;->s:Ln/P;

    const v3, 0x1869f

    if-ne v0, v3, :cond_ad

    :goto_8d
    invoke-virtual {v1, v2}, Ln/P;->a(I)V

    .line 541
    iget-object v0, p0, LaN/b;->s:Ln/P;

    invoke-virtual {v4}, Lan/s;->b()Ln/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln/P;->a(Ln/B;)V

    goto :goto_4f

    .line 529
    :cond_9a
    invoke-static {}, LaB/h;->i()LaB/h;

    move-result-object v0

    .line 530
    if-eqz v0, :cond_af

    invoke-virtual {v0}, LaB/h;->c()Z

    move-result v5

    if-eqz v5, :cond_af

    .line 531
    invoke-virtual {v0}, LaB/h;->d()F

    move-result v0

    goto :goto_6a

    :cond_ab
    move v1, v2

    .line 536
    goto :goto_7a

    :cond_ad
    move v2, v0

    .line 539
    goto :goto_8d

    :cond_af
    move v0, v1

    goto :goto_6a

    :cond_b1
    move-object v4, v3

    move-object v3, v0

    goto/16 :goto_1a

    :cond_b5
    move-object v3, v0

    move-object v4, v0

    goto/16 :goto_1a
.end method

.method public G()Z
    .registers 13

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 588
    iget-object v0, p0, LaN/b;->f:Lat/u;

    invoke-virtual {v0}, Lat/u;->k()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 692
    :cond_a
    :goto_a
    return v5

    .line 592
    :cond_b
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v1

    .line 597
    iget-object v0, p0, LaN/b;->e:Lat/p;

    invoke-virtual {v0}, Lat/p;->g()[Lat/P;

    move-result-object v4

    array-length v6, v4

    move v0, v5

    :goto_1f
    if-ge v0, v6, :cond_31

    aget-object v7, v4, v0

    .line 603
    iget-object v8, p0, LaN/b;->e:Lat/p;

    invoke-virtual {v8}, Lat/p;->a()Lat/D;

    move-result-object v8

    int-to-long v9, v5

    add-long/2addr v9, v1

    invoke-virtual {v8, v7, v3, v9, v10}, Lat/D;->a(Lat/P;ZJ)Ljava/util/Vector;

    .line 597
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 605
    :cond_31
    iget-object v0, p0, LaN/b;->e:Lat/p;

    invoke-virtual {v0}, Lat/p;->a()Lat/D;

    move-result-object v0

    invoke-virtual {v0}, Lat/D;->k()V

    .line 608
    invoke-super {p0}, LaM/am;->G()Z

    move-result v0

    .line 610
    iget-boolean v1, p0, LaN/b;->A:Z

    if-eqz v1, :cond_45

    .line 611
    iput-boolean v5, p0, LaN/b;->A:Z

    move v0, v3

    .line 615
    :cond_45
    iget-object v1, p0, LaN/b;->r:Lcom/google/android/maps/driveabout/vector/cl;

    if-eqz v1, :cond_54

    iget-object v1, p0, LaN/b;->d:Lan/h;

    invoke-interface {v1}, Lan/h;->g()Z

    move-result v1

    if-nez v1, :cond_54

    .line 616
    invoke-virtual {p0}, LaN/b;->ac()V

    .line 620
    :cond_54
    if-eqz v0, :cond_a

    .line 627
    iget-object v1, p0, LaN/b;->o:Ljava/lang/Object;

    monitor-enter v1

    .line 628
    :try_start_59
    iget-object v0, p0, LaN/b;->n:Lcom/google/android/maps/driveabout/vector/d;

    if-eqz v0, :cond_78

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dD;->b()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 629
    iget-object v0, p0, LaN/b;->n:Lcom/google/android/maps/driveabout/vector/d;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/d;->f()Ln/B;

    move-result-object v0

    .line 630
    invoke-static {}, Ll/q;->a()Ll/q;

    move-result-object v2

    .line 632
    if-eqz v0, :cond_78

    invoke-virtual {v2, v0}, Ll/q;->d(Ln/B;)Z

    move-result v0

    if-nez v0, :cond_78

    .line 633
    invoke-virtual {p0}, LaN/b;->V()V

    .line 636
    :cond_78
    monitor-exit v1
    :try_end_79
    .catchall {:try_start_59 .. :try_end_79} :catchall_9b

    move v4, v5

    move v2, v5

    .line 640
    :goto_7b
    iget-object v0, p0, LaN/b;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v4, v0, :cond_111

    .line 641
    iget-object v0, p0, LaN/b;->i:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    .line 642
    iget-object v1, p0, LaN/b;->l:Lcom/google/common/collect/Q;

    invoke-interface {v1, v0}, Lcom/google/common/collect/Q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/aB;

    .line 643
    if-nez v1, :cond_9e

    move v1, v2

    .line 640
    :goto_96
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v2, v1

    goto :goto_7b

    .line 636
    :catchall_9b
    move-exception v0

    :try_start_9c
    monitor-exit v1
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    throw v0

    .line 647
    :cond_9e
    invoke-virtual {p0, v0}, LaN/b;->m(LaM/i;)V

    .line 648
    invoke-virtual {v0}, LaM/i;->ax()Z

    move-result v6

    if-eqz v6, :cond_d7

    invoke-virtual {v0}, LaM/i;->aj()Z

    move-result v6

    if-eqz v6, :cond_d7

    move v6, v3

    .line 650
    :goto_ae
    invoke-virtual {v0}, LaM/i;->ar()Lcom/google/googlenav/F;

    move-result-object v9

    move v7, v5

    move v8, v2

    .line 651
    :goto_b4
    invoke-interface {v9}, Lcom/google/googlenav/F;->f()I

    move-result v2

    if-ge v7, v2, :cond_136

    .line 652
    invoke-interface {v9, v7}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v10

    .line 653
    invoke-interface {v10}, Lcom/google/googlenav/E;->f()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/aB;->a(Ljava/lang/Object;)Lcom/google/android/maps/driveabout/vector/ay;

    move-result-object v2

    check-cast v2, LaN/j;

    .line 655
    invoke-interface {v10}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v11

    if-nez v11, :cond_d9

    if-eqz v2, :cond_d9

    .line 660
    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/aB;->b(Lcom/google/android/maps/driveabout/vector/ay;)V

    .line 651
    :cond_d3
    :goto_d3
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_b4

    :cond_d7
    move v6, v5

    .line 648
    goto :goto_ae

    .line 664
    :cond_d9
    invoke-virtual {v0, v7}, LaM/i;->c(I)Lcom/google/googlenav/e;

    move-result-object v11

    .line 665
    if-eqz v2, :cond_d3

    .line 666
    invoke-virtual {v2, v11}, LaN/j;->a(Lcom/google/googlenav/e;)Z

    move-result v11

    if-nez v11, :cond_f7

    invoke-virtual {v2}, LaN/j;->e()Ln/Q;

    move-result-object v11

    invoke-interface {v10}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v10

    invoke-static {v10}, Lt/e;->a(Lat/B;)Ln/Q;

    move-result-object v10

    invoke-virtual {v11, v10}, Ln/Q;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d3

    .line 668
    :cond_f7
    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/aB;->b(Lcom/google/android/maps/driveabout/vector/ay;)V

    .line 669
    invoke-static {v0, v7}, LaN/b;->b(LaM/i;I)LaN/j;

    move-result-object v2

    .line 670
    if-eqz v2, :cond_103

    .line 671
    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/aB;->a(Lcom/google/android/maps/driveabout/vector/ay;)V

    .line 673
    :cond_103
    if-eqz v6, :cond_d3

    invoke-virtual {v0}, LaM/i;->ar()Lcom/google/googlenav/F;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/F;->c()I

    move-result v2

    if-ne v2, v7, :cond_d3

    move v8, v3

    .line 674
    goto :goto_d3

    .line 683
    :cond_111
    invoke-virtual {p0}, LaN/b;->I()LaM/i;

    move-result-object v0

    .line 684
    if-eqz v2, :cond_11e

    .line 685
    invoke-virtual {v0}, LaM/i;->ak()Lcom/google/googlenav/ui/view/d;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LaN/b;->a(LaM/i;Lcom/google/googlenav/ui/view/d;)V

    .line 687
    :cond_11e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LaN/b;->y:J

    .line 688
    iget-object v1, p0, LaN/b;->x:Ljava/lang/Object;

    monitor-enter v1

    .line 689
    :try_start_127
    iget-object v0, p0, LaN/b;->x:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 690
    monitor-exit v1
    :try_end_12d
    .catchall {:try_start_127 .. :try_end_12d} :catchall_133

    .line 691
    invoke-direct {p0}, LaN/b;->ae()V

    move v5, v3

    .line 692
    goto/16 :goto_a

    .line 690
    :catchall_133
    move-exception v0

    :try_start_134
    monitor-exit v1
    :try_end_135
    .catchall {:try_start_134 .. :try_end_135} :catchall_133

    throw v0

    :cond_136
    move v1, v8

    goto/16 :goto_96
.end method

.method public H()V
    .registers 3

    .prologue
    .line 701
    iget-object v0, p0, LaN/b;->u:Lcom/google/android/maps/driveabout/vector/ch;

    if-eqz v0, :cond_1e

    .line 702
    iget-object v0, p0, LaN/b;->u:Lcom/google/android/maps/driveabout/vector/ch;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ch;->e()Z

    move-result v0

    .line 703
    iget-object v1, p0, LaN/b;->e:Lat/p;

    invoke-virtual {v1}, Lat/p;->a()Lat/D;

    move-result-object v1

    invoke-virtual {v1}, Lat/D;->m()Z

    move-result v1

    .line 704
    if-eq v0, v1, :cond_1e

    .line 705
    iget-object v0, p0, LaN/b;->u:Lcom/google/android/maps/driveabout/vector/ch;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/ch;->b(Z)V

    .line 706
    invoke-direct {p0}, LaN/b;->ae()V

    .line 709
    :cond_1e
    return-void
.end method

.method protected U()V
    .registers 2

    .prologue
    .line 1564
    const/4 v0, 0x1

    .line 1565
    invoke-virtual {p0, v0}, LaN/b;->a(Z)LaM/bx;

    .line 1566
    invoke-virtual {p0}, LaN/b;->s()V

    .line 1567
    return-void
.end method

.method public V()V
    .registers 2

    .prologue
    .line 1662
    invoke-super {p0}, LaM/am;->V()V

    .line 1666
    const/4 v0, 0x1

    iput-boolean v0, p0, LaN/b;->A:Z

    .line 1667
    invoke-virtual {p0}, LaN/b;->G()Z

    .line 1668
    return-void
.end method

.method public a(Lcom/google/googlenav/ai;ZBZZ)LaM/ak;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1180
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, LaN/b;->b(I)V

    .line 1182
    new-instance v0, LaM/ak;

    iget-object v1, p0, LaN/b;->c:Lcom/google/googlenav/ui/v;

    iget-object v2, p0, LaN/b;->e:Lat/p;

    iget-object v3, p0, LaN/b;->f:Lat/u;

    iget-object v4, p0, LaN/b;->g:Lcom/google/googlenav/ui/ac;

    iget-object v5, p0, LaN/b;->h:Lat/k;

    move-object v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v0 .. v9}, LaM/ak;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lat/k;Lcom/google/googlenav/ai;ZBZ)V

    .line 1184
    iget-object v1, p0, LaN/b;->o:Ljava/lang/Object;

    monitor-enter v1

    .line 1187
    const/4 v2, 0x0

    :try_start_1c
    invoke-static {v0, v2}, LaN/b;->b(LaM/i;I)LaN/j;

    move-result-object v2

    iput-object v2, p0, LaN/b;->n:Lcom/google/android/maps/driveabout/vector/d;

    .line 1188
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_3c

    .line 1189
    invoke-virtual {p0, v0, p5}, LaN/b;->a(LaM/i;Z)V

    .line 1191
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->w()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1192
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->h()Z

    move-result v1

    if-eqz v1, :cond_3f

    check-cast p1, Lcom/google/googlenav/W;

    invoke-virtual {p1}, Lcom/google/googlenav/W;->j()Ljava/lang/String;

    move-result-object v1

    .line 1194
    :goto_38
    invoke-direct {p0, v1}, LaN/b;->g(Ljava/lang/String;)V

    .line 1197
    :cond_3b
    return-object v0

    .line 1188
    :catchall_3c
    move-exception v0

    :try_start_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v0

    .line 1192
    :cond_3f
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->bT()Ljava/lang/String;

    move-result-object v1

    goto :goto_38
.end method

.method protected a(Lcom/google/googlenav/layer/m;)LaM/bD;
    .registers 10
    .parameter

    .prologue
    .line 1063
    new-instance v0, LaN/o;

    iget-object v1, p0, LaN/b;->c:Lcom/google/googlenav/ui/v;

    iget-object v2, p0, LaN/b;->e:Lat/p;

    iget-object v3, p0, LaN/b;->f:Lat/u;

    iget-object v4, p0, LaN/b;->g:Lcom/google/googlenav/ui/ac;

    new-instance v6, Lat/k;

    invoke-direct {v6}, Lat/k;-><init>()V

    iget-object v7, p0, LaN/b;->p:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, LaN/o;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/layer/m;Lat/k;Lcom/google/android/maps/driveabout/vector/VectorMapView;)V

    .line 1065
    return-object v0
.end method

.method protected a(Lcom/google/googlenav/layer/m;Z)LaM/y;
    .registers 12
    .parameter
    .parameter

    .prologue
    .line 1071
    new-instance v0, LaN/q;

    iget-object v1, p0, LaN/b;->c:Lcom/google/googlenav/ui/v;

    iget-object v2, p0, LaN/b;->e:Lat/p;

    iget-object v3, p0, LaN/b;->f:Lat/u;

    iget-object v4, p0, LaN/b;->g:Lcom/google/googlenav/ui/ac;

    iget-object v6, p0, LaN/b;->h:Lat/k;

    iget-object v7, p0, LaN/b;->p:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    move-object v5, p1

    move v8, p2

    invoke-direct/range {v0 .. v8}, LaN/q;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/layer/m;Lat/k;Lcom/google/android/maps/driveabout/vector/VectorMapView;Z)V

    .line 1073
    return-object v0
.end method

.method public a(FF)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 566
    iget-object v0, p0, LaN/b;->r:Lcom/google/android/maps/driveabout/vector/cl;

    if-eqz v0, :cond_3f

    iget-object v0, p0, LaN/b;->d:Lan/h;

    invoke-interface {v0}, Lan/h;->i()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 569
    iget-object v0, p0, LaN/b;->r:Lcom/google/android/maps/driveabout/vector/cl;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cl;->o()F

    move-result v0

    sub-float v0, p1, v0

    invoke-static {v0}, Lcom/google/googlenav/common/util/j;->b(F)F

    move-result v0

    .line 571
    iget-object v1, p0, LaN/b;->s:Ln/P;

    invoke-virtual {v1}, Ln/P;->d()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40a0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3f

    .line 573
    :cond_2a
    iget-object v0, p0, LaN/b;->s:Ln/P;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ln/P;->a(Z)V

    .line 574
    iget-object v0, p0, LaN/b;->s:Ln/P;

    invoke-virtual {v0, p1}, Ln/P;->a(F)V

    .line 575
    iget-object v0, p0, LaN/b;->r:Lcom/google/android/maps/driveabout/vector/cl;

    iget-object v1, p0, LaN/b;->s:Ln/P;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cl;->a(Ln/P;)V

    .line 576
    invoke-direct {p0}, LaN/b;->ae()V

    .line 579
    :cond_3f
    return-void
.end method

.method public a(LaM/i;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1366
    iget-object v0, p0, LaN/b;->p:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v0, :cond_a

    .line 1367
    iget-object v0, p0, LaN/b;->p:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->q()V

    .line 1369
    :cond_a
    iput-object v1, p0, LaN/b;->q:Lcom/google/android/maps/driveabout/vector/g;

    .line 1370
    invoke-direct {p0}, LaN/b;->ag()V

    .line 1371
    iget-object v1, p0, LaN/b;->o:Ljava/lang/Object;

    monitor-enter v1

    .line 1372
    const/4 v0, 0x0

    :try_start_13
    iput-object v0, p0, LaN/b;->n:Lcom/google/android/maps/driveabout/vector/d;

    .line 1373
    monitor-exit v1

    .line 1379
    return-void

    .line 1373
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public a(LaM/i;Lcom/google/googlenav/ui/view/d;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1103
    iget-object v0, p0, LaN/b;->p:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v0, :cond_6

    if-nez p2, :cond_7

    .line 1117
    :cond_6
    :goto_6
    return-void

    .line 1109
    :cond_7
    iget-object v0, p0, LaN/b;->p:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->setBubbleTapListener(Lcom/google/android/maps/driveabout/vector/T;)V

    .line 1111
    invoke-virtual {p2}, Lcom/google/googlenav/ui/view/d;->d()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, LaN/b;->a(Landroid/view/View;)Lcom/google/android/maps/driveabout/vector/g;

    move-result-object v0

    iput-object v0, p0, LaN/b;->q:Lcom/google/android/maps/driveabout/vector/g;

    .line 1113
    instance-of v0, p1, Lcom/google/android/maps/driveabout/vector/i;

    if-eqz v0, :cond_22

    .line 1114
    iget-object v1, p0, LaN/b;->q:Lcom/google/android/maps/driveabout/vector/g;

    move-object v0, p1

    check-cast v0, Lcom/google/android/maps/driveabout/vector/i;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/g;->a(Lcom/google/android/maps/driveabout/vector/i;)V

    .line 1116
    :cond_22
    invoke-direct {p0, p1}, LaN/b;->p(LaM/i;)V

    goto :goto_6
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/VectorMapView;)V
    .registers 12
    .parameter

    .prologue
    const/4 v9, 0x2

    const v8, 0x338cc6ef

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 298
    iget-object v0, p0, LaN/b;->p:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-ne v0, p1, :cond_c

    .line 415
    :goto_b
    return-void

    .line 301
    :cond_c
    iput-object p1, p0, LaN/b;->p:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    .line 302
    iget-object v0, p0, LaN/b;->t:LaN/k;

    iget-object v1, p0, LaN/b;->p:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0, v1}, LaN/k;->a(Lcom/google/android/maps/driveabout/vector/VectorMapView;)V

    .line 303
    iget-object v0, p0, LaN/b;->p:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-nez v0, :cond_31

    .line 304
    iget-object v0, p0, LaN/b;->l:Lcom/google/common/collect/Q;

    invoke-interface {v0}, Lcom/google/common/collect/Q;->clear()V

    .line 305
    iget-object v0, p0, LaN/b;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 306
    iput-object v7, p0, LaN/b;->r:Lcom/google/android/maps/driveabout/vector/cl;

    .line 307
    iput-object v7, p0, LaN/b;->u:Lcom/google/android/maps/driveabout/vector/ch;

    .line 308
    iput-object v7, p0, LaN/b;->n:Lcom/google/android/maps/driveabout/vector/d;

    .line 309
    iput-object v7, p0, LaN/b;->q:Lcom/google/android/maps/driveabout/vector/g;

    .line 312
    iget-object v0, p0, LaN/b;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/v;->d(Z)V

    goto :goto_b

    :cond_31
    move v1, v2

    .line 317
    :goto_32
    iget-object v0, p0, LaN/b;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_74

    .line 318
    iget-object v0, p0, LaN/b;->i:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    .line 319
    iget-object v3, p0, LaN/b;->l:Lcom/google/common/collect/Q;

    invoke-interface {v3, v0}, Lcom/google/common/collect/Q;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_66

    .line 320
    iget-object v3, p0, LaN/b;->p:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v3, v2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(I)Lcom/google/android/maps/driveabout/vector/aB;

    move-result-object v3

    .line 324
    invoke-virtual {v0}, LaM/i;->av()I

    move-result v4

    if-ne v4, v9, :cond_70

    .line 325
    invoke-virtual {v3, v6}, Lcom/google/android/maps/driveabout/vector/aB;->b_(I)V

    .line 331
    :goto_59
    invoke-virtual {p1, v9}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->setBaseDistancePenaltyFactorForLabelOverlay(I)V

    .line 332
    iget-object v4, p0, LaN/b;->l:Lcom/google/common/collect/Q;

    invoke-interface {v4, v0, v3}, Lcom/google/common/collect/Q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v4, p0, LaN/b;->t:LaN/k;

    invoke-virtual {v4, v3}, LaN/k;->a(Lcom/google/android/maps/driveabout/vector/aB;)V

    .line 335
    :cond_66
    invoke-virtual {p0, v0}, LaN/b;->b(LaM/i;)V

    .line 336
    invoke-direct {p0, v0}, LaN/b;->n(LaM/i;)V

    .line 317
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_32

    .line 327
    :cond_70
    invoke-virtual {v3, v2}, Lcom/google/android/maps/driveabout/vector/aB;->b_(I)V

    goto :goto_59

    .line 338
    :cond_74
    iget-object v0, p0, LaN/b;->p:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v1, p0, LaN/b;->t:LaN/k;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 342
    iget-object v0, p0, LaN/b;->p:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0, v6}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->c(Z)Lcom/google/android/maps/driveabout/vector/cl;

    move-result-object v0

    iput-object v0, p0, LaN/b;->r:Lcom/google/android/maps/driveabout/vector/cl;

    .line 343
    iget-object v0, p0, LaN/b;->r:Lcom/google/android/maps/driveabout/vector/cl;

    invoke-virtual {v0, v6}, Lcom/google/android/maps/driveabout/vector/cl;->b(Z)V

    .line 346
    iget-object v0, p0, LaN/b;->r:Lcom/google/android/maps/driveabout/vector/cl;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/google/android/maps/driveabout/vector/cn;

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cn;->a()Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/google/android/maps/driveabout/vector/co;->a(Z)Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/maps/driveabout/vector/co;->b(Z)Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/google/android/maps/driveabout/vector/co;->c(Z)Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/co;->a()Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v3

    const v4, 0x7f020450

    const v5, 0x7f020451

    invoke-virtual {v3, v4, v5}, Lcom/google/android/maps/driveabout/vector/co;->a(II)Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v3

    invoke-virtual {v3, v2, v8}, Lcom/google/android/maps/driveabout/vector/co;->b(II)Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/co;->c()Lcom/google/android/maps/driveabout/vector/cn;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cn;->a()Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/maps/driveabout/vector/co;->a(Z)Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/maps/driveabout/vector/co;->b(Z)Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/google/android/maps/driveabout/vector/co;->c(Z)Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/co;->b()Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v3

    const v4, 0x7f02044c

    const v5, 0x7f02044d

    invoke-virtual {v3, v4, v5}, Lcom/google/android/maps/driveabout/vector/co;->a(II)Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v3

    invoke-virtual {v3, v2, v8}, Lcom/google/android/maps/driveabout/vector/co;->b(II)Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/co;->c()Lcom/google/android/maps/driveabout/vector/cn;

    move-result-object v3

    aput-object v3, v1, v6

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cn;->a()Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/google/android/maps/driveabout/vector/co;->a(Z)Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/maps/driveabout/vector/co;->b(Z)Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/co;->a()Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v3

    const v4, 0x7f020452

    const v5, 0x7f020453

    invoke-virtual {v3, v4, v5}, Lcom/google/android/maps/driveabout/vector/co;->a(II)Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v3

    const v4, 0x73217bce

    invoke-virtual {v3, v4, v8}, Lcom/google/android/maps/driveabout/vector/co;->b(II)Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/co;->c()Lcom/google/android/maps/driveabout/vector/cn;

    move-result-object v3

    aput-object v3, v1, v9

    const/4 v3, 0x3

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cn;->a()Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/maps/driveabout/vector/co;->a(Z)Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/maps/driveabout/vector/co;->b(Z)Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/co;->b()Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v2

    const v4, 0x7f02044e

    const v5, 0x7f02044f

    invoke-virtual {v2, v4, v5}, Lcom/google/android/maps/driveabout/vector/co;->a(II)Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v2

    const v4, 0x73217bce

    invoke-virtual {v2, v4, v8}, Lcom/google/android/maps/driveabout/vector/co;->b(II)Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/co;->c()Lcom/google/android/maps/driveabout/vector/cn;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x4

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cn;->a()Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/google/android/maps/driveabout/vector/co;->b(Z)Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/co;->b()Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v3

    const v4, 0x7f020454

    const v5, 0x7f020455

    invoke-virtual {v3, v4, v5}, Lcom/google/android/maps/driveabout/vector/co;->a(II)Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v3

    const v4, 0x73aaaaaa

    const v5, 0x33cccccc

    invoke-virtual {v3, v4, v5}, Lcom/google/android/maps/driveabout/vector/co;->b(II)Lcom/google/android/maps/driveabout/vector/co;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/co;->c()Lcom/google/android/maps/driveabout/vector/cn;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cl;->a([Lcom/google/android/maps/driveabout/vector/cn;)V

    .line 386
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 387
    iget-object v1, p0, LaN/b;->r:Lcom/google/android/maps/driveabout/vector/cl;

    const v2, 0x7f0b00e3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const v3, 0x7f0c0005

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const v4, 0x7f0c0006

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/maps/driveabout/vector/cl;->a(FII)V

    .line 391
    iget-object v0, p0, LaN/b;->r:Lcom/google/android/maps/driveabout/vector/cl;

    const v1, 0x7c830

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cl;->b(I)V

    .line 392
    iget-object v0, p0, LaN/b;->r:Lcom/google/android/maps/driveabout/vector/cl;

    const/high16 v1, 0x4160

    const/high16 v2, 0x4120

    const v3, 0x3f4ccccd

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/cl;->a(FFF)V

    .line 393
    iget-object v0, p0, LaN/b;->r:Lcom/google/android/maps/driveabout/vector/cl;

    new-instance v1, LaN/e;

    invoke-direct {v1, p0}, LaN/e;-><init>(LaN/b;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cl;->a(Lcom/google/android/maps/driveabout/vector/aE;)V

    .line 405
    iget-object v0, p0, LaN/b;->r:Lcom/google/android/maps/driveabout/vector/cl;

    const v1, 0x8000

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cl;->d(I)V

    .line 406
    iget-object v0, p0, LaN/b;->p:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v1, p0, LaN/b;->r:Lcom/google/android/maps/driveabout/vector/cl;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 409
    new-instance v0, Lcom/google/android/maps/driveabout/vector/ch;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/ch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LaN/b;->u:Lcom/google/android/maps/driveabout/vector/ch;

    .line 410
    iget-object v0, p0, LaN/b;->p:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v1, p0, LaN/b;->u:Lcom/google/android/maps/driveabout/vector/ch;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 413
    iget-object v0, p0, LaN/b;->p:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    new-instance v1, LaN/l;

    invoke-direct {v1, p0, v7}, LaN/l;-><init>(LaN/b;LaN/c;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->setLabelTapListener(Lcom/google/android/maps/driveabout/vector/f;)V

    .line 414
    iget-object v0, p0, LaN/b;->p:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->setBubbleTapListener(Lcom/google/android/maps/driveabout/vector/T;)V

    goto/16 :goto_b
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/d;)V
    .registers 3
    .parameter

    .prologue
    .line 1322
    if-nez p1, :cond_6

    .line 1325
    invoke-virtual {p0}, LaN/b;->V()V

    .line 1339
    :cond_5
    :goto_5
    return-void

    .line 1336
    :cond_6
    iget-object v0, p0, LaN/b;->q:Lcom/google/android/maps/driveabout/vector/g;

    if-eqz v0, :cond_5

    .line 1337
    iget-object v0, p0, LaN/b;->q:Lcom/google/android/maps/driveabout/vector/g;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/g;->d()V

    goto :goto_5
.end method

.method public a(Ll/q;)V
    .registers 2
    .parameter

    .prologue
    .line 1673
    return-void
.end method

.method public a(Ll/q;Ln/w;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1677
    iget-object v0, p0, LaN/b;->r:Lcom/google/android/maps/driveabout/vector/cl;

    if-nez v0, :cond_5

    .line 1686
    :goto_4
    return-void

    .line 1680
    :cond_5
    invoke-direct {p0}, LaN/b;->ai()V

    .line 1681
    iget-object v0, p0, LaN/b;->r:Lcom/google/android/maps/driveabout/vector/cl;

    iget-object v1, p0, LaN/b;->s:Ln/P;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cl;->a(Ln/P;)V

    .line 1684
    const/4 v0, 0x1

    iput-boolean v0, p0, LaN/b;->A:Z

    .line 1685
    invoke-direct {p0}, LaN/b;->ae()V

    goto :goto_4
.end method

.method protected a(LaM/i;ZZ)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1585
    invoke-super {p0, p1, p2, p3}, LaM/am;->a(LaM/i;ZZ)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1606
    :goto_7
    return v0

    .line 1588
    :cond_8
    invoke-virtual {p1}, LaM/i;->av()I

    move-result v1

    const/16 v2, 0xf

    if-eq v1, v2, :cond_33

    .line 1593
    iget-object v1, p0, LaN/b;->p:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v1, :cond_30

    .line 1594
    iget-object v1, p0, LaN/b;->p:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(I)Lcom/google/android/maps/driveabout/vector/aB;

    move-result-object v0

    .line 1595
    new-instance v1, LaN/m;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LaN/m;-><init>(LaN/b;LaN/c;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/aB;->a(Lcom/google/android/maps/driveabout/vector/f;)V

    .line 1596
    iget-object v1, p0, LaN/b;->l:Lcom/google/common/collect/Q;

    invoke-interface {v1, p1, v0}, Lcom/google/common/collect/Q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1599
    invoke-virtual {p0, p1}, LaN/b;->b(LaM/i;)V

    .line 1600
    iget-object v1, p0, LaN/b;->t:LaN/k;

    invoke-virtual {v1, v0}, LaN/k;->a(Lcom/google/android/maps/driveabout/vector/aB;)V

    .line 1602
    :cond_30
    invoke-virtual {p1, p0}, LaM/i;->a(LaM/k;)V

    .line 1604
    :cond_33
    invoke-virtual {p1, p0}, LaM/i;->a(LaM/j;)V

    .line 1605
    invoke-direct {p0, p1}, LaN/b;->n(LaM/i;)V

    .line 1606
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public ac()V
    .registers 3

    .prologue
    .line 553
    iget-object v0, p0, LaN/b;->r:Lcom/google/android/maps/driveabout/vector/cl;

    if-eqz v0, :cond_d

    .line 554
    iget-object v0, p0, LaN/b;->r:Lcom/google/android/maps/driveabout/vector/cl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cl;->a(Ln/P;)V

    .line 555
    invoke-direct {p0}, LaN/b;->ae()V

    .line 557
    :cond_d
    return-void
.end method

.method public ad()Lcom/google/android/maps/driveabout/vector/VectorMapView;
    .registers 2

    .prologue
    .line 1634
    iget-object v0, p0, LaN/b;->p:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    return-object v0
.end method

.method public b(LaM/i;)V
    .registers 8
    .parameter

    .prologue
    .line 968
    invoke-virtual {p0, p1}, LaN/b;->k(LaM/i;)V

    .line 970
    iget-object v0, p0, LaN/b;->l:Lcom/google/common/collect/Q;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aB;

    .line 971
    if-nez v0, :cond_e

    .line 1017
    :cond_d
    return-void

    .line 974
    :cond_e
    invoke-virtual {p1}, LaM/i;->ar()Lcom/google/googlenav/F;

    move-result-object v2

    .line 975
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v3

    .line 976
    const/4 v1, 0x0

    :goto_17
    invoke-interface {v2}, Lcom/google/googlenav/F;->f()I

    move-result v4

    if-ge v1, v4, :cond_37

    .line 977
    invoke-interface {v2, v1}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v4

    .line 978
    if-eqz v4, :cond_34

    invoke-interface {v4}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v5

    if-eqz v5, :cond_34

    .line 979
    invoke-interface {v4}, Lcom/google/googlenav/E;->f()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 985
    :cond_37
    new-instance v1, LaN/h;

    invoke-direct {v1, p0, v3, v2, p1}, LaN/h;-><init>(LaN/b;Ljava/util/Map;Lcom/google/googlenav/F;LaM/i;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Lcom/google/android/maps/driveabout/vector/aB;->a(Lcom/google/android/maps/driveabout/vector/aA;Z)V

    .line 1007
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1008
    :cond_48
    :goto_48
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1009
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1010
    invoke-static {p1, v1}, LaN/b;->b(LaM/i;I)LaN/j;

    move-result-object v4

    .line 1011
    if-eqz v4, :cond_48

    .line 1012
    invoke-interface {v2, v1}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v1

    .line 1013
    invoke-direct {p0, p1, v1}, LaN/b;->a(LaM/i;Lcom/google/googlenav/E;)Z

    move-result v1

    invoke-virtual {v4, v1}, Lcom/google/android/maps/driveabout/vector/ay;->a(Z)V

    .line 1014
    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/aB;->a(Lcom/google/android/maps/driveabout/vector/ay;)V

    goto :goto_48
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/d;)V
    .registers 7
    .parameter

    .prologue
    .line 1351
    const/16 v0, 0x12

    invoke-direct {p0}, LaN/b;->ah()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "a=d"

    aput-object v4, v2, v3

    invoke-static {v2}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1359
    iget-object v0, p0, LaN/b;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->t()Lat/u;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/d;->e()Ln/Q;

    move-result-object v1

    invoke-static {v1}, Lt/e;->b(Ln/Q;)Lat/B;

    move-result-object v1

    sget-object v2, LaN/b;->k:Lat/Y;

    invoke-virtual {v0, v1, v2}, Lat/u;->d(Lat/B;Lat/Y;)V

    .line 1362
    return-void
.end method

.method public b(Ll/q;)V
    .registers 4
    .parameter

    .prologue
    .line 1690
    iget-object v0, p0, LaN/b;->r:Lcom/google/android/maps/driveabout/vector/cl;

    if-nez v0, :cond_5

    .line 1697
    :goto_4
    return-void

    .line 1693
    :cond_5
    invoke-direct {p0}, LaN/b;->ai()V

    .line 1694
    iget-object v0, p0, LaN/b;->r:Lcom/google/android/maps/driveabout/vector/cl;

    iget-object v1, p0, LaN/b;->s:Ln/P;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cl;->a(Ln/P;)V

    .line 1695
    const/4 v0, 0x1

    iput-boolean v0, p0, LaN/b;->A:Z

    .line 1696
    invoke-direct {p0}, LaN/b;->ae()V

    goto :goto_4
.end method

.method public c()V
    .registers 3

    .prologue
    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, LaN/b;->v:Z

    .line 284
    iget-object v1, p0, LaN/b;->w:Ljava/lang/Object;

    monitor-enter v1

    .line 285
    :try_start_6
    iget-object v0, p0, LaN/b;->w:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 286
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_16

    .line 287
    iget-object v1, p0, LaN/b;->x:Ljava/lang/Object;

    monitor-enter v1

    .line 288
    :try_start_f
    iget-object v0, p0, LaN/b;->x:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 289
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_19

    .line 290
    return-void

    .line 286
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0

    .line 289
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method protected d()V
    .registers 1

    .prologue
    .line 1027
    invoke-super {p0}, LaM/am;->d()V

    .line 1028
    invoke-direct {p0}, LaN/b;->af()V

    .line 1029
    return-void
.end method

.method public d(LaM/i;)V
    .registers 4
    .parameter

    .prologue
    .line 1039
    invoke-super {p0, p1}, LaM/am;->d(LaM/i;)V

    .line 1040
    iget-object v0, p0, LaN/b;->l:Lcom/google/common/collect/Q;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aB;

    .line 1041
    if-eqz v0, :cond_12

    .line 1042
    iget-object v1, p0, LaN/b;->t:LaN/k;

    invoke-virtual {v1, v0}, LaN/k;->c(Lcom/google/android/maps/driveabout/vector/aB;)V

    .line 1046
    :cond_12
    invoke-direct {p0}, LaN/b;->af()V

    .line 1047
    return-void
.end method

.method protected e(Z)V
    .registers 3
    .parameter

    .prologue
    .line 713
    iget-object v0, p0, LaN/b;->p:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v0, :cond_9

    .line 714
    iget-object v0, p0, LaN/b;->p:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->setShouldUpdateFeatureCluster(Z)V

    .line 716
    :cond_9
    return-void
.end method

.method protected h(LaM/i;)V
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1617
    invoke-super {p0, p1}, LaM/am;->h(LaM/i;)V

    .line 1619
    invoke-virtual {p1, v0}, LaM/i;->a(LaM/k;)V

    .line 1620
    invoke-virtual {p1, v0}, LaM/i;->a(LaM/j;)V

    .line 1623
    iget-object v0, p0, LaN/b;->l:Lcom/google/common/collect/Q;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aB;

    .line 1624
    if-eqz v0, :cond_19

    .line 1625
    iget-object v1, p0, LaN/b;->t:LaN/k;

    invoke-virtual {v1, v0}, LaN/k;->b(Lcom/google/android/maps/driveabout/vector/aB;)V

    .line 1627
    :cond_19
    iget-object v0, p0, LaN/b;->l:Lcom/google/common/collect/Q;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Q;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1630
    invoke-direct {p0, p1}, LaN/b;->o(LaM/i;)V

    .line 1631
    return-void
.end method

.method public m(LaM/i;)V
    .registers 2
    .parameter

    .prologue
    .line 1079
    invoke-super {p0, p1}, LaM/am;->m(LaM/i;)V

    .line 1080
    invoke-direct {p0, p1}, LaN/b;->n(LaM/i;)V

    .line 1081
    return-void
.end method
