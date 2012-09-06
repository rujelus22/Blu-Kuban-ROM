.class public LaM/bU;
.super LaM/m;
.source "SourceFile"

# interfaces
.implements Lat/m;


# static fields
.field public static final C:Lcom/google/googlenav/ab;

.field private static final O:Lcom/google/googlenav/ab;

.field private static P:Lcom/google/googlenav/ab;


# instance fields
.field B:Lcom/google/googlenav/ui/android/ah;

.field private D:Lad/y;

.field private E:Lcom/google/googlenav/ui/view/K;

.field private F:Lat/k;

.field private G:Z

.field private H:Landroid/widget/ArrayAdapter;

.field private final I:Landroid/widget/AdapterView$OnItemClickListener;

.field private final J:Landroid/os/Handler;

.field private K:Lcom/google/googlenav/layer/s;

.field private final L:Landroid/os/HandlerThread;

.field private M:Landroid/os/Handler;

.field private final N:Ljava/lang/Runnable;

.field private final Q:Ljava/util/ArrayList;

.field private R:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1215
    new-instance v0, Lcom/google/googlenav/ab;

    const/4 v1, -0x2

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ab;-><init>(ILjava/lang/String;)V

    sput-object v0, LaM/bU;->O:Lcom/google/googlenav/ab;

    .line 1218
    new-instance v0, Lcom/google/googlenav/ab;

    const/4 v1, -0x1

    const/16 v2, 0x5d8

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ab;-><init>(ILjava/lang/String;)V

    sput-object v0, LaM/bU;->C:Lcom/google/googlenav/ab;

    .line 1241
    sget-object v0, LaM/bU;->O:Lcom/google/googlenav/ab;

    sput-object v0, LaM/bU;->P:Lcom/google/googlenav/ab;

    return-void
.end method

.method protected constructor <init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lat/k;Lcom/google/googlenav/F;Z)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 254
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, LaM/m;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/F;)V

    .line 156
    new-instance v0, LaM/bV;

    invoke-direct {v0, p0}, LaM/bV;-><init>(LaM/bU;)V

    iput-object v0, p0, LaM/bU;->I:Landroid/widget/AdapterView$OnItemClickListener;

    .line 184
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LaM/bU;->J:Landroid/os/Handler;

    .line 190
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VehicleRequestThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LaM/bU;->L:Landroid/os/HandlerThread;

    .line 205
    new-instance v0, LaM/bW;

    invoke-direct {v0, p0}, LaM/bW;-><init>(LaM/bU;)V

    iput-object v0, p0, LaM/bU;->N:Ljava/lang/Runnable;

    .line 1243
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaM/bU;->Q:Ljava/util/ArrayList;

    .line 255
    iput-object p5, p0, LaM/bU;->F:Lat/k;

    .line 256
    iput-boolean p7, p0, LaM/bU;->G:Z

    .line 257
    return-void
.end method

.method static synthetic a(LaM/bU;)Lad/y;
    .registers 2
    .parameter

    .prologue
    .line 105
    invoke-direct {p0}, LaM/bU;->bV()Lad/y;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;I)Landroid/view/View;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 428
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 430
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a(IILjava/lang/Object;Lcom/google/googlenav/cn;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 732
    if-eqz p4, :cond_11

    .line 733
    iget-object v0, p0, LaM/bU;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->e()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->au()Lcom/google/googlenav/ca;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/googlenav/ca;->a(Lcom/google/googlenav/cn;)V

    .line 736
    :cond_11
    invoke-direct {p0}, LaM/bU;->bT()V

    .line 738
    invoke-virtual {p0, p2, p3}, LaM/bU;->a(ILjava/lang/Object;)V

    .line 739
    return-void
.end method

.method private a(ILjava/lang/Object;ILjava/lang/Object;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 721
    invoke-virtual {p0}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/Y;->f()I

    move-result v0

    if-ge p1, v0, :cond_c

    if-gez p1, :cond_d

    .line 728
    :cond_c
    :goto_c
    return-void

    .line 725
    :cond_d
    invoke-virtual {p0, p1}, LaM/bU;->b(I)V

    .line 726
    check-cast p2, Lcom/google/googlenav/cn;

    invoke-direct {p0, p1, p3, p4, p2}, LaM/bU;->a(IILjava/lang/Object;Lcom/google/googlenav/cn;)V

    goto :goto_c
.end method

.method private a(LaM/bG;Z)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 766
    invoke-direct {p0}, LaM/bU;->bU()V

    .line 767
    new-instance v0, LaM/cf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LaM/cf;-><init>(LaM/bU;LaM/bV;)V

    .line 768
    iget-object v1, p0, LaM/bU;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/googlenav/ui/v;->a(LaM/bG;Lcom/google/googlenav/bV;Z)Lcom/google/googlenav/bX;

    move-result-object v2

    .line 770
    iget-object v0, p0, LaM/bU;->b:Lcom/google/googlenav/ui/v;

    const/16 v1, 0x4c9

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/wizard/z;->a:Lcom/google/googlenav/ui/wizard/A;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;J)V

    .line 772
    return-void
.end method

.method static synthetic a(LaM/bU;Lcom/google/googlenav/aa;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-direct {p0, p1}, LaM/bU;->b(Lcom/google/googlenav/aa;)V

    return-void
.end method

.method static synthetic a(LaM/bU;Lcom/google/googlenav/ab;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-direct {p0, p1}, LaM/bU;->b(Lcom/google/googlenav/ab;)V

    return-void
.end method

.method private a(Lad/y;II)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 884
    new-instance v0, Lcom/google/googlenav/aa;

    invoke-virtual {p0}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bn;->T()Lcom/google/googlenav/ui/bm;

    move-result-object v5

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/aa;-><init>(Lcom/google/googlenav/Y;Lad/y;IILcom/google/googlenav/ui/bm;)V

    .line 887
    invoke-direct {p0, v0}, LaM/bU;->b(Lcom/google/googlenav/aa;)V

    .line 888
    return-void
.end method

.method private a(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 423
    const v0, 0x7f100474

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/ah;

    iput-object v0, p0, LaM/bU;->B:Lcom/google/googlenav/ui/android/ah;

    .line 424
    iget-object v0, p0, LaM/bU;->B:Lcom/google/googlenav/ui/android/ah;

    iget-object v1, p0, LaM/bU;->I:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, v0, v1}, LaM/bU;->a(Lcom/google/googlenav/ui/android/ah;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 425
    return-void
.end method

.method private a(Lcom/google/googlenav/Y;)V
    .registers 2
    .parameter

    .prologue
    .line 478
    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/j;)V
    .registers 4
    .parameter

    .prologue
    .line 1294
    if-nez p0, :cond_3

    .line 1310
    :cond_2
    :goto_2
    return-void

    .line 1298
    :cond_3
    sget-object v0, LaM/bU;->O:Lcom/google/googlenav/ab;

    sget-object v1, LaM/bU;->P:Lcom/google/googlenav/ab;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ab;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1302
    :try_start_d
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1303
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1304
    sget-object v2, LaM/bU;->P:Lcom/google/googlenav/ab;

    invoke-virtual {v2}, Lcom/google/googlenav/ab;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1305
    sget-object v2, LaM/bU;->P:Lcom/google/googlenav/ab;

    invoke-virtual {v2}, Lcom/google/googlenav/ab;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1306
    const-string v1, "TRANSIT_VEHICLE_TYPE"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_32} :catch_33

    goto :goto_2

    .line 1307
    :catch_33
    move-exception v0

    goto :goto_2
.end method

.method static synthetic b(LaM/bU;)Lad/y;
    .registers 2
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, LaM/bU;->D:Lad/y;

    return-object v0
.end method

.method private b(Lcom/google/googlenav/aa;)V
    .registers 6
    .parameter

    .prologue
    .line 1456
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    .line 1457
    sget-object v1, LaM/bU;->C:Lcom/google/googlenav/ab;

    sget-object v2, LaM/bU;->P:Lcom/google/googlenav/ab;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ab;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 1458
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget-object v3, LaM/bU;->P:Lcom/google/googlenav/ab;

    invoke-virtual {v3}, Lcom/google/googlenav/ab;->a()I

    move-result v3

    aput v3, v1, v2

    invoke-virtual {p1, v1}, Lcom/google/googlenav/aa;->a([I)V

    .line 1460
    :cond_1d
    invoke-virtual {v0, p1}, Lac/h;->c(Lac/g;)V

    .line 1461
    return-void
.end method

.method private b(Lcom/google/googlenav/ab;)V
    .registers 4
    .parameter

    .prologue
    .line 446
    iget-object v0, p0, LaM/bU;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    const-string v1, "LayerTransit"

    invoke-virtual {v0, v1}, LaM/am;->e(Ljava/lang/String;)LaM/i;

    move-result-object v0

    check-cast v0, LaN/q;

    .line 448
    if-eqz v0, :cond_13

    .line 449
    invoke-virtual {v0, p1}, LaN/q;->a(Lcom/google/googlenav/ab;)V

    .line 451
    :cond_13
    return-void
.end method

.method public static bJ()Lcom/google/googlenav/ab;
    .registers 2

    .prologue
    .line 1254
    sget-object v0, LaM/bU;->P:Lcom/google/googlenav/ab;

    sget-object v1, LaM/bU;->O:Lcom/google/googlenav/ab;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ab;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1255
    invoke-static {}, LaM/bU;->ca()Lcom/google/googlenav/ab;

    move-result-object v0

    sput-object v0, LaM/bU;->P:Lcom/google/googlenav/ab;

    .line 1257
    :cond_10
    sget-object v0, LaM/bU;->P:Lcom/google/googlenav/ab;

    return-object v0
.end method

.method public static bK()V
    .registers 1

    .prologue
    .line 1265
    sget-object v0, LaM/bU;->C:Lcom/google/googlenav/ab;

    sput-object v0, LaM/bU;->P:Lcom/google/googlenav/ab;

    .line 1266
    return-void
.end method

.method private bN()V
    .registers 2

    .prologue
    .line 286
    invoke-virtual {p0}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/Y;->o()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 293
    :goto_a
    return-void

    .line 291
    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LaM/bU;->b(I)V

    .line 292
    invoke-virtual {p0}, LaM/bU;->an()Z

    goto :goto_a
.end method

.method private bO()V
    .registers 13

    .prologue
    const v10, 0x3f99999a

    const/4 v4, 0x0

    .line 301
    const/4 v0, 0x3

    iget-object v1, p0, LaM/bU;->f:Lcom/google/googlenav/F;

    invoke-interface {v1}, Lcom/google/googlenav/F;->f()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 302
    if-gez v5, :cond_12

    .line 341
    :cond_11
    :goto_11
    return-void

    .line 305
    :cond_12
    iget-object v0, p0, LaM/bU;->d:Lat/u;

    invoke-virtual {v0}, Lat/u;->c()Lat/B;

    move-result-object v6

    .line 306
    invoke-virtual {v6}, Lat/B;->c()I

    move-result v7

    .line 307
    invoke-virtual {v6}, Lat/B;->e()I

    move-result v8

    move v3, v4

    move v2, v4

    move v1, v4

    .line 311
    :goto_23
    if-ge v3, v5, :cond_5d

    .line 312
    iget-object v0, p0, LaM/bU;->f:Lcom/google/googlenav/F;

    invoke-interface {v0, v3}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v9

    .line 313
    if-nez v9, :cond_37

    move v0, v2

    .line 311
    :goto_32
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_23

    .line 316
    :cond_37
    invoke-virtual {v9}, Lat/B;->c()I

    move-result v0

    sub-int v0, v7, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 317
    if-le v0, v1, :cond_8e

    .line 320
    :goto_43
    invoke-virtual {v9}, Lat/B;->e()I

    move-result v1

    sub-int v1, v8, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 321
    const v9, 0xaba9500

    if-le v1, v9, :cond_57

    .line 323
    const v9, 0x15752a00

    sub-int v1, v9, v1

    .line 325
    :cond_57
    if-le v1, v2, :cond_8b

    move v11, v1

    move v1, v0

    move v0, v11

    .line 326
    goto :goto_32

    .line 329
    :cond_5d
    if-nez v1, :cond_61

    if-eqz v2, :cond_11

    .line 333
    :cond_61
    mul-int/lit8 v0, v1, 0x2

    int-to-float v0, v0

    mul-float/2addr v0, v10

    float-to-int v0, v0

    .line 334
    mul-int/lit8 v1, v2, 0x2

    int-to-float v1, v1

    mul-float/2addr v1, v10

    float-to-int v1, v1

    .line 335
    iget-object v2, p0, LaM/bU;->d:Lat/u;

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/actionbar/a;->k()I

    move-result v3

    invoke-virtual {v2, v0, v1, v4, v3}, Lat/u;->a(IIII)Lat/Y;

    move-result-object v0

    .line 338
    iget-object v1, p0, LaM/bU;->d:Lat/u;

    invoke-virtual {v1}, Lat/u;->d()Lat/Y;

    move-result-object v1

    invoke-virtual {v1, v0}, Lat/Y;->b(Lat/Y;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 339
    iget-object v1, p0, LaM/bU;->d:Lat/u;

    invoke-virtual {v1, v6, v0}, Lat/u;->d(Lat/B;Lat/Y;)V

    goto :goto_11

    :cond_8b
    move v1, v0

    move v0, v2

    goto :goto_32

    :cond_8e
    move v0, v1

    goto :goto_43
.end method

.method private bP()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 367
    invoke-direct {p0}, LaM/bU;->bQ()Z

    move-result v0

    if-nez v0, :cond_8

    .line 396
    :cond_7
    :goto_7
    return-void

    .line 371
    :cond_8
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 372
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    .line 373
    invoke-virtual {v0}, Lcom/google/googlenav/actionbar/a;->n()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0401d9

    invoke-direct {p0, v1, v2}, LaM/bU;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    .line 375
    invoke-direct {p0, v1}, LaM/bU;->a(Landroid/view/View;)V

    .line 376
    invoke-direct {p0}, LaM/bU;->bR()Landroid/app/ActionBar$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/actionbar/a;->b(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_7

    .line 378
    :cond_2c
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 379
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v1

    .line 380
    invoke-virtual {v1}, Lcom/google/googlenav/actionbar/a;->o()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0401da

    invoke-direct {p0, v0, v2}, LaM/bU;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v2

    .line 382
    invoke-direct {p0, v2}, LaM/bU;->a(Landroid/view/View;)V

    .line 383
    const v0, 0x7f100009

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    .line 384
    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 385
    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/google/googlenav/actionbar/a;->c()Lcom/google/googlenav/actionbar/b;

    move-result-object v4

    invoke-virtual {v1, v0, v3, v4}, Lcom/google/googlenav/actionbar/a;->a(Landroid/view/View;Landroid/view/MenuItem;Lcom/google/googlenav/actionbar/b;)V

    .line 387
    invoke-direct {p0}, LaM/bU;->bR()Landroid/app/ActionBar$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/actionbar/a;->a(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_7

    .line 388
    :cond_64
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aq()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 389
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/e;->f()Landroid/view/View;

    move-result-object v0

    .line 390
    if-eqz v0, :cond_7

    .line 391
    const v1, 0x7f1001fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/ah;

    iput-object v0, p0, LaM/bU;->B:Lcom/google/googlenav/ui/android/ah;

    .line 392
    iget-object v0, p0, LaM/bU;->B:Lcom/google/googlenav/ui/android/ah;

    iget-object v1, p0, LaM/bU;->I:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, v0, v1}, LaM/bU;->a(Lcom/google/googlenav/ui/android/ah;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 393
    iget-object v0, p0, LaM/bU;->B:Lcom/google/googlenav/ui/android/ah;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7
.end method

.method private bQ()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 399
    const/4 v0, 0x0

    .line 400
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/K;->ar()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 402
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v0

    .line 403
    const v2, 0x7f100474

    invoke-virtual {v0, v2}, Lcom/google/googlenav/actionbar/a;->a(I)Landroid/view/View;

    move-result-object v0

    .line 413
    :cond_17
    :goto_17
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3e

    :cond_1f
    const/4 v0, 0x1

    :goto_20
    move v1, v0

    :cond_21
    return v1

    .line 404
    :cond_22
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/K;->aq()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 405
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/view/e;->f()Landroid/view/View;

    move-result-object v2

    .line 406
    if-eqz v2, :cond_17

    .line 407
    const v0, 0x7f1001fe

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_17

    :cond_3e
    move v0, v1

    .line 413
    goto :goto_20
.end method

.method private bR()Landroid/app/ActionBar$LayoutParams;
    .registers 4

    .prologue
    const/4 v2, -0x2

    .line 417
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const/16 v1, 0x13

    invoke-direct {v0, v2, v2, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method private bS()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 458
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v1

    .line 459
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 460
    invoke-virtual {v1}, Lcom/google/googlenav/actionbar/a;->j()V

    .line 472
    :cond_12
    :goto_12
    return-void

    .line 461
    :cond_13
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 462
    invoke-virtual {v1}, Lcom/google/googlenav/actionbar/a;->o()Landroid/content/Context;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 464
    const/high16 v2, 0x7f04

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    .line 465
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 466
    invoke-virtual {v1}, Lcom/google/googlenav/actionbar/a;->c()Lcom/google/googlenav/actionbar/b;

    move-result-object v2

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/googlenav/actionbar/a;->a(Landroid/view/View;Landroid/view/MenuItem;Lcom/google/googlenav/actionbar/b;)V

    .line 468
    invoke-direct {p0}, LaM/bU;->bR()Landroid/app/ActionBar$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/actionbar/a;->a(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_12

    .line 469
    :cond_44
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aq()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, LaM/bU;->B:Lcom/google/googlenav/ui/android/ah;

    if-eqz v0, :cond_12

    .line 470
    iget-object v0, p0, LaM/bU;->B:Lcom/google/googlenav/ui/android/ah;

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12
.end method

.method private bT()V
    .registers 3

    .prologue
    .line 742
    invoke-virtual {p0}, LaM/bU;->s()Lcom/google/googlenav/E;

    move-result-object v0

    .line 743
    if-eqz v0, :cond_16

    .line 744
    invoke-interface {v0}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v0

    .line 745
    if-eqz v0, :cond_16

    .line 746
    iget-object v1, p0, LaM/bU;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->Q()V

    .line 747
    iget-object v1, p0, LaM/bU;->d:Lat/u;

    invoke-virtual {v1, v0}, Lat/u;->c(Lat/B;)V

    .line 750
    :cond_16
    return-void
.end method

.method private bU()V
    .registers 4

    .prologue
    .line 775
    iget-object v0, p0, LaM/bU;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v1

    invoke-virtual {p0}, LaM/bU;->af()Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v0, 0x1f

    :goto_e
    iget-object v2, p0, LaM/bU;->f:Lcom/google/googlenav/F;

    invoke-virtual {p0, v0, v2}, LaM/bU;->d(ILjava/lang/Object;)Lcom/google/googlenav/ui/wizard/A;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    .line 779
    return-void

    .line 775
    :cond_18
    const/16 v0, 0x20

    goto :goto_e
.end method

.method private bV()Lad/y;
    .registers 3

    .prologue
    .line 864
    iget-object v0, p0, LaM/bU;->d:Lat/u;

    invoke-virtual {v0}, Lat/u;->c()Lat/B;

    move-result-object v0

    .line 865
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lad/y;->a(Lat/B;Ln/B;)Lad/y;

    move-result-object v0

    return-object v0
.end method

.method private bW()V
    .registers 4

    .prologue
    .line 872
    iget-object v0, p0, LaM/bU;->f:Lcom/google/googlenav/F;

    check-cast v0, Lcom/google/googlenav/Y;

    invoke-virtual {v0}, Lcom/google/googlenav/Y;->b()Lad/y;

    move-result-object v0

    const/16 v1, 0x4e20

    const/16 v2, 0xa

    invoke-direct {p0, v0, v1, v2}, LaM/bU;->a(Lad/y;II)V

    .line 874
    return-void
.end method

.method private bX()V
    .registers 7

    .prologue
    .line 1057
    iget-object v0, p0, LaM/bU;->F:Lat/k;

    if-nez v0, :cond_5

    .line 1082
    :goto_4
    return-void

    .line 1062
    :cond_5
    invoke-virtual {p0}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/Y;->m()Lcom/google/googlenav/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/T;->g()V

    .line 1064
    iget-object v0, p0, LaM/bU;->F:Lat/k;

    invoke-virtual {v0, p0}, Lat/k;->b(Lat/m;)V

    .line 1065
    iget-object v0, p0, LaM/bU;->F:Lat/k;

    invoke-virtual {v0}, Lat/k;->b()Z

    move-result v0

    if-nez v0, :cond_24

    .line 1066
    iget-object v0, p0, LaM/bU;->c:Lat/p;

    iget-object v1, p0, LaM/bU;->F:Lat/k;

    invoke-virtual {v0, v1}, Lat/p;->b(Lat/k;)V

    .line 1070
    :cond_24
    invoke-virtual {p0}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/Y;->l()Lcom/google/googlenav/layer/m;

    move-result-object v0

    .line 1071
    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->a()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 1072
    iget-object v1, p0, LaM/bU;->F:Lat/k;

    invoke-virtual {v1, p0}, Lat/k;->a(Lat/m;)V

    .line 1073
    iget-object v1, p0, LaM/bU;->c:Lat/p;

    iget-object v2, p0, LaM/bU;->F:Lat/k;

    invoke-virtual {v1, v2}, Lat/p;->a(Lat/k;)V

    .line 1074
    new-instance v1, Lcom/google/googlenav/layer/s;

    invoke-direct {v1, p0, v0}, Lcom/google/googlenav/layer/s;-><init>(LaM/i;Lcom/google/googlenav/layer/m;)V

    iput-object v1, p0, LaM/bU;->K:Lcom/google/googlenav/layer/s;

    .line 1075
    invoke-virtual {p0}, LaM/bU;->aP()V

    .line 1080
    :goto_48
    invoke-virtual {p0}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/T;

    iget-object v3, p0, LaM/bU;->F:Lat/k;

    iget-object v4, p0, LaM/bU;->c:Lat/p;

    iget-object v5, p0, LaM/bU;->d:Lat/u;

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/google/googlenav/T;-><init>(Lcom/google/googlenav/layer/m;Lat/o;Lat/p;Lat/u;)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/Y;->a(Lcom/google/googlenav/T;)V

    goto :goto_4

    .line 1077
    :cond_5b
    invoke-direct {p0}, LaM/bU;->cb()V

    goto :goto_48
.end method

.method private bY()V
    .registers 3

    .prologue
    .line 1201
    iget-object v0, p0, LaM/bU;->M:Landroid/os/Handler;

    if-nez v0, :cond_5

    .line 1207
    :goto_4
    return-void

    .line 1205
    :cond_5
    iget-object v0, p0, LaM/bU;->M:Landroid/os/Handler;

    iget-object v1, p0, LaM/bU;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1206
    iget-object v0, p0, LaM/bU;->M:Landroid/os/Handler;

    iget-object v1, p0, LaM/bU;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method private bZ()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 1222
    invoke-virtual {p0}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/Y;->k()Ljava/util/ArrayList;

    move-result-object v2

    .line 1224
    iget-object v1, p0, LaM/bU;->Q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1225
    iget-object v1, p0, LaM/bU;->Q:Ljava/util/ArrayList;

    sget-object v3, LaM/bU;->C:Lcom/google/googlenav/ab;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1226
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_1a
    if-ge v1, v3, :cond_28

    .line 1227
    iget-object v4, p0, LaM/bU;->Q:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1226
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 1229
    :cond_28
    iget-object v1, p0, LaM/bU;->H:Landroid/widget/ArrayAdapter;

    if-eqz v1, :cond_47

    .line 1230
    iget-object v1, p0, LaM/bU;->H:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 1231
    iget-object v1, p0, LaM/bU;->Q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_37
    if-ge v0, v1, :cond_47

    .line 1232
    iget-object v2, p0, LaM/bU;->H:Landroid/widget/ArrayAdapter;

    iget-object v3, p0, LaM/bU;->Q:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1231
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 1235
    :cond_47
    return-void
.end method

.method static synthetic c(LaM/bU;)Ljava/util/ArrayList;
    .registers 2
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, LaM/bU;->Q:Ljava/util/ArrayList;

    return-object v0
.end method

.method private c(Lcom/google/googlenav/cq;)V
    .registers 5
    .parameter

    .prologue
    .line 548
    invoke-virtual {p1}, Lcom/google/googlenav/cq;->m()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 549
    iget-object v0, p0, LaM/bU;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {p1}, Lcom/google/googlenav/cq;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlenav/cq;->n()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;I)V

    .line 555
    :goto_13
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaM/bU;->h(I)V

    .line 556
    const/4 v1, 0x2

    invoke-virtual {p0}, LaM/bU;->s()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    invoke-virtual {p0, v1, v0}, LaM/bU;->a(ILcom/google/googlenav/ai;)V

    .line 560
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, LaM/bU;->f(I)V

    .line 561
    return-void

    .line 551
    :cond_27
    iget-object v0, p0, LaM/bU;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {p1}, Lcom/google/googlenav/cq;->a()Lat/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->c(Lat/B;)V

    goto :goto_13
.end method

.method private static ca()Lcom/google/googlenav/ab;
    .registers 4

    .prologue
    .line 1275
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    .line 1276
    if-eqz v0, :cond_12

    const-string v1, "TRANSIT_VEHICLE_TYPE"

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->a_(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_15

    .line 1277
    :cond_12
    sget-object v0, LaM/bU;->C:Lcom/google/googlenav/ab;

    .line 1287
    :cond_14
    :goto_14
    return-object v0

    .line 1281
    :cond_15
    :try_start_15
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v3, "TRANSIT_VEHICLE_TYPE"

    invoke-interface {v0, v3}, Lcom/google/googlenav/common/io/j;->a_(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1283
    new-instance v0, Lcom/google/googlenav/ab;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/google/googlenav/ab;-><init>(ILjava/lang/String;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_32} :catch_3d

    .line 1287
    :goto_32
    sget-object v1, LaM/bU;->O:Lcom/google/googlenav/ab;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ab;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v0, LaM/bU;->C:Lcom/google/googlenav/ab;

    goto :goto_14

    .line 1284
    :catch_3d
    move-exception v0

    .line 1285
    sget-object v0, LaM/bU;->C:Lcom/google/googlenav/ab;

    goto :goto_32
.end method

.method private cb()V
    .registers 3

    .prologue
    .line 1595
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    .line 1596
    invoke-static {p0}, LaM/am;->l(LaM/i;)Ljava/lang/String;

    move-result-object v1

    .line 1597
    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z

    .line 1598
    return-void
.end method

.method static synthetic d(LaM/bU;)V
    .registers 1
    .parameter

    .prologue
    .line 105
    invoke-direct {p0}, LaM/bU;->bZ()V

    return-void
.end method

.method static synthetic e(LaM/bU;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, LaM/bU;->J:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(LaM/bU;)V
    .registers 1
    .parameter

    .prologue
    .line 105
    invoke-direct {p0}, LaM/bU;->bY()V

    return-void
.end method

.method private j(I)V
    .registers 5
    .parameter

    .prologue
    .line 693
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-nez v0, :cond_32

    .line 694
    invoke-virtual {p0}, LaM/bU;->ae()Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v0, 0x22

    :goto_12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LaM/bU;->b(ILjava/lang/Object;)V

    .line 707
    :goto_19
    iget-object v0, p0, LaM/bU;->d:Lat/u;

    iget-object v1, p0, LaM/bU;->d:Lat/u;

    invoke-virtual {v1}, Lat/u;->c()Lat/B;

    move-result-object v1

    iget-object v2, p0, LaM/bU;->d:Lat/u;

    invoke-virtual {v2}, Lat/u;->d()Lat/Y;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, LaM/bU;->a(Lat/B;Lat/Y;)Lat/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lat/u;->b(Lat/B;)V

    .line 709
    return-void

    .line 694
    :cond_2f
    const/16 v0, 0x21

    goto :goto_12

    .line 701
    :cond_32
    invoke-virtual {p0}, LaM/bU;->an()Z

    goto :goto_19
.end method

.method private l(Lcom/google/googlenav/ai;)V
    .registers 4
    .parameter

    .prologue
    .line 943
    iget-object v0, p0, LaM/bU;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    const-string v1, "LayerTransit"

    invoke-virtual {v0, v1}, LaM/am;->e(Ljava/lang/String;)LaM/i;

    move-result-object v0

    check-cast v0, LaN/q;

    .line 945
    if-eqz v0, :cond_16

    .line 947
    if-nez p1, :cond_17

    const/4 v1, 0x0

    :goto_13
    invoke-virtual {v0, v1}, LaN/q;->b(Ljava/lang/String;)V

    .line 951
    :cond_16
    return-void

    .line 947
    :cond_17
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->h()Z

    move-result v1

    if-eqz v1, :cond_24

    check-cast p1, Lcom/google/googlenav/W;

    invoke-virtual {p1}, Lcom/google/googlenav/W;->j()Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :cond_24
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->bT()Ljava/lang/String;

    move-result-object v1

    goto :goto_13
.end method


# virtual methods
.method protected O()Z
    .registers 2

    .prologue
    .line 1086
    const/4 v0, 0x0

    return v0
.end method

.method protected P()Z
    .registers 2

    .prologue
    .line 1115
    const/4 v0, 0x0

    return v0
.end method

.method protected X()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1371
    invoke-super {p0}, LaM/m;->X()Z

    .line 1373
    iget-boolean v1, p0, LaM/bU;->R:Z

    if-eqz v1, :cond_22

    .line 1374
    invoke-virtual {p0}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/Y;->n()V

    .line 1377
    iput-boolean v0, p0, LaM/bU;->R:Z

    .line 1380
    invoke-virtual {p0}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/Y;->e()Lcom/google/googlenav/E;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 1381
    invoke-virtual {p0}, LaM/bU;->Z()V

    .line 1383
    :cond_1e
    invoke-virtual {p0}, LaM/bU;->R()V

    .line 1384
    const/4 v0, 0x1

    .line 1386
    :cond_22
    return v0
.end method

.method public Z()V
    .registers 2

    .prologue
    .line 938
    invoke-super {p0}, LaM/m;->Z()V

    .line 939
    iget-object v0, p0, LaM/bU;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0, p0}, LaM/am;->c(LaM/i;)V

    .line 940
    return-void
.end method

.method public a()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    .prologue
    .line 454
    iget-object v0, p0, LaM/bU;->I:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public a(Lad/y;)V
    .registers 2
    .parameter

    .prologue
    .line 821
    iput-object p1, p0, LaM/bU;->D:Lad/y;

    .line 822
    return-void
.end method

.method public a(Lad/y;Lad/y;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1356
    invoke-virtual {p0, p2}, LaM/bU;->a(Lad/y;)V

    .line 1358
    if-nez p3, :cond_9

    .line 1359
    invoke-static {p1}, Lcom/google/googlenav/ui/bA;->c(Lad/y;)Ljava/lang/String;

    move-result-object p3

    .line 1361
    :cond_9
    new-instance v2, Lcom/google/googlenav/aa;

    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->T()Lcom/google/googlenav/ui/bm;

    move-result-object v0

    invoke-direct {v2, p1, p3, v0}, Lcom/google/googlenav/aa;-><init>(Lad/y;Ljava/lang/String;Lcom/google/googlenav/ui/bm;)V

    .line 1363
    invoke-virtual {v2, p2}, Lcom/google/googlenav/aa;->a(Lad/y;)V

    .line 1364
    invoke-direct {p0, v2}, LaM/bU;->b(Lcom/google/googlenav/aa;)V

    .line 1365
    iget-object v0, p0, LaM/bU;->b:Lcom/google/googlenav/ui/v;

    const/16 v1, 0x4ca

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/wizard/z;->a:Lcom/google/googlenav/ui/wizard/A;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;J)V

    .line 1367
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter

    .prologue
    .line 1327
    invoke-super {p0, p1}, LaM/m;->a(Landroid/content/res/Configuration;)V

    .line 1328
    iget-object v0, p0, LaM/bU;->r:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_14

    .line 1329
    iget-object v0, p0, LaM/bU;->r:Lcom/google/googlenav/ui/view/android/bb;

    instance-of v0, v0, Lcom/google/googlenav/ui/view/dialog/be;

    if-eqz v0, :cond_14

    .line 1330
    iget-object v0, p0, LaM/bU;->r:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/view/dialog/be;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/be;->i()V

    .line 1333
    :cond_14
    iget-object v0, p0, LaM/bU;->B:Lcom/google/googlenav/ui/android/ah;

    if-eqz v0, :cond_25

    .line 1336
    iget-object v0, p0, LaM/bU;->B:Lcom/google/googlenav/ui/android/ah;

    invoke-interface {v0}, Lcom/google/googlenav/ui/android/ah;->b()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1337
    iget-object v0, p0, LaM/bU;->B:Lcom/google/googlenav/ui/android/ah;

    invoke-interface {v0}, Lcom/google/googlenav/ui/android/ah;->a()V

    .line 1340
    :cond_25
    return-void
.end method

.method protected a(Lcom/google/googlenav/F;)V
    .registers 3
    .parameter

    .prologue
    .line 607
    invoke-virtual {p0}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/Y;->m()Lcom/google/googlenav/T;

    move-result-object v0

    .line 608
    iput-object p1, p0, LaM/bU;->f:Lcom/google/googlenav/F;

    .line 609
    check-cast p1, Lcom/google/googlenav/Y;

    .line 610
    invoke-virtual {p1, v0}, Lcom/google/googlenav/Y;->a(Lcom/google/googlenav/T;)V

    .line 611
    invoke-virtual {p1}, Lcom/google/googlenav/Y;->g()Lad/y;

    move-result-object v0

    iput-object v0, p0, LaM/bU;->D:Lad/y;

    .line 613
    invoke-direct {p0}, LaM/bU;->bZ()V

    .line 614
    return-void
.end method

.method public a(Lcom/google/googlenav/aa;)V
    .registers 5
    .parameter

    .prologue
    .line 1007
    invoke-virtual {p1}, Lcom/google/googlenav/aa;->l()Lcom/google/googlenav/Y;

    move-result-object v0

    .line 1009
    invoke-virtual {p1}, Lcom/google/googlenav/aa;->i()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1010
    invoke-virtual {p0}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v1

    .line 1011
    invoke-virtual {v1}, Lcom/google/googlenav/Y;->d()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/Y;->a(B)V

    .line 1012
    invoke-virtual {p0, v0}, LaM/bU;->b(Lcom/google/googlenav/F;)V

    .line 1014
    invoke-virtual {p0}, LaM/bU;->ae()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1015
    iget-object v0, p0, LaM/bU;->r:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/view/dialog/be;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/be;->l()V

    .line 1054
    :cond_25
    :goto_25
    return-void

    .line 1018
    :cond_26
    invoke-virtual {v0}, Lcom/google/googlenav/Y;->j()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5b

    .line 1019
    invoke-virtual {p0}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/Y;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b6

    invoke-virtual {p0}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/Y;->b()Lad/y;

    move-result-object v1

    invoke-virtual {v1}, Lad/y;->f()Lat/B;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/Y;->b()Lad/y;

    move-result-object v2

    invoke-virtual {v2}, Lad/y;->f()Lat/B;

    move-result-object v2

    invoke-virtual {v1, v2}, Lat/B;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 1022
    invoke-virtual {p0}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/Y;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/Y;->a(Ljava/lang/String;)V

    .line 1027
    :cond_5b
    :goto_5b
    invoke-virtual {p0, v0}, LaM/bU;->b(Lcom/google/googlenav/F;)V

    .line 1028
    invoke-direct {p0}, LaM/bU;->bX()V

    .line 1029
    invoke-direct {p0}, LaM/bU;->bO()V

    .line 1030
    invoke-direct {p0}, LaM/bU;->bN()V

    .line 1034
    iget-object v0, p0, LaM/bU;->Q:Ljava/util/ArrayList;

    if-eqz v0, :cond_9c

    iget-object v0, p0, LaM/bU;->B:Lcom/google/googlenav/ui/android/ah;

    if-eqz v0, :cond_9c

    .line 1035
    iget-object v0, p0, LaM/bU;->Q:Ljava/util/ArrayList;

    sget-object v1, LaM/bU;->P:Lcom/google/googlenav/ab;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1036
    if-ltz v0, :cond_7e

    .line 1037
    iget-object v1, p0, LaM/bU;->B:Lcom/google/googlenav/ui/android/ah;

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/android/ah;->setSelection(I)V

    .line 1040
    :cond_7e
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aq()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 1041
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/e;->f()Landroid/view/View;

    move-result-object v0

    .line 1042
    if-eqz v0, :cond_9c

    .line 1043
    const v1, 0x7f1001fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1044
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1048
    :cond_9c
    iget-object v0, p0, LaM/bU;->r:Lcom/google/googlenav/ui/view/android/bb;

    instance-of v0, v0, Lcom/google/googlenav/ui/view/dialog/be;

    if-eqz v0, :cond_25

    .line 1049
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, LaM/bU;->b(B)V

    .line 1050
    iget-object v0, p0, LaM/bU;->r:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/view/dialog/be;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/be;->l()V

    .line 1051
    iget-object v0, p0, LaM/bU;->r:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/view/dialog/be;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/be;->m()V

    goto/16 :goto_25

    .line 1024
    :cond_b6
    invoke-direct {p0, v0}, LaM/bU;->a(Lcom/google/googlenav/Y;)V

    goto :goto_5b
.end method

.method public a(Lcom/google/googlenav/ab;)V
    .registers 8
    .parameter

    .prologue
    .line 434
    sget-object v0, LaM/bU;->P:Lcom/google/googlenav/ab;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ab;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 443
    :goto_8
    return-void

    .line 437
    :cond_9
    sput-object p1, LaM/bU;->P:Lcom/google/googlenav/ab;

    .line 438
    invoke-virtual {p0}, LaM/bU;->bG()V

    .line 439
    const/16 v0, 0x73

    const-string v1, "f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/googlenav/ab;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method public a(Lcom/google/googlenav/cq;)V
    .registers 8
    .parameter

    .prologue
    .line 504
    invoke-virtual {p1}, Lcom/google/googlenav/cq;->au()Lcom/google/googlenav/ca;

    move-result-object v2

    .line 505
    if-nez v2, :cond_7

    .line 541
    :goto_6
    return-void

    .line 510
    :cond_7
    new-instance v0, Lcom/google/googlenav/layer/p;

    const-string v1, "LayerTransit"

    invoke-virtual {v2}, Lcom/google/googlenav/ca;->h()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v5, LaM/bY;

    invoke-direct {v5, p0, p1}, LaM/bY;-><init>(LaM/bU;Lcom/google/googlenav/cq;)V

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/layer/p;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLcom/google/googlenav/layer/q;)V

    .line 540
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lac/h;->c(Lac/g;)V

    goto :goto_6
.end method

.method public a(Lcom/google/googlenav/ui/android/ah;Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1150
    iget-object v0, p0, LaM/bU;->H:Landroid/widget/ArrayAdapter;

    if-nez v0, :cond_1c

    .line 1152
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->ar()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1153
    const v0, 0x1090009

    .line 1157
    :goto_11
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-static {}, Lcom/google/googlenav/ui/bn;->e()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, LaM/bU;->H:Landroid/widget/ArrayAdapter;

    .line 1160
    :cond_1c
    iget-object v0, p0, LaM/bU;->H:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 1161
    const/4 v0, 0x0

    iget-object v1, p0, LaM/bU;->Q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_28
    if-ge v0, v1, :cond_3c

    .line 1162
    iget-object v2, p0, LaM/bU;->H:Landroid/widget/ArrayAdapter;

    iget-object v3, p0, LaM/bU;->Q:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1161
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 1155
    :cond_38
    const v0, 0x7f0401ea

    goto :goto_11

    .line 1165
    :cond_3c
    new-instance v0, LaM/cc;

    invoke-direct {v0, p0}, LaM/cc;-><init>(LaM/bU;)V

    invoke-interface {p1, v0}, Lcom/google/googlenav/ui/android/ah;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1186
    iget-object v0, p0, LaM/bU;->H:Landroid/widget/ArrayAdapter;

    invoke-interface {p1, v0}, Lcom/google/googlenav/ui/android/ah;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1187
    iget-object v0, p0, LaM/bU;->H:Landroid/widget/ArrayAdapter;

    sget-object v1, LaM/bU;->P:Lcom/google/googlenav/ab;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    .line 1188
    const/4 v1, -0x1

    if-eq v0, v1, :cond_57

    .line 1189
    invoke-interface {p1, v0}, Lcom/google/googlenav/ui/android/ah;->setSelection(I)V

    .line 1191
    :cond_57
    invoke-interface {p1, p2}, Lcom/google/googlenav/ui/android/ah;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1192
    return-void
.end method

.method protected a(Ljava/io/DataOutput;)V
    .registers 5
    .parameter

    .prologue
    .line 1579
    iget-object v0, p0, LaM/bU;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->x()LaM/bU;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 1580
    invoke-virtual {p0}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/Y;->l()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->o()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 1581
    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Ljava/io/DataOutput;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1583
    invoke-virtual {p0}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/Y;->k()Ljava/util/ArrayList;

    move-result-object v0

    .line 1584
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1585
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ab;

    .line 1586
    invoke-virtual {v0}, Lcom/google/googlenav/ab;->a()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1587
    invoke-virtual {v0}, Lcom/google/googlenav/ab;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    goto :goto_2e

    .line 1590
    :cond_49
    invoke-direct {p0}, LaM/bU;->cb()V

    .line 1592
    :cond_4c
    return-void
.end method

.method public a(Ljava/lang/String;[Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1498
    invoke-virtual {p0}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/Y;->l()Lcom/google/googlenav/layer/m;

    move-result-object v0

    .line 1499
    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1500
    invoke-virtual {v0, p2}, Lcom/google/googlenav/layer/m;->a([Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1502
    :cond_15
    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 618
    sparse-switch p1, :sswitch_data_b8

    .line 682
    :cond_6
    invoke-super {p0, p1, p2, p3}, LaM/m;->a(IILjava/lang/Object;)Z

    move-result v1

    :goto_a
    return v1

    .line 620
    :sswitch_b
    invoke-virtual {p0}, LaM/bU;->f()V

    goto :goto_a

    .line 623
    :sswitch_f
    iget-object v0, p0, LaM/bU;->D:Lad/y;

    if-eqz v0, :cond_1f

    iget-object v0, p0, LaM/bU;->D:Lad/y;

    invoke-virtual {v0}, Lad/y;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 624
    :cond_1f
    invoke-virtual {p0}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/Y;->b()Lad/y;

    move-result-object v0

    invoke-virtual {p0}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/Y;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v4, v2}, LaM/bU;->a(Lad/y;Lad/y;Ljava/lang/String;)V

    goto :goto_a

    .line 627
    :cond_33
    iget-object v0, p0, LaM/bU;->b:Lcom/google/googlenav/ui/v;

    new-instance v2, Lcom/google/googlenav/bd;

    invoke-direct {v2}, Lcom/google/googlenav/bd;-><init>()V

    iget-object v3, p0, LaM/bU;->D:Lad/y;

    invoke-virtual {v3}, Lad/y;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/bd;->a(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/googlenav/bd;->i(Z)Lcom/google/googlenav/bd;

    move-result-object v2

    new-instance v3, LaM/ca;

    invoke-direct {v3, p0}, LaM/ca;-><init>(LaM/bU;)V

    invoke-virtual {v2, v3}, Lcom/google/googlenav/bd;->a(Lcom/google/googlenav/aX;)Lcom/google/googlenav/bd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/bc;)V

    goto :goto_a

    .line 643
    :sswitch_59
    iget-object v2, p0, LaM/bU;->D:Lad/y;

    if-nez v2, :cond_5e

    move v0, v1

    .line 644
    :cond_5e
    check-cast p3, LaM/bG;

    invoke-direct {p0, p3, v0}, LaM/bU;->a(LaM/bG;Z)V

    goto :goto_a

    .line 647
    :sswitch_64
    invoke-direct {p0}, LaM/bU;->bW()V

    goto :goto_a

    .line 651
    :sswitch_68
    invoke-direct {p0}, LaM/bU;->bU()V

    .line 652
    invoke-virtual {p0, v4}, LaM/bU;->a(Lcom/google/googlenav/ui/wizard/A;)V

    goto :goto_a

    .line 656
    :sswitch_6f
    iget-object v2, p0, LaM/bU;->f:Lcom/google/googlenav/F;

    invoke-interface {v2}, Lcom/google/googlenav/F;->d()B

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7e

    .line 657
    const/16 v0, 0x22

    .line 661
    :cond_7a
    :goto_7a
    invoke-direct {p0, p2, p3, v0, v4}, LaM/bU;->a(ILjava/lang/Object;ILjava/lang/Object;)V

    goto :goto_a

    .line 658
    :cond_7e
    iget-object v2, p0, LaM/bU;->f:Lcom/google/googlenav/F;

    invoke-interface {v2}, Lcom/google/googlenav/F;->d()B

    move-result v2

    if-ne v2, v1, :cond_7a

    .line 659
    const/16 v0, 0x23

    goto :goto_7a

    .line 664
    :sswitch_89
    if-ltz p2, :cond_8e

    .line 665
    invoke-virtual {p0, p2}, LaM/bU;->b(I)V

    .line 667
    :cond_8e
    iget-object v0, p0, LaM/bU;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->c()I

    move-result v0

    invoke-direct {p0, v0}, LaM/bU;->j(I)V

    goto/16 :goto_a

    .line 670
    :sswitch_99
    invoke-static {}, Lcom/google/googlenav/K;->p()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 671
    const-string v0, "Street View"

    invoke-static {v0}, LP/a;->b(Ljava/lang/String;)V

    .line 673
    :cond_a4
    invoke-virtual {p0}, LaM/bU;->s()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    .line 674
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->h()Z

    move-result v2

    if-nez v2, :cond_6

    .line 678
    check-cast v0, Lcom/google/googlenav/cq;

    invoke-direct {p0, v0}, LaM/bU;->c(Lcom/google/googlenav/cq;)V

    goto/16 :goto_a

    .line 618
    nop

    :sswitch_data_b8
    .sparse-switch
        0x1 -> :sswitch_89
        0xd5 -> :sswitch_b
        0x258 -> :sswitch_99
        0x25b -> :sswitch_68
        0x262 -> :sswitch_68
        0x264 -> :sswitch_f
        0xfa1 -> :sswitch_6f
        0xfa3 -> :sswitch_64
        0xfa4 -> :sswitch_59
    .end sparse-switch
.end method

.method public a(Lcom/google/googlenav/ui/view/J;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1123
    iget-object v1, p0, LaM/bU;->g:Lcom/google/googlenav/ui/view/d;

    if-eqz v1, :cond_4b

    iget-object v1, p0, LaM/bU;->g:Lcom/google/googlenav/ui/view/d;

    if-ne p1, v1, :cond_4b

    .line 1125
    iget-object v1, p0, LaM/bU;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/wizard/z;->a(I)V

    .line 1127
    const/16 v1, 0x73

    const-string v2, "m"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "a=b"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/Y;->c()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v3}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1132
    const/16 v1, 0x23

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, LaM/bU;->a(ILjava/lang/Object;)V

    .line 1135
    :goto_4a
    return v0

    :cond_4b
    invoke-super {p0, p1}, LaM/m;->a(Lcom/google/googlenav/ui/view/J;)Z

    move-result v0

    goto :goto_4a
.end method

.method protected a(Ljava/io/DataInput;)Z
    .registers 8
    .parameter

    .prologue
    .line 1607
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/dX;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 1609
    new-instance v1, Lcom/google/googlenav/layer/m;

    invoke-direct {v1, v0}, Lcom/google/googlenav/layer/m;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1610
    invoke-virtual {p0}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/Y;->a(Lcom/google/googlenav/layer/m;)V

    .line 1611
    invoke-virtual {p0}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/Y;->k()Ljava/util/ArrayList;

    move-result-object v1

    .line 1612
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1613
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 1614
    const/4 v0, 0x0

    :goto_22
    if-ge v0, v2, :cond_37

    .line 1615
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v3

    .line 1616
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 1617
    new-instance v5, Lcom/google/googlenav/ab;

    invoke-direct {v5, v3, v4}, Lcom/google/googlenav/ab;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1614
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 1619
    :cond_37
    const/4 v0, 0x1

    return v0
.end method

.method public aB()Z
    .registers 2

    .prologue
    .line 1571
    const/4 v0, 0x1

    return v0
.end method

.method public aF()I
    .registers 2

    .prologue
    .line 1105
    invoke-super {p0}, LaM/m;->aF()I

    move-result v0

    return v0
.end method

.method public aG()I
    .registers 2

    .prologue
    .line 991
    const v0, 0x7f020216

    return v0
.end method

.method public aH()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 996
    const/16 v0, 0x5d7

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aJ()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1091
    const/16 v0, 0x303

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aK()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1624
    const/16 v0, 0x24b

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aM()Z
    .registers 2

    .prologue
    .line 1565
    const/4 v0, 0x1

    return v0
.end method

.method protected aT()Z
    .registers 7

    .prologue
    .line 261
    invoke-static {}, LaM/bU;->bJ()Lcom/google/googlenav/ab;

    move-result-object v0

    sput-object v0, LaM/bU;->P:Lcom/google/googlenav/ab;

    .line 262
    sget-object v0, LaM/bU;->P:Lcom/google/googlenav/ab;

    invoke-direct {p0, v0}, LaM/bU;->b(Lcom/google/googlenav/ab;)V

    .line 263
    invoke-virtual {p0}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v0

    invoke-direct {p0, v0}, LaM/bU;->a(Lcom/google/googlenav/Y;)V

    .line 265
    invoke-virtual {p0}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/Y;->l()Lcom/google/googlenav/layer/m;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->a()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 268
    iget-object v1, p0, LaM/bU;->F:Lat/k;

    invoke-virtual {v1, p0}, Lat/k;->a(Lat/m;)V

    .line 269
    iget-object v1, p0, LaM/bU;->c:Lat/p;

    iget-object v2, p0, LaM/bU;->F:Lat/k;

    invoke-virtual {v1, v2}, Lat/p;->a(Lat/k;)V

    .line 270
    new-instance v1, Lcom/google/googlenav/layer/s;

    invoke-direct {v1, p0, v0}, Lcom/google/googlenav/layer/s;-><init>(LaM/i;Lcom/google/googlenav/layer/m;)V

    iput-object v1, p0, LaM/bU;->K:Lcom/google/googlenav/layer/s;

    .line 272
    :cond_33
    invoke-virtual {p0}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/T;

    iget-object v3, p0, LaM/bU;->F:Lat/k;

    iget-object v4, p0, LaM/bU;->c:Lat/p;

    iget-object v5, p0, LaM/bU;->d:Lat/u;

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/google/googlenav/T;-><init>(Lcom/google/googlenav/layer/m;Lat/o;Lat/p;Lat/u;)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/Y;->a(Lcom/google/googlenav/T;)V

    .line 275
    iget-boolean v0, p0, LaM/bU;->G:Z

    if-eqz v0, :cond_4c

    .line 276
    invoke-direct {p0}, LaM/bU;->bO()V

    .line 279
    :cond_4c
    iget-object v0, p0, LaM/bU;->L:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 280
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, LaM/bU;->L:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, LaM/bU;->M:Landroid/os/Handler;

    .line 282
    invoke-super {p0}, LaM/m;->aT()Z

    move-result v0

    return v0
.end method

.method public aU()V
    .registers 3

    .prologue
    .line 345
    iget-object v0, p0, LaM/bU;->M:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 346
    iget-object v0, p0, LaM/bU;->M:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 347
    if-eqz v0, :cond_f

    .line 348
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 350
    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, LaM/bU;->M:Landroid/os/Handler;

    .line 353
    :cond_12
    invoke-direct {p0}, LaM/bU;->bS()V

    .line 354
    sget-object v0, LaM/bU;->C:Lcom/google/googlenav/ab;

    invoke-direct {p0, v0}, LaM/bU;->b(Lcom/google/googlenav/ab;)V

    .line 357
    invoke-virtual {p0}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/Y;->m()Lcom/google/googlenav/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/T;->g()V

    .line 359
    iget-object v0, p0, LaM/bU;->F:Lat/k;

    invoke-virtual {v0, p0}, Lat/k;->b(Lat/m;)V

    .line 360
    iget-object v0, p0, LaM/bU;->F:Lat/k;

    invoke-virtual {v0}, Lat/k;->b()Z

    move-result v0

    if-nez v0, :cond_39

    .line 361
    iget-object v0, p0, LaM/bU;->c:Lat/p;

    iget-object v1, p0, LaM/bU;->F:Lat/k;

    invoke-virtual {v0, v1}, Lat/p;->b(Lat/k;)V

    .line 364
    :cond_39
    return-void
.end method

.method public aW()V
    .registers 2

    .prologue
    .line 959
    invoke-super {p0}, LaM/m;->aW()V

    .line 962
    invoke-direct {p0}, LaM/bU;->bP()V

    .line 964
    iget-boolean v0, p0, LaM/bU;->G:Z

    if-eqz v0, :cond_10

    .line 965
    invoke-direct {p0}, LaM/bU;->bN()V

    .line 966
    const/4 v0, 0x0

    iput-boolean v0, p0, LaM/bU;->G:Z

    .line 968
    :cond_10
    return-void
.end method

.method protected am()V
    .registers 3

    .prologue
    .line 973
    invoke-virtual {p0}, LaM/bU;->s()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    .line 974
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->h()Z

    move-result v1

    if-nez v1, :cond_25

    .line 975
    check-cast v0, Lcom/google/googlenav/cq;

    .line 976
    invoke-virtual {v0}, Lcom/google/googlenav/cq;->au()Lcom/google/googlenav/ca;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ca;->f()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 978
    invoke-virtual {p0, v0}, LaM/bU;->b(Lcom/google/googlenav/cq;)V

    .line 980
    :cond_1b
    invoke-virtual {v0}, Lcom/google/googlenav/cq;->j()Z

    move-result v1

    if-nez v1, :cond_24

    .line 981
    invoke-virtual {p0, v0}, LaM/bU;->a(Lcom/google/googlenav/cq;)V

    .line 987
    :cond_24
    :goto_24
    return-void

    .line 984
    :cond_25
    iget-object v1, p0, LaM/bU;->K:Lcom/google/googlenav/layer/s;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/layer/s;->b(Lcom/google/googlenav/ai;)Lac/g;

    goto :goto_24
.end method

.method protected aq()V
    .registers 2

    .prologue
    .line 487
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/be;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/dialog/be;-><init>(LaM/bU;)V

    iput-object v0, p0, LaM/bU;->r:Lcom/google/googlenav/ui/view/android/bb;

    .line 488
    return-void
.end method

.method public synthetic ar()Lcom/google/googlenav/F;
    .registers 2

    .prologue
    .line 105
    invoke-virtual {p0}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v0

    return-object v0
.end method

.method public av()I
    .registers 2

    .prologue
    .line 813
    const/16 v0, 0x17

    return v0
.end method

.method public b()Lcom/google/googlenav/layer/m;
    .registers 2

    .prologue
    .line 1493
    invoke-virtual {p0}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/Y;->l()Lcom/google/googlenav/layer/m;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .registers 3
    .parameter

    .prologue
    .line 931
    invoke-super {p0, p1}, LaM/m;->b(I)V

    .line 932
    iget-object v0, p0, LaM/bU;->f:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->e()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    invoke-direct {p0, v0}, LaM/bU;->l(Lcom/google/googlenav/ai;)V

    .line 933
    iget-object v0, p0, LaM/bU;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0, p0}, LaM/am;->c(LaM/i;)V

    .line 934
    return-void
.end method

.method b(Lcom/google/googlenav/cq;)V
    .registers 7
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1530
    invoke-virtual {p1}, Lcom/google/googlenav/cq;->au()Lcom/google/googlenav/ca;

    move-result-object v0

    .line 1531
    invoke-virtual {v0}, Lcom/google/googlenav/ca;->e()Z

    move-result v1

    .line 1532
    invoke-virtual {v0}, Lcom/google/googlenav/ca;->f()Z

    move-result v2

    .line 1534
    invoke-virtual {v0, v3}, Lcom/google/googlenav/ca;->a(Z)V

    .line 1535
    invoke-virtual {v0, v3}, Lcom/google/googlenav/ca;->b(Z)V

    .line 1536
    new-instance v3, Lcom/google/googlenav/ci;

    new-instance v4, LaM/cd;

    invoke-direct {v4, p0, v0, v1, v2}, LaM/cd;-><init>(LaM/bU;Lcom/google/googlenav/ca;ZZ)V

    invoke-direct {v3, v0, v4}, Lcom/google/googlenav/ci;-><init>(Lcom/google/googlenav/ca;Lcom/google/googlenav/cj;)V

    .line 1553
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    .line 1554
    invoke-virtual {v0, v3}, Lac/h;->c(Lac/g;)V

    .line 1555
    return-void
.end method

.method public bE()Lcom/google/googlenav/ui/view/K;
    .registers 2

    .prologue
    .line 829
    iget-object v0, p0, LaM/bU;->E:Lcom/google/googlenav/ui/view/K;

    if-nez v0, :cond_b

    .line 830
    new-instance v0, LaM/cb;

    invoke-direct {v0, p0}, LaM/cb;-><init>(LaM/bU;)V

    iput-object v0, p0, LaM/bU;->E:Lcom/google/googlenav/ui/view/K;

    .line 844
    :cond_b
    iget-object v0, p0, LaM/bU;->E:Lcom/google/googlenav/ui/view/K;

    return-object v0
.end method

.method public bF()Z
    .registers 2

    .prologue
    .line 848
    iget-object v0, p0, LaM/bU;->f:Lcom/google/googlenav/F;

    check-cast v0, Lcom/google/googlenav/Y;

    invoke-virtual {v0}, Lcom/google/googlenav/Y;->h()Z

    move-result v0

    return v0
.end method

.method public bG()V
    .registers 4

    .prologue
    .line 858
    invoke-virtual {p0}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v0

    .line 859
    invoke-direct {p0}, LaM/bU;->bV()Lad/y;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/Y;->g()Lad/y;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, LaM/bU;->a(Lad/y;Lad/y;Ljava/lang/String;)V

    .line 861
    return-void
.end method

.method public bH()V
    .registers 2

    .prologue
    .line 954
    iget-object v0, p0, LaM/bU;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0, p0}, LaM/am;->g(LaM/i;)V

    .line 955
    return-void
.end method

.method public bI()V
    .registers 4

    .prologue
    .line 1195
    const/16 v0, 0x73

    const-string v1, "f"

    const-string v2, "t=o"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1198
    return-void
.end method

.method public bL()Lcom/google/googlenav/T;
    .registers 2

    .prologue
    .line 1313
    invoke-virtual {p0}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/Y;->m()Lcom/google/googlenav/T;

    move-result-object v0

    return-object v0
.end method

.method public bM()Lcom/google/googlenav/Y;
    .registers 2

    .prologue
    .line 1344
    invoke-super {p0}, LaM/m;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/Y;

    return-object v0
.end method

.method public c()V
    .registers 2

    .prologue
    .line 1506
    const/4 v0, 0x1

    iput-boolean v0, p0, LaM/bU;->R:Z

    .line 1507
    return-void
.end method

.method public d(Lcom/google/googlenav/ai;)Z
    .registers 3
    .parameter

    .prologue
    .line 492
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->h()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 493
    invoke-super {p0, p1}, LaM/m;->d(Lcom/google/googlenav/ai;)Z

    move-result v0

    .line 495
    :goto_a
    return v0

    :cond_b
    check-cast p1, Lcom/google/googlenav/cq;

    invoke-virtual {p1}, Lcom/google/googlenav/cq;->k()Z

    move-result v0

    goto :goto_a
.end method

.method public e()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 597
    iget-object v0, p0, LaM/bU;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->a()V

    .line 598
    invoke-virtual {p0}, LaM/bU;->Z()V

    .line 599
    iget-object v0, p0, LaM/bU;->d:Lat/u;

    invoke-virtual {v0}, Lat/u;->c()Lat/B;

    move-result-object v0

    .line 600
    invoke-virtual {p0}, LaM/bU;->bM()Lcom/google/googlenav/Y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/Y;->b()Lad/y;

    move-result-object v1

    invoke-virtual {v1}, Lad/y;->f()Lat/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Lat/B;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 601
    iget-object v1, p0, LaM/bU;->b:Lcom/google/googlenav/ui/v;

    invoke-static {v0, v2}, Lad/y;->a(Lat/B;Ln/B;)Lad/y;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/ui/v;->a(Lad/y;Lad/y;)Lcom/google/googlenav/aa;

    .line 603
    :cond_2e
    return-void
.end method

.method public f()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 783
    const/16 v0, 0xc4

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 786
    invoke-static {}, Lcom/google/googlenav/ui/wizard/dp;->f()I

    move-result v1

    xor-int/lit8 v1, v1, 0x4

    xor-int/lit8 v1, v1, 0x8

    .line 791
    const/16 v2, 0x116

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 794
    const/4 v3, 0x5

    .line 796
    const/16 v4, 0x5e4

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 799
    iget-object v5, p0, LaM/bU;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v5}, Lcom/google/googlenav/ui/v;->au()Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v5

    new-instance v6, Lcom/google/googlenav/ui/wizard/dO;

    invoke-direct {v6}, Lcom/google/googlenav/ui/wizard/dO;-><init>()V

    invoke-virtual {v6, v0}, Lcom/google/googlenav/ui/wizard/dO;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/dO;->a(I)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/googlenav/ui/wizard/dO;->b(Z)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v0

    new-instance v1, LaM/ce;

    const/4 v6, 0x0

    invoke-direct {v1, p0, v6}, LaM/ce;-><init>(LaM/bU;LaM/bV;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/dO;->a(Lcom/google/googlenav/ui/wizard/dG;)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/googlenav/ui/wizard/dO;->c(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/wizard/dO;->d(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/wizard/dO;->a(B)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/dO;->c(Z)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/googlenav/ui/wizard/dO;->d(Z)Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ui/wizard/dO;)V

    .line 809
    return-void
.end method

.method protected f(LZ/a;)Z
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0x23

    const/4 v0, 0x1

    .line 568
    invoke-virtual {p1}, LZ/a;->a()I

    move-result v1

    if-ne v1, v4, :cond_25

    invoke-virtual {p1}, LZ/a;->c()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_25

    .line 570
    invoke-virtual {p0}, LaM/bU;->ae()Z

    move-result v1

    if-nez v1, :cond_25

    .line 571
    const/16 v1, 0x73

    const-string v2, "m"

    const-string v3, "a=l"

    invoke-static {v1, v2, v3}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 574
    const/4 v1, 0x0

    invoke-virtual {p0, v4, v1}, LaM/bU;->c(ILjava/lang/Object;)V

    .line 586
    :goto_24
    return v0

    .line 580
    :cond_25
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_37

    invoke-virtual {p0}, LaM/bU;->aa()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 581
    invoke-virtual {p0}, LaM/bU;->h()V

    goto :goto_24

    .line 586
    :cond_37
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public h()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 892
    iget-object v0, p0, LaM/bU;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->d()Lcom/google/googlenav/ui/wizard/A;

    move-result-object v0

    .line 893
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/A;->a()I

    move-result v1

    sparse-switch v1, :sswitch_data_62

    .line 920
    invoke-virtual {p0}, LaM/bU;->ag()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 921
    invoke-virtual {p0, v2}, LaM/bU;->a(B)V

    .line 925
    :goto_1c
    return-void

    .line 895
    :sswitch_1d
    invoke-virtual {p0, v2, v3}, LaM/bU;->c(ILjava/lang/Object;)V

    goto :goto_1c

    .line 898
    :sswitch_21
    invoke-virtual {p0, v2, v3}, LaM/bU;->b(ILjava/lang/Object;)V

    goto :goto_1c

    .line 901
    :sswitch_25
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/A;->b()Ljava/lang/Object;

    move-result-object v0

    .line 902
    if-eqz v0, :cond_38

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_38

    .line 903
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LaM/bU;->b(I)V

    .line 905
    :cond_38
    invoke-virtual {p0, v2, v3}, LaM/bU;->a(ILjava/lang/Object;)V

    goto :goto_1c

    .line 908
    :sswitch_3c
    invoke-virtual {p0}, LaM/bU;->ag()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 909
    iget-object v0, p0, LaM/bU;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {p0, v1, v3}, LaM/bU;->d(ILjava/lang/Object;)Lcom/google/googlenav/ui/wizard/A;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    .line 911
    invoke-virtual {p0, v2}, LaM/bU;->a(B)V

    goto :goto_1c

    .line 913
    :cond_55
    iget-object v0, p0, LaM/bU;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->W()V

    goto :goto_1c

    .line 923
    :cond_5b
    iget-object v0, p0, LaM/bU;->b:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->W()V

    goto :goto_1c

    .line 893
    nop

    :sswitch_data_62
    .sparse-switch
        0x11 -> :sswitch_3c
        0x21 -> :sswitch_25
        0x22 -> :sswitch_1d
        0x23 -> :sswitch_21
    .end sparse-switch
.end method

.method protected h(Lcom/google/googlenav/ai;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1512
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->h()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1513
    iget-object v1, p0, LaM/bU;->K:Lcom/google/googlenav/layer/s;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/layer/s;->a(Lcom/google/googlenav/ai;)Lac/g;

    move-result-object v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    .line 1520
    :cond_10
    :goto_10
    return v0

    .line 1515
    :cond_11
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->au()Lcom/google/googlenav/ca;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ca;->f()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1518
    check-cast p1, Lcom/google/googlenav/cq;

    invoke-virtual {p0, p1}, LaM/bU;->b(Lcom/google/googlenav/cq;)V

    goto :goto_10
.end method

.method protected i()LaO/a;
    .registers 2

    .prologue
    .line 482
    new-instance v0, LaO/l;

    invoke-direct {v0, p0}, LaO/l;-><init>(LaM/i;)V

    return-object v0
.end method

.method protected l()V
    .registers 2

    .prologue
    .line 1096
    invoke-super {p0}, LaM/m;->l()V

    .line 1097
    iget-object v0, p0, LaM/bU;->r:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_e

    .line 1098
    iget-object v0, p0, LaM/bU;->r:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/view/dialog/be;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/be;->m()V

    .line 1100
    :cond_e
    return-void
.end method

.method protected x()I
    .registers 2

    .prologue
    .line 1560
    const/4 v0, 0x0

    return v0
.end method
