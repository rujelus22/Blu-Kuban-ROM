.class public final Lcom/google/android/youtube/app/ui/bm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/f;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:F

.field private final e:I

.field private final f:I

.field private final g:[I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:Landroid/graphics/Bitmap;

.field private final q:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>(IIII[IIIIIIIIIII)V
    .registers 20
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
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    if-lez p1, :cond_97

    const/4 v1, 0x1

    :goto_6
    const-string v2, "stackSize must be > 0"

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/k;->a(ZLjava/lang/Object;)V

    .line 82
    if-lez p2, :cond_9a

    const/4 v1, 0x1

    :goto_e
    const-string v2, "width must be > 0"

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/k;->a(ZLjava/lang/Object;)V

    .line 83
    if-lez p3, :cond_9d

    const/4 v1, 0x1

    :goto_16
    const-string v2, "height must be > 0"

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/k;->a(ZLjava/lang/Object;)V

    .line 84
    if-lez p4, :cond_a0

    const/4 v1, 0x1

    :goto_1e
    const-string v2, "scale must be > 0"

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/k;->a(ZLjava/lang/Object;)V

    .line 85
    array-length v1, p5

    if-lt v1, p1, :cond_a3

    const/4 v1, 0x1

    :goto_27
    const-string v2, "rotationAngles count must be greater or equal than stackSize"

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/k;->a(ZLjava/lang/Object;)V

    .line 88
    if-lez p9, :cond_a5

    const/4 v1, 0x1

    :goto_2f
    const-string v2, "outerBorder must be > 0"

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/k;->a(ZLjava/lang/Object;)V

    .line 89
    if-lez p11, :cond_a7

    const/4 v1, 0x1

    :goto_37
    const-string v2, "innerBorder must be > 0"

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/k;->a(ZLjava/lang/Object;)V

    .line 90
    if-lez p13, :cond_a9

    const/4 v1, 0x1

    :goto_3f
    const-string v2, "defaultBitmapWidth must be > 0"

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/k;->a(ZLjava/lang/Object;)V

    .line 91
    if-lez p14, :cond_ab

    const/4 v1, 0x1

    :goto_47
    const-string v2, "defaultBitmapHeight must be > 0"

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/k;->a(ZLjava/lang/Object;)V

    .line 93
    iput p1, p0, Lcom/google/android/youtube/app/ui/bm;->a:I

    .line 94
    iput p2, p0, Lcom/google/android/youtube/app/ui/bm;->b:I

    .line 95
    iput p3, p0, Lcom/google/android/youtube/app/ui/bm;->c:I

    .line 96
    int-to-float v1, p4

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/youtube/app/ui/bm;->d:F

    .line 97
    iput-object p5, p0, Lcom/google/android/youtube/app/ui/bm;->g:[I

    .line 98
    iput p6, p0, Lcom/google/android/youtube/app/ui/bm;->h:I

    .line 99
    iput p7, p0, Lcom/google/android/youtube/app/ui/bm;->e:I

    .line 100
    iput p8, p0, Lcom/google/android/youtube/app/ui/bm;->f:I

    .line 101
    iput p9, p0, Lcom/google/android/youtube/app/ui/bm;->i:I

    .line 102
    iput p10, p0, Lcom/google/android/youtube/app/ui/bm;->j:I

    .line 103
    iput p11, p0, Lcom/google/android/youtube/app/ui/bm;->k:I

    .line 104
    move/from16 v0, p12

    iput v0, p0, Lcom/google/android/youtube/app/ui/bm;->l:I

    .line 105
    move/from16 v0, p13

    iput v0, p0, Lcom/google/android/youtube/app/ui/bm;->m:I

    .line 106
    move/from16 v0, p14

    iput v0, p0, Lcom/google/android/youtube/app/ui/bm;->n:I

    .line 107
    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/youtube/app/ui/bm;->o:I

    .line 109
    iget v1, p0, Lcom/google/android/youtube/app/ui/bm;->m:I

    iget v2, p0, Lcom/google/android/youtube/app/ui/bm;->n:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v3, p0, Lcom/google/android/youtube/app/ui/bm;->o:I

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/bm;->p:Landroid/graphics/Bitmap;

    .line 110
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/ui/bm;->a(Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/ui/bm;->q:Landroid/graphics/Bitmap;

    .line 111
    return-void

    .line 81
    :cond_97
    const/4 v1, 0x0

    goto/16 :goto_6

    .line 82
    :cond_9a
    const/4 v1, 0x0

    goto/16 :goto_e

    .line 83
    :cond_9d
    const/4 v1, 0x0

    goto/16 :goto_16

    .line 84
    :cond_a0
    const/4 v1, 0x0

    goto/16 :goto_1e

    .line 85
    :cond_a3
    const/4 v1, 0x0

    goto :goto_27

    .line 88
    :cond_a5
    const/4 v1, 0x0

    goto :goto_2f

    .line 89
    :cond_a7
    const/4 v1, 0x0

    goto :goto_37

    .line 90
    :cond_a9
    const/4 v1, 0x0

    goto :goto_3f

    .line 91
    :cond_ab
    const/4 v1, 0x0

    goto :goto_47
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 19
    .parameter

    .prologue
    .line 47
    const v1, 0x7f0f000a

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v1, 0x7f0b0048

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v1, 0x7f0b0049

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v1, 0x7f0f000b

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const/high16 v1, 0x7f10

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    const v1, 0x7f0b0047

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v1, 0x7f0b004a

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v1, 0x7f0b004b

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const v1, 0x7f0b004c

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v1, 0x7f08003d

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    const v1, 0x7f0b004d

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    const v1, 0x7f08003e

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    const v1, 0x7f0b004e

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    const v1, 0x7f0b004f

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    const v1, 0x7f08003f

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v16}, Lcom/google/android/youtube/app/ui/bm;-><init>(IIII[IIIIIIIIIII)V

    .line 62
    return-void
.end method

.method public static a(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter

    .prologue
    .line 192
    new-instance v0, Lcom/google/android/youtube/app/ui/bm;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/ui/bm;-><init>(Landroid/content/res/Resources;)V

    iget-object v0, v0, Lcom/google/android/youtube/app/ui/bm;->q:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;IIILandroid/graphics/Canvas;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x4000

    const/4 v1, 0x0

    .line 143
    invoke-virtual {p5}, Landroid/graphics/Canvas;->save()I

    .line 145
    iget v0, p0, Lcom/google/android/youtube/app/ui/bm;->d:F

    iget v2, p0, Lcom/google/android/youtube/app/ui/bm;->h:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    .line 146
    iget v2, p0, Lcom/google/android/youtube/app/ui/bm;->d:F

    iget v3, p0, Lcom/google/android/youtube/app/ui/bm;->i:I

    iget v4, p0, Lcom/google/android/youtube/app/ui/bm;->k:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 148
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 150
    neg-int v4, p2

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    neg-int v5, p3

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 151
    iget v4, p0, Lcom/google/android/youtube/app/ui/bm;->m:I

    int-to-float v4, v4

    int-to-float v5, p2

    div-float/2addr v4, v5

    iget v5, p0, Lcom/google/android/youtube/app/ui/bm;->d:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/google/android/youtube/app/ui/bm;->n:I

    int-to-float v5, v5

    int-to-float v6, p3

    div-float/2addr v5, v6

    iget v6, p0, Lcom/google/android/youtube/app/ui/bm;->d:F

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 155
    iget-object v4, p0, Lcom/google/android/youtube/app/ui/bm;->g:[I

    aget v4, v4, p4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 158
    iget v4, p0, Lcom/google/android/youtube/app/ui/bm;->b:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    mul-int/lit8 v5, p4, 0x2

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iget v5, p0, Lcom/google/android/youtube/app/ui/bm;->c:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    mul-int/lit8 v6, p4, 0x2

    int-to-float v6, v6

    mul-float/2addr v0, v6

    sub-float v0, v5, v0

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 163
    iget v0, p0, Lcom/google/android/youtube/app/ui/bm;->b:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v4, p0, Lcom/google/android/youtube/app/ui/bm;->d:F

    iget v5, p0, Lcom/google/android/youtube/app/ui/bm;->m:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v0, v4

    div-int/lit8 v4, v2, 0x2

    int-to-float v4, v4

    add-float/2addr v0, v4

    iget v4, p0, Lcom/google/android/youtube/app/ui/bm;->e:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    iget v4, p0, Lcom/google/android/youtube/app/ui/bm;->c:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/google/android/youtube/app/ui/bm;->d:F

    iget v6, p0, Lcom/google/android/youtube/app/ui/bm;->n:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v2, v4, v2

    iget v4, p0, Lcom/google/android/youtube/app/ui/bm;->f:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 167
    invoke-virtual {p5, v3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 170
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 171
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 172
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 175
    iget v0, p0, Lcom/google/android/youtube/app/ui/bm;->i:I

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 176
    iget v0, p0, Lcom/google/android/youtube/app/ui/bm;->j:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    int-to-float v3, p2

    int-to-float v4, p3

    move-object v0, p5

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 180
    iget v0, p0, Lcom/google/android/youtube/app/ui/bm;->k:I

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 181
    iget v0, p0, Lcom/google/android/youtube/app/ui/bm;->l:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    int-to-float v3, p2

    int-to-float v4, p3

    move-object v0, p5

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 185
    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 186
    invoke-virtual {p5, p1, v1, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 188
    invoke-virtual {p5}, Landroid/graphics/Canvas;->restore()V

    .line 189
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 114
    iget v0, p0, Lcom/google/android/youtube/app/ui/bm;->a:I

    return v0
.end method

.method public final a(Ljava/util/List;)Landroid/graphics/Bitmap;
    .registers 9
    .parameter

    .prologue
    .line 124
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bm;->q:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_d

    .line 125
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bm;->q:Landroid/graphics/Bitmap;

    .line 139
    :goto_c
    return-object v0

    .line 128
    :cond_d
    iget v0, p0, Lcom/google/android/youtube/app/ui/bm;->b:I

    iget v1, p0, Lcom/google/android/youtube/app/ui/bm;->c:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 130
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 131
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 132
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bm;->p:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/google/android/youtube/app/ui/bm;->m:I

    iget v3, p0, Lcom/google/android/youtube/app/ui/bm;->n:I

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/ui/bm;->a(Landroid/graphics/Bitmap;IIILandroid/graphics/Canvas;)V

    :cond_2d
    move-object v0, v6

    .line 139
    goto :goto_c

    .line 134
    :cond_2f
    iget v0, p0, Lcom/google/android/youtube/app/ui/bm;->a:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    :goto_3b
    if-ltz v4, :cond_2d

    .line 135
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 136
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/ui/bm;->a(Landroid/graphics/Bitmap;IIILandroid/graphics/Canvas;)V

    .line 134
    add-int/lit8 v4, v4, -0x1

    goto :goto_3b
.end method
