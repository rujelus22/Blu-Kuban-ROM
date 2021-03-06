.class Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;
.super Ljackpal/androidterm/emulatorview/BaseTextRenderer;
.source "EmulatorView.java"


# static fields
.field private static final BYTE_SCALE:F = 0.003921569f

.field private static final kCharacterHeight:I = 0x8

.field private static final kCharacterWidth:I = 0x4


# instance fields
.field private mColorMatrix:[F

.field private mCurrentBackColor:I

.field private mCurrentForeColor:I

.field private mFont:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljackpal/androidterm/emulatorview/ColorScheme;)V
    .registers 7
    .parameter "resources"
    .parameter "scheme"

    .prologue
    .line 1298
    invoke-direct {p0, p2}, Ljackpal/androidterm/emulatorview/BaseTextRenderer;-><init>(Ljackpal/androidterm/emulatorview/ColorScheme;)V

    .line 1299
    sget v1, Ljackpal/androidterm/emulatorview/compat/AndroidCompat;->SDK:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_24

    sget v0, Ljackpal/androidterm/emulatorview/R$drawable;->atari_small:I

    .line 1301
    .local v0, fontResource:I
    :goto_a
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mFont:Landroid/graphics/Bitmap;

    .line 1302
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mPaint:Landroid/graphics/Paint;

    .line 1303
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1304
    return-void

    .line 1299
    .end local v0           #fontResource:I
    :cond_24
    sget v0, Ljackpal/androidterm/emulatorview/R$drawable;->atari_small_nodpi:I

    goto :goto_a
.end method

.method private setColorMatrix(II)V
    .registers 12
    .parameter "foreColor"
    .parameter "backColor"

    .prologue
    .line 1348
    iget v5, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mCurrentForeColor:I

    if-ne p1, v5, :cond_c

    iget v5, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mCurrentBackColor:I

    if-ne p2, v5, :cond_c

    iget-object v5, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mColorMatrix:[F

    if-nez v5, :cond_57

    .line 1351
    :cond_c
    iput p1, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mCurrentForeColor:I

    .line 1352
    iput p2, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mCurrentBackColor:I

    .line 1353
    iget-object v5, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mColorMatrix:[F

    if-nez v5, :cond_22

    .line 1354
    const/16 v5, 0x14

    new-array v5, v5, [F

    iput-object v5, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mColorMatrix:[F

    .line 1355
    iget-object v5, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mColorMatrix:[F

    const/16 v6, 0x12

    const/high16 v7, 0x3f80

    aput v7, v5, v6

    .line 1357
    :cond_22
    const/4 v1, 0x0

    .local v1, component:I
    :goto_23
    const/4 v5, 0x3

    if-ge v1, v5, :cond_4b

    .line 1358
    rsub-int/lit8 v5, v1, 0x2

    shl-int/lit8 v4, v5, 0x3

    .line 1359
    .local v4, rightShift:I
    shr-int v5, p1, v4

    and-int/lit16 v3, v5, 0xff

    .line 1360
    .local v3, fore:I
    shr-int v5, p2, v4

    and-int/lit16 v0, v5, 0xff

    .line 1361
    .local v0, back:I
    sub-int v2, v0, v3

    .line 1362
    .local v2, delta:I
    iget-object v5, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mColorMatrix:[F

    mul-int/lit8 v6, v1, 0x6

    int-to-float v7, v2

    const v8, 0x3b808081

    mul-float/2addr v7, v8

    aput v7, v5, v6

    .line 1363
    iget-object v5, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mColorMatrix:[F

    mul-int/lit8 v6, v1, 0x5

    add-int/lit8 v6, v6, 0x4

    int-to-float v7, v3

    aput v7, v5, v6

    .line 1357
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 1365
    .end local v0           #back:I
    .end local v2           #delta:I
    .end local v3           #fore:I
    .end local v4           #rightShift:I
    :cond_4b
    iget-object v5, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mPaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v7, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mColorMatrix:[F

    invoke-direct {v6, v7}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1367
    .end local v1           #component:I
    :cond_57
    return-void
.end method


# virtual methods
.method public drawTextRun(Landroid/graphics/Canvas;FFII[CIIZII)V
    .registers 26
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
    .line 1321
    iget-object v11, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mForePaint:[I

    aget v12, v11, p10

    if-eqz p9, :cond_5f

    const v11, -0x7f7f80

    :goto_9
    invoke-direct {p0, v12, v11}, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->setColorMatrix(II)V

    .line 1323
    move/from16 v0, p2

    float-to-int v11, v0

    mul-int/lit8 v12, p4, 0x4

    add-int v5, v11, v12

    .line 1324
    .local v5, destX:I
    move/from16 v0, p3

    float-to-int v6, v0

    .line 1325
    .local v6, destY:I
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 1326
    .local v8, srcRect:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1327
    .local v4, destRect:Landroid/graphics/Rect;
    add-int/lit8 v11, v6, -0x8

    iput v11, v4, Landroid/graphics/Rect;->top:I

    .line 1328
    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 1329
    const/4 v7, 0x0

    .local v7, i:I
    :goto_27
    move/from16 v0, p8

    if-ge v7, v0, :cond_66

    .line 1331
    add-int v11, v7, p7

    aget-char v11, p6, v11

    and-int/lit16 v11, v11, 0xff

    int-to-char v1, v11

    .line 1332
    .local v1, c:C
    if-nez p9, :cond_38

    const/16 v11, 0x20

    if-eq v1, v11, :cond_5a

    :cond_38
    const/16 v11, 0x80

    if-ge v1, v11, :cond_5a

    .line 1333
    and-int/lit8 v2, v1, 0x1f

    .line 1334
    .local v2, cellX:I
    shr-int/lit8 v11, v1, 0x5

    and-int/lit8 v3, v11, 0x3

    .line 1335
    .local v3, cellY:I
    mul-int/lit8 v9, v2, 0x4

    .line 1336
    .local v9, srcX:I
    mul-int/lit8 v10, v3, 0x8

    .line 1337
    .local v10, srcY:I
    add-int/lit8 v11, v9, 0x4

    add-int/lit8 v12, v10, 0x8

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 1339
    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1340
    add-int/lit8 v11, v5, 0x4

    iput v11, v4, Landroid/graphics/Rect;->right:I

    .line 1341
    iget-object v11, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mFont:Landroid/graphics/Bitmap;

    iget-object v12, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v8, v4, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1343
    .end local v2           #cellX:I
    .end local v3           #cellY:I
    .end local v9           #srcX:I
    .end local v10           #srcY:I
    :cond_5a
    add-int/lit8 v5, v5, 0x4

    .line 1329
    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    .line 1321
    .end local v1           #c:C
    .end local v4           #destRect:Landroid/graphics/Rect;
    .end local v5           #destX:I
    .end local v6           #destY:I
    .end local v7           #i:I
    .end local v8           #srcRect:Landroid/graphics/Rect;
    :cond_5f
    iget-object v11, p0, Ljackpal/androidterm/emulatorview/Bitmap4x8FontRenderer;->mBackPaint:[I

    and-int/lit8 v13, p11, 0x7

    aget v11, v11, v13

    goto :goto_9

    .line 1345
    .restart local v4       #destRect:Landroid/graphics/Rect;
    .restart local v5       #destX:I
    .restart local v6       #destY:I
    .restart local v7       #i:I
    .restart local v8       #srcRect:Landroid/graphics/Rect;
    :cond_66
    return-void
.end method

.method public getCharacterHeight()I
    .registers 2

    .prologue
    .line 1311
    const/16 v0, 0x8

    return v0
.end method

.method public getCharacterWidth()F
    .registers 2

    .prologue
    .line 1307
    const/high16 v0, 0x4080

    return v0
.end method

.method public getTopMargin()I
    .registers 2

    .prologue
    .line 1315
    const/4 v0, 0x0

    return v0
.end method
