.class final Lcom/anddoes/launcher/kw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:[I

.field static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static final g:Landroid/graphics/Paint;

.field private static final h:Landroid/graphics/Paint;

.field private static final i:Landroid/graphics/Paint;

.field private static final j:Landroid/graphics/Paint;

.field private static final k:Landroid/graphics/Rect;

.field private static final l:Landroid/graphics/Canvas;

.field private static final m:Landroid/graphics/Paint;

.field private static final n:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v0, -0x1

    .line 44
    sput v0, Lcom/anddoes/launcher/kw;->c:I

    .line 45
    sput v0, Lcom/anddoes/launcher/kw;->d:I

    .line 46
    sput v0, Lcom/anddoes/launcher/kw;->e:I

    .line 47
    sput v0, Lcom/anddoes/launcher/kw;->f:I

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/anddoes/launcher/kw;->g:Landroid/graphics/Paint;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/anddoes/launcher/kw;->h:Landroid/graphics/Paint;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/anddoes/launcher/kw;->i:Landroid/graphics/Paint;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/anddoes/launcher/kw;->j:Landroid/graphics/Paint;

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/anddoes/launcher/kw;->k:Landroid/graphics/Rect;

    .line 54
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 57
    sput-object v0, Lcom/anddoes/launcher/kw;->l:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    .line 58
    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    .line 57
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_58

    sput-object v0, Lcom/anddoes/launcher/kw;->a:[I

    .line 61
    const/4 v0, 0x0

    sput v0, Lcom/anddoes/launcher/kw;->b:I

    .line 186
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/anddoes/launcher/kw;->m:Landroid/graphics/Paint;

    .line 187
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/anddoes/launcher/kw;->n:Landroid/graphics/Rect;

    .line 41
    return-void

    .line 60
    nop

    :array_58
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0x0t 0xfft 0x0t 0xfft
        0xfft 0x0t 0x0t 0xfft
    .end array-data
.end method

.method static a(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 69
    sget v0, Lcom/anddoes/launcher/kw;->e:I

    .line 70
    sget v1, Lcom/anddoes/launcher/kw;->f:I

    .line 71
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 72
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 73
    if-le v2, v0, :cond_1b

    if-le v3, v1, :cond_1b

    .line 76
    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 77
    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    .line 75
    invoke-static {p0, v2, v3, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 84
    :cond_1a
    :goto_1a
    return-object p0

    .line 79
    :cond_1b
    if-ne v2, v0, :cond_1f

    if-eq v3, v1, :cond_1a

    .line 84
    :cond_1f
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v0, p1}, Lcom/anddoes/launcher/kw;->a(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1a
.end method

.method static a(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 92
    const/high16 v0, 0x3f80

    invoke-static {p0, p1, v1, v1, v0}, Lcom/anddoes/launcher/kw;->a(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .registers 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    sget-object v5, Lcom/anddoes/launcher/kw;->l:Landroid/graphics/Canvas;

    monitor-enter v5

    .line 101
    :try_start_3
    sget v1, Lcom/anddoes/launcher/kw;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    .line 102
    invoke-static {p1}, Lcom/anddoes/launcher/kw;->a(Landroid/content/Context;)V

    .line 105
    :cond_b
    sget v4, Lcom/anddoes/launcher/kw;->c:I

    .line 106
    sget v2, Lcom/anddoes/launcher/kw;->d:I

    .line 108
    instance-of v1, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v1, :cond_95

    .line 109
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v1, v0

    .line 110
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 111
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 120
    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 121
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 123
    if-lez v3, :cond_c8

    if-lez v1, :cond_c8

    .line 125
    if-lt v4, v3, :cond_2d

    if-ge v2, v1, :cond_c1

    .line 127
    :cond_2d
    int-to-float v6, v3

    int-to-float v7, v1

    div-float/2addr v6, v7

    .line 128
    if-le v3, v1, :cond_b7

    .line 129
    int-to-float v1, v4

    div-float/2addr v1, v6

    float-to-int v1, v1

    move v2, v4

    .line 141
    :goto_36
    sget v3, Lcom/anddoes/launcher/kw;->e:I

    .line 142
    sget v4, Lcom/anddoes/launcher/kw;->f:I

    .line 145
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 144
    invoke-static {v3, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 146
    sget-object v7, Lcom/anddoes/launcher/kw;->l:Landroid/graphics/Canvas;

    .line 147
    invoke-virtual {v7, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 149
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 150
    if-eqz p2, :cond_60

    .line 151
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 152
    invoke-virtual {p2, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 153
    int-to-float v8, v3

    mul-float v8, v8, p4

    int-to-float v9, v2

    div-float/2addr v8, v9

    .line 154
    div-int/lit8 v9, v3, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, v4, 0x2

    int-to-float v10, v10

    invoke-virtual {v7, v8, v8, v9, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 157
    :cond_60
    sub-int v8, v3, v2

    div-int/lit8 v8, v8, 0x2

    .line 158
    sub-int v9, v4, v1

    div-int/lit8 v9, v9, 0x2

    .line 169
    sget-object v10, Lcom/anddoes/launcher/kw;->k:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 170
    add-int/2addr v2, v8

    add-int/2addr v1, v9

    invoke-virtual {p0, v8, v9, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 171
    invoke-virtual {p0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 172
    sget-object v1, Lcom/anddoes/launcher/kw;->k:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 174
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 175
    if-eqz p3, :cond_8f

    .line 176
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 177
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 180
    :cond_8f
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 182
    monitor-exit v5

    return-object v6

    .line 112
    :cond_95
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1d

    .line 114
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v1, v0

    .line 115
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 116
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v3

    if-nez v3, :cond_1d

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V
    :try_end_b2
    .catchall {:try_start_3 .. :try_end_b2} :catchall_b4

    goto/16 :goto_1d

    .line 100
    :catchall_b4
    move-exception v1

    monitor-exit v5

    throw v1

    .line 130
    :cond_b7
    if-le v1, v3, :cond_c8

    .line 131
    int-to-float v1, v2

    mul-float/2addr v1, v6

    float-to-int v1, v1

    move v12, v2

    move v2, v1

    move v1, v12

    goto/16 :goto_36

    .line 133
    :cond_c1
    if-ge v3, v4, :cond_c8

    if-ge v1, v2, :cond_c8

    move v2, v3

    .line 136
    goto/16 :goto_36

    :cond_c8
    move v1, v2

    move v2, v4

    goto/16 :goto_36
.end method

.method private static a(Landroid/content/Context;)V
    .registers 7
    .parameter

    .prologue
    const/16 v5, 0x1e

    const/4 v4, 0x0

    .line 320
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 321
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 322
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 324
    const v2, 0x7f0c0022

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/anddoes/launcher/kw;->d:I

    .line 325
    sput v0, Lcom/anddoes/launcher/kw;->c:I

    sput v0, Lcom/anddoes/launcher/kw;->f:I

    sput v0, Lcom/anddoes/launcher/kw;->e:I

    .line 327
    sget-object v0, Lcom/anddoes/launcher/kw;->g:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BlurMaskFilter;

    const/high16 v3, 0x40a0

    mul-float/2addr v1, v3

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v1, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 328
    sget-object v0, Lcom/anddoes/launcher/kw;->h:Landroid/graphics/Paint;

    const/16 v1, -0x3d00

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 329
    sget-object v0, Lcom/anddoes/launcher/kw;->h:Landroid/graphics/Paint;

    invoke-static {v4, v5}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 330
    sget-object v0, Lcom/anddoes/launcher/kw;->i:Landroid/graphics/Paint;

    const/16 v1, -0x7200

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 331
    sget-object v0, Lcom/anddoes/launcher/kw;->i:Landroid/graphics/Paint;

    invoke-static {v4, v5}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 333
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 334
    const v1, 0x3e4ccccd

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 335
    sget-object v1, Lcom/anddoes/launcher/kw;->j:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 336
    sget-object v0, Lcom/anddoes/launcher/kw;->j:Landroid/graphics/Paint;

    const/16 v1, 0x88

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 337
    return-void
.end method

.method static b(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 13
    .parameter
    .parameter

    .prologue
    .line 190
    sget-object v5, Lcom/anddoes/launcher/kw;->l:Landroid/graphics/Canvas;

    monitor-enter v5

    .line 191
    :try_start_3
    sget v0, Lcom/anddoes/launcher/kw;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 192
    invoke-static {p1}, Lcom/anddoes/launcher/kw;->a(Landroid/content/Context;)V

    .line 195
    :cond_b
    sget v1, Lcom/anddoes/launcher/kw;->c:I

    .line 196
    sget v0, Lcom/anddoes/launcher/kw;->d:I

    .line 198
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 199
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 201
    if-lez v3, :cond_7f

    if-lez v2, :cond_7f

    .line 202
    if-ge v3, v1, :cond_87

    if-ge v2, v0, :cond_87

    .line 204
    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 205
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 206
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move v4, v3

    move v3, v2

    .line 208
    :goto_2e
    if-ne v4, v1, :cond_34

    if-ne v3, v0, :cond_34

    .line 209
    monitor-exit v5

    .line 229
    :goto_33
    return-object p0

    .line 211
    :cond_34
    int-to-float v2, v4

    int-to-float v6, v3

    div-float/2addr v2, v6

    .line 212
    if-le v4, v3, :cond_77

    .line 213
    int-to-float v0, v1

    div-float/2addr v0, v2

    float-to-int v0, v0

    move v2, v1

    move v1, v0

    .line 217
    :goto_3e
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 218
    sget v6, Lcom/anddoes/launcher/kw;->c:I

    sget v7, Lcom/anddoes/launcher/kw;->d:I

    invoke-static {v6, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 219
    sget-object v6, Lcom/anddoes/launcher/kw;->l:Landroid/graphics/Canvas;

    .line 220
    sget-object v7, Lcom/anddoes/launcher/kw;->m:Landroid/graphics/Paint;

    .line 221
    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 222
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setDither(Z)V

    .line 223
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 224
    sget-object v8, Lcom/anddoes/launcher/kw;->n:Landroid/graphics/Rect;

    sget v9, Lcom/anddoes/launcher/kw;->c:I

    sub-int/2addr v9, v2

    div-int/lit8 v9, v9, 0x2

    sget v10, Lcom/anddoes/launcher/kw;->d:I

    sub-int/2addr v10, v1

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v8, v9, v10, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 225
    sget-object v1, Lcom/anddoes/launcher/kw;->k:Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 226
    sget-object v1, Lcom/anddoes/launcher/kw;->k:Landroid/graphics/Rect;

    sget-object v2, Lcom/anddoes/launcher/kw;->n:Landroid/graphics/Rect;

    invoke-virtual {v6, p0, v1, v2, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 227
    monitor-exit v5
    :try_end_75
    .catchall {:try_start_3 .. :try_end_75} :catchall_81

    move-object p0, v0

    goto :goto_33

    .line 214
    :cond_77
    if-le v3, v4, :cond_84

    .line 215
    int-to-float v1, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    move v2, v1

    move v1, v0

    goto :goto_3e

    .line 229
    :cond_7f
    monitor-exit v5

    goto :goto_33

    .line 190
    :catchall_81
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_84
    move v2, v1

    move v1, v0

    goto :goto_3e

    :cond_87
    move v4, v3

    move v3, v2

    goto :goto_2e
.end method

.method static b(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 234
    sget-object v1, Lcom/anddoes/launcher/kw;->l:Landroid/graphics/Canvas;

    monitor-enter v1

    .line 235
    :try_start_3
    sget v0, Lcom/anddoes/launcher/kw;->c:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_b

    .line 236
    invoke-static {p1}, Lcom/anddoes/launcher/kw;->a(Landroid/content/Context;)V

    .line 239
    :cond_b
    sget v0, Lcom/anddoes/launcher/kw;->c:I

    .line 240
    sget v2, Lcom/anddoes/launcher/kw;->d:I

    .line 242
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 243
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 245
    if-ne v3, v0, :cond_1d

    if-ne v2, v4, :cond_1d

    .line 246
    monitor-exit v1

    .line 248
    :goto_1c
    return-object p0

    :cond_1d
    new-instance v0, Lcom/anddoes/launcher/cj;

    invoke-static {p0, p1}, Lcom/anddoes/launcher/kw;->a(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/anddoes/launcher/cj;-><init>(Landroid/graphics/Bitmap;)V

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_29

    move-object p0, v0

    goto :goto_1c

    .line 234
    :catchall_29
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static c(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 288
    sget-object v1, Lcom/anddoes/launcher/kw;->l:Landroid/graphics/Canvas;

    monitor-enter v1

    .line 289
    :try_start_3
    sget v0, Lcom/anddoes/launcher/kw;->c:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_b

    .line 290
    invoke-static {p1}, Lcom/anddoes/launcher/kw;->a(Landroid/content/Context;)V

    .line 293
    :cond_b
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sget v2, Lcom/anddoes/launcher/kw;->c:I

    if-ne v0, v2, :cond_1d

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget v2, Lcom/anddoes/launcher/kw;->d:I

    if-ne v0, v2, :cond_1d

    .line 294
    monitor-exit v1

    .line 296
    :goto_1c
    return-object p0

    :cond_1d
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v0, p1}, Lcom/anddoes/launcher/kw;->a(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_28

    goto :goto_1c

    .line 288
    :catchall_28
    move-exception v0

    monitor-exit v1

    throw v0
.end method
