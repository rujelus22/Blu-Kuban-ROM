.class public final Lcom/cooliris/media/StringTexture;
.super Lcom/cooliris/media/Texture;
.source "StringTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/media/StringTexture$Config;
    }
.end annotation


# static fields
.field private static final sPaint:Landroid/graphics/Paint;


# instance fields
.field private mBaselineHeight:I

.field private mConfig:Lcom/cooliris/media/StringTexture$Config;

.field private mPaint:Landroid/graphics/Paint;

.field private mString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/cooliris/media/StringTexture;->sPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "string"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/cooliris/media/Texture;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/cooliris/media/StringTexture;->mString:Ljava/lang/String;

    .line 98
    sget-object v0, Lcom/cooliris/media/StringTexture$Config;->DEFAULT_CONFIG_SCALED:Lcom/cooliris/media/StringTexture$Config;

    iput-object v0, p0, Lcom/cooliris/media/StringTexture;->mConfig:Lcom/cooliris/media/StringTexture$Config;

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/cooliris/media/StringTexture$Config;)V
    .registers 5
    .parameter "string"
    .parameter "config"

    .prologue
    .line 102
    iget v0, p2, Lcom/cooliris/media/StringTexture$Config;->width:I

    iget v1, p2, Lcom/cooliris/media/StringTexture$Config;->height:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/cooliris/media/StringTexture;-><init>(Ljava/lang/String;Lcom/cooliris/media/StringTexture$Config;II)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/cooliris/media/StringTexture$Config;II)V
    .registers 5
    .parameter "string"
    .parameter "config"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/cooliris/media/Texture;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/cooliris/media/StringTexture;->mString:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lcom/cooliris/media/StringTexture;->mConfig:Lcom/cooliris/media/StringTexture$Config;

    .line 108
    iput p3, p0, Lcom/cooliris/media/Texture;->mWidth:I

    .line 109
    iput p4, p0, Lcom/cooliris/media/Texture;->mHeight:I

    .line 110
    return-void
.end method

.method public static computeTextWidthForConfig(FLandroid/graphics/Typeface;Ljava/lang/String;)I
    .registers 7
    .parameter "textSize"
    .parameter "typeface"
    .parameter "string"

    .prologue
    .line 53
    sget-object v1, Lcom/cooliris/media/StringTexture;->sPaint:Landroid/graphics/Paint;

    .line 54
    .local v1, paint:Landroid/graphics/Paint;
    monitor-enter v1

    .line 55
    const/4 v2, 0x1

    :try_start_4
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    const-string v2, "com.coolris.media"

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setSystemUITypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 61
    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 62
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, k:Ljava/lang/String;
    const-string v2, "zh"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 64
    const v2, 0x3f8ccccd

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 67
    :cond_25
    const/high16 v2, 0x4120

    sget v3, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    monitor-exit v1

    return v2

    .line 69
    .end local v0           #k:Ljava/lang/String;
    :catchall_37
    move-exception v2

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_4 .. :try_end_39} :catchall_37

    throw v2
.end method

.method public static computeTextWidthForConfig(Ljava/lang/String;Lcom/cooliris/media/StringTexture$Config;)I
    .registers 4
    .parameter "string"
    .parameter "config"

    .prologue
    .line 48
    iget v1, p1, Lcom/cooliris/media/StringTexture$Config;->fontSize:F

    iget-boolean v0, p1, Lcom/cooliris/media/StringTexture$Config;->bold:Z

    if-eqz v0, :cond_d

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_8
    invoke-static {v1, v0, p0}, Lcom/cooliris/media/StringTexture;->computeTextWidthForConfig(FLandroid/graphics/Typeface;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_d
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_8
.end method

.method public static lengthToFit(FFLandroid/graphics/Typeface;Ljava/lang/String;)I
    .registers 9
    .parameter "textSize"
    .parameter "maxWidth"
    .parameter "typeface"
    .parameter "string"

    .prologue
    const/4 v3, 0x0

    .line 73
    const/4 v4, 0x0

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_8

    move v0, v3

    .line 92
    :cond_7
    return v0

    .line 75
    :cond_8
    sget-object v1, Lcom/cooliris/media/StringTexture;->sPaint:Landroid/graphics/Paint;

    .line 76
    .local v1, paint:Landroid/graphics/Paint;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 79
    const-string v4, "com.coolris.media"

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setSystemUITypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 82
    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 83
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 84
    .local v0, length:I
    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 85
    .local v2, retVal:F
    cmpg-float v4, v2, p1

    if-lez v4, :cond_7

    .line 88
    :goto_22
    cmpl-float v4, v2, p1

    if-lez v4, :cond_7

    .line 89
    add-int/lit8 v0, v0, -0x1

    .line 90
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v1, p3, v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v2

    goto :goto_22
.end method


# virtual methods
.method protected computePaint()Landroid/graphics/Paint;
    .registers 15

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/high16 v11, 0x437f

    .line 141
    iget-object v10, p0, Lcom/cooliris/media/StringTexture;->mPaint:Landroid/graphics/Paint;

    if-eqz v10, :cond_b

    .line 142
    iget-object v7, p0, Lcom/cooliris/media/StringTexture;->mPaint:Landroid/graphics/Paint;

    .line 190
    :cond_a
    :goto_a
    return-object v7

    .line 143
    :cond_b
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 144
    .local v7, paint:Landroid/graphics/Paint;
    iput-object v7, p0, Lcom/cooliris/media/StringTexture;->mPaint:Landroid/graphics/Paint;

    .line 145
    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 146
    iget-object v3, p0, Lcom/cooliris/media/StringTexture;->mConfig:Lcom/cooliris/media/StringTexture$Config;

    .line 147
    .local v3, config:Lcom/cooliris/media/StringTexture$Config;
    iget v10, v3, Lcom/cooliris/media/StringTexture$Config;->a:F

    mul-float/2addr v10, v11

    float-to-int v0, v10

    .line 148
    .local v0, alpha:I
    iget v10, v3, Lcom/cooliris/media/StringTexture$Config;->r:F

    mul-float/2addr v10, v11

    float-to-int v8, v10

    .line 149
    .local v8, red:I
    iget v10, v3, Lcom/cooliris/media/StringTexture$Config;->g:F

    mul-float/2addr v10, v11

    float-to-int v5, v10

    .line 150
    .local v5, green:I
    iget v10, v3, Lcom/cooliris/media/StringTexture$Config;->b:F

    mul-float/2addr v10, v11

    float-to-int v1, v10

    .line 151
    .local v1, blue:I
    invoke-static {v0, v8, v5, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 152
    .local v2, color:I
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    iget v10, v3, Lcom/cooliris/media/StringTexture$Config;->shadowRadius:I

    int-to-float v10, v10

    const/high16 v11, -0x100

    invoke-virtual {v7, v10, v13, v13, v11}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 154
    iget-boolean v10, v3, Lcom/cooliris/media/StringTexture$Config;->underline:Z

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 157
    const-string v10, "com.coolris.media"

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setSystemUITypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 158
    iget-boolean v10, v3, Lcom/cooliris/media/StringTexture$Config;->bold:Z

    if-eqz v10, :cond_89

    sget-object v10, Landroid/graphics/Typeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    :goto_46
    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 161
    iget-boolean v10, v3, Lcom/cooliris/media/StringTexture$Config;->strikeThrough:Z

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 163
    iget v10, v3, Lcom/cooliris/media/StringTexture$Config;->xalignment:I

    if-ne v10, v12, :cond_8c

    .line 164
    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 172
    :goto_57
    iget-boolean v10, v3, Lcom/cooliris/media/StringTexture$Config;->italic:Z

    if-eqz v10, :cond_60

    .line 173
    const/high16 v10, -0x4180

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 174
    :cond_60
    iget-object v9, p0, Lcom/cooliris/media/StringTexture;->mString:Ljava/lang/String;

    .line 175
    .local v9, stringToDraw:Ljava/lang/String;
    iget v10, v3, Lcom/cooliris/media/StringTexture$Config;->fontSize:F

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 176
    iget v10, v3, Lcom/cooliris/media/StringTexture$Config;->sizeMode:I

    if-ne v10, v12, :cond_a

    .line 180
    :cond_6b
    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    .line 181
    .local v4, currentTextSize:F
    const/4 v6, 0x0

    .line 182
    .local v6, measuredTextWidth:F
    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 183
    iget v10, p0, Lcom/cooliris/media/Texture;->mWidth:I

    int-to-float v10, v10

    cmpg-float v10, v6, v10

    if-ltz v10, :cond_a

    .line 185
    const/high16 v10, 0x3f80

    sub-float v10, v4, v10

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 186
    const/high16 v10, 0x40c0

    cmpg-float v10, v4, v10

    if-gtz v10, :cond_6b

    goto :goto_a

    .line 158
    .end local v4           #currentTextSize:F
    .end local v6           #measuredTextWidth:F
    .end local v9           #stringToDraw:Ljava/lang/String;
    :cond_89
    sget-object v10, Landroid/graphics/Typeface;->FLIPFONT:Landroid/graphics/Typeface;

    goto :goto_46

    .line 165
    :cond_8c
    iget v10, v3, Lcom/cooliris/media/StringTexture$Config;->xalignment:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_97

    .line 166
    sget-object v10, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_57

    .line 169
    :cond_97
    sget-object v10, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_57
.end method

.method public computeTextWidth()F
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-virtual {p0}, Lcom/cooliris/media/StringTexture;->computePaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 121
    .local v0, paint:Landroid/graphics/Paint;
    if-eqz v0, :cond_11

    .line 122
    iget-object v2, p0, Lcom/cooliris/media/StringTexture;->mString:Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 123
    iget-object v1, p0, Lcom/cooliris/media/StringTexture;->mString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 127
    :cond_11
    return v1
.end method

.method public isCached()Z
    .registers 2

    .prologue
    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method protected load(Lcom/cooliris/media/RenderView;)Landroid/graphics/Bitmap;
    .registers 27
    .parameter "view"

    .prologue
    .line 195
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/StringTexture;->mString:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 196
    const/4 v12, 0x0

    .line 254
    :goto_7
    return-object v12

    .line 197
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/StringTexture;->computePaint()Landroid/graphics/Paint;

    move-result-object v8

    .line 198
    .local v8, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/StringTexture;->mString:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 199
    .local v22, stringToDraw:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/StringTexture;->mConfig:Lcom/cooliris/media/StringTexture$Config;

    move-object/from16 v16, v0

    .line 200
    .local v16, config:Lcom/cooliris/media/StringTexture$Config;
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 201
    .local v13, bmConfig:Landroid/graphics/Bitmap$Config;
    invoke-virtual {v8}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v19

    .line 203
    .local v19, metrics:Landroid/graphics/Paint$FontMetricsInt;
    move-object/from16 v0, v16

    iget v3, v0, Lcom/cooliris/media/StringTexture$Config;->shadowRadius:I

    add-int/lit8 v20, v3, 0x1

    .line 204
    .local v20, padding:I
    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v9, v3, v20

    .line 205
    .local v9, ascent:I
    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int v17, v3, v20

    .line 206
    .local v17, descent:I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/cooliris/media/Texture;->mWidth:I

    .line 207
    .local v11, backWidth:I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/cooliris/media/Texture;->mHeight:I

    .line 209
    .local v10, backHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/StringTexture;->mString:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 210
    .local v21, string:Ljava/lang/String;
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 211
    .local v14, bounds:Landroid/graphics/Rect;
    const/4 v3, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v21

    invoke-virtual {v8, v0, v3, v4, v14}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 213
    const-string v3, "com.coolris.media"

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setSystemUITypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 215
    move-object/from16 v0, v16

    iget v3, v0, Lcom/cooliris/media/StringTexture$Config;->sizeMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6d

    .line 217
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    mul-int/lit8 v4, v20, 0x2

    add-int v11, v3, v4

    .line 220
    const/16 v3, 0x17

    if-ge v11, v3, :cond_69

    .line 221
    const/16 v11, 0x17

    .line 223
    :cond_69
    sub-int v18, v17, v9

    .line 224
    .local v18, height:I
    add-int v10, v18, v20

    .line 226
    .end local v18           #height:I
    :cond_6d
    if-lez v11, :cond_71

    if-gtz v10, :cond_73

    .line 227
    :cond_71
    const/4 v12, 0x0

    goto :goto_7

    .line 228
    :cond_73
    invoke-static {v11, v10, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 229
    .local v12, bitmap:Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 231
    .local v15, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, v16

    iget v3, v0, Lcom/cooliris/media/StringTexture$Config;->xalignment:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_ea

    move/from16 v23, v20

    .line 233
    .local v23, x:I
    :goto_85
    move-object/from16 v0, v16

    iget v3, v0, Lcom/cooliris/media/StringTexture$Config;->yalignment:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_f7

    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v3, v3

    add-int v24, v3, v20

    .line 237
    .local v24, y:I
    :goto_93
    move/from16 v0, v23

    int-to-float v3, v0

    move/from16 v0, v24

    int-to-float v4, v0

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v3, v4, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 239
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-le v3, v11, :cond_de

    move-object/from16 v0, v16

    iget v3, v0, Lcom/cooliris/media/StringTexture$Config;->overflowMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_de

    .line 242
    add-int/lit8 v3, v11, -0x1e

    int-to-float v2, v3

    .line 243
    .local v2, gradientLeft:F
    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    int-to-float v4, v11

    const/4 v5, 0x0

    const/4 v6, -0x1

    const v7, 0xffffff

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .end local v8           #paint:Landroid/graphics/Paint;
    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 245
    .local v1, gradient:Landroid/graphics/LinearGradient;
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 246
    .restart local v8       #paint:Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 247
    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 248
    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 249
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 250
    const/4 v5, 0x0

    int-to-float v6, v11

    int-to-float v7, v10

    move-object v3, v15

    move v4, v2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 253
    .end local v1           #gradient:Landroid/graphics/LinearGradient;
    .end local v2           #gradientLeft:F
    :cond_de
    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int v3, v3, v20

    move-object/from16 v0, p0

    iput v3, v0, Lcom/cooliris/media/StringTexture;->mBaselineHeight:I

    goto/16 :goto_7

    .line 231
    .end local v23           #x:I
    .end local v24           #y:I
    :cond_ea
    move-object/from16 v0, v16

    iget v3, v0, Lcom/cooliris/media/StringTexture$Config;->xalignment:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_f4

    sub-int v23, v11, v20

    goto :goto_85

    :cond_f4
    div-int/lit8 v23, v11, 0x2

    goto :goto_85

    .line 233
    .restart local v23       #x:I
    :cond_f7
    move-object/from16 v0, v16

    iget v3, v0, Lcom/cooliris/media/StringTexture$Config;->yalignment:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_101

    sub-int v24, v10, v17

    goto :goto_93

    :cond_101
    add-int v3, v17, v9

    sub-int v3, v10, v3

    div-int/lit8 v24, v3, 0x2

    goto :goto_93
.end method
