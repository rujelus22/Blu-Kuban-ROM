.class public Lcom/infraware/polarisoffice/common/ColorPickerHueView;
.super Landroid/view/View;
.source "ColorPickerHueView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/polarisoffice/common/ColorPickerHueView$OnColorPickerHueListener;
    }
.end annotation


# instance fields
.field private mCurrentHue:F

.field private mHueBarBg:Landroid/graphics/NinePatch;

.field private mHueBarBgRect:Landroid/graphics/Rect;

.field private mHueBarColors:[I

.field private mHueBarRect:Landroid/graphics/Rect;

.field private mHuePoint:Landroid/graphics/Bitmap;

.field private mHueViewRect:Landroid/graphics/Rect;

.field private mListener:Lcom/infraware/polarisoffice/common/ColorPickerHueView$OnColorPickerHueListener;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mCurrentHue:F

    .line 21
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarColors:[I

    .line 22
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueViewRect:Landroid/graphics/Rect;

    .line 23
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarBgRect:Landroid/graphics/Rect;

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarRect:Landroid/graphics/Rect;

    .line 25
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarBg:Landroid/graphics/NinePatch;

    .line 26
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHuePoint:Landroid/graphics/Bitmap;

    .line 27
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mListener:Lcom/infraware/polarisoffice/common/ColorPickerHueView$OnColorPickerHueListener;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mCurrentHue:F

    .line 21
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarColors:[I

    .line 22
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueViewRect:Landroid/graphics/Rect;

    .line 23
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarBgRect:Landroid/graphics/Rect;

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarRect:Landroid/graphics/Rect;

    .line 25
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarBg:Landroid/graphics/NinePatch;

    .line 26
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHuePoint:Landroid/graphics/Bitmap;

    .line 27
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mListener:Lcom/infraware/polarisoffice/common/ColorPickerHueView$OnColorPickerHueListener;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mCurrentHue:F

    .line 21
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarColors:[I

    .line 22
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueViewRect:Landroid/graphics/Rect;

    .line 23
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarBgRect:Landroid/graphics/Rect;

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarRect:Landroid/graphics/Rect;

    .line 25
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarBg:Landroid/graphics/NinePatch;

    .line 26
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHuePoint:Landroid/graphics/Bitmap;

    .line 27
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mListener:Lcom/infraware/polarisoffice/common/ColorPickerHueView$OnColorPickerHueListener;

    .line 43
    return-void
.end method

.method private SetHueBarColors(I)V
    .registers 12
    .parameter "count"

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0xff

    .line 56
    new-array v6, p1, [I

    iput-object v6, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarColors:[I

    .line 58
    const/4 v1, 0x0

    .line 59
    .local v1, index:I
    div-int/lit8 v4, p1, 0x6

    .line 60
    .local v4, quotient:I
    rem-int/lit8 v5, p1, 0x6

    .line 61
    .local v5, remainder:I
    const/high16 v6, 0x437f

    add-int/lit8 v7, v4, -0x1

    int-to-float v7, v7

    div-float v3, v6, v7

    .line 62
    .local v3, offset:F
    const/4 v0, 0x0

    .local v0, i:I
    move v2, v1

    .end local v1           #index:I
    .local v2, index:I
    :goto_15
    if-lt v0, v4, :cond_6c

    .line 64
    if-lez v5, :cond_e3

    .line 65
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarColors:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    invoke-static {v8, v8, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v6, v2

    .line 67
    :goto_23
    const/4 v0, 0x0

    move v2, v1

    .end local v1           #index:I
    .restart local v2       #index:I
    :goto_25
    if-lt v0, v4, :cond_7d

    .line 69
    const/4 v6, 0x1

    if-le v5, v6, :cond_e0

    .line 70
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarColors:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    invoke-static {v8, v9, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v6, v2

    .line 72
    :goto_34
    const/4 v0, 0x0

    move v2, v1

    .end local v1           #index:I
    .restart local v2       #index:I
    :goto_36
    if-lt v0, v4, :cond_90

    .line 74
    const/4 v6, 0x2

    if-le v5, v6, :cond_dd

    .line 75
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarColors:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    invoke-static {v8, v9, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v6, v2

    .line 77
    :goto_45
    const/4 v0, 0x0

    move v2, v1

    .end local v1           #index:I
    .restart local v2       #index:I
    :goto_47
    if-lt v0, v4, :cond_a1

    .line 79
    const/4 v6, 0x3

    if-le v5, v6, :cond_da

    .line 80
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarColors:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    invoke-static {v8, v9, v9, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v6, v2

    .line 82
    :goto_56
    const/4 v0, 0x0

    move v2, v1

    .end local v1           #index:I
    .restart local v2       #index:I
    :goto_58
    if-lt v0, v4, :cond_b4

    .line 84
    const/4 v6, 0x4

    if-le v5, v6, :cond_d8

    .line 85
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarColors:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    invoke-static {v8, v8, v9, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v6, v2

    .line 87
    :goto_67
    const/4 v0, 0x0

    move v2, v1

    .end local v1           #index:I
    .restart local v2       #index:I
    :goto_69
    if-lt v0, v4, :cond_c5

    .line 89
    return-void

    .line 63
    :cond_6c
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarColors:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    int-to-float v7, v0

    mul-float/2addr v7, v3

    float-to-int v7, v7

    invoke-static {v8, v8, v7, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v6, v2

    .line 62
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1           #index:I
    .restart local v2       #index:I
    goto :goto_15

    .line 68
    :cond_7d
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarColors:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    int-to-float v7, v0

    mul-float/2addr v7, v3

    float-to-int v7, v7

    rsub-int v7, v7, 0xff

    invoke-static {v8, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v6, v2

    .line 67
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1           #index:I
    .restart local v2       #index:I
    goto :goto_25

    .line 73
    :cond_90
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarColors:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    int-to-float v7, v0

    mul-float/2addr v7, v3

    float-to-int v7, v7

    invoke-static {v8, v9, v8, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v6, v2

    .line 72
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1           #index:I
    .restart local v2       #index:I
    goto :goto_36

    .line 78
    :cond_a1
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarColors:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    int-to-float v7, v0

    mul-float/2addr v7, v3

    float-to-int v7, v7

    rsub-int v7, v7, 0xff

    invoke-static {v8, v9, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v6, v2

    .line 77
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1           #index:I
    .restart local v2       #index:I
    goto :goto_47

    .line 83
    :cond_b4
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarColors:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    int-to-float v7, v0

    mul-float/2addr v7, v3

    float-to-int v7, v7

    invoke-static {v8, v7, v9, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v6, v2

    .line 82
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1           #index:I
    .restart local v2       #index:I
    goto :goto_58

    .line 88
    :cond_c5
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarColors:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    int-to-float v7, v0

    mul-float/2addr v7, v3

    float-to-int v7, v7

    rsub-int v7, v7, 0xff

    invoke-static {v8, v8, v9, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v6, v2

    .line 87
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1           #index:I
    .restart local v2       #index:I
    goto :goto_69

    :cond_d8
    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_67

    .end local v1           #index:I
    .restart local v2       #index:I
    :cond_da
    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto/16 :goto_56

    .end local v1           #index:I
    .restart local v2       #index:I
    :cond_dd
    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto/16 :goto_45

    .end local v1           #index:I
    .restart local v2       #index:I
    :cond_e0
    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto/16 :goto_34

    .end local v1           #index:I
    .restart local v2       #index:I
    :cond_e3
    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto/16 :goto_23
.end method

.method private getCurrentHueColor()I
    .registers 4

    .prologue
    .line 92
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarColors:[I

    array-length v1, v1

    if-lt v0, v1, :cond_9

    .line 96
    const/high16 v1, -0x1

    :goto_8
    return v1

    .line 93
    :cond_9
    iget v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mCurrentHue:F

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_15

    .line 94
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarColors:[I

    aget v1, v1, v0

    goto :goto_8

    .line 92
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public Init(Lcom/infraware/polarisoffice/common/ColorPickerHueView$OnColorPickerHueListener;I)V
    .registers 7
    .parameter "listener"
    .parameter "color"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mListener:Lcom/infraware/polarisoffice/common/ColorPickerHueView$OnColorPickerHueListener;

    .line 47
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mPaint:Landroid/graphics/Paint;

    .line 48
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 50
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02009e

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 51
    .local v0, hueBarBg:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/NinePatch;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    const-string v3, ""

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarBg:Landroid/graphics/NinePatch;

    .line 52
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005e

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHuePoint:Landroid/graphics/Bitmap;

    .line 53
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter "canvas"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarBg:Landroid/graphics/NinePatch;

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarBgRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 116
    const/4 v6, 0x0

    .line 117
    .local v6, huePoint:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_9
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarColors:[I

    array-length v0, v0

    if-lt v7, v0, :cond_30

    .line 123
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHuePoint:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHuePoint:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v6, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHuePoint:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 124
    return-void

    .line 118
    :cond_30
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarColors:[I

    aget v1, v1, v7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v7

    int-to-float v1, v0

    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v7

    int-to-float v3, v0

    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 120
    iget v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mCurrentHue:F

    int-to-float v1, v7

    cmpl-float v0, v0, v1

    if-nez v0, :cond_62

    .line 121
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int v6, v0, v7

    .line 117
    :cond_62
    add-int/lit8 v7, v7, 0x1

    goto :goto_9
.end method

.method protected onSizeChanged(IIII)V
    .registers 12
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v4, 0x1

    .line 101
    const/high16 v2, 0x40b0

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v0, v2

    .line 102
    .local v0, margin:I
    const v2, 0x416ab852

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v1, v2

    .line 103
    .local v1, pointSize:I
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->getPaddingRight()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->getPaddingBottom()I

    move-result v6

    sub-int v6, p2, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 104
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarBgRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueViewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueViewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueViewRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueViewRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 105
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarBgRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 106
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 107
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->SetHueBarColors(I)V

    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 110
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_36

    .line 140
    :goto_7
    :pswitch_7
    const/4 v1, 0x1

    return v1

    .line 130
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 131
    .local v0, x:I
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 132
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mHueBarRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int v1, v0, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mCurrentHue:F

    .line 133
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->mListener:Lcom/infraware/polarisoffice/common/ColorPickerHueView$OnColorPickerHueListener;

    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->getCurrentHueColor()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/infraware/polarisoffice/common/ColorPickerHueView$OnColorPickerHueListener;->OnChangeHueBarColor(I)V

    .line 134
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorPickerHueView;->invalidate()V

    goto :goto_7

    .line 127
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_9
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method
