.class public Lcom/android/launcher2/HolographicOutlineHelper;
.super Ljava/lang/Object;
.source "HolographicOutlineHelper.java"


# static fields
.field private static final EXTRA_THICK:I = 0x2

#the value of this static final field might be set in the static constructor
.field public static final MAX_OUTER_BLUR_RADIUS:I = 0x0

.field private static final MEDIUM:I = 0x1

.field public static final MIN_OUTER_BLUR_RADIUS:I

.field private static final THICK:I

.field private static final sCoarseClipTable:Landroid/graphics/MaskFilter;

.field private static final sExtraThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sExtraThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;


# instance fields
.field private final mAlphaClipPaint:Landroid/graphics/Paint;

.field private final mBlurPaint:Landroid/graphics/Paint;

.field private final mErasePaint:Landroid/graphics/Paint;

.field private final mHolographicPaint:Landroid/graphics/Paint;

.field private mTempOffset:[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/high16 v2, 0x4140

    const/high16 v6, 0x40c0

    const/high16 v5, 0x4000

    const/high16 v4, 0x3f80

    .line 50
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenDensity()F

    move-result v0

    .line 52
    .local v0, scale:F
    mul-float v1, v0, v4

    float-to-int v1, v1

    sput v1, Lcom/android/launcher2/HolographicOutlineHelper;->MIN_OUTER_BLUR_RADIUS:I

    .line 53
    mul-float v1, v0, v2

    float-to-int v1, v1

    sput v1, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    .line 55
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float/2addr v2, v0

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/android/launcher2/HolographicOutlineHelper;->sExtraThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 56
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float v2, v0, v6

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/android/launcher2/HolographicOutlineHelper;->sThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 57
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float v2, v0, v5

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/android/launcher2/HolographicOutlineHelper;->sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 58
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float v2, v0, v4

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/android/launcher2/HolographicOutlineHelper;->sThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 59
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float v2, v0, v6

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/android/launcher2/HolographicOutlineHelper;->sExtraThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 60
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    const/high16 v2, 0x4080

    mul-float/2addr v2, v0

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/android/launcher2/HolographicOutlineHelper;->sThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 61
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float v2, v0, v5

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/android/launcher2/HolographicOutlineHelper;->sMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 64
    const/4 v1, 0x0

    const/16 v2, 0xc8

    invoke-static {v1, v2}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/HolographicOutlineHelper;->sCoarseClipTable:Landroid/graphics/MaskFilter;

    return-void
.end method

.method constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    .line 30
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    .line 31
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    .line 32
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mAlphaClipPaint:Landroid/graphics/Paint;

    .line 66
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mTempOffset:[I

    .line 69
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 70
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 72
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 74
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 75
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    const/16 v1, 0xb4

    const/16 v2, 0xff

    invoke-static {v1, v2}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v0

    .line 77
    .local v0, alphaClipTable:Landroid/graphics/MaskFilter;
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mAlphaClipPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 78
    return-void
.end method

.method public static highlightAlphaInterpolator(F)F
    .registers 6
    .parameter "r"

    .prologue
    .line 85
    const v0, 0x3f19999a

    .line 86
    .local v0, maxAlpha:F
    const/high16 v1, 0x3f80

    sub-float/2addr v1, p0

    mul-float/2addr v1, v0

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff8

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method public static viewAlphaInterpolator(F)F
    .registers 6
    .parameter "r"

    .prologue
    const v2, 0x3f733333

    .line 93
    const v0, 0x3f733333

    .line 94
    .local v0, pivot:F
    cmpg-float v1, p0, v2

    if-gez v1, :cond_15

    .line 95
    div-float v1, p0, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff8

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    .line 97
    :goto_14
    return v1

    :cond_15
    const/high16 v1, 0x3f80

    goto :goto_14
.end method


# virtual methods
.method applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)V
    .registers 13
    .parameter "srcDst"
    .parameter "srcDstCanvas"
    .parameter "color"
    .parameter "outlineColor"
    .parameter "thickness"

    .prologue
    .line 125
    iget-object v5, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mAlphaClipPaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IILandroid/graphics/Paint;I)V

    .line 127
    return-void
.end method

.method applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IILandroid/graphics/Paint;I)V
    .registers 24
    .parameter "srcDst"
    .parameter "srcDstCanvas"
    .parameter "color"
    .parameter "outlineColor"
    .parameter "alphaClipPaint"
    .parameter "thickness"

    .prologue
    .line 133
    if-nez p5, :cond_8

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mAlphaClipPaint:Landroid/graphics/Paint;

    move-object/from16 p5, v0

    .line 136
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mTempOffset:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 140
    .local v10, glowShape:Landroid/graphics/Bitmap;
    packed-switch p6, :pswitch_data_13c

    .line 151
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Invalid blur thickness"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 142
    :pswitch_1f
    sget-object v12, Lcom/android/launcher2/HolographicOutlineHelper;->sExtraThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 153
    .local v12, outerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;
    :goto_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 154
    const/4 v2, 0x2

    new-array v13, v2, [I

    .line 155
    .local v13, outerBlurOffset:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v2, v13}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 156
    .local v16, thickOuterBlur:Landroid/graphics/Bitmap;
    const/4 v2, 0x2

    move/from16 v0, p6

    if-ne v0, v2, :cond_6b

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    sget-object v3, Lcom/android/launcher2/HolographicOutlineHelper;->sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 162
    :goto_41
    const/4 v2, 0x2

    new-array v9, v2, [I

    .line 163
    .local v9, brightOutlineOffset:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v2, v9}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 166
    .local v8, brightOutline:Landroid/graphics/Bitmap;
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 167
    const/high16 v2, -0x100

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 169
    packed-switch p6, :pswitch_data_146

    .line 180
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Invalid blur thickness"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 145
    .end local v8           #brightOutline:Landroid/graphics/Bitmap;
    .end local v9           #brightOutlineOffset:[I
    .end local v12           #outerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;
    .end local v13           #outerBlurOffset:[I
    .end local v16           #thickOuterBlur:Landroid/graphics/Bitmap;
    :pswitch_65
    sget-object v12, Lcom/android/launcher2/HolographicOutlineHelper;->sThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 146
    .restart local v12       #outerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;
    goto :goto_21

    .line 148
    .end local v12           #outerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;
    :pswitch_68
    sget-object v12, Lcom/android/launcher2/HolographicOutlineHelper;->sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 149
    .restart local v12       #outerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;
    goto :goto_21

    .line 159
    .restart local v13       #outerBlurOffset:[I
    .restart local v16       #thickOuterBlur:Landroid/graphics/Bitmap;
    :cond_6b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    sget-object v3, Lcom/android/launcher2/HolographicOutlineHelper;->sThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_41

    .line 171
    .restart local v8       #brightOutline:Landroid/graphics/Bitmap;
    .restart local v9       #brightOutlineOffset:[I
    :pswitch_75
    sget-object v11, Lcom/android/launcher2/HolographicOutlineHelper;->sExtraThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 182
    .local v11, innerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;
    :goto_77
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 183
    const/4 v2, 0x2

    new-array v15, v2, [I

    .line 184
    .local v15, thickInnerBlurOffset:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v2, v15}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 187
    .local v14, thickInnerBlur:Landroid/graphics/Bitmap;
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 188
    const/4 v2, 0x0

    aget v2, v15, v2

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, v15, v3

    neg-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 190
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    aget v2, v15, v2

    neg-int v2, v2

    int-to-float v5, v2

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 192
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v5, v2

    const/4 v2, 0x1

    aget v2, v15, v2

    neg-int v2, v2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 196
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 197
    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    const/4 v2, 0x0

    aget v2, v15, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, v15, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 201
    const/4 v2, 0x0

    aget v2, v13, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, v13, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    const/4 v2, 0x0

    aget v2, v9, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, v9, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 210
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 211
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 212
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 213
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 214
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 215
    return-void

    .line 174
    .end local v11           #innerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;
    .end local v14           #thickInnerBlur:Landroid/graphics/Bitmap;
    .end local v15           #thickInnerBlurOffset:[I
    :pswitch_134
    sget-object v11, Lcom/android/launcher2/HolographicOutlineHelper;->sThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 175
    .restart local v11       #innerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;
    goto/16 :goto_77

    .line 177
    .end local v11           #innerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;
    :pswitch_138
    sget-object v11, Lcom/android/launcher2/HolographicOutlineHelper;->sMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 178
    .restart local v11       #innerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;
    goto/16 :goto_77

    .line 140
    :pswitch_data_13c
    .packed-switch 0x0
        :pswitch_65
        :pswitch_68
        :pswitch_1f
    .end packed-switch

    .line 169
    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_134
        :pswitch_138
        :pswitch_75
    .end packed-switch
.end method

.method applyExtraThickExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V
    .registers 11
    .parameter "srcDst"
    .parameter "srcDstCanvas"
    .parameter "color"
    .parameter "outlineColor"

    .prologue
    .line 219
    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)V

    .line 220
    return-void
.end method

.method applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V
    .registers 11
    .parameter "srcDst"
    .parameter "srcDstCanvas"
    .parameter "color"
    .parameter "outlineColor"

    .prologue
    .line 235
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)V

    .line 236
    return-void
.end method

.method applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
    .registers 13
    .parameter "srcDst"
    .parameter "srcDstCanvas"
    .parameter "color"
    .parameter "outlineColor"
    .parameter "alphaClipPaint"

    .prologue
    .line 229
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IILandroid/graphics/Paint;I)V

    .line 231
    return-void
.end method

.method applyOuterBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;I)V
    .registers 8
    .parameter "bitmap"
    .parameter "canvas"
    .parameter "color"

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/android/launcher2/HolographicOutlineHelper;->sThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 108
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mTempOffset:[I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    .local v0, glow:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/android/launcher2/HolographicOutlineHelper;->sCoarseClipTable:Landroid/graphics/MaskFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 112
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    const/16 v2, 0x96

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 113
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mTempOffset:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mTempOffset:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 116
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 117
    return-void
.end method

.method applyThickExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V
    .registers 11
    .parameter "srcDst"
    .parameter "srcDstCanvas"
    .parameter "color"
    .parameter "outlineColor"

    .prologue
    .line 224
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)V

    .line 225
    return-void
.end method
