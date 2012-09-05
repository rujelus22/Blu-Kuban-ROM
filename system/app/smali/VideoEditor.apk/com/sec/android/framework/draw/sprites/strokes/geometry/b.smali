.class public final Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static synthetic f:[I


# instance fields
.field private a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

.field private b:Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

.field private c:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(FF)F
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 36
    invoke-static {}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;->a()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;->b:Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    invoke-virtual {v2}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_22

    move p1, v0

    .line 51
    :goto_11
    :pswitch_11
    iget v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;->c:F

    mul-float/2addr v0, p1

    return v0

    .line 38
    :pswitch_15
    const/high16 p1, 0x3f80

    .line 39
    goto :goto_11

    :pswitch_18
    move p1, p2

    .line 45
    goto :goto_11

    .line 47
    :pswitch_1a
    add-float v0, p1, p2

    const/high16 v1, 0x4000

    div-float p1, v0, v1

    goto :goto_11

    .line 36
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_15
        :pswitch_11
        :pswitch_18
        :pswitch_1a
    .end packed-switch
.end method

.method private static synthetic a()[I
    .registers 3

    .prologue
    .line 9
    sget-object v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;->f:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;->values()[Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;->Constant:Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_39

    :goto_15
    :try_start_15
    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;->Pressure:Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_37

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;->Speed:Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_35

    :goto_27
    :try_start_27
    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;->SpeedAndPressure:Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_33

    :goto_30
    sput-object v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;->f:[I

    goto :goto_4

    :catch_33
    move-exception v1

    goto :goto_30

    :catch_35
    move-exception v1

    goto :goto_27

    :catch_37
    move-exception v1

    goto :goto_1e

    :catch_39
    move-exception v1

    goto :goto_15
.end method


# virtual methods
.method public final a(FFF)F
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_4f

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_4f

    const v1, 0x3dcccccd

    move v2, v1

    :goto_e
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-nez v0, :cond_dc

    const v1, 0x3dcccccd

    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getStrokePoints()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1d6

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getPressureParameters()[F

    move-result-object v0

    const/4 v2, 0x1

    aget v0, v0, v2

    const v2, 0x3f19999a

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v2}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getPressureParameters()[F

    move-result-object v2

    const/4 v3, 0x2

    aget v2, v2, v3

    const v3, 0x3ecccccd

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1be

    const v0, 0x3f19999a

    :goto_44
    invoke-direct {p0, v0, v1}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;->a(FF)F

    move-result v0

    :cond_48
    :goto_48
    const/high16 v1, 0x3f80

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    :cond_4f
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getSpeedParameters()[F

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v0, v0, v4

    float-to-double v4, v1

    mul-float v1, p1, p1

    mul-float v6, p2, p2

    add-float/2addr v1, v6

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    float-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-float v4, v4

    cmpg-float v1, v4, v2

    if-gez v1, :cond_c0

    const/high16 v0, 0x3f80

    move v1, v0

    :goto_7d
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->isTrackingPoints()Z

    move-result v0

    if-eqz v0, :cond_bd

    sget-object v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;->d:Ljava/util/TreeMap;

    if-eqz v0, :cond_bd

    const/4 v0, 0x0

    const/high16 v2, 0x42c8

    mul-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    sget-object v3, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;->d:Ljava/util/TreeMap;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ae

    sget-object v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;->d:Ljava/util/TreeMap;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_ae
    add-int/lit8 v0, v0, 0x1

    sget-object v3, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;->d:Ljava/util/TreeMap;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_bd
    move v2, v1

    goto/16 :goto_e

    :cond_c0
    cmpg-float v1, v4, v3

    if-gez v1, :cond_c8

    const/high16 v0, 0x3f80

    move v1, v0

    goto :goto_7d

    :cond_c8
    const v1, 0x3e4ccccd

    const v2, 0x3f4ccccd

    sub-float v5, v4, v3

    sub-float/2addr v0, v3

    div-float v0, v5, v0

    const v3, 0x3f4ccccd

    mul-float/2addr v0, v3

    sub-float v0, v2, v0

    add-float/2addr v0, v1

    move v1, v0

    goto :goto_7d

    :cond_dc
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getInputMethod()Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

    move-result-object v0

    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;->Hand:Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

    if-ne v0, v1, :cond_f9

    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getType()Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    move-result-object v0

    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Brush:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    if-eq v0, v1, :cond_f4

    const/high16 v1, 0x3f80

    goto/16 :goto_16

    :cond_f4
    const v1, 0x3f99999a

    goto/16 :goto_16

    :cond_f9
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getPressureParameters()[F

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v0, v0, v5

    invoke-static {v0, p3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v6}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getType()Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    move-result-object v6

    sget-object v7, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Brush:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    if-eq v6, v7, :cond_188

    cmpg-float v6, v5, v3

    if-gez v6, :cond_172

    const v0, 0x3dcccccd

    sub-float v4, v5, v1

    sub-float v1, v3, v1

    div-float v1, v4, v1

    const v3, 0x3f666666

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    move v1, v0

    :goto_130
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->isTrackingPoints()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;->e:Ljava/util/TreeMap;

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    const/high16 v3, 0x42c8

    mul-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v3, v3

    const/high16 v4, 0x42c8

    div-float/2addr v3, v4

    sget-object v4, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;->e:Ljava/util/TreeMap;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_161

    sget-object v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;->e:Ljava/util/TreeMap;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_161
    add-int/lit8 v0, v0, 0x1

    sget-object v4, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;->e:Ljava/util/TreeMap;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_16

    :cond_172
    cmpg-float v1, v5, v4

    if-gez v1, :cond_17a

    const/high16 v0, 0x3f80

    move v1, v0

    goto :goto_130

    :cond_17a
    const/high16 v1, 0x3f80

    sub-float v3, v5, v4

    sub-float/2addr v0, v4

    div-float v0, v3, v0

    const v3, 0x3e4ccccd

    mul-float/2addr v0, v3

    add-float/2addr v0, v1

    move v1, v0

    goto :goto_130

    :cond_188
    cmpg-float v6, v5, v3

    if-gez v6, :cond_19c

    const v0, 0x3f19999a

    sub-float v4, v5, v1

    sub-float v1, v3, v1

    div-float v1, v4, v1

    const v3, 0x3e99999a

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    move v1, v0

    goto :goto_130

    :cond_19c
    cmpg-float v1, v5, v4

    if-gez v1, :cond_1af

    const v0, 0x3f19999a

    sub-float v1, v5, v3

    sub-float v3, v4, v3

    div-float/2addr v1, v3

    const v3, 0x3ecccccd

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    move v1, v0

    goto :goto_130

    :cond_1af
    const/high16 v1, 0x3f80

    sub-float v3, v5, v4

    sub-float/2addr v0, v4

    div-float v0, v3, v0

    const v3, 0x3e99999a

    mul-float/2addr v0, v3

    add-float/2addr v0, v1

    move v1, v0

    goto/16 :goto_130

    :cond_1be
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getType()Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    move-result-object v0

    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Brush:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    if-eq v0, v1, :cond_1ce

    const/high16 v0, 0x3f00

    const/high16 v1, 0x3f00

    goto/16 :goto_44

    :cond_1ce
    const v0, 0x3ecccccd

    const v1, 0x3ecccccd

    goto/16 :goto_44

    :cond_1d6
    iget-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getPreviousPointSize()F

    move-result v3

    invoke-direct {p0, v2, v1}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;->a(FF)F

    move-result v0

    add-float/2addr v0, v3

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    sub-float v1, v3, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1fe

    const/high16 v1, 0x3f80

    cmpl-float v0, v3, v0

    if-lez v0, :cond_1fc

    const/4 v0, -0x1

    :goto_1f7
    int-to-float v0, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    goto/16 :goto_48

    :cond_1fc
    const/4 v0, 0x1

    goto :goto_1f7

    :cond_1fe
    cmpl-float v1, v3, v0

    if-lez v1, :cond_48

    const/high16 v1, 0x3f80

    cmpg-float v1, v3, v1

    if-gez v1, :cond_48

    const/high16 v1, 0x3f00

    cmpl-float v0, v3, v0

    if-lez v0, :cond_214

    const/4 v0, -0x1

    :goto_20f
    int-to-float v0, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    goto/16 :goto_48

    :cond_214
    const/4 v0, 0x1

    goto :goto_20f
.end method

.method public final a(Lcom/sec/android/framework/draw/sprites/StrokeSprite;)V
    .registers 3
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;->a:Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    .line 18
    invoke-virtual {p1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getThicknessParameter()Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;->b:Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    .line 19
    invoke-virtual {p1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getPaint()Lcom/sec/android/framework/draw/sprites/strokes/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/strokes/f;->getStrokeWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;->c:F

    .line 21
    invoke-virtual {p1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->isTrackingPoints()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 22
    sget-object v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;->d:Ljava/util/TreeMap;

    if-nez v0, :cond_23

    .line 23
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;->d:Ljava/util/TreeMap;

    .line 24
    :cond_23
    sget-object v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;->e:Ljava/util/TreeMap;

    if-nez v0, :cond_2e

    .line 25
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/b;->e:Ljava/util/TreeMap;

    .line 27
    :cond_2e
    return-void
.end method
