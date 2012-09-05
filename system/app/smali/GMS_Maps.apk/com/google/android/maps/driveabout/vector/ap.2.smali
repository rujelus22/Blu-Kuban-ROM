.class public Lcom/google/android/maps/driveabout/vector/ap;
.super Lcom/google/android/maps/driveabout/vector/ab;


# static fields
.field static a:F

.field private static o:Ljava/util/HashMap;


# instance fields
.field private b:Lt/af;

.field private final c:Ljava/util/List;

.field private final d:Lcom/google/android/maps/driveabout/vector/di;

.field private final e:Lcom/google/android/maps/driveabout/vector/bu;

.field private final f:Lcom/google/android/maps/driveabout/vector/cp;

.field private g:Lcom/google/android/maps/driveabout/vector/cw;

.field private final h:I

.field private final i:I

.field private final j:Z

.field private final k:F

.field private l:I

.field private m:Lt/m;

.field private n:Lcom/google/android/maps/driveabout/vector/av;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x3f80

    sput v0, Lcom/google/android/maps/driveabout/vector/ap;->a:F

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/ap;->o:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lt/af;Lcom/google/android/maps/driveabout/vector/as;Ljava/util/List;Ljava/util/Set;)V
    .registers 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p4}, Lcom/google/android/maps/driveabout/vector/ab;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ap;->b:Lt/af;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/dk;

    iget v3, p2, Lcom/google/android/maps/driveabout/vector/as;->a:I

    invoke-direct {v0, v3}, Lcom/google/android/maps/driveabout/vector/dk;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->d:Lcom/google/android/maps/driveabout/vector/di;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bv;

    iget v3, p2, Lcom/google/android/maps/driveabout/vector/as;->b:I

    invoke-direct {v0, v3}, Lcom/google/android/maps/driveabout/vector/bv;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->e:Lcom/google/android/maps/driveabout/vector/bu;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cr;

    iget v3, p2, Lcom/google/android/maps/driveabout/vector/as;->a:I

    invoke-direct {v0, v3}, Lcom/google/android/maps/driveabout/vector/cr;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->f:Lcom/google/android/maps/driveabout/vector/cp;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/vector/ap;->c:Ljava/util/List;

    const/high16 v3, 0x3f80

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/at;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/at;->e()I

    move-result v4

    if-le v4, v1, :cond_5e

    move v0, v1

    :goto_35
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->j:Z

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->j:Z

    if-eqz v0, :cond_60

    div-int/lit8 v0, v4, 0x10

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    mul-int/lit8 v4, v0, 0x2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/at;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/at;->d()F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-int/2addr v4, v2

    move v0, v2

    :goto_57
    shl-int v5, v1, v0

    if-ge v5, v4, :cond_84

    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    :cond_5e
    move v0, v2

    goto :goto_35

    :cond_60
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v4, v2

    :goto_67
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_dc

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/at;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/at;->e()I

    move-result v6

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/at;->d()F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-int v3, v4, v6

    move v4, v3

    move v3, v0

    goto :goto_67

    :cond_84
    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->h:I

    sget v0, Lcom/google/android/maps/driveabout/vector/ap;->a:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    const/high16 v1, 0x4000

    add-float/2addr v0, v1

    float-to-int v1, v0

    const/16 v3, 0x8

    invoke-static {v1, v3}, Lcom/google/android/maps/driveabout/vector/cw;->a(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/ap;->i:I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ap;->i:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/ap;->k:F

    new-instance v1, Lcom/google/android/maps/driveabout/vector/av;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ap;->c:Ljava/util/List;

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/ap;->k:F

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/ap;->h:I

    iget-boolean v6, p0, Lcom/google/android/maps/driveabout/vector/ap;->j:Z

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/google/android/maps/driveabout/vector/av;-><init>(Ljava/util/List;FIZ)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/ap;->n:Lcom/google/android/maps/driveabout/vector/av;

    invoke-virtual {p1}, Lt/af;->i()Lt/V;

    move-result-object v1

    invoke-virtual {v1}, Lt/V;->g()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x4380

    div-float/2addr v0, v1

    const/high16 v1, 0x3f00

    mul-float v4, v0, v1

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bb;->a()Lcom/google/android/maps/driveabout/vector/bb;

    move-result-object v5

    move v3, v2

    :goto_c4
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_db

    invoke-virtual {p1}, Lt/af;->i()Lt/V;

    move-result-object v1

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/maps/driveabout/vector/at;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/ap;->a(Lt/V;Lcom/google/android/maps/driveabout/vector/at;IFLcom/google/android/maps/driveabout/vector/bb;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c4

    :cond_db
    return-void

    :cond_dc
    move v0, v2

    goto/16 :goto_57
.end method

.method synthetic constructor <init>(Lt/af;Lcom/google/android/maps/driveabout/vector/as;Ljava/util/List;Ljava/util/Set;Lcom/google/android/maps/driveabout/vector/aq;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/ap;-><init>(Lt/af;Lcom/google/android/maps/driveabout/vector/as;Ljava/util/List;Ljava/util/Set;)V

    return-void
.end method

.method public static a(F)V
    .registers 1

    sput p0, Lcom/google/android/maps/driveabout/vector/ap;->a:F

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aT;I)V
    .registers 13

    const/4 v9, 0x1

    sget-object v0, Lcom/google/android/maps/driveabout/vector/ap;->o:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ap;->n:Lcom/google/android/maps/driveabout/vector/av;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cw;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->g:Lcom/google/android/maps/driveabout/vector/cw;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->g:Lcom/google/android/maps/driveabout/vector/cw;

    if-nez v0, :cond_64

    add-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ap;->i:I

    shl-int/2addr v1, v0

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/ap;->h:I

    shl-int v2, v9, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ap;->c:Ljava/util/List;

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/ap;->k:F

    float-to-double v3, v3

    const-wide/high16 v5, 0x4000

    int-to-float v0, v0

    int-to-float v7, p2

    const/high16 v8, 0x3f00

    mul-float/2addr v7, v8

    sub-float/2addr v0, v7

    float-to-double v7, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-float v0, v3

    iget-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/ap;->j:Z

    invoke-static {v2, v1, v0, v3}, Lcom/google/android/maps/driveabout/vector/ap;->a(Ljava/util/List;Landroid/graphics/Bitmap;FZ)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cw;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/cw;-><init>(Lcom/google/android/maps/driveabout/vector/aT;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->g:Lcom/google/android/maps/driveabout/vector/cw;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/ap;->o:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ap;->n:Lcom/google/android/maps/driveabout/vector/av;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ap;->g:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->g:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0, v9}, Lcom/google/android/maps/driveabout/vector/cw;->c(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->g:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0, v9}, Lcom/google/android/maps/driveabout/vector/cw;->b(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->g:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cw;->b(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :goto_63
    return-void

    :cond_64
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->g:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cw;->e()V

    goto :goto_63
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/I;)V
    .registers 7

    const/high16 v4, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aT;->o()V

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x2100

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v4, v4, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    return-void
.end method

.method private static a(Ljava/util/ArrayList;Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFI)V
    .registers 25

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    move/from16 v0, p6

    int-to-float v2, v0

    div-float/2addr v1, v2

    const/high16 v2, 0x4180

    mul-float v12, v1, v2

    const/4 v1, 0x0

    move v7, v1

    :goto_f
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_b0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/au;

    iget v2, v1, Lcom/google/android/maps/driveabout/vector/au;->a:F

    mul-float v2, v2, p5

    add-float v13, p3, v2

    iget v2, v1, Lcom/google/android/maps/driveabout/vector/au;->b:F

    mul-float v2, v2, p5

    const/high16 v3, 0x3f00

    mul-float v14, v2, v3

    iget v2, v1, Lcom/google/android/maps/driveabout/vector/au;->c:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v15, v1, Lcom/google/android/maps/driveabout/vector/au;->d:[I

    if-nez v15, :cond_64

    const/4 v1, 0x1

    move/from16 v0, p6

    if-ne v0, v1, :cond_52

    sub-float v2, v13, v14

    const/high16 v1, 0x3f00

    add-float v3, p4, v1

    add-float v4, v13, v14

    const/high16 v1, 0x3f00

    add-float v5, p4, v1

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4e
    :goto_4e
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_f

    :cond_52
    sub-float v2, v13, v14

    const/4 v3, 0x0

    add-float v4, v13, v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v5, v1

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_4e

    :cond_64
    const/4 v3, 0x0

    const/4 v2, 0x1

    move/from16 v4, p4

    :goto_68
    move/from16 v0, p6

    if-ge v3, v0, :cond_4e

    const/4 v1, 0x0

    move v8, v1

    move v1, v2

    move v2, v3

    move v3, v4

    :goto_71
    array-length v4, v15

    rem-int/lit8 v4, v4, 0x2

    if-gt v8, v4, :cond_ac

    array-length v0, v15

    move/from16 v16, v0

    const/4 v4, 0x0

    move v11, v4

    move v9, v1

    move v10, v2

    :goto_7d
    move/from16 v0, v16

    if-ge v11, v0, :cond_a6

    aget v17, v15, v11

    move/from16 v0, v17

    int-to-float v1, v0

    const/high16 v2, 0x4180

    div-float/2addr v1, v2

    mul-float/2addr v1, v12

    add-float v5, v3, v1

    if-eqz v9, :cond_99

    sub-float v2, v13, v14

    add-float v4, v13, v14

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_99
    if-nez v9, :cond_a4

    const/4 v1, 0x1

    :goto_9c
    add-int v10, v10, v17

    add-int/lit8 v2, v11, 0x1

    move v11, v2

    move v9, v1

    move v3, v5

    goto :goto_7d

    :cond_a4
    const/4 v1, 0x0

    goto :goto_9c

    :cond_a6
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v2, v10

    move v1, v9

    goto :goto_71

    :cond_ac
    move v4, v3

    move v3, v2

    move v2, v1

    goto :goto_68

    :cond_b0
    return-void
.end method

.method static a(Ljava/util/List;Landroid/graphics/Bitmap;FZ)V
    .registers 14

    const/4 v0, 0x1

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f00

    mul-float/2addr v3, v4

    if-eqz p3, :cond_42

    move v8, v0

    :goto_1e
    const/4 v0, 0x0

    move v9, v0

    :goto_20
    if-ge v9, v8, :cond_48

    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/maps/driveabout/vector/at;

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/at;->e()I

    move-result v6

    int-to-float v4, v9

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/at;->f()Ljava/util/ArrayList;

    move-result-object v0

    move v5, p2

    invoke-static/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/ap;->a(Ljava/util/ArrayList;Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFI)V

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/at;->g()Ljava/util/ArrayList;

    move-result-object v0

    move v5, p2

    invoke-static/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/ap;->a(Ljava/util/ArrayList;Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFI)V

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_20

    :cond_42
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v8, v0

    goto :goto_1e

    :cond_48
    return-void
.end method

.method private a(Lt/V;Lcom/google/android/maps/driveabout/vector/at;IFLcom/google/android/maps/driveabout/vector/bb;)V
    .registers 17

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/at;->a()Lt/P;

    move-result-object v1

    invoke-virtual {v1}, Lt/P;->b()I

    move-result v10

    const/4 v0, 0x2

    if-ge v10, v0, :cond_c

    :goto_b
    return-void

    :cond_c
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/at;->c()Lt/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->m:Lt/m;

    invoke-virtual {p1}, Lt/V;->d()Lt/L;

    move-result-object v4

    invoke-virtual {p1}, Lt/V;->g()I

    move-result v5

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->j:Z

    if-nez v0, :cond_3e

    const/4 v3, 0x1

    const/high16 v6, 0x3f80

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/ap;->d:Lcom/google/android/maps/driveabout/vector/di;

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/ap;->e:Lcom/google/android/maps/driveabout/vector/bu;

    const/4 v9, 0x0

    move-object/from16 v0, p5

    move v2, p4

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/maps/driveabout/vector/bb;->a(Lt/P;FZLt/L;IFLcom/google/android/maps/driveabout/vector/di;Lcom/google/android/maps/driveabout/vector/bu;Lcom/google/android/maps/driveabout/vector/cp;)V

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/ap;->h:I

    const/4 v0, 0x1

    new-array v4, v0, [I

    const/4 v0, 0x0

    aput p3, v4, v0

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/ap;->f:Lcom/google/android/maps/driveabout/vector/cp;

    move-object/from16 v0, p5

    move v1, v10

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bb;->a(IZI[ILcom/google/android/maps/driveabout/vector/cp;)V

    goto :goto_b

    :cond_3e
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/at;->e()I

    move-result v0

    const/high16 v2, 0x4500

    int-to-float v0, v0

    div-float v6, v2, v0

    const/4 v3, 0x1

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/ap;->d:Lcom/google/android/maps/driveabout/vector/di;

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/ap;->e:Lcom/google/android/maps/driveabout/vector/bu;

    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/ap;->f:Lcom/google/android/maps/driveabout/vector/cp;

    move-object/from16 v0, p5

    move v2, p4

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/maps/driveabout/vector/bb;->a(Lt/P;FZLt/L;IFLcom/google/android/maps/driveabout/vector/di;Lcom/google/android/maps/driveabout/vector/bu;Lcom/google/android/maps/driveabout/vector/cp;)V

    goto :goto_b
.end method

.method static a(Lt/P;Lcom/google/android/maps/driveabout/vector/as;)Z
    .registers 7

    const/4 v0, 0x1

    invoke-virtual {p0}, Lt/P;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    mul-int/lit8 v2, v1, 0x5

    iget v3, p1, Lcom/google/android/maps/driveabout/vector/as;->a:I

    if-lez v3, :cond_19

    iget v3, p1, Lcom/google/android/maps/driveabout/vector/as;->a:I

    add-int/2addr v3, v2

    const/16 v4, 0x4000

    if-le v3, v4, :cond_19

    const/4 v0, 0x0

    goto :goto_9

    :cond_19
    iget v3, p1, Lcom/google/android/maps/driveabout/vector/as;->a:I

    add-int/2addr v2, v3

    iput v2, p1, Lcom/google/android/maps/driveabout/vector/as;->a:I

    iget v2, p1, Lcom/google/android/maps/driveabout/vector/as;->b:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v2

    iput v1, p1, Lcom/google/android/maps/driveabout/vector/as;->b:I

    goto :goto_9
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->g:Lcom/google/android/maps/driveabout/vector/cw;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->g:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cw;->f()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->g:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cw;->g()I

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/google/android/maps/driveabout/vector/ap;->o:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ap;->n:Lcom/google/android/maps/driveabout/vector/av;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->g:Lcom/google/android/maps/driveabout/vector/cw;

    :cond_1b
    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->d:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/di;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ap;->e:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bu;->c()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ap;->f:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cp;->c()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ap;->g:Lcom/google/android/maps/driveabout/vector/cw;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ap;->g:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cw;->h()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1f
    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 11

    const/4 v2, 0x0

    const/high16 v6, 0x3f80

    const/high16 v5, -0x4100

    const/high16 v3, 0x3f00

    const/4 v4, 0x0

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->c()Lcom/google/android/maps/driveabout/vector/cb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cb;->c()Z

    move-result v0

    if-nez v0, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->m:Lt/m;

    if-eqz v0, :cond_23

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->c()Lcom/google/android/maps/driveabout/vector/cb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ap;->m:Lt/m;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cb;->b(Lt/m;)Lcom/google/android/maps/driveabout/vector/cd;

    move-result-object v0

    if-eqz v0, :cond_12

    :cond_23
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->k()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ap;->b:Lt/af;

    invoke-virtual {v1}, Lt/af;->b()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ap;->g:Lcom/google/android/maps/driveabout/vector/cw;

    if-nez v1, :cond_3f

    invoke-direct {p0, p1, v2}, Lcom/google/android/maps/driveabout/vector/ap;->a(Lcom/google/android/maps/driveabout/vector/aT;I)V

    :cond_3f
    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->l:I

    if-eqz v0, :cond_69

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v2, 0x1702

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, v3, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    int-to-float v2, v0

    add-float/2addr v2, v6

    int-to-float v3, v0

    add-float/2addr v3, v6

    invoke-interface {v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, v5, v5, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v2, 0x1700

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    :cond_69
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ap;->g:Lcom/google/android/maps/driveabout/vector/cw;

    iget-object v2, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/cw;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ap;->d:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/di;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ap;->f:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/cp;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ap;->e:Lcom/google/android/maps/driveabout/vector/bu;

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v2}, Lcom/google/android/maps/driveabout/vector/bu;->a(Lcom/google/android/maps/driveabout/vector/aT;I)V

    if-eqz v0, :cond_12

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x1702

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    goto/16 :goto_12
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/ap;->c()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->d:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->e:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bu;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->f:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cp;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    return-void
.end method

.method public b()I
    .registers 4

    const/16 v0, 0x260

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ap;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/at;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/at;->h()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_9

    :cond_1c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->d:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/di;->d()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ap;->e:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bu;->d()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ap;->f:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/cp;->d()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/ap;->c()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->d:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->e:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bu;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ap;->f:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cp;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    return-void
.end method
