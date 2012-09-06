.class public Lcom/google/android/maps/driveabout/vector/an;
.super Lcom/google/android/maps/driveabout/vector/Z;
.source "SourceFile"


# static fields
.field static b:F

.field private static final p:Ljava/util/Map;


# instance fields
.field private c:Ln/am;

.field private final d:Ljava/util/List;

.field private final e:Lcom/google/android/maps/driveabout/vector/dY;

.field private final f:Lcom/google/android/maps/driveabout/vector/bI;

.field private final g:Lcom/google/android/maps/driveabout/vector/cM;

.field private h:Lcom/google/android/maps/driveabout/vector/cV;

.field private final i:I

.field private final j:I

.field private final k:Z

.field private final l:F

.field private m:I

.field private n:Ln/m;

.field private o:Lcom/google/android/maps/driveabout/vector/at;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 96
    const/high16 v0, 0x3f80

    sput v0, Lcom/google/android/maps/driveabout/vector/an;->b:F

    .line 143
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/an;->p:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ln/am;Lcom/google/android/maps/driveabout/vector/aq;Ljava/util/List;Ljava/util/Set;I)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 642
    invoke-direct {p0, p4}, Lcom/google/android/maps/driveabout/vector/Z;-><init>(Ljava/util/Set;)V

    .line 643
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/an;->c:Ln/am;

    .line 655
    new-instance v0, Lcom/google/android/maps/driveabout/vector/ec;

    iget v3, p2, Lcom/google/android/maps/driveabout/vector/aq;->a:I

    invoke-direct {v0, v3, v1}, Lcom/google/android/maps/driveabout/vector/ec;-><init>(IZ)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/an;->e:Lcom/google/android/maps/driveabout/vector/dY;

    .line 656
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bK;

    iget v3, p2, Lcom/google/android/maps/driveabout/vector/aq;->b:I

    invoke-direct {v0, v3, v1}, Lcom/google/android/maps/driveabout/vector/bK;-><init>(IZ)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/an;->f:Lcom/google/android/maps/driveabout/vector/bI;

    .line 657
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cP;

    iget v3, p2, Lcom/google/android/maps/driveabout/vector/aq;->a:I

    invoke-direct {v0, v3, v1}, Lcom/google/android/maps/driveabout/vector/cP;-><init>(IZ)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/an;->g:Lcom/google/android/maps/driveabout/vector/cM;

    .line 660
    iput-object p3, p0, Lcom/google/android/maps/driveabout/vector/an;->d:Ljava/util/List;

    .line 665
    const/high16 v3, 0x3f80

    .line 666
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/an;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ar;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ar;->e()I

    move-result v4

    .line 667
    if-le v4, v1, :cond_5e

    move v0, v1

    :goto_35
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/an;->k:Z

    .line 668
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/an;->k:Z

    if-eqz v0, :cond_60

    .line 671
    div-int/lit8 v0, v4, 0x10

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 672
    mul-int/lit8 v4, v0, 0x2

    .line 673
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/an;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ar;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ar;->d()F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 674
    add-int/2addr v4, v2

    move v0, v2

    .line 683
    :goto_57
    shl-int v5, v1, v0

    if-ge v5, v4, :cond_84

    .line 684
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    :cond_5e
    move v0, v2

    .line 667
    goto :goto_35

    .line 676
    :cond_60
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/an;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v4, v2

    :goto_67
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ar;

    .line 677
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ar;->e()I

    move-result v6

    .line 678
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ar;->d()F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 679
    add-int v3, v4, v6

    move v4, v3

    move v3, v0

    goto :goto_67

    .line 686
    :cond_84
    iput v0, p0, Lcom/google/android/maps/driveabout/vector/an;->i:I

    .line 690
    sget v0, Lcom/google/android/maps/driveabout/vector/an;->b:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    const/high16 v1, 0x4000

    add-float/2addr v0, v1

    .line 691
    float-to-int v1, v0

    const/16 v3, 0x8

    invoke-static {v1, v3}, Lcom/google/android/maps/driveabout/vector/cV;->a(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/an;->j:I

    .line 692
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/an;->j:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/an;->l:F

    .line 694
    new-instance v1, Lcom/google/android/maps/driveabout/vector/at;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/an;->d:Ljava/util/List;

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/an;->l:F

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/an;->i:I

    iget-boolean v6, p0, Lcom/google/android/maps/driveabout/vector/an;->k:Z

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/google/android/maps/driveabout/vector/at;-><init>(Ljava/util/List;FIZ)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/an;->o:Lcom/google/android/maps/driveabout/vector/at;

    .line 696
    invoke-virtual {p1}, Ln/am;->h()Ln/aa;

    move-result-object v1

    invoke-virtual {v1}, Ln/aa;->g()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x4380

    div-float/2addr v0, v1

    const/high16 v1, 0x3f00

    mul-float v4, v0, v1

    .line 698
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bc;->a()Lcom/google/android/maps/driveabout/vector/bc;

    move-result-object v5

    move v3, v2

    .line 699
    :goto_c4
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_db

    .line 700
    invoke-virtual {p1}, Ln/am;->h()Ln/aa;

    move-result-object v1

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/maps/driveabout/vector/ar;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/an;->a(Ln/aa;Lcom/google/android/maps/driveabout/vector/ar;IFLcom/google/android/maps/driveabout/vector/bc;)V

    .line 699
    add-int/lit8 v3, v3, 0x1

    goto :goto_c4

    .line 702
    :cond_db
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/an;->c:Ln/am;

    invoke-direct {p0, p5, v0}, Lcom/google/android/maps/driveabout/vector/an;->a(ILn/am;)V

    .line 703
    return-void

    :cond_e1
    move v0, v2

    goto/16 :goto_57
.end method

.method synthetic constructor <init>(Ln/am;Lcom/google/android/maps/driveabout/vector/aq;Ljava/util/List;Ljava/util/Set;ILcom/google/android/maps/driveabout/vector/ao;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct/range {p0 .. p5}, Lcom/google/android/maps/driveabout/vector/an;-><init>(Ln/am;Lcom/google/android/maps/driveabout/vector/aq;Ljava/util/List;Ljava/util/Set;I)V

    return-void
.end method

.method private static declared-synchronized a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/at;)Lcom/google/android/maps/driveabout/vector/cV;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 614
    const-class v1, Lcom/google/android/maps/driveabout/vector/an;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/maps/driveabout/vector/an;->p:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_17

    .line 615
    if-nez v0, :cond_10

    .line 616
    const/4 v0, 0x0

    .line 618
    :goto_e
    monitor-exit v1

    return-object v0

    :cond_10
    :try_start_10
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cV;
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_17

    goto :goto_e

    .line 614
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(F)V
    .registers 1
    .parameter

    .prologue
    .line 1069
    sput p0, Lcom/google/android/maps/driveabout/vector/an;->b:F

    .line 1070
    return-void
.end method

.method private a(ILn/am;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1043
    return-void
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/D;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x1

    .line 707
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 708
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aU;->o()V

    .line 709
    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 713
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x2100

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 714
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v4, v4, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 716
    return-void
.end method

.method private static declared-synchronized a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/at;Lcom/google/android/maps/driveabout/vector/cV;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 622
    const-class v1, Lcom/google/android/maps/driveabout/vector/an;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/maps/driveabout/vector/an;->p:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 623
    if-nez v0, :cond_16

    .line 624
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    .line 625
    sget-object v2, Lcom/google/android/maps/driveabout/vector/an;->p:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    :cond_16
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    .line 628
    monitor-exit v1

    return-void

    .line 622
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/util/ArrayList;Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFI)V
    .registers 25
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 884
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    move/from16 v0, p6

    int-to-float v2, v0

    div-float/2addr v1, v2

    const/high16 v2, 0x4180

    mul-float v12, v1, v2

    .line 886
    const/4 v1, 0x0

    move v7, v1

    :goto_f
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_b0

    .line 887
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/as;

    .line 888
    iget v2, v1, Lcom/google/android/maps/driveabout/vector/as;->a:F

    mul-float v2, v2, p5

    add-float v13, p3, v2

    .line 889
    iget v2, v1, Lcom/google/android/maps/driveabout/vector/as;->b:F

    mul-float v2, v2, p5

    const/high16 v3, 0x3f00

    mul-float v14, v2, v3

    .line 890
    iget v2, v1, Lcom/google/android/maps/driveabout/vector/as;->c:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 891
    iget-object v15, v1, Lcom/google/android/maps/driveabout/vector/as;->d:[I

    .line 892
    if-nez v15, :cond_64

    .line 893
    const/4 v1, 0x1

    move/from16 v0, p6

    if-ne v0, v1, :cond_52

    .line 894
    sub-float v2, v13, v14

    const/high16 v1, 0x3f00

    add-float v3, p4, v1

    add-float v4, v13, v14

    const/high16 v1, 0x3f00

    add-float v5, p4, v1

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 886
    :cond_4e
    :goto_4e
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_f

    .line 897
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

    .line 902
    :cond_64
    const/4 v3, 0x0

    .line 903
    const/4 v2, 0x1

    move/from16 v4, p4

    .line 905
    :goto_68
    move/from16 v0, p6

    if-ge v3, v0, :cond_4e

    .line 907
    const/4 v1, 0x0

    move v8, v1

    move v1, v2

    move v2, v3

    move v3, v4

    :goto_71
    array-length v4, v15

    rem-int/lit8 v4, v4, 0x2

    if-gt v8, v4, :cond_ac

    .line 908
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

    .line 909
    move/from16 v0, v17

    int-to-float v1, v0

    const/high16 v2, 0x4180

    div-float/2addr v1, v2

    mul-float/2addr v1, v12

    add-float v5, v3, v1

    .line 911
    if-eqz v9, :cond_99

    .line 912
    sub-float v2, v13, v14

    add-float v4, v13, v14

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 916
    :cond_99
    if-nez v9, :cond_a4

    const/4 v1, 0x1

    .line 917
    :goto_9c
    add-int v10, v10, v17

    .line 908
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    move v9, v1

    move v3, v5

    goto :goto_7d

    .line 916
    :cond_a4
    const/4 v1, 0x0

    goto :goto_9c

    .line 907
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

    .line 923
    :cond_b0
    return-void
.end method

.method static a(Ljava/util/List;Landroid/graphics/Bitmap;FZ)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 860
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 861
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 862
    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 863
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 864
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f00

    mul-float/2addr v3, v4

    .line 868
    if-eqz p3, :cond_42

    move v8, v0

    .line 869
    :goto_1e
    const/4 v0, 0x0

    move v9, v0

    :goto_20
    if-ge v9, v8, :cond_48

    .line 870
    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/maps/driveabout/vector/ar;

    .line 871
    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/ar;->e()I

    move-result v6

    .line 872
    int-to-float v4, v9

    .line 873
    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/ar;->f()Ljava/util/ArrayList;

    move-result-object v0

    move v5, p2

    invoke-static/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/an;->a(Ljava/util/ArrayList;Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFI)V

    .line 875
    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/ar;->g()Ljava/util/ArrayList;

    move-result-object v0

    move v5, p2

    invoke-static/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/an;->a(Ljava/util/ArrayList;Landroid/graphics/Canvas;Landroid/graphics/Paint;FFFI)V

    .line 869
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_20

    .line 868
    :cond_42
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v8, v0

    goto :goto_1e

    .line 878
    :cond_48
    return-void
.end method

.method private a(Ln/aa;Lcom/google/android/maps/driveabout/vector/ar;IFLcom/google/android/maps/driveabout/vector/bc;)V
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 968
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/ar;->a()Ln/U;

    move-result-object v1

    .line 969
    invoke-virtual {v1}, Ln/U;->b()I

    move-result v10

    .line 972
    const/4 v0, 0x2

    if-ge v10, v0, :cond_c

    .line 1039
    :goto_b
    return-void

    .line 976
    :cond_c
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/ar;->c()Ln/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/an;->n:Ln/m;

    .line 981
    invoke-virtual {p1}, Ln/aa;->d()Ln/Q;

    move-result-object v4

    .line 982
    invoke-virtual {p1}, Ln/aa;->g()I

    move-result v5

    .line 1014
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/an;->k:Z

    if-nez v0, :cond_3e

    .line 1015
    const/4 v3, 0x1

    const/high16 v6, 0x3f80

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/an;->e:Lcom/google/android/maps/driveabout/vector/dY;

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/an;->f:Lcom/google/android/maps/driveabout/vector/bI;

    const/4 v9, 0x0

    move-object/from16 v0, p5

    move v2, p4

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/maps/driveabout/vector/bc;->a(Ln/U;FZLn/Q;IFLcom/google/android/maps/driveabout/vector/ea;Lcom/google/android/maps/driveabout/vector/bJ;Lcom/google/android/maps/driveabout/vector/cO;)V

    .line 1017
    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/an;->i:I

    const/4 v0, 0x1

    new-array v4, v0, [I

    const/4 v0, 0x0

    aput p3, v4, v0

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/an;->g:Lcom/google/android/maps/driveabout/vector/cM;

    move-object/from16 v0, p5

    move v1, v10

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bc;->a(IZI[ILcom/google/android/maps/driveabout/vector/cO;)V

    goto :goto_b

    .line 1032
    :cond_3e
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/ar;->e()I

    move-result v0

    .line 1033
    const/high16 v2, 0x4500

    int-to-float v0, v0

    div-float v6, v2, v0

    .line 1035
    const/4 v3, 0x1

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/an;->e:Lcom/google/android/maps/driveabout/vector/dY;

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/an;->f:Lcom/google/android/maps/driveabout/vector/bI;

    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/an;->g:Lcom/google/android/maps/driveabout/vector/cM;

    move-object/from16 v0, p5

    move v2, p4

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/maps/driveabout/vector/bc;->a(Ln/U;FZLn/Q;IFLcom/google/android/maps/driveabout/vector/ea;Lcom/google/android/maps/driveabout/vector/bJ;Lcom/google/android/maps/driveabout/vector/cO;)V

    goto :goto_b
.end method

.method static a(Ln/U;Lcom/google/android/maps/driveabout/vector/aq;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 947
    invoke-virtual {p0}, Ln/U;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 948
    if-ge v2, v1, :cond_c

    move v0, v1

    .line 958
    :cond_b
    :goto_b
    return v0

    .line 952
    :cond_c
    mul-int/lit8 v3, v2, 0x5

    .line 953
    iget v4, p1, Lcom/google/android/maps/driveabout/vector/aq;->a:I

    if-lez v4, :cond_19

    iget v4, p1, Lcom/google/android/maps/driveabout/vector/aq;->a:I

    add-int/2addr v4, v3

    const/16 v5, 0x4000

    if-gt v4, v5, :cond_b

    .line 956
    :cond_19
    iget v4, p1, Lcom/google/android/maps/driveabout/vector/aq;->a:I

    add-int/2addr v3, v4

    iput v3, p1, Lcom/google/android/maps/driveabout/vector/aq;->a:I

    .line 957
    iget v3, p1, Lcom/google/android/maps/driveabout/vector/aq;->b:I

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x3

    invoke-virtual {p0}, Ln/U;->e()Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v0, 0x3

    :cond_2d
    add-int/2addr v0, v2

    add-int/2addr v0, v3

    iput v0, p1, Lcom/google/android/maps/driveabout/vector/aq;->b:I

    move v0, v1

    .line 958
    goto :goto_b
.end method

.method private static declared-synchronized b(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/at;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 631
    const-class v1, Lcom/google/android/maps/driveabout/vector/an;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/maps/driveabout/vector/an;->p:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 632
    if-eqz v0, :cond_10

    .line 633
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 638
    :cond_10
    monitor-exit v1

    return-void

    .line 631
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c()Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    .line 806
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/an;->j:I

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/an;->i:I

    shl-int/2addr v1, v2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 808
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 810
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/an;->d:Ljava/util/List;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/an;->l:F

    iget-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/an;->k:Z

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/maps/driveabout/vector/an;->a(Ljava/util/List;Landroid/graphics/Bitmap;FZ)V

    .line 812
    return-object v0
.end method

.method private c(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 777
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/an;->o:Lcom/google/android/maps/driveabout/vector/at;

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/vector/an;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/at;)Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/an;->h:Lcom/google/android/maps/driveabout/vector/cV;

    .line 779
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/an;->h:Lcom/google/android/maps/driveabout/vector/cV;

    if-nez v0, :cond_32

    .line 789
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/an;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 791
    new-instance v1, Lcom/google/android/maps/driveabout/vector/cV;

    invoke-direct {v1, p1}, Lcom/google/android/maps/driveabout/vector/cV;-><init>(Lcom/google/android/maps/driveabout/vector/aU;)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/an;->h:Lcom/google/android/maps/driveabout/vector/cV;

    .line 792
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/an;->o:Lcom/google/android/maps/driveabout/vector/at;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/an;->h:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-static {p1, v1, v2}, Lcom/google/android/maps/driveabout/vector/an;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/at;Lcom/google/android/maps/driveabout/vector/cV;)V

    .line 793
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/an;->h:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v1, v3}, Lcom/google/android/maps/driveabout/vector/cV;->c(Z)V

    .line 794
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/an;->h:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v1, v3}, Lcom/google/android/maps/driveabout/vector/cV;->b(Z)V

    .line 795
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/an;->h:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/cV;->b(Landroid/graphics/Bitmap;)V

    .line 796
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 800
    :goto_31
    return-void

    .line 798
    :cond_32
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/an;->h:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->f()V

    goto :goto_31
.end method

.method private d(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter

    .prologue
    .line 816
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/an;->h:Lcom/google/android/maps/driveabout/vector/cV;

    if-eqz v0, :cond_19

    .line 817
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/an;->h:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->g()V

    .line 818
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/an;->h:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->h()I

    move-result v0

    if-nez v0, :cond_16

    .line 819
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/an;->o:Lcom/google/android/maps/driveabout/vector/at;

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/vector/an;->b(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/at;)V

    .line 821
    :cond_16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/an;->h:Lcom/google/android/maps/driveabout/vector/cV;

    .line 823
    :cond_19
    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/an;->e:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dY;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/an;->f:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bI;->c()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/an;->g:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cM;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 1081
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/an;->h:Lcom/google/android/maps/driveabout/vector/cV;

    if-eqz v1, :cond_1f

    .line 1082
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/an;->h:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cV;->i()I

    move-result v1

    add-int/2addr v0, v1

    .line 1084
    :cond_1f
    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter

    .prologue
    .line 842
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/an;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 849
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/an;->e:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 850
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/an;->f:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bI;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 851
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/an;->g:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 853
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x1700

    const/high16 v6, -0x4100

    const/high16 v0, 0x3f80

    const/high16 v4, 0x3f00

    const/4 v5, 0x0

    .line 725
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->c()Lcom/google/android/maps/driveabout/vector/cv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cv;->c()Z

    move-result v1

    if-nez v1, :cond_14

    .line 769
    :cond_13
    :goto_13
    return-void

    .line 734
    :cond_14
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/an;->n:Ln/m;

    if-eqz v1, :cond_24

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->c()Lcom/google/android/maps/driveabout/vector/cv;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/an;->n:Ln/m;

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/cv;->b(Ln/m;)Lcom/google/android/maps/driveabout/vector/cx;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 739
    :cond_24
    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->l()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/an;->c:Ln/am;

    invoke-virtual {v3}, Ln/am;->b()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 742
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/an;->h:Lcom/google/android/maps/driveabout/vector/cV;

    if-nez v2, :cond_41

    .line 743
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/an;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 745
    :cond_41
    iput v1, p0, Lcom/google/android/maps/driveabout/vector/an;->m:I

    .line 747
    if-eqz v1, :cond_6d

    .line 749
    iget-object v2, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0x1702

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 750
    iget-object v2, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 751
    iget-object v2, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v4, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 753
    iget-object v2, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    int-to-float v3, v1

    add-float/2addr v3, v0

    iget-boolean v4, p0, Lcom/google/android/maps/driveabout/vector/an;->k:Z

    if-eqz v4, :cond_60

    int-to-float v4, v1

    add-float/2addr v0, v4

    :cond_60
    invoke-interface {v2, v3, v0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 754
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v6, v6, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 755
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v7}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 758
    :cond_6d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/an;->h:Lcom/google/android/maps/driveabout/vector/cV;

    iget-object v2, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/cV;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 759
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/an;->e:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 760
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/an;->g:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 761
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/an;->f:Lcom/google/android/maps/driveabout/vector/bI;

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/aU;I)V

    .line 763
    if-eqz v1, :cond_13

    .line 765
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x1702

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 766
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 767
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v7}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    goto/16 :goto_13
.end method

.method public b()I
    .registers 4

    .prologue
    .line 1089
    const/16 v0, 0x260

    .line 1090
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/an;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/ar;

    .line 1091
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ar;->h()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_9

    .line 1096
    :cond_1c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/an;->e:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dY;->d()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/an;->f:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bI;->d()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/an;->g:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/cM;->c()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 1099
    return v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter

    .prologue
    .line 827
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/an;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 834
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/an;->e:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 835
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/an;->f:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bI;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 836
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/an;->g:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 838
    return-void
.end method
