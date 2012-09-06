.class public abstract LaM/m;
.super LaM/i;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/aY;


# static fields
.field public static final u:Lcom/google/common/base/D;

.field protected static z:Lcom/google/googlenav/ui/view/android/aD;


# instance fields
.field protected A:LaM/bd;

.field private B:Lcom/google/googlenav/ui/a;

.field private final C:Ljava/util/Hashtable;

.field private D:Lcom/google/googlenav/ui/view/dialog/as;

.field private E:Lcom/google/googlenav/ai;

.field protected v:I

.field protected w:Z

.field protected x:Lcom/google/googlenav/ui/bw;

.field protected y:Lah/s;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 142
    new-instance v0, LaM/n;

    invoke-direct {v0}, LaM/n;-><init>()V

    sput-object v0, LaM/m;->u:Lcom/google/common/base/D;

    return-void
.end method

.method protected constructor <init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, LaM/m;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/F;)V

    .line 223
    return-void
.end method

.method protected constructor <init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/F;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 227
    invoke-direct/range {p0 .. p5}, LaM/i;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/F;)V

    .line 153
    iput v0, p0, LaM/m;->v:I

    .line 159
    iput-boolean v0, p0, LaM/m;->w:Z

    .line 183
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, LaM/m;->C:Ljava/util/Hashtable;

    .line 200
    iput-object v1, p0, LaM/m;->D:Lcom/google/googlenav/ui/view/dialog/as;

    .line 205
    iput-object v1, p0, LaM/m;->E:Lcom/google/googlenav/ai;

    .line 228
    invoke-virtual {p1}, Lcom/google/googlenav/ui/v;->k()Lah/o;

    move-result-object v0

    invoke-virtual {v0}, Lah/o;->b()Lah/s;

    move-result-object v0

    iput-object v0, p0, LaM/m;->y:Lah/s;

    .line 229
    iget-object v0, p0, LaM/m;->y:Lah/s;

    invoke-static {v0}, LaM/m;->a(Lah/s;)Lcom/google/googlenav/ui/bw;

    move-result-object v0

    iput-object v0, p0, LaM/m;->x:Lcom/google/googlenav/ui/bw;

    .line 230
    new-instance v0, LaM/bd;

    invoke-direct {v0, p0}, LaM/bd;-><init>(LaM/m;)V

    iput-object v0, p0, LaM/m;->A:LaM/bd;

    .line 231
    return-void
.end method

.method static a(Lad/y;Lr/Q;)Lad/y;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1486
    if-nez p1, :cond_3

    .line 1498
    :cond_2
    :goto_2
    return-object p0

    .line 1490
    :cond_3
    invoke-virtual {p0}, Lad/y;->l()Ln/B;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lad/y;->l()Ln/B;

    move-result-object v0

    invoke-virtual {v0}, Ln/B;->b()I

    move-result v0

    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_2

    .line 1492
    invoke-virtual {p0}, Lad/y;->l()Ln/B;

    move-result-object v0

    invoke-virtual {v0}, Ln/B;->a()Ln/p;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr/Q;->c(Ln/p;)Ln/x;

    move-result-object v0

    .line 1493
    if-eqz v0, :cond_2

    .line 1494
    invoke-virtual {v0}, Ln/x;->a()Ln/B;

    move-result-object v0

    invoke-static {p0, v0}, Lad/y;->a(Lad/y;Ln/B;)Lad/y;

    move-result-object p0

    goto :goto_2
.end method

.method static a(Lcom/google/googlenav/ai;ZZ)Lad/y;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1511
    if-eqz p1, :cond_f

    .line 1512
    invoke-static {p0}, Lad/y;->c(Lcom/google/googlenav/ai;)Lad/y;

    move-result-object v0

    .line 1519
    :goto_6
    invoke-static {}, Lr/Q;->b()Lr/Q;

    move-result-object v1

    invoke-static {v0, v1}, LaM/m;->a(Lad/y;Lr/Q;)Lad/y;

    move-result-object v0

    return-object v0

    .line 1513
    :cond_f
    if-eqz p2, :cond_16

    .line 1514
    invoke-static {p0}, Lad/y;->a(Lcom/google/googlenav/ai;)Lad/y;

    move-result-object v0

    goto :goto_6

    .line 1516
    :cond_16
    invoke-static {p0}, Lad/y;->b(Lcom/google/googlenav/ai;)Lad/y;

    move-result-object v0

    goto :goto_6
.end method

.method private static a(Lah/s;)Lcom/google/googlenav/ui/bw;
    .registers 3
    .parameter

    .prologue
    .line 234
    new-instance v0, Lcom/google/googlenav/ui/bw;

    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bn;->q()LS/f;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/bw;-><init>(Lah/s;LS/f;)V

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/ap;)Lcom/google/googlenav/ui/bx;
    .registers 4
    .parameter

    .prologue
    .line 238
    if-nez p0, :cond_4

    .line 239
    const/4 v0, 0x0

    .line 241
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/google/googlenav/ui/bx;

    invoke-virtual {p0}, Lcom/google/googlenav/ap;->a()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/google/googlenav/ui/bn;->bx:I

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/bx;-><init>(Ljava/lang/String;I)V

    goto :goto_3
.end method

.method private a()V
    .registers 2

    .prologue
    .line 365
    invoke-direct {p0}, LaM/m;->bF()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 366
    iget-object v0, p0, LaM/m;->r:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/view/android/bE;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bE;->H()V

    .line 368
    :cond_d
    return-void
.end method

.method static synthetic a(LaM/m;Lcom/google/googlenav/ai;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 113
    invoke-direct {p0, p1}, LaM/m;->n(Lcom/google/googlenav/ai;)V

    return-void
.end method

.method private a(ZLjava/lang/String;ILjava/lang/String;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1097
    if-eqz p1, :cond_43

    const-string v0, "e"

    .line 1099
    :goto_4
    const/16 v2, 0x54

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "t="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x2

    if-nez p4, :cond_46

    const/4 v1, 0x0

    :goto_39
    aput-object v1, v3, v4

    invoke-static {v3}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1106
    return-void

    .line 1097
    :cond_43
    const-string v0, "c"

    goto :goto_4

    .line 1099
    :cond_46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "u="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_39
.end method

.method private a(Lcom/google/googlenav/ai;IILjava/lang/Object;)Z
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 973
    if-nez p1, :cond_18

    const/16 v1, 0x11

    if-eq p2, v1, :cond_18

    invoke-virtual {p0}, LaM/m;->ae()Z

    move-result v1

    if-eqz v1, :cond_f

    if-eq p2, v0, :cond_18

    :cond_f
    const/16 v1, 0x578

    if-ne p2, v1, :cond_19

    const/4 v1, -0x1

    if-ne p3, v1, :cond_18

    if-eqz p4, :cond_19

    :cond_18
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method static synthetic b(LaM/m;Lcom/google/googlenav/ai;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 113
    invoke-direct {p0, p1}, LaM/m;->m(Lcom/google/googlenav/ai;)V

    return-void
.end method

.method private static b(Lcom/google/googlenav/ai;I)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    .line 1647
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->V()J

    move-result-wide v0

    .line 1648
    invoke-static {p0}, Lcom/google/googlenav/bN;->a(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v2

    .line 1649
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    cmp-long v6, v0, v6

    if-eqz v6, :cond_69

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2a
    aput-object v0, v4, v5

    if-eqz v2, :cond_6c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_41
    aput-object v0, v4, v8

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is_ad="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->ab()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v4}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v3, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1657
    return-void

    .line 1649
    :cond_69
    const-string v0, ""

    goto :goto_2a

    :cond_6c
    const-string v0, ""

    goto :goto_41
.end method

.method private b()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1213
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->aI()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p0}, LaM/m;->ae()Z

    move-result v1

    if-nez v1, :cond_17

    :cond_11
    invoke-virtual {p0}, LaM/m;->ah()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1219
    :cond_17
    :goto_17
    return v0

    .line 1217
    :cond_18
    invoke-virtual {p0}, LaM/m;->bt()Lcom/google/googlenav/ai;

    move-result-object v1

    .line 1218
    invoke-virtual {v1}, Lcom/google/googlenav/ai;->I()Ljava/lang/String;

    move-result-object v1

    .line 1219
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v0, 0x1

    goto :goto_17
.end method

.method private bE()Z
    .registers 2

    .prologue
    .line 1947
    iget-object v0, p0, LaM/m;->r:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, LaM/m;->af()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, LaM/m;->bz()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private bF()Z
    .registers 2

    .prologue
    .line 2277
    invoke-virtual {p0}, LaM/m;->af()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, LaM/m;->r:Lcom/google/googlenav/ui/view/android/bb;

    instance-of v0, v0, Lcom/google/googlenav/ui/view/android/bE;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private bG()V
    .registers 3

    .prologue
    .line 2359
    iget-object v0, p0, LaM/m;->D:Lcom/google/googlenav/ui/view/dialog/as;

    if-eqz v0, :cond_1c

    .line 2365
    invoke-virtual {p0}, LaM/m;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/F;->d()B

    move-result v0

    if-nez v0, :cond_14

    .line 2366
    iget-object v0, p0, LaM/m;->D:Lcom/google/googlenav/ui/view/dialog/as;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/as;->a(Z)V

    .line 2369
    :cond_14
    iget-object v0, p0, LaM/m;->D:Lcom/google/googlenav/ui/view/dialog/as;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/as;->dismiss()V

    .line 2370
    const/4 v0, 0x0

    iput-object v0, p0, LaM/m;->D:Lcom/google/googlenav/ui/view/dialog/as;

    .line 2372
    :cond_1c
    return-void
.end method

.method private c()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1307
    invoke-virtual {p0}, LaM/m;->av()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    const-string v0, "f"

    :goto_9
    return-object v0

    :cond_a
    const-string v0, "s"

    goto :goto_9
.end method

.method private c(Lcom/google/googlenav/ui/wizard/A;)V
    .registers 16
    .parameter

    .prologue
    const/4 v13, 0x7

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 1401
    invoke-virtual {p0}, LaM/m;->bt()Lcom/google/googlenav/ai;

    move-result-object v1

    .line 1404
    invoke-virtual {v1}, Lcom/google/googlenav/ai;->V()J

    move-result-wide v2

    .line 1405
    invoke-static {v1}, Lcom/google/googlenav/bN;->a(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v4

    .line 1406
    const/4 v5, 0x4

    const-string v6, "sd"

    const/4 v0, 0x2

    new-array v7, v0, [Ljava/lang/String;

    const-wide/16 v8, -0x1

    cmp-long v0, v2, v8

    if-eqz v0, :cond_a6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cid="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2f
    aput-object v0, v7, v12

    if-eqz v4, :cond_a9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "u="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_46
    aput-object v0, v7, v11

    invoke-static {v7}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1415
    invoke-static {}, LaI/a;->a()LaI/a;

    move-result-object v0

    if-eqz v0, :cond_68

    .line 1416
    invoke-static {}, LaI/a;->a()LaI/a;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, LaI/a;->a(Lcom/google/googlenav/ai;J)V

    .line 1422
    :cond_68
    iget-object v0, p0, LaM/m;->f:Lcom/google/googlenav/F;

    instance-of v0, v0, Lcom/google/googlenav/n;

    if-eqz v0, :cond_bb

    .line 1423
    iget-object v0, p0, LaM/m;->f:Lcom/google/googlenav/F;

    check-cast v0, Lcom/google/googlenav/n;

    invoke-virtual {v0}, Lcom/google/googlenav/n;->a()Lcom/google/googlenav/F;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/aW;

    .line 1427
    invoke-virtual {v0}, Lcom/google/googlenav/aW;->c()I

    move-result v2

    if-ne v2, v10, :cond_94

    .line 1428
    new-array v0, v11, [Lcom/google/googlenav/ai;

    aput-object v1, v0, v12

    iget-object v2, p0, LaM/m;->d:Lat/u;

    invoke-virtual {v2}, Lat/u;->f()Lat/H;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v3

    invoke-virtual {v2, v3}, Lat/H;->a(Lat/B;)Lat/H;

    move-result-object v2

    invoke-static {v0, v2, v10, v10}, Lcom/google/googlenav/aW;->a([Lcom/google/googlenav/ai;Lat/H;II)Lcom/google/googlenav/aW;

    move-result-object v0

    .line 1433
    :cond_94
    if-eqz p1, :cond_ac

    .line 1434
    iget-object v0, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    .line 1454
    :cond_9f
    :goto_9f
    invoke-virtual {p0, v11, v1}, LaM/m;->a(ILcom/google/googlenav/ai;)V

    .line 1458
    invoke-virtual {p0, v13}, LaM/m;->f(I)V

    .line 1459
    return-void

    .line 1406
    :cond_a6
    const-string v0, ""

    goto :goto_2f

    :cond_a9
    const-string v0, ""

    goto :goto_46

    .line 1436
    :cond_ac
    iget-object v2, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/ui/wizard/A;

    invoke-direct {v3, v13, v0}, Lcom/google/googlenav/ui/wizard/A;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    goto :goto_9f

    .line 1439
    :cond_bb
    iget-object v0, p0, LaM/m;->f:Lcom/google/googlenav/F;

    instance-of v0, v0, Lcom/google/googlenav/bw;

    if-eqz v0, :cond_d6

    .line 1440
    iget-object v0, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    new-instance v2, Lcom/google/googlenav/ui/wizard/A;

    const/16 v3, 0x1a

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->B()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/googlenav/ui/wizard/A;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    goto :goto_9f

    .line 1443
    :cond_d6
    iget-object v0, p0, LaM/m;->f:Lcom/google/googlenav/F;

    instance-of v0, v0, Lcom/google/googlenav/T;

    if-eqz v0, :cond_9f

    .line 1447
    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ai;->a(B)V

    .line 1448
    new-array v0, v11, [Lcom/google/googlenav/ai;

    aput-object v1, v0, v12

    iget-object v2, p0, LaM/m;->d:Lat/u;

    invoke-virtual {v2}, Lat/u;->f()Lat/H;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v3

    invoke-virtual {v2, v3}, Lat/H;->a(Lat/B;)Lat/H;

    move-result-object v2

    invoke-static {v0, v2, v10, v10}, Lcom/google/googlenav/aW;->a([Lcom/google/googlenav/ai;Lat/H;II)Lcom/google/googlenav/aW;

    move-result-object v0

    .line 1451
    iget-object v2, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/ui/wizard/A;

    invoke-direct {v3, v13, v0}, Lcom/google/googlenav/ui/wizard/A;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    goto :goto_9f
.end method

.method public static c(Lcom/google/googlenav/ai;)Z
    .registers 5
    .parameter

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->V()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->aW()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private e()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5

    .prologue
    .line 1465
    iget-object v0, p0, LaM/m;->d:Lat/u;

    invoke-virtual {v0}, Lat/u;->c()Lat/B;

    move-result-object v0

    iget-object v1, p0, LaM/m;->d:Lat/u;

    invoke-virtual {v1}, Lat/u;->a()I

    move-result v1

    iget-object v2, p0, LaM/m;->d:Lat/u;

    invoke-virtual {v2}, Lat/u;->b()I

    move-result v2

    iget-object v3, p0, LaM/m;->d:Lat/u;

    invoke-virtual {v3}, Lat/u;->d()Lat/Y;

    move-result-object v3

    invoke-virtual {v3}, Lat/Y;->a()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lat/C;->a(Lat/B;III)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public static e(Lcom/google/googlenav/ai;)Z
    .registers 5
    .parameter

    .prologue
    .line 354
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->j()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->V()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private f()V
    .registers 5

    .prologue
    .line 1574
    sget-object v0, LaM/m;->z:Lcom/google/googlenav/ui/view/android/aD;

    if-nez v0, :cond_5

    .line 1587
    :goto_4
    return-void

    .line 1578
    :cond_5
    invoke-virtual {p0}, LaM/m;->bt()Lcom/google/googlenav/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->V()J

    move-result-wide v0

    sget-object v2, LaM/m;->z:Lcom/google/googlenav/ui/view/android/aD;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/view/android/aD;->i()Lcom/google/googlenav/as;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/as;->f()Lcom/google/googlenav/ai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->V()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_28

    .line 1581
    sget-object v0, LaM/m;->z:Lcom/google/googlenav/ui/view/android/aD;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aD;->dismiss()V

    .line 1582
    const/4 v0, 0x0

    sput-object v0, LaM/m;->z:Lcom/google/googlenav/ui/view/android/aD;

    goto :goto_4

    .line 1586
    :cond_28
    sget-object v0, LaM/m;->z:Lcom/google/googlenav/ui/view/android/aD;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aD;->show()V

    goto :goto_4
.end method

.method public static f(Lcom/google/googlenav/ai;)Z
    .registers 3
    .parameter

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->bK()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->x()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->C()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method static i(Lcom/google/googlenav/ai;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    .line 1720
    invoke-static {p0}, Lcom/google/googlenav/bN;->a(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v1

    .line 1721
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->ce()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    const-string v0, "0"

    .line 1724
    :goto_10
    if-eqz v1, :cond_7a

    .line 1726
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&gmmsmh=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1727
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "u="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is_ad="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->ab()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cb="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {v2}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1733
    :goto_76
    return-object v0

    .line 1721
    :cond_77
    const-string v0, "1"

    goto :goto_10

    .line 1733
    :cond_7a
    const-string v0, ""

    goto :goto_76
.end method

.method private j(I)V
    .registers 12
    .parameter

    .prologue
    .line 2055
    invoke-virtual {p0}, LaM/m;->bt()Lcom/google/googlenav/ai;

    move-result-object v0

    .line 2056
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->V()J

    move-result-wide v1

    .line 2057
    invoke-static {v0}, Lcom/google/googlenav/bN;->a(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v3

    .line 2059
    const/16 v4, 0x54

    const-string v5, "p"

    const/4 v0, 0x4

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "f="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, LaM/m;->v:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v0, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "t="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v7, 0x2

    const-wide/16 v8, -0x1

    cmp-long v0, v1, v8

    if-eqz v0, :cond_7d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cid="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5b
    aput-object v0, v6, v7

    const/4 v1, 0x3

    if-eqz v3, :cond_80

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "u="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_73
    aput-object v0, v6, v1

    invoke-static {v6}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 2068
    return-void

    .line 2059
    :cond_7d
    const-string v0, ""

    goto :goto_5b

    :cond_80
    const-string v0, ""

    goto :goto_73
.end method

.method private k(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2182
    if-gez p1, :cond_4

    move p1, v0

    .line 2183
    :cond_4
    iget-object v1, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {p0}, LaM/m;->bt()Lcom/google/googlenav/ai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->A()[Lcom/google/googlenav/ai;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->B()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;ZI)V

    .line 2186
    return-void
.end method

.method private l(Lcom/google/googlenav/ai;)V
    .registers 5
    .parameter

    .prologue
    .line 1629
    if-eqz p1, :cond_c

    .line 1630
    const/4 v0, 0x5

    const-string v1, "0"

    invoke-static {p1}, LaM/m;->i(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1634
    :cond_c
    return-void
.end method

.method private m(Lcom/google/googlenav/ai;)V
    .registers 11
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1665
    if-nez p1, :cond_4

    .line 1711
    :cond_3
    :goto_3
    return-void

    .line 1671
    :cond_4
    invoke-static {p1}, Lcom/google/googlenav/bN;->a(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1674
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->C()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 1675
    if-eqz v4, :cond_3

    .line 1678
    const/16 v0, 0x90

    invoke-virtual {v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1679
    if-eqz v5, :cond_3

    .line 1682
    iget-object v0, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->am()Lax/m;

    move-result-object v0

    invoke-interface {v0}, Lax/m;->g()Lax/r;

    move-result-object v6

    .line 1683
    invoke-interface {v6, v5}, Lax/r;->a(Ljava/lang/String;)Lax/A;

    move-result-object v0

    .line 1684
    if-nez v0, :cond_76

    const/4 v2, 0x1

    move v3, v2

    .line 1685
    :goto_2a
    if-eqz v3, :cond_48

    .line 1686
    new-instance v0, Lax/A;

    invoke-direct {v0}, Lax/A;-><init>()V

    .line 1687
    invoke-virtual {v0, v5}, Lax/A;->a(Ljava/lang/String;)V

    .line 1688
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lax/A;->b(Ljava/lang/String;)V

    .line 1689
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->x()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 1690
    if-eqz v2, :cond_3

    .line 1693
    invoke-static {v2}, Lat/C;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lat/B;

    move-result-object v2

    invoke-virtual {v0, v2}, Lax/A;->a(Lat/B;)V

    .line 1695
    :cond_48
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lax/A;->a(J)V

    .line 1696
    invoke-virtual {v0}, Lax/A;->m()I

    move-result v2

    .line 1697
    const/4 v5, -0x1

    if-ne v2, v5, :cond_78

    .line 1700
    :goto_5e
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lax/A;->b(I)V

    .line 1701
    invoke-interface {v6, v0}, Lax/r;->a(Lax/A;)Z

    .line 1702
    if-eqz v3, :cond_3

    .line 1703
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LaM/s;

    invoke-direct {v1, p0, v6, v4}, LaM/s;-><init>(LaM/m;Lax/r;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    goto :goto_3

    :cond_76
    move v3, v1

    .line 1684
    goto :goto_2a

    :cond_78
    move v1, v2

    goto :goto_5e
.end method

.method private n(Lcom/google/googlenav/ai;)V
    .registers 5
    .parameter

    .prologue
    .line 2347
    if-eqz p1, :cond_4

    .line 2348
    iput-object p1, p0, LaM/m;->E:Lcom/google/googlenav/ai;

    .line 2351
    :cond_4
    iget-object v0, p0, LaM/m;->E:Lcom/google/googlenav/ai;

    if-eqz v0, :cond_18

    .line 2352
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/as;

    iget-object v1, p0, LaM/m;->E:Lcom/google/googlenav/ai;

    iget-object v2, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-direct {v0, v1, p0, v2}, Lcom/google/googlenav/ui/view/dialog/as;-><init>(Lcom/google/googlenav/ai;Lcom/google/googlenav/ui/g;Lcom/google/googlenav/J;)V

    iput-object v0, p0, LaM/m;->D:Lcom/google/googlenav/ui/view/dialog/as;

    .line 2354
    iget-object v0, p0, LaM/m;->D:Lcom/google/googlenav/ui/view/dialog/as;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/as;->show()V

    .line 2356
    :cond_18
    return-void
.end method


# virtual methods
.method protected D()V
    .registers 5

    .prologue
    .line 1773
    iget-object v0, p0, LaM/m;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->e()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    .line 1774
    if-nez v0, :cond_b

    .line 1781
    :cond_a
    :goto_a
    return-void

    .line 1777
    :cond_b
    iget-object v1, p0, LaM/m;->r:Lcom/google/googlenav/ui/view/android/bb;

    instance-of v1, v1, Lah/p;

    if-eqz v1, :cond_a

    .line 1778
    iget-object v1, p0, LaM/m;->y:Lah/s;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/googlenav/ai;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/google/common/collect/cx;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    sget-object v3, LaM/m;->u:Lcom/google/common/base/D;

    iget-object v0, p0, LaM/m;->r:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lah/p;

    invoke-virtual {v1, v2, v3, v0}, Lah/s;->a(Ljava/lang/Iterable;Lcom/google/common/base/D;Lah/p;)V

    goto :goto_a
.end method

.method protected E()V
    .registers 5

    .prologue
    .line 1809
    iget-object v0, p0, LaM/m;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->e()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    .line 1810
    if-nez v0, :cond_b

    .line 1830
    :cond_a
    :goto_a
    return-void

    .line 1814
    :cond_b
    iget-object v1, p0, LaM/m;->r:Lcom/google/googlenav/ui/view/android/bb;

    instance-of v1, v1, Lah/p;

    if-eqz v1, :cond_a

    .line 1815
    iget-object v1, p0, LaM/m;->y:Lah/s;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/googlenav/ai;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/google/common/collect/cx;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, LaM/t;

    invoke-direct {v3, p0}, LaM/t;-><init>(LaM/m;)V

    iget-object v0, p0, LaM/m;->r:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lah/p;

    invoke-virtual {v1, v2, v3, v0}, Lah/s;->b(Ljava/lang/Iterable;Lcom/google/common/base/D;Lah/p;)V

    goto :goto_a
.end method

.method public J()V
    .registers 2

    .prologue
    .line 2190
    const/4 v0, 0x1

    iput-boolean v0, p0, LaM/m;->w:Z

    .line 2191
    invoke-super {p0}, LaM/i;->J()V

    .line 2192
    return-void
.end method

.method protected final a(ILcom/google/googlenav/ai;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1560
    if-eqz p2, :cond_f

    invoke-virtual {p2}, Lcom/google/googlenav/ai;->ab()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1561
    invoke-virtual {p2}, Lcom/google/googlenav/ai;->aB()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, LO/a;->a(Ljava/lang/String;I)Z

    .line 1563
    :cond_f
    return-void
.end method

.method public a(Lat/B;Lcom/google/googlenav/ui/wizard/dO;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1272
    invoke-virtual {p0}, LaM/m;->aQ()V

    .line 1273
    iget-object v0, p0, LaM/m;->d:Lat/u;

    const/16 v1, 0x13

    invoke-static {v1}, Lat/Y;->b(I)Lat/Y;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lat/u;->d(Lat/B;Lat/Y;)V

    .line 1274
    invoke-virtual {p0}, LaM/m;->bD()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/wizard/dO;)V

    .line 1275
    return-void
.end method

.method public a(Lcom/google/googlenav/R;Lcom/google/googlenav/E;I)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1897
    invoke-super {p0, p1, p2, p3}, LaM/i;->a(Lcom/google/googlenav/R;Lcom/google/googlenav/E;I)V

    .line 1899
    check-cast p2, Lcom/google/googlenav/ai;

    .line 1900
    if-eqz p2, :cond_29

    .line 1903
    invoke-static {p3}, Lcom/google/googlenav/Q;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1904
    invoke-virtual {p2}, Lcom/google/googlenav/ai;->ab()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1907
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/R;->a(Z)Lcom/google/googlenav/R;

    .line 1908
    invoke-virtual {p2}, Lcom/google/googlenav/ai;->aB()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/R;->b(Ljava/lang/String;)Lcom/google/googlenav/R;

    .line 1931
    :cond_1e
    :goto_1e
    const/16 v0, 0xa

    if-ne p3, v0, :cond_29

    .line 1932
    invoke-virtual {p2}, Lcom/google/googlenav/ai;->I()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/R;->c(Ljava/lang/String;)Lcom/google/googlenav/R;

    .line 1935
    :cond_29
    return-void

    .line 1910
    :cond_2a
    invoke-virtual {p2}, Lcom/google/googlenav/ai;->h()Z

    move-result v0

    if-eqz v0, :cond_3b

    move-object v0, p2

    .line 1913
    check-cast v0, Lcom/google/googlenav/W;

    invoke-virtual {v0}, Lcom/google/googlenav/W;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/R;->b(Ljava/lang/String;)Lcom/google/googlenav/R;

    goto :goto_1e

    .line 1915
    :cond_3b
    invoke-virtual {p2}, Lcom/google/googlenav/ai;->ah()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1918
    invoke-virtual {p2}, Lcom/google/googlenav/ai;->aQ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/R;->b(Ljava/lang/String;)Lcom/google/googlenav/R;

    goto :goto_1e

    .line 1921
    :cond_49
    invoke-virtual {p2}, Lcom/google/googlenav/ai;->V()J

    move-result-wide v0

    .line 1922
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1e

    .line 1925
    invoke-virtual {p2}, Lcom/google/googlenav/ai;->W()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/R;->b(Ljava/lang/String;)Lcom/google/googlenav/R;

    goto :goto_1e
.end method

.method public a(Lcom/google/googlenav/aW;)V
    .registers 2
    .parameter

    .prologue
    .line 1032
    return-void
.end method

.method public a(Lcom/google/googlenav/aW;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1028
    return-void
.end method

.method a(Lcom/google/googlenav/ai;I)V
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 1320
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->V()J

    move-result-wide v0

    .line 1321
    invoke-static {p1}, Lcom/google/googlenav/bN;->a(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v2

    .line 1322
    const/16 v3, 0x45

    const-string v5, "n"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    cmp-long v8, v0, v8

    if-eqz v8, :cond_a5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2b
    aput-object v0, v6, v7

    if-eqz v2, :cond_a8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_42
    aput-object v0, v6, v10

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "entry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, LaM/m;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v6}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v5, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1335
    invoke-virtual {p0, v10, p1}, LaM/m;->a(ILcom/google/googlenav/ai;)V

    .line 1339
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, LaM/m;->f(I)V

    .line 1342
    invoke-static {}, LaI/a;->a()LaI/a;

    move-result-object v0

    if-eqz v0, :cond_86

    .line 1343
    invoke-static {}, LaI/a;->a()LaI/a;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, LaI/a;->a(Lcom/google/googlenav/ai;J)V

    .line 1346
    :cond_86
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->X()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lad/y;->a(Ljava/lang/String;Lat/B;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ln/B;)Lad/y;

    move-result-object v0

    .line 1348
    iget-object v1, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-direct {p0}, LaM/m;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, p2, v4, v2}, Lcom/google/googlenav/ui/v;->a(Lad/y;I[Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;)V

    .line 1349
    return-void

    .line 1322
    :cond_a5
    const-string v0, ""

    goto :goto_2b

    :cond_a8
    const-string v0, ""

    goto :goto_42
.end method

.method public a(Lcom/google/googlenav/ai;Z)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 946
    iget-object v0, p0, LaM/m;->C:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->f()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/aP;

    .line 948
    if-eqz v0, :cond_11

    .line 949
    invoke-virtual {v0, p2}, LaM/aP;->d(Z)V

    .line 955
    :cond_11
    const/4 v0, 0x0

    .line 956
    new-instance v1, LaM/r;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v2

    iget-object v3, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/v;->aa()Lcom/google/googlenav/android/Y;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, LaM/r;-><init>(LaM/m;LY/c;Lcom/google/googlenav/android/Y;Z)V

    .line 964
    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, LaT/i;->a(J)V

    .line 965
    invoke-virtual {v1}, LaT/i;->g()V

    .line 966
    return-void
.end method

.method a(Lcom/google/googlenav/ui/wizard/A;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1368
    invoke-virtual {p0}, LaM/m;->bt()Lcom/google/googlenav/ai;

    move-result-object v0

    if-nez v0, :cond_8

    .line 1391
    :goto_7
    return-void

    .line 1373
    :cond_8
    invoke-direct {p0, p1}, LaM/m;->c(Lcom/google/googlenav/ui/wizard/A;)V

    .line 1374
    invoke-virtual {p0}, LaM/m;->bt()Lcom/google/googlenav/ai;

    move-result-object v0

    .line 1376
    invoke-virtual {p0}, LaM/m;->bu()Z

    move-result v1

    invoke-virtual {p0}, LaM/m;->bv()Z

    move-result v2

    invoke-static {v0, v1, v2}, LaM/m;->a(Lcom/google/googlenav/ai;ZZ)Lad/y;

    move-result-object v1

    .line 1379
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->w()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1380
    new-instance v2, Lad/j;

    invoke-direct {v2, v1, v4}, Lad/j;-><init>(Lad/y;Lad/y;)V

    .line 1381
    iget-object v1, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/wizard/ju;->b(Lad/j;)V

    .line 1389
    :goto_2f
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->cc()LaS/o;

    move-result-object v0

    invoke-virtual {v0, p0}, LaS/o;->c(LaM/m;)V

    goto :goto_7

    .line 1383
    :cond_37
    iget-object v2, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-direct {p0}, LaM/m;->e()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-virtual {v2, v4, v1, v3}, Lcom/google/googlenav/ui/v;->a(Lad/y;Lad/y;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_2f
.end method

.method public a(Ljava/lang/Object;)V
    .registers 5
    .parameter

    .prologue
    .line 1050
    invoke-virtual {p0}, LaM/m;->bn()V

    .line 1051
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-nez v0, :cond_5f

    .line 1053
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1054
    const/16 v0, 0x11

    .line 1059
    :goto_19
    invoke-virtual {p0, v0, p1}, LaM/m;->b(ILjava/lang/Object;)V

    .line 1072
    :goto_1c
    iget-object v0, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->Q()V

    .line 1073
    iget-object v0, p0, LaM/m;->d:Lat/u;

    iget-object v1, p0, LaM/m;->d:Lat/u;

    invoke-virtual {v1}, Lat/u;->c()Lat/B;

    move-result-object v1

    iget-object v2, p0, LaM/m;->d:Lat/u;

    invoke-virtual {v2}, Lat/u;->d()Lat/Y;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, LaM/m;->a(Lat/B;Lat/Y;)Lat/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lat/u;->b(Lat/B;)V

    .line 1078
    sget-object v0, Lak/e;->a:Lak/e;

    invoke-virtual {v0}, Lak/e;->e()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1079
    invoke-virtual {p0}, LaM/m;->bt()Lcom/google/googlenav/ai;

    move-result-object v0

    .line 1080
    if-eqz v0, :cond_53

    .line 1081
    invoke-static {}, Lcom/google/googlenav/intersectionexplorer/d;->c()Lcom/google/googlenav/intersectionexplorer/d;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/intersectionexplorer/d;->a(Lat/B;Ljava/lang/String;)V

    .line 1085
    :cond_53
    return-void

    .line 1056
    :cond_54
    invoke-virtual {p0}, LaM/m;->ae()Z

    move-result v0

    if-eqz v0, :cond_5d

    const/16 v0, 0x8

    goto :goto_19

    :cond_5d
    const/4 v0, 0x7

    goto :goto_19

    .line 1064
    :cond_5f
    invoke-virtual {p0}, LaM/m;->an()Z

    goto :goto_1c
.end method

.method public a(Ljava/lang/String;Lcom/google/googlenav/aB;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1260
    iget-object v0, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ac()Lcom/google/googlenav/aA;

    move-result-object v0

    invoke-static {p1}, Laa/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p2, v2}, Lcom/google/googlenav/aA;->a(Ljava/lang/String;Lcom/google/googlenav/aB;Z)V

    .line 1262
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 996
    instance-of v0, p0, LaM/bx;

    if-eqz v0, :cond_7e

    .line 997
    invoke-virtual {p0}, LaM/m;->bD()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/A;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Lcom/google/googlenav/ui/wizard/A;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    .line 1003
    :cond_18
    :goto_18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1004
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1005
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1006
    new-instance v3, Lcom/google/googlenav/ba;

    const-string v4, ""

    invoke-direct {v3, v6, v4, p2}, Lcom/google/googlenav/ba;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1007
    new-instance v3, Lcom/google/googlenav/aZ;

    const/16 v4, 0x12c

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v7, v4, v2}, Lcom/google/googlenav/aZ;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    iget-object v1, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    new-instance v2, Lcom/google/googlenav/bd;

    invoke-direct {v2}, Lcom/google/googlenav/bd;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/googlenav/bd;->a(Ljava/util/Map;)Lcom/google/googlenav/bd;

    move-result-object v0

    const-string v2, "*"

    invoke-virtual {v0, v2}, Lcom/google/googlenav/bd;->a(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v0

    const/16 v2, 0x5f9

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/bd;->c(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/google/googlenav/bd;->b(I)Lcom/google/googlenav/bd;

    move-result-object v0

    const-string v2, "20"

    invoke-virtual {v0, v2}, Lcom/google/googlenav/bd;->b(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/googlenav/bd;->e(I)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlenav/bd;->a(Lcom/google/googlenav/aY;)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/bc;)V

    .line 1021
    return-void

    .line 999
    :cond_7e
    instance-of v0, p0, LaM/bj;

    if-nez v0, :cond_18

    .line 1000
    invoke-virtual {p0}, LaM/m;->bD()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/A;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Lcom/google/googlenav/ui/wizard/A;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    goto :goto_18
.end method

.method public a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 2295
    iget-object v0, p0, LaM/m;->A:LaM/bd;

    if-eqz v0, :cond_9

    .line 2296
    iget-object v0, p0, LaM/m;->A:LaM/bd;

    invoke-virtual {v0}, LaM/bd;->a()V

    .line 2298
    :cond_9
    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v10, 0x54

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 420
    invoke-virtual {p0}, LaM/m;->bt()Lcom/google/googlenav/ai;

    move-result-object v4

    .line 421
    invoke-direct {p0, v4, p1, p2, p3}, LaM/m;->a(Lcom/google/googlenav/ai;IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    .line 425
    invoke-super {p0, p1, p2, p3}, LaM/i;->a(IILjava/lang/Object;)Z

    move-result v6

    .line 426
    if-nez v6, :cond_77

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", actionIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", layerType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, LaM/m;->av()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 434
    iget-object v1, p0, LaM/m;->f:Lcom/google/googlenav/F;

    if-eqz v1, :cond_72

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LaM/m;->f:Lcom/google/googlenav/F;

    invoke-interface {v1}, Lcom/google/googlenav/F;->d()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LaM/m;->f:Lcom/google/googlenav/F;

    invoke-interface {v1}, Lcom/google/googlenav/F;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 437
    :cond_72
    const-string v1, "BPL-onAction"

    invoke-static {v1, v0}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    :cond_77
    :goto_77
    return v6

    .line 443
    :cond_78
    invoke-static {v4}, Lcom/google/googlenav/bN;->a(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v1

    .line 445
    if-eqz v1, :cond_5a1

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "u="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 450
    :goto_92
    sparse-switch p1, :sswitch_data_5a4

    .line 942
    :cond_95
    :goto_95
    invoke-super {p0, p1, p2, p3}, LaM/i;->a(IILjava/lang/Object;)Z

    move-result v6

    goto :goto_77

    .line 454
    :sswitch_9a
    invoke-static {}, LaI/a;->a()LaI/a;

    move-result-object v0

    if-eqz v0, :cond_b3

    .line 455
    invoke-static {}, LaI/a;->a()LaI/a;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v1

    invoke-virtual {v0, v4, v1, v2}, LaI/a;->a(Lcom/google/googlenav/ai;J)V

    .line 458
    :cond_b3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_b7

    move v5, v6

    :cond_b7
    invoke-virtual {p0, v4, v5}, LaM/m;->b(Lcom/google/googlenav/ai;Z)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 463
    invoke-virtual {v4}, Lcom/google/googlenav/ai;->cc()LaS/o;

    move-result-object v0

    invoke-virtual {v0, p0}, LaS/o;->b(LaM/m;)V

    goto :goto_77

    .line 467
    :sswitch_c5
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 468
    invoke-virtual {p0}, LaM/m;->an()Z

    .line 469
    invoke-virtual {p0, v6}, LaM/m;->b(Z)V

    goto :goto_77

    .line 471
    :cond_d6
    invoke-virtual {p0, v8}, LaM/m;->a(Ljava/lang/Object;)V

    goto :goto_77

    .line 475
    :sswitch_da
    invoke-virtual {v4}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v0

    invoke-virtual {v0}, Lat/B;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-virtual {p0}, LaM/m;->n()V

    .line 492
    iget-object v1, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    const-string v2, "21"

    invoke-virtual {v1, v8, v2, v0, v6}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_77

    .line 497
    :sswitch_ed
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, LaM/m;->f(I)V

    .line 500
    const-string v0, "ac"

    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "ct"

    aput-object v2, v1, v5

    aput-object v7, v1, v6

    invoke-static {v1}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v0, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ac()Lcom/google/googlenav/aA;

    move-result-object v0

    invoke-virtual {v4}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/google/googlenav/ai;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/google/googlenav/ai;->I()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/aA;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_77

    .line 510
    :sswitch_11a
    iget-object v0, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/ai;)V

    .line 511
    const-string v0, "ac"

    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "rp"

    aput-object v2, v1, v5

    aput-object v7, v1, v6

    invoke-static {v1}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v0, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_77

    .line 518
    :sswitch_132
    invoke-virtual {v4}, Lcom/google/googlenav/ai;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lcom/google/googlenav/ai;->F()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 519
    invoke-virtual {v4}, Lcom/google/googlenav/ai;->b()Ljava/util/List;

    move-result-object v0

    .line 520
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_194

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/B;

    move-object v2, v0

    .line 521
    :goto_14f
    iget-object v0, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v4}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v1

    invoke-virtual {v4}, Lcom/google/googlenav/ai;->bu()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/ui/v;->a(Lat/B;Ln/B;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 525
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "a=s"

    aput-object v1, v0, v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    aput-object v7, v0, v9

    invoke-static {v0}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 528
    const/16 v1, 0x10

    invoke-virtual {p0}, LaM/m;->av()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string v0, "ac"

    const-string v1, "rp"

    invoke-static {v10, v0, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_77

    :cond_194
    move-object v2, v8

    .line 520
    goto :goto_14f

    .line 535
    :sswitch_196
    invoke-direct {p0, p2}, LaM/m;->j(I)V

    .line 536
    iget-object v0, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v0, p3, v4}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;Lcom/google/googlenav/ai;)V

    goto/16 :goto_77

    .line 539
    :sswitch_1a2
    invoke-virtual {v4}, Lcom/google/googlenav/ai;->aV()Z

    move-result v0

    if-eqz v0, :cond_1b7

    .line 540
    iget-object v0, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ac()Lcom/google/googlenav/aA;

    move-result-object v0

    invoke-virtual {v4}, Lcom/google/googlenav/ai;->aT()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/aA;->a(Ljava/lang/String;)V

    goto/16 :goto_77

    .line 544
    :cond_1b7
    const-string v0, "kml"

    invoke-static {v9, v0}, LaT/k;->a(ILjava/lang/String;)V

    .line 548
    iget-object v0, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    new-instance v1, Lcom/google/googlenav/bd;

    invoke-direct {v1}, Lcom/google/googlenav/bd;-><init>()V

    invoke-virtual {v4}, Lcom/google/googlenav/ai;->aU()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->a(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bd;->b(I)Lcom/google/googlenav/bd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/bc;)V

    goto/16 :goto_77

    .line 555
    :sswitch_1d9
    invoke-static {}, Lcom/google/googlenav/K;->p()Z

    move-result v0

    if-eqz v0, :cond_1e4

    .line 556
    const-string v0, "Street View"

    invoke-static {v0}, LP/a;->b(Ljava/lang/String;)V

    .line 562
    :cond_1e4
    invoke-virtual {p0, v5}, LaM/m;->i(I)V

    .line 564
    if-eqz p3, :cond_212

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    .line 565
    :goto_1f0
    const/4 v0, 0x3

    if-ne v1, v0, :cond_1f4

    move v5, v6

    .line 566
    :cond_1f4
    if-eqz v5, :cond_214

    invoke-virtual {v4}, Lcom/google/googlenav/ai;->br()Ljava/lang/String;

    move-result-object v0

    .line 567
    :goto_1fa
    if-nez v0, :cond_219

    .line 568
    iget-object v0, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v4}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/v;->c(Lat/B;)V

    .line 579
    :goto_205
    invoke-virtual {p0, v1}, LaM/m;->h(I)V

    .line 580
    invoke-virtual {p0, v9, v4}, LaM/m;->a(ILcom/google/googlenav/ai;)V

    .line 584
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, LaM/m;->f(I)V

    goto/16 :goto_77

    :cond_212
    move v1, v6

    .line 564
    goto :goto_1f0

    .line 566
    :cond_214
    invoke-virtual {v4}, Lcom/google/googlenav/ai;->bq()Ljava/lang/String;

    move-result-object v0

    goto :goto_1fa

    .line 570
    :cond_219
    if-eqz v5, :cond_22b

    invoke-virtual {v4}, Lcom/google/googlenav/ai;->bs()Z

    move-result v2

    if-eqz v2, :cond_22b

    .line 572
    iget-object v2, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v4}, Lcom/google/googlenav/ai;->bt()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;I)V

    goto :goto_205

    .line 574
    :cond_22b
    iget-object v2, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v4}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;Lat/B;)V

    goto :goto_205

    .line 590
    :sswitch_235
    invoke-virtual {p0, v5}, LaM/m;->i(I)V

    .line 591
    invoke-virtual {p0}, LaM/m;->n()V

    .line 594
    check-cast p3, Lcom/google/googlenav/ui/wizard/A;

    invoke-virtual {p0, p3}, LaM/m;->a(Lcom/google/googlenav/ui/wizard/A;)V

    goto/16 :goto_77

    .line 600
    :sswitch_242
    invoke-virtual {p0, v5}, LaM/m;->i(I)V

    .line 601
    invoke-virtual {p0, v4, v5}, LaM/m;->a(Lcom/google/googlenav/ai;I)V

    goto/16 :goto_77

    .line 607
    :sswitch_24a
    invoke-virtual {p0, v5}, LaM/m;->i(I)V

    .line 608
    invoke-virtual {p0, v4, v9}, LaM/m;->a(Lcom/google/googlenav/ai;I)V

    goto/16 :goto_77

    .line 611
    :sswitch_252
    iget-object v0, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v4}, Lcom/google/googlenav/ai;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_77

    .line 614
    :sswitch_263
    invoke-virtual {p0}, LaM/m;->bD()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/wizard/ju;->b(Lcom/google/googlenav/ai;)V

    .line 615
    const/16 v0, 0x4f

    const-string v1, "o"

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "f=p"

    aput-object v3, v2, v5

    aput-object v7, v2, v6

    invoke-static {v2}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_77

    .line 624
    :sswitch_27f
    invoke-virtual {p0, p2}, LaM/m;->i(I)V

    goto/16 :goto_77

    .line 627
    :sswitch_284
    invoke-virtual {v4}, Lcom/google/googlenav/ai;->bB()Ljava/lang/String;

    move-result-object v0

    .line 628
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_297

    .line 629
    const-string v0, "Make a reservation"

    const-string v1, "missing url"

    invoke-static {v0, v1}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_77

    .line 632
    :cond_297
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, LaM/m;->f(I)V

    .line 634
    iget-object v1, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1, v0, v4}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;Lcom/google/googlenav/ai;)V

    goto/16 :goto_77

    .line 638
    :sswitch_2a3
    if-eqz p3, :cond_308

    .line 639
    check-cast p3, Lcom/google/googlenav/ai;

    .line 647
    :cond_2a7
    :goto_2a7
    invoke-virtual {p3}, Lcom/google/googlenav/ai;->C()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 648
    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 649
    invoke-static {p3}, LaM/m;->f(Lcom/google/googlenav/ai;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 652
    invoke-virtual {p3}, Lcom/google/googlenav/ai;->x()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 653
    if-eqz v4, :cond_77

    .line 658
    new-instance v0, Lax/A;

    invoke-virtual {p3}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v2

    move-object v3, v8

    invoke-direct/range {v0 .. v5}, Lax/A;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Z)V

    .line 659
    invoke-virtual {p3}, Lcom/google/googlenav/ai;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lax/A;->a(Ljava/util/List;)V

    .line 660
    iget-object v1, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->al()Lax/m;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/googlenav/ai;->C()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-static {v2}, Lax/E;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lax/E;

    move-result-object v2

    iget-object v3, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v3

    invoke-virtual {p0}, LaM/m;->bm()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v2, v3, v4}, Lax/m;->a(Lax/A;Lax/E;LaM/am;Ljava/lang/String;)Lax/A;

    move-result-object v0

    .line 665
    invoke-virtual {v0}, Lax/A;->n()Z

    move-result v0

    if-eqz v0, :cond_316

    .line 666
    const/16 v0, 0x1d

    invoke-virtual {p0, v0}, LaM/m;->f(I)V

    .line 667
    const-string v0, "ac"

    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "sp"

    aput-object v2, v1, v5

    aput-object v7, v1, v6

    invoke-static {v1}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v0, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_77

    .line 640
    :cond_308
    const/4 v0, -0x1

    if-eq p2, v0, :cond_59e

    .line 641
    invoke-virtual {p0, p2}, LaM/m;->b(I)V

    .line 642
    invoke-virtual {p0}, LaM/m;->bt()Lcom/google/googlenav/ai;

    move-result-object p3

    .line 643
    if-nez p3, :cond_2a7

    goto/16 :goto_77

    .line 673
    :cond_316
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, LaM/m;->f(I)V

    .line 674
    const-string v0, "ac"

    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "up"

    aput-object v2, v1, v5

    aput-object v7, v1, v6

    invoke-static {v1}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v0, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_77

    .line 682
    :sswitch_32e
    invoke-static {}, Lcom/google/googlenav/K;->p()Z

    move-result v0

    if-eqz v0, :cond_339

    .line 683
    const-string v0, "Review"

    invoke-static {v0}, LP/a;->b(Ljava/lang/String;)V

    .line 686
    :cond_339
    invoke-virtual {p0}, LaM/m;->bD()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    iget-object v1, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v1

    const-string v2, "pp"

    invoke-virtual {v0, v4, v1, v5, v2}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ai;LaM/am;ZLjava/lang/String;)V

    goto/16 :goto_77

    .line 691
    :sswitch_34a
    invoke-static {}, Lcom/google/googlenav/K;->p()Z

    move-result v0

    if-eqz v0, :cond_355

    .line 692
    const-string v0, "Photo Upload"

    invoke-static {v0}, LP/a;->b(Ljava/lang/String;)V

    .line 697
    :cond_355
    if-nez p3, :cond_367

    const-string p3, "mo"

    .line 699
    :goto_359
    new-instance v0, LaM/o;

    invoke-direct {v0, p0}, LaM/o;-><init>(LaM/m;)V

    .line 705
    invoke-virtual {p0}, LaM/m;->bD()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v1

    invoke-virtual {v1, v4, p3, v0}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ai;Ljava/lang/String;Lcom/google/googlenav/ui/wizard/fC;)V

    goto/16 :goto_77

    .line 697
    :cond_367
    check-cast p3, Ljava/lang/String;

    goto :goto_359

    .line 708
    :sswitch_36a
    const/16 v0, 0x8

    invoke-direct {p0, v0}, LaM/m;->j(I)V

    .line 709
    invoke-virtual {p0}, LaM/m;->bD()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->F()Lcom/google/googlenav/ui/wizard/fn;

    move-result-object v0

    invoke-virtual {v0, v4, p2, p0}, Lcom/google/googlenav/ui/wizard/fn;->a(Lcom/google/googlenav/ai;ILaM/m;)V

    goto/16 :goto_77

    .line 712
    :sswitch_380
    iget-object v0, p0, LaM/m;->C:Ljava/util/Hashtable;

    invoke-virtual {v4}, Lcom/google/googlenav/ai;->f()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/aP;

    .line 714
    if-eqz v0, :cond_77

    .line 715
    invoke-virtual {v0}, LaM/aP;->a()Z

    move-result v2

    if-nez v2, :cond_395

    move v5, v6

    .line 716
    :cond_395
    invoke-virtual {v0, v5}, LaM/aP;->a(Z)V

    .line 717
    const-string v0, "u"

    invoke-direct {p0, v5, v0, p2, v1}, LaM/m;->a(ZLjava/lang/String;ILjava/lang/String;)V

    .line 720
    invoke-virtual {p0}, LaM/m;->bo()V

    goto/16 :goto_77

    .line 724
    :sswitch_3a2
    new-instance v3, Lcom/google/googlenav/h;

    invoke-direct {v3, v4}, Lcom/google/googlenav/h;-><init>(Lcom/google/googlenav/ai;)V

    .line 725
    invoke-virtual {v4}, Lcom/google/googlenav/ai;->bR()Z

    move-result v0

    if-nez v0, :cond_3b3

    invoke-virtual {v4}, Lcom/google/googlenav/ai;->bS()Z

    move-result v0

    if-eqz v0, :cond_3c1

    :cond_3b3
    const-string v4, "cppi"

    .line 728
    :goto_3b5
    invoke-virtual {p0}, LaM/m;->bD()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v1

    iget-object v2, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    move v7, v6

    invoke-virtual/range {v1 .. v8}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/v;Lcom/google/googlenav/h;Ljava/lang/String;ZZZLcom/google/googlenav/ui/wizard/R;)V

    goto/16 :goto_77

    .line 725
    :cond_3c1
    const-string v4, "cppn"

    goto :goto_3b5

    .line 738
    :sswitch_3c4
    new-instance v0, Lcom/google/googlenav/ui/wizard/ep;

    invoke-direct {v0}, Lcom/google/googlenav/ui/wizard/ep;-><init>()V

    .line 739
    iget-object v1, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->m()LaM/a;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/ep;->d:LaM/a;

    .line 740
    new-instance v1, Lcom/google/googlenav/h;

    invoke-direct {v1, v4}, Lcom/google/googlenav/h;-><init>(Lcom/google/googlenav/ai;)V

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/ep;->a:Lcom/google/googlenav/h;

    .line 741
    iput-boolean v6, v0, Lcom/google/googlenav/ui/wizard/ep;->c:Z

    .line 742
    invoke-virtual {p0}, LaM/m;->bD()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/wizard/ep;)V

    goto/16 :goto_77

    .line 746
    :sswitch_3e3
    iget-object v0, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    const/16 v1, 0x13c

    invoke-virtual {v0, v1}, LaM/am;->e(I)V

    .line 747
    iget-object v0, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0, v6}, Lcom/google/googlenav/ui/v;->b(Z)V

    goto/16 :goto_77

    .line 750
    :sswitch_3f5
    invoke-virtual {p0}, LaM/m;->bt()Lcom/google/googlenav/ai;

    move-result-object v0

    .line 751
    invoke-virtual {p0}, LaM/m;->bD()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->au()Lcom/google/googlenav/ca;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ca;)V

    goto/16 :goto_77

    .line 754
    :sswitch_406
    iget-object v0, p0, LaM/m;->C:Ljava/util/Hashtable;

    invoke-virtual {v4}, Lcom/google/googlenav/ai;->f()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/aP;

    .line 756
    if-eqz v0, :cond_77

    .line 757
    invoke-virtual {v0}, LaM/aP;->b()Z

    move-result v2

    if-nez v2, :cond_41b

    move v5, v6

    .line 758
    :cond_41b
    invoke-virtual {v0, v5}, LaM/aP;->b(Z)V

    .line 759
    const-string v0, "d"

    invoke-direct {p0, v5, v0, p2, v1}, LaM/m;->a(ZLjava/lang/String;ILjava/lang/String;)V

    .line 761
    invoke-virtual {p0}, LaM/m;->bo()V

    goto/16 :goto_77

    .line 765
    :sswitch_428
    iget-object v0, p0, LaM/m;->C:Ljava/util/Hashtable;

    invoke-virtual {v4}, Lcom/google/googlenav/ai;->f()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/aP;

    .line 767
    if-eqz v0, :cond_77

    .line 768
    invoke-virtual {v0}, LaM/aP;->c()Z

    move-result v2

    if-nez v2, :cond_43d

    move v5, v6

    .line 769
    :cond_43d
    invoke-virtual {v0, v5}, LaM/aP;->c(Z)V

    .line 770
    const-string v0, "h"

    invoke-direct {p0, v5, v0, p2, v1}, LaM/m;->a(ZLjava/lang/String;ILjava/lang/String;)V

    .line 772
    invoke-virtual {p0}, LaM/m;->bo()V

    goto/16 :goto_77

    .line 776
    :sswitch_44a
    invoke-virtual {p0}, LaM/m;->bD()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v4}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v1

    check-cast p3, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iget-object v2, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0, v1, p3, p0, v2}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;LaM/m;Lcom/google/googlenav/ui/v;)V

    goto/16 :goto_77

    .line 779
    :sswitch_45b
    iget-object v0, p0, LaM/m;->C:Ljava/util/Hashtable;

    invoke-virtual {v4}, Lcom/google/googlenav/ai;->f()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/aP;

    .line 781
    if-eqz v0, :cond_77

    .line 782
    invoke-virtual {v0}, LaM/aP;->d()Z

    move-result v2

    if-nez v2, :cond_470

    move v5, v6

    .line 783
    :cond_470
    invoke-virtual {v0, v5}, LaM/aP;->d(Z)V

    .line 784
    const-string v0, "g"

    invoke-direct {p0, v5, v0, p2, v1}, LaM/m;->a(ZLjava/lang/String;ILjava/lang/String;)V

    .line 787
    invoke-virtual {p0}, LaM/m;->bo()V

    goto/16 :goto_77

    .line 791
    :sswitch_47d
    check-cast p3, Ljava/lang/String;

    .line 792
    invoke-static {p3}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_48a

    .line 795
    iget-object v0, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0, p3, v5, p2}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;ZI)V

    .line 797
    :cond_48a
    const-string v0, "ac"

    const-string v1, "mi"

    invoke-static {v10, v0, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_77

    .line 803
    :sswitch_493
    check-cast p3, [Lcom/google/googlenav/aw;

    check-cast p3, [Lcom/google/googlenav/aw;

    .line 804
    if-eqz p3, :cond_77

    .line 805
    invoke-virtual {p0}, LaM/m;->bD()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0, p3, p2, v5}, Lcom/google/googlenav/ui/wizard/ju;->a([Lcom/google/googlenav/aw;IZ)V

    goto/16 :goto_77

    .line 813
    :sswitch_4a2
    check-cast p3, [Lcom/google/googlenav/aw;

    check-cast p3, [Lcom/google/googlenav/aw;

    .line 814
    if-eqz p3, :cond_77

    .line 815
    invoke-virtual {p0}, LaM/m;->bD()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0, p3, p2, v6}, Lcom/google/googlenav/ui/wizard/ju;->a([Lcom/google/googlenav/aw;IZ)V

    goto/16 :goto_77

    .line 820
    :sswitch_4b1
    check-cast p3, Ljava/lang/String;

    .line 821
    if-eqz p3, :cond_77

    .line 822
    invoke-virtual {p0}, LaM/m;->bD()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Lcom/google/googlenav/ui/wizard/ju;->b(Ljava/lang/String;I)V

    goto/16 :goto_77

    .line 829
    :sswitch_4be
    invoke-virtual {p0}, LaM/m;->bt()Lcom/google/googlenav/ai;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, LaM/m;->a(Lcom/google/googlenav/E;I)V

    .line 831
    new-instance v0, Lcom/google/googlenav/ui/view/android/aD;

    new-instance v1, LaM/p;

    invoke-direct {v1, p0}, LaM/p;-><init>(LaM/m;)V

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/view/android/aD;-><init>(Lcom/google/googlenav/ui/g;)V

    sput-object v0, LaM/m;->z:Lcom/google/googlenav/ui/view/android/aD;

    .line 851
    sget-object v0, LaM/m;->z:Lcom/google/googlenav/ui/view/android/aD;

    check-cast p3, Lcom/google/googlenav/as;

    invoke-virtual {p0}, LaM/m;->bd()Lcom/google/googlenav/ui/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bw;->b()Lah/s;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/google/googlenav/ui/view/android/aD;->a(Lcom/google/googlenav/as;Lah/s;)V

    goto/16 :goto_77

    .line 855
    :sswitch_4e4
    iget-object v0, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0, v6}, Lcom/google/googlenav/ui/v;->e(Z)V

    goto/16 :goto_77

    .line 860
    :sswitch_4eb
    iget-object v0, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    check-cast p3, Lcom/google/googlenav/ai;

    invoke-virtual {v0, p3, v9, v5}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/ai;BZ)V

    goto/16 :goto_77

    .line 863
    :sswitch_4f4
    invoke-virtual {p0}, LaM/m;->aX()V

    .line 864
    if-eqz p3, :cond_506

    .line 865
    check-cast p3, [Ljava/lang/String;

    check-cast p3, [Ljava/lang/String;

    .line 866
    aget-object v0, p3, v5

    aget-object v1, p3, v6

    invoke-virtual {p0, v0, v1}, LaM/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_77

    .line 868
    :cond_506
    invoke-virtual {p0, v8, v8}, LaM/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_77

    .line 874
    :sswitch_50b
    check-cast p3, Ljava/lang/String;

    .line 875
    invoke-static {p3}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_527

    .line 876
    const-string v0, "LaunchUrl"

    const-string v1, "missing url"

    invoke-static {v0, v1}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    :goto_51a
    const/16 v0, 0x19

    if-ne p1, v0, :cond_77

    .line 890
    invoke-virtual {v4}, Lcom/google/googlenav/ai;->cc()LaS/o;

    move-result-object v0

    invoke-virtual {v0, p0}, LaS/o;->a(LaM/m;)V

    goto/16 :goto_77

    .line 879
    :cond_527
    invoke-virtual {p0, p3}, LaM/m;->a(Ljava/lang/String;)V

    .line 883
    invoke-direct {p0}, LaM/m;->a()V

    .line 886
    iget-object v0, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0, p3, v4}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;Lcom/google/googlenav/ai;)V

    goto :goto_51a

    .line 894
    :sswitch_533
    iget-object v0, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->a()V

    .line 895
    iget-object v0, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->i()Lcom/google/googlenav/ui/wizard/bZ;

    move-result-object v0

    iget-object v1, p0, LaM/m;->d:Lat/u;

    invoke-virtual {v1}, Lat/u;->o()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/bZ;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 899
    invoke-virtual {p0, v6, v4}, LaM/m;->a(ILcom/google/googlenav/ai;)V

    goto/16 :goto_77

    .line 903
    :sswitch_558
    invoke-virtual {p0}, LaM/m;->bo()V

    goto/16 :goto_95

    .line 906
    :sswitch_55d
    iput-boolean v6, p0, LaM/m;->w:Z

    .line 907
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, LaM/m;->i(I)V

    goto/16 :goto_77

    .line 910
    :sswitch_565
    invoke-direct {p0, p2}, LaM/m;->k(I)V

    goto/16 :goto_77

    .line 913
    :sswitch_56a
    invoke-virtual {p0, v8}, LaM/m;->a(Ljava/lang/Object;)V

    .line 914
    check-cast p3, Lcom/google/googlenav/ca;

    .line 915
    iget-object v0, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {p3}, Lcom/google/googlenav/ca;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->f(Ljava/lang/String;)V

    goto/16 :goto_77

    .line 919
    :sswitch_57a
    check-cast p3, Ljava/lang/String;

    .line 920
    new-instance v0, LaM/q;

    invoke-direct {v0, p0}, LaM/q;-><init>(LaM/m;)V

    .line 936
    new-instance v2, Lcom/google/googlenav/f;

    invoke-direct {v2, v0, p3}, Lcom/google/googlenav/f;-><init>(Lcom/google/googlenav/g;Ljava/lang/String;)V

    .line 937
    iget-object v0, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    const/16 v1, 0x1bd

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/wizard/z;->a:Lcom/google/googlenav/ui/wizard/A;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;J)V

    .line 939
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lac/h;->c(Lac/g;)V

    goto/16 :goto_77

    :cond_59e
    move-object p3, v4

    goto/16 :goto_2a7

    :cond_5a1
    move-object v7, v8

    goto/16 :goto_92

    .line 450
    :sswitch_data_5a4
    .sparse-switch
        0x1 -> :sswitch_c5
        0x3 -> :sswitch_9a
        0x4 -> :sswitch_263
        0x5 -> :sswitch_50b
        0x6 -> :sswitch_252
        0xf -> :sswitch_27f
        0x10 -> :sswitch_9a
        0x11 -> :sswitch_47d
        0x12 -> :sswitch_4e4
        0x18 -> :sswitch_558
        0x19 -> :sswitch_50b
        0xc9 -> :sswitch_3f5
        0x14e -> :sswitch_3e3
        0x258 -> :sswitch_1d9
        0x25a -> :sswitch_da
        0x25b -> :sswitch_235
        0x25c -> :sswitch_242
        0x25d -> :sswitch_24a
        0x262 -> :sswitch_533
        0x2bf -> :sswitch_ed
        0x2c0 -> :sswitch_11a
        0x2c1 -> :sswitch_1a2
        0x2c3 -> :sswitch_284
        0x2ce -> :sswitch_196
        0x3fa -> :sswitch_4eb
        0x4b0 -> :sswitch_55d
        0x4b1 -> :sswitch_565
        0x578 -> :sswitch_2a3
        0x5dc -> :sswitch_132
        0x6a4 -> :sswitch_32e
        0x713 -> :sswitch_4f4
        0x76c -> :sswitch_380
        0x76d -> :sswitch_36a
        0x834 -> :sswitch_3a2
        0x843 -> :sswitch_3c4
        0x900 -> :sswitch_406
        0x902 -> :sswitch_428
        0x906 -> :sswitch_44a
        0x907 -> :sswitch_4b1
        0x908 -> :sswitch_493
        0x909 -> :sswitch_34a
        0x90a -> :sswitch_4a2
        0x90b -> :sswitch_4be
        0x90c -> :sswitch_45b
        0x90d -> :sswitch_57a
        0xfa5 -> :sswitch_56a
    .end sparse-switch
.end method

.method public aU()V
    .registers 2

    .prologue
    .line 1875
    sget-object v0, LaM/m;->z:Lcom/google/googlenav/ui/view/android/aD;

    if-eqz v0, :cond_c

    .line 1876
    sget-object v0, LaM/m;->z:Lcom/google/googlenav/ui/view/android/aD;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aD;->dismiss()V

    .line 1877
    const/4 v0, 0x0

    sput-object v0, LaM/m;->z:Lcom/google/googlenav/ui/view/android/aD;

    .line 1882
    :cond_c
    iget-object v0, p0, LaM/m;->y:Lah/s;

    if-eqz v0, :cond_15

    .line 1883
    iget-object v0, p0, LaM/m;->y:Lah/s;

    invoke-virtual {v0}, Lah/s;->a()V

    .line 1889
    :cond_15
    iget-object v0, p0, LaM/m;->C:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1891
    invoke-super {p0}, LaM/i;->aU()V

    .line 1892
    return-void
.end method

.method public aV()V
    .registers 2

    .prologue
    .line 2282
    invoke-super {p0}, LaM/i;->aV()V

    .line 2288
    invoke-direct {p0}, LaM/m;->bF()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2289
    iget-object v0, p0, LaM/m;->r:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/view/android/bE;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bE;->I()V

    .line 2291
    :cond_10
    return-void
.end method

.method public aW()V
    .registers 2

    .prologue
    .line 1867
    invoke-virtual {p0}, LaM/m;->ah()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, LaM/m;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->e()Lcom/google/googlenav/E;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1868
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaM/m;->b(B)V

    .line 1870
    :cond_12
    invoke-super {p0}, LaM/i;->aW()V

    .line 1871
    return-void
.end method

.method protected ap()V
    .registers 4

    .prologue
    .line 1752
    iget-object v0, p0, LaM/m;->A:LaM/bd;

    if-nez v0, :cond_21

    .line 1753
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No DetailsDialog for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1756
    :cond_21
    invoke-virtual {p0}, LaM/m;->bt()Lcom/google/googlenav/ai;

    move-result-object v0

    .line 1757
    if-nez v0, :cond_28

    .line 1769
    :goto_27
    return-void

    .line 1763
    :cond_28
    iget v1, p0, LaM/m;->v:I

    if-nez v1, :cond_35

    invoke-virtual {p0, v0}, LaM/m;->h(Lcom/google/googlenav/ai;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1764
    const/4 v0, 0x5

    iput v0, p0, LaM/m;->v:I

    .line 1766
    :cond_35
    iget-object v0, p0, LaM/m;->A:LaM/bd;

    iget v1, p0, LaM/m;->v:I

    invoke-virtual {v0, v1}, LaM/bd;->a(I)Lcom/google/googlenav/ui/view/android/V;

    move-result-object v0

    iput-object v0, p0, LaM/m;->r:Lcom/google/googlenav/ui/view/android/bb;

    .line 1768
    invoke-virtual {p0}, LaM/m;->bx()V

    goto :goto_27
.end method

.method public b(Lcom/google/googlenav/aW;)V
    .registers 3
    .parameter

    .prologue
    .line 1039
    invoke-virtual {p0}, LaM/m;->bD()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->d()Lcom/google/googlenav/ui/wizard/A;

    .line 1040
    return-void
.end method

.method public b(Lcom/google/googlenav/ai;)Z
    .registers 3
    .parameter

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method b(Lcom/google/googlenav/ai;Z)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1231
    invoke-direct {p0}, LaM/m;->b()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1232
    const/4 v0, 0x0

    .line 1252
    :goto_7
    return v0

    .line 1236
    :cond_8
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, LaM/m;->a(ILcom/google/googlenav/ai;)V

    .line 1240
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, LaM/m;->f(I)V

    .line 1243
    iget-object v0, p0, LaM/m;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->c()I

    move-result v0

    invoke-static {p1, v0}, LaM/m;->b(Lcom/google/googlenav/ai;I)V

    .line 1245
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->aM()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1246
    iget-object v0, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    const/16 v1, 0x20

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->b(Ljava/lang/String;)V

    .line 1249
    :cond_2b
    iget-object v0, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ac()Lcom/google/googlenav/aA;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->I()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laa/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, LaM/u;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, LaM/u;-><init>(LaM/m;Lcom/google/googlenav/ai;LaM/n;)V

    invoke-interface {v0, v1, v2, p2}, Lcom/google/googlenav/aA;->a(Ljava/lang/String;Lcom/google/googlenav/aB;Z)V

    .line 1252
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public b(Lcom/google/googlenav/ui/wizard/A;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1967
    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/A;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_60

    .line 2005
    :pswitch_8
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 1969
    :pswitch_a
    invoke-virtual {p0, v1}, LaM/m;->j(Z)V

    .line 1970
    iget-object v0, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0, p0}, LaM/am;->g(LaM/i;)V

    .line 1971
    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/A;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/m;

    .line 1972
    if-eqz v0, :cond_22

    .line 1975
    const/4 v2, 0x0

    invoke-direct {v0, v2}, LaM/m;->n(Lcom/google/googlenav/ai;)V

    :cond_22
    move v0, v1

    .line 1977
    goto :goto_9

    .line 1980
    :pswitch_24
    invoke-virtual {p0, v1}, LaM/m;->j(Z)V

    .line 1981
    iget-object v0, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0, p0}, LaM/am;->g(LaM/i;)V

    .line 1984
    iget-object v0, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->I()LaM/i;

    move-result-object v0

    check-cast v0, LaM/m;

    .line 1986
    if-eqz v0, :cond_41

    .line 1987
    invoke-virtual {v0}, LaM/m;->aR()V

    :cond_41
    move v0, v1

    .line 1989
    goto :goto_9

    .line 1992
    :pswitch_43
    invoke-direct {p0}, LaM/m;->bG()V

    .line 1993
    invoke-virtual {p0}, LaM/m;->ah()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 1994
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1997
    invoke-virtual {p0}, LaM/m;->A()V

    :cond_59
    :goto_59
    move v0, v1

    .line 2002
    goto :goto_9

    .line 2000
    :cond_5b
    invoke-virtual {p0}, LaM/m;->aR()V

    goto :goto_59

    .line 1967
    nop

    :pswitch_data_60
    .packed-switch 0x24
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_24
        :pswitch_43
    .end packed-switch
.end method

.method public bA()Lah/o;
    .registers 2

    .prologue
    .line 2168
    iget-object v0, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->k()Lah/o;

    move-result-object v0

    return-object v0
.end method

.method protected bB()I
    .registers 2

    .prologue
    .line 2200
    const/4 v0, 0x0

    return v0
.end method

.method protected bC()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 2208
    invoke-virtual {p0}, LaM/m;->bB()I

    move-result v0

    .line 2209
    const/4 v1, -0x1

    if-eq v0, v1, :cond_21

    .line 2210
    invoke-virtual {p0, v0}, LaM/m;->b(I)V

    .line 2211
    const/4 v0, 0x0

    iput v0, p0, LaM/m;->v:I

    .line 2212
    invoke-virtual {p0}, LaM/m;->m()V

    .line 2213
    invoke-virtual {p0}, LaM/m;->bt()Lcom/google/googlenav/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->z()I

    move-result v0

    if-le v0, v2, :cond_21

    .line 2214
    iput-boolean v2, p0, LaM/m;->w:Z

    .line 2215
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, LaM/m;->i(I)V

    .line 2218
    :cond_21
    return-void
.end method

.method bD()Lcom/google/googlenav/ui/wizard/ju;
    .registers 2

    .prologue
    .line 2267
    iget-object v0, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    return-object v0
.end method

.method public bc()Ljava/lang/String;
    .registers 8

    .prologue
    const-wide/16 v5, -0x1

    const-wide v3, 0x412e848000000000L

    .line 2223
    invoke-virtual {p0}, LaM/m;->af()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2224
    invoke-static {}, Lcom/google/googlenav/K;->p()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2225
    const-string v0, "Place Page"

    invoke-static {v0}, LP/a;->c(Ljava/lang/String;)V

    .line 2227
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://maps.google.com/maps/place?cid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2228
    invoke-virtual {p0}, LaM/m;->bt()Lcom/google/googlenav/ai;

    move-result-object v1

    .line 2229
    if-eqz v1, :cond_b6

    .line 2230
    invoke-virtual {p0}, LaM/m;->bt()Lcom/google/googlenav/ai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->V()J

    move-result-wide v1

    .line 2231
    cmp-long v3, v1, v5

    if-eqz v3, :cond_b6

    .line 2232
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2259
    :goto_38
    return-object v0

    .line 2236
    :cond_39
    invoke-virtual {p0}, LaM/m;->ah()Z

    move-result v0

    if-nez v0, :cond_45

    invoke-virtual {p0}, LaM/m;->ag()Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 2237
    :cond_45
    invoke-static {}, Lcom/google/googlenav/K;->p()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 2238
    const-string v0, "Map"

    invoke-static {v0}, LP/a;->c(Ljava/lang/String;)V

    .line 2240
    :cond_50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://maps.google.com/?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2241
    const-string v1, "ll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2242
    iget-object v1, p0, LaM/m;->d:Lat/u;

    invoke-virtual {v1}, Lat/u;->c()Lat/B;

    move-result-object v1

    invoke-virtual {v1}, Lat/B;->c()I

    move-result v1

    int-to-double v1, v1

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2243
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2244
    iget-object v1, p0, LaM/m;->d:Lat/u;

    invoke-virtual {v1}, Lat/u;->c()Lat/B;

    move-result-object v1

    invoke-virtual {v1}, Lat/B;->e()I

    move-result v1

    int-to-double v1, v1

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2245
    const-string v1, "&z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2246
    iget-object v1, p0, LaM/m;->d:Lat/u;

    invoke-virtual {v1}, Lat/u;->d()Lat/Y;

    move-result-object v1

    invoke-virtual {v1}, Lat/Y;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2250
    invoke-virtual {p0}, LaM/m;->ag()Z

    move-result v1

    if-eqz v1, :cond_b1

    invoke-virtual {p0}, LaM/m;->bt()Lcom/google/googlenav/ai;

    move-result-object v1

    if-eqz v1, :cond_b1

    .line 2251
    invoke-virtual {p0}, LaM/m;->bt()Lcom/google/googlenav/ai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->V()J

    move-result-wide v1

    .line 2252
    cmp-long v3, v1, v5

    if-eqz v3, :cond_b1

    .line 2253
    const-string v3, "&q=cid:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2254
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2257
    :cond_b1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    .line 2259
    :cond_b6
    const/4 v0, 0x0

    goto :goto_38
.end method

.method public bd()Lcom/google/googlenav/ui/bw;
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, LaM/m;->x:Lcom/google/googlenav/ui/bw;

    return-object v0
.end method

.method public be()Lcom/google/googlenav/ui/a;
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, LaM/m;->B:Lcom/google/googlenav/ui/a;

    if-nez v0, :cond_b

    .line 260
    new-instance v0, Lcom/google/googlenav/ui/a;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/a;-><init>(Lcom/google/googlenav/ui/g;)V

    iput-object v0, p0, LaM/m;->B:Lcom/google/googlenav/ui/a;

    .line 262
    :cond_b
    iget-object v0, p0, LaM/m;->B:Lcom/google/googlenav/ui/a;

    return-object v0
.end method

.method public bf()Z
    .registers 2

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public bg()Z
    .registers 2

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public bh()Z
    .registers 2

    .prologue
    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public bi()Z
    .registers 2

    .prologue
    .line 312
    const/4 v0, 0x1

    return v0
.end method

.method public bj()Z
    .registers 2

    .prologue
    .line 320
    const/4 v0, 0x1

    return v0
.end method

.method public bk()Z
    .registers 2

    .prologue
    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method public bl()Z
    .registers 2

    .prologue
    .line 389
    const/4 v0, 0x1

    return v0
.end method

.method protected bm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 985
    const-string v0, "p"

    return-object v0
.end method

.method protected bn()V
    .registers 1

    .prologue
    .line 1093
    return-void
.end method

.method public bo()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1116
    iget-object v0, p0, LaM/m;->r:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, LaM/m;->af()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, LaM/m;->bz()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1160
    :cond_11
    :goto_11
    return-void

    .line 1121
    :cond_12
    iget v0, p0, LaM/m;->v:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_19

    .line 1122
    iput v2, p0, LaM/m;->v:I

    .line 1126
    :cond_19
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaM/m;->f(Z)V

    .line 1128
    iget-object v0, p0, LaM/m;->r:Lcom/google/googlenav/ui/view/android/bb;

    instance-of v0, v0, Lcom/google/googlenav/ui/view/android/bE;

    if-eqz v0, :cond_58

    .line 1129
    iget-object v0, p0, LaM/m;->r:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/view/android/bE;

    .line 1131
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bE;->w()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-virtual {p0}, LaM/m;->bt()Lcom/google/googlenav/ai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->aj()Z

    move-result v1

    if-nez v1, :cond_48

    .line 1135
    iget-object v1, p0, LaM/m;->A:LaM/bd;

    invoke-virtual {v1, v2}, LaM/bd;->a(I)Lcom/google/googlenav/ui/view/android/V;

    move-result-object v1

    iput-object v1, p0, LaM/m;->r:Lcom/google/googlenav/ui/view/android/bb;

    .line 1136
    iget-object v1, p0, LaM/m;->r:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 1137
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bE;->dismiss()V

    goto :goto_11

    .line 1141
    :cond_48
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bE;->w()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 1142
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bE;->invalidateOptionsMenu()V

    .line 1145
    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/view/android/bE;->b(Z)V

    .line 1149
    :cond_54
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bE;->i()V

    goto :goto_11

    .line 1151
    :cond_58
    iget-object v0, p0, LaM/m;->r:Lcom/google/googlenav/ui/view/android/bb;

    instance-of v0, v0, Lcom/google/googlenav/ui/view/android/ah;

    if-eqz v0, :cond_11

    .line 1157
    iget-object v0, p0, LaM/m;->A:LaM/bd;

    invoke-virtual {v0, v2}, LaM/bd;->a(I)Lcom/google/googlenav/ui/view/android/V;

    .line 1158
    iget-object v0, p0, LaM/m;->r:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/view/android/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/ah;->l()V

    goto :goto_11
.end method

.method public bp()V
    .registers 3

    .prologue
    .line 1168
    iget-object v0, p0, LaM/m;->r:Lcom/google/googlenav/ui/view/android/bb;

    instance-of v0, v0, Lcom/google/googlenav/ui/view/android/bE;

    if-eqz v0, :cond_11

    .line 1169
    iget-object v0, p0, LaM/m;->r:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/view/android/bE;

    invoke-virtual {p0}, LaM/m;->bt()Lcom/google/googlenav/ai;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bE;->a(Lcom/google/googlenav/ai;)V

    .line 1171
    :cond_11
    invoke-virtual {p0}, LaM/m;->bo()V

    .line 1172
    invoke-virtual {p0}, LaM/m;->D()V

    .line 1173
    invoke-virtual {p0}, LaM/m;->E()V

    .line 1174
    return-void
.end method

.method protected bq()V
    .registers 2

    .prologue
    .line 1177
    iget-object v0, p0, LaM/m;->r:Lcom/google/googlenav/ui/view/android/bb;

    instance-of v0, v0, Lcom/google/googlenav/ui/view/android/bE;

    if-eqz v0, :cond_d

    .line 1178
    iget-object v0, p0, LaM/m;->r:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/view/android/bE;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bE;->i()V

    .line 1180
    :cond_d
    return-void
.end method

.method public br()Ljava/util/Hashtable;
    .registers 2

    .prologue
    .line 1183
    iget-object v0, p0, LaM/m;->C:Ljava/util/Hashtable;

    return-object v0
.end method

.method public bs()V
    .registers 3

    .prologue
    .line 1283
    iget-object v0, p0, LaM/m;->f:Lcom/google/googlenav/F;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/googlenav/F;->a(B)V

    .line 1284
    invoke-virtual {p0}, LaM/m;->aR()V

    .line 1289
    iget-object v0, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->I()LaM/i;

    move-result-object v0

    if-eq v0, p0, :cond_1e

    .line 1290
    iget-object v0, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0, p0}, LaM/am;->e(LaM/i;)V

    .line 1292
    :cond_1e
    invoke-virtual {p0}, LaM/m;->A()V

    .line 1293
    return-void
.end method

.method public bt()Lcom/google/googlenav/ai;
    .registers 2

    .prologue
    .line 1524
    invoke-virtual {p0}, LaM/m;->s()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    return-object v0
.end method

.method protected bu()Z
    .registers 2

    .prologue
    .line 1542
    const/4 v0, 0x0

    return v0
.end method

.method protected bv()Z
    .registers 2

    .prologue
    .line 1549
    const/4 v0, 0x0

    return v0
.end method

.method protected bw()Z
    .registers 2

    .prologue
    .line 1566
    const/4 v0, 0x1

    return v0
.end method

.method protected bx()V
    .registers 6

    .prologue
    .line 1788
    iget-object v0, p0, LaM/m;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->e()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    .line 1789
    if-nez v0, :cond_b

    .line 1805
    :cond_a
    :goto_a
    return-void

    .line 1792
    :cond_b
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bP()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1796
    sget-object v1, Lcom/google/googlenav/av;->b:Lcom/google/googlenav/av;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ai;->a(Lcom/google/googlenav/av;)V

    .line 1798
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->B()Ljava/lang/String;

    move-result-object v1

    .line 1799
    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1800
    new-instance v2, Lcom/google/googlenav/f;

    new-instance v3, LaM/v;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, v4}, LaM/v;-><init>(LaM/m;Lcom/google/googlenav/ai;LaM/n;)V

    invoke-direct {v2, v3, v1}, Lcom/google/googlenav/f;-><init>(Lcom/google/googlenav/g;Ljava/lang/String;)V

    .line 1802
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/f;->a(Z)V

    .line 1803
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lac/h;->c(Lac/g;)V

    goto :goto_a
.end method

.method protected by()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1951
    invoke-direct {p0}, LaM/m;->bE()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1952
    invoke-virtual {p0, v0}, LaM/m;->i(I)V

    .line 1953
    const/4 v0, 0x1

    .line 1955
    :cond_b
    return v0
.end method

.method public bz()Z
    .registers 3

    .prologue
    .line 2013
    iget v0, p0, LaM/m;->v:I

    if-eqz v0, :cond_9

    iget v0, p0, LaM/m;->v:I

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

.method public c(Lcom/google/googlenav/ai;Z)LS/f;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1841
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v1

    if-nez v1, :cond_8

    .line 1859
    :cond_7
    :goto_7
    return-object v0

    .line 1845
    :cond_8
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->bp()Lcom/google/googlenav/e;

    move-result-object v1

    .line 1846
    if-eqz v1, :cond_7

    .line 1850
    if-nez p2, :cond_15

    .line 1851
    invoke-virtual {v1}, Lcom/google/googlenav/e;->a()LS/f;

    move-result-object v0

    goto :goto_7

    .line 1854
    :cond_15
    iget-object v0, p0, LaM/m;->a:Lcom/google/googlenav/ui/bn;

    const v2, 0x7f02000e

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/bn;->b(I)LS/f;

    move-result-object v0

    invoke-static {v0}, LS/j;->d(LS/f;)LS/f;

    move-result-object v0

    .line 1856
    invoke-interface {v0}, LS/f;->c()LS/e;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/googlenav/e;->a()LS/f;

    move-result-object v3

    invoke-interface {v0}, LS/f;->a()I

    move-result v4

    invoke-virtual {v1}, Lcom/google/googlenav/e;->e()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-interface {v0}, LS/f;->b()I

    move-result v5

    invoke-virtual {v1}, Lcom/google/googlenav/e;->f()I

    move-result v1

    sub-int v1, v5, v1

    div-int/lit8 v1, v1, 0x2

    invoke-interface {v2, v3, v4, v1}, LS/e;->a(LS/f;II)V

    goto :goto_7
.end method

.method public d(LZ/a;)Z
    .registers 5
    .parameter

    .prologue
    .line 1198
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_10

    .line 1200
    const/4 v0, 0x3

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, LaM/m;->a(IILjava/lang/Object;)Z

    move-result v0

    .line 1202
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public d(Lcom/google/googlenav/ai;)Z
    .registers 3
    .parameter

    .prologue
    .line 341
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->bq()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public g(Lcom/google/googlenav/ai;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 398
    invoke-static {p1}, LaM/m;->f(Lcom/google/googlenav/ai;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 403
    :cond_7
    :goto_7
    return v0

    .line 401
    :cond_8
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->C()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    const/16 v2, 0x90

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 402
    iget-object v2, p0, LaM/m;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/v;->al()Lax/m;

    move-result-object v2

    invoke-interface {v2}, Lax/m;->g()Lax/r;

    move-result-object v2

    invoke-interface {v2, v1}, Lax/r;->a(Ljava/lang/String;)Lax/A;

    move-result-object v1

    .line 403
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lax/A;->n()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public h()V
    .registers 2

    .prologue
    .line 1960
    invoke-virtual {p0}, LaM/m;->by()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1964
    :goto_6
    return-void

    .line 1963
    :cond_7
    invoke-super {p0}, LaM/i;->h()V

    goto :goto_6
.end method

.method protected h(I)V
    .registers 4
    .parameter

    .prologue
    .line 1743
    invoke-virtual {p0}, LaM/m;->s()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    .line 1744
    invoke-virtual {p0}, LaM/m;->u()Ljava/lang/String;

    move-result-object v1

    .line 1745
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->c()B

    move-result v0

    invoke-static {v0, v1, p1}, LaH/c;->a(ILjava/lang/String;I)V

    .line 1747
    return-void
.end method

.method protected h(Lcom/google/googlenav/ai;)Z
    .registers 3
    .parameter

    .prologue
    .line 415
    const/4 v0, 0x0

    return v0
.end method

.method protected i()LaO/a;
    .registers 2

    .prologue
    .line 1188
    new-instance v0, LaO/b;

    invoke-direct {v0, p0}, LaO/b;-><init>(LaM/i;)V

    return-object v0
.end method

.method protected i(I)V
    .registers 3
    .parameter

    .prologue
    .line 2023
    iget v0, p0, LaM/m;->v:I

    if-ne v0, p1, :cond_5

    .line 2050
    :goto_4
    return-void

    .line 2027
    :cond_5
    invoke-direct {p0, p1}, LaM/m;->j(I)V

    .line 2030
    iput p1, p0, LaM/m;->v:I

    .line 2038
    iget v0, p0, LaM/m;->v:I

    if-nez v0, :cond_1f

    .line 2039
    iget-object v0, p0, LaM/m;->r:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_17

    .line 2040
    iget-object v0, p0, LaM/m;->r:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->hide()V

    .line 2048
    :cond_17
    :goto_17
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaM/m;->e(Z)V

    .line 2049
    invoke-virtual {p0}, LaM/m;->y()V

    goto :goto_4

    .line 2043
    :cond_1f
    invoke-virtual {p0}, LaM/m;->r()V

    goto :goto_17
.end method

.method public j(Lcom/google/googlenav/ai;)Z
    .registers 3
    .parameter

    .prologue
    .line 2328
    invoke-virtual {p0}, LaM/m;->ba()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ac()Lcom/google/googlenav/aA;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/aA;->e()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->I()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public k(Lcom/google/googlenav/ai;)Z
    .registers 3
    .parameter

    .prologue
    .line 2340
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->D()Lat/g;

    move-result-object v0

    invoke-virtual {p0, v0}, LaM/m;->a(Lat/g;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/google/googlenav/ai;->G()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method protected m()V
    .registers 3

    .prologue
    .line 1593
    invoke-virtual {p0}, LaM/m;->bw()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1594
    iget-object v0, p0, LaM/m;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->d()B

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    .line 1595
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, LaM/m;->f(I)V

    .line 1598
    :cond_14
    invoke-super {p0}, LaM/i;->m()V

    .line 1599
    invoke-virtual {p0}, LaM/m;->bt()Lcom/google/googlenav/ai;

    move-result-object v0

    .line 1600
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->aI()Z

    move-result v1

    if-nez v1, :cond_29

    .line 1604
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, LaM/m;->a(ILcom/google/googlenav/ai;)V

    .line 1606
    :cond_29
    invoke-direct {p0}, LaM/m;->f()V

    .line 1609
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, LaM/m;->f(I)V

    .line 1612
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->w()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1616
    invoke-direct {p0, v0}, LaM/m;->l(Lcom/google/googlenav/ai;)V

    .line 1621
    :cond_3d
    if-eqz v0, :cond_48

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->bQ()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1622
    invoke-direct {p0, v0}, LaM/m;->m(Lcom/google/googlenav/ai;)V

    .line 1625
    :cond_48
    return-void
.end method

.method protected r()V
    .registers 1

    .prologue
    .line 2376
    invoke-super {p0}, LaM/i;->r()V

    .line 2377
    invoke-direct {p0}, LaM/m;->bG()V

    .line 2378
    return-void
.end method

.method protected u()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1533
    invoke-virtual {p0}, LaM/m;->bt()Lcom/google/googlenav/ai;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/bN;->a(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
