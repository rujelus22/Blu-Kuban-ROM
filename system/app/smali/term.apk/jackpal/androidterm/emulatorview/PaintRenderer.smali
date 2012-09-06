.class Ljackpal/androidterm/emulatorview/PaintRenderer;
.super Ljackpal/androidterm/emulatorview/BaseTextRenderer;
.source "EmulatorView.java"


# static fields
.field private static final EXAMPLE_CHAR:[C


# instance fields
.field private mCharAscent:I

.field private mCharDescent:I

.field private mCharHeight:I

.field private mCharWidth:F

.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1432
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x58

    aput-char v2, v0, v1

    sput-object v0, Ljackpal/androidterm/emulatorview/PaintRenderer;->EXAMPLE_CHAR:[C

    return-void
.end method

.method public constructor <init>(ILjackpal/androidterm/emulatorview/ColorScheme;)V
    .registers 7
    .parameter "fontSize"
    .parameter "scheme"

    .prologue
    const/4 v3, 0x1

    .line 1372
    invoke-direct {p0, p2}, Ljackpal/androidterm/emulatorview/BaseTextRenderer;-><init>(Ljackpal/androidterm/emulatorview/ColorScheme;)V

    .line 1373
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    .line 1374
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1375
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1376
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1378
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mCharHeight:I

    .line 1379
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mCharAscent:I

    .line 1380
    iget v0, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mCharHeight:I

    iget v1, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mCharAscent:I

    add-int/2addr v0, v1

    iput v0, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mCharDescent:I

    .line 1381
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Ljackpal/androidterm/emulatorview/PaintRenderer;->EXAMPLE_CHAR:[C

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    iput v0, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mCharWidth:F

    .line 1382
    return-void
.end method


# virtual methods
.method public drawTextRun(Landroid/graphics/Canvas;FFII[CIIZII)V
    .registers 24
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "lineOffset"
    .parameter "runWidth"
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "cursor"
    .parameter "foreColor"
    .parameter "backColor"

    .prologue
    .line 1387
    if-eqz p9, :cond_70

    .line 1388
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    const v3, -0x7f7f80

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1392
    :goto_a
    move/from16 v0, p4

    int-to-float v1, v0

    iget v3, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mCharWidth:F

    mul-float/2addr v1, v3

    add-float v2, p2, v1

    .line 1393
    .local v2, left:F
    iget v1, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mCharAscent:I

    int-to-float v1, v1

    add-float/2addr v1, p3

    iget v3, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mCharDescent:I

    int-to-float v3, v3

    sub-float v3, v1, v3

    move/from16 v0, p5

    int-to-float v1, v0

    iget v4, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mCharWidth:F

    mul-float/2addr v1, v4

    add-float v4, v2, v1

    iget-object v6, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1396
    and-int/lit8 v1, p10, 0x8

    if-eqz v1, :cond_7c

    const/4 v10, 0x1

    .line 1397
    .local v10, bold:Z
    :goto_2f
    and-int/lit8 v1, p11, 0x8

    if-eqz v1, :cond_7e

    const/4 v11, 0x1

    .line 1398
    .local v11, underline:Z
    :goto_34
    if-eqz v10, :cond_3c

    .line 1399
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1401
    :cond_3c
    if-eqz v11, :cond_44

    .line 1402
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 1404
    :cond_44
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mForePaint:[I

    aget v3, v3, p10

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1405
    iget v1, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mCharDescent:I

    int-to-float v1, v1

    sub-float v8, p3, v1

    iget-object v9, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move-object/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move v7, v2

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 1406
    if-eqz v10, :cond_67

    .line 1407
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 1409
    :cond_67
    if-eqz v11, :cond_6f

    .line 1410
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 1412
    :cond_6f
    return-void

    .line 1390
    .end local v2           #left:F
    .end local v10           #bold:Z
    .end local v11           #underline:Z
    :cond_70
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mTextPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mBackPaint:[I

    and-int/lit8 v4, p11, 0x7

    aget v3, v3, v4

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_a

    .line 1396
    .restart local v2       #left:F
    :cond_7c
    const/4 v10, 0x0

    goto :goto_2f

    .line 1397
    .restart local v10       #bold:Z
    :cond_7e
    const/4 v11, 0x0

    goto :goto_34
.end method

.method public getCharacterHeight()I
    .registers 2

    .prologue
    .line 1415
    iget v0, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mCharHeight:I

    return v0
.end method

.method public getCharacterWidth()F
    .registers 2

    .prologue
    .line 1419
    iget v0, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mCharWidth:F

    return v0
.end method

.method public getTopMargin()I
    .registers 2

    .prologue
    .line 1423
    iget v0, p0, Ljackpal/androidterm/emulatorview/PaintRenderer;->mCharDescent:I

    return v0
.end method
