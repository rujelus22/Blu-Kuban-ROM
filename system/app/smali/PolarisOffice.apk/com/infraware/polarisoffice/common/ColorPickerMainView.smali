.class public Lcom/infraware/polarisoffice/common/ColorPickerMainView;
.super Landroid/view/View;
.source "ColorPickerMainView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/polarisoffice/common/ColorPickerMainView$OnColorPickerMainListener;
    }
.end annotation


# instance fields
.field private mBlackPoint:Landroid/graphics/Bitmap;

.field private mListener:Lcom/infraware/polarisoffice/common/ColorPickerMainView$OnColorPickerMainListener;

.field private mMainColors:[I

.field private mMainViewBg:Landroid/graphics/NinePatch;

.field private mMainViewBgRect:Landroid/graphics/Rect;

.field private mMainViewBitmap:Landroid/graphics/Bitmap;

.field private mMainViewBlackRect:Landroid/graphics/Rect;

.field private mMainViewCanvas:Landroid/graphics/Canvas;

.field private mMainViewRect:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field private mTouchPoint:Landroid/graphics/Point;

.field private mWhitePoint:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mTouchPoint:Landroid/graphics/Point;

    .line 26
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainColors:[I

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewBgRect:Landroid/graphics/Rect;

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewRect:Landroid/graphics/Rect;

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewBlackRect:Landroid/graphics/Rect;

    .line 30
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewCanvas:Landroid/graphics/Canvas;

    .line 31
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewBitmap:Landroid/graphics/Bitmap;

    .line 32
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewBg:Landroid/graphics/NinePatch;

    .line 33
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mBlackPoint:Landroid/graphics/Bitmap;

    .line 34
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mWhitePoint:Landroid/graphics/Bitmap;

    .line 35
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mListener:Lcom/infraware/polarisoffice/common/ColorPickerMainView$OnColorPickerMainListener;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mTouchPoint:Landroid/graphics/Point;

    .line 26
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainColors:[I

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewBgRect:Landroid/graphics/Rect;

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewRect:Landroid/graphics/Rect;

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewBlackRect:Landroid/graphics/Rect;

    .line 30
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewCanvas:Landroid/graphics/Canvas;

    .line 31
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewBitmap:Landroid/graphics/Bitmap;

    .line 32
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewBg:Landroid/graphics/NinePatch;

    .line 33
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mBlackPoint:Landroid/graphics/Bitmap;

    .line 34
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mWhitePoint:Landroid/graphics/Bitmap;

    .line 35
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mListener:Lcom/infraware/polarisoffice/common/ColorPickerMainView$OnColorPickerMainListener;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mTouchPoint:Landroid/graphics/Point;

    .line 26
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainColors:[I

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewBgRect:Landroid/graphics/Rect;

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewRect:Landroid/graphics/Rect;

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewBlackRect:Landroid/graphics/Rect;

    .line 30
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewCanvas:Landroid/graphics/Canvas;

    .line 31
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewBitmap:Landroid/graphics/Bitmap;

    .line 32
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewBg:Landroid/graphics/NinePatch;

    .line 33
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mBlackPoint:Landroid/graphics/Bitmap;

    .line 34
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mWhitePoint:Landroid/graphics/Bitmap;

    .line 35
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mListener:Lcom/infraware/polarisoffice/common/ColorPickerMainView$OnColorPickerMainListener;

    .line 51
    return-void
.end method

.method private ChangeMainViewColor()V
    .registers 6

    .prologue
    .line 91
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mTouchPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mTouchPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 92
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mTouchPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mTouchPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    .line 93
    .local v0, color:I
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mListener:Lcom/infraware/polarisoffice/common/ColorPickerMainView$OnColorPickerMainListener;

    invoke-interface {v1, v0}, Lcom/infraware/polarisoffice/common/ColorPickerMainView$OnColorPickerMainListener;->OnChangeColorAndValue(I)V

    .line 95
    .end local v0           #color:I
    :cond_2d
    return-void
.end method

.method private DrawMainView()V
    .registers 15

    .prologue
    const/4 v1, 0x0

    .line 73
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewCanvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_2a

    .line 74
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    const/high16 v3, 0x4380

    div-float v13, v2, v3

    .line 75
    .local v13, offset:F
    const/high16 v2, 0x3f80

    cmpg-float v2, v13, v2

    if-gez v2, :cond_1a

    const/high16 v13, 0x3f80

    .line 76
    :cond_1a
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 77
    const/4 v12, 0x0

    .local v12, i:I
    :goto_20
    const/16 v2, 0x100

    if-lt v12, v2, :cond_2b

    .line 85
    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->ChangeMainViewColor()V

    .line 86
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->invalidate()V

    .line 88
    .end local v12           #i:I
    .end local v13           #offset:F
    :cond_2a
    return-void

    .line 78
    .restart local v12       #i:I
    .restart local v13       #offset:F
    :cond_2b
    const/4 v2, 0x2

    new-array v5, v2, [I

    .line 79
    .local v5, colors:[I
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainColors:[I

    aget v3, v3, v12

    aput v3, v5, v2

    .line 80
    const/4 v2, 0x1

    const/high16 v3, -0x100

    aput v3, v5, v2

    .line 81
    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-float v4, v2

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 82
    .local v0, shader:Landroid/graphics/Shader;
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 83
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewCanvas:Landroid/graphics/Canvas;

    int-to-float v2, v12

    mul-float v7, v2, v13

    int-to-float v2, v12

    mul-float v9, v2, v13

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v10, v2

    iget-object v11, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mPaint:Landroid/graphics/Paint;

    move v8, v1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 77
    add-int/lit8 v12, v12, 0x1

    goto :goto_20
.end method


# virtual methods
.method public Init(Lcom/infraware/polarisoffice/common/ColorPickerMainView$OnColorPickerMainListener;I)V
    .registers 7
    .parameter "listener"
    .parameter "color"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mListener:Lcom/infraware/polarisoffice/common/ColorPickerMainView$OnColorPickerMainListener;

    .line 55
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mPaint:Landroid/graphics/Paint;

    .line 57
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02009e

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 58
    .local v0, hueBarBg:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/NinePatch;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    const-string v3, ""

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewBg:Landroid/graphics/NinePatch;

    .line 59
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005d

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mBlackPoint:Landroid/graphics/Bitmap;

    .line 60
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005f

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mWhitePoint:Landroid/graphics/Bitmap;

    .line 62
    invoke-virtual {p0, p2}, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->UpdateMainColors(I)V

    .line 63
    return-void
.end method

.method public UpdateMainColors(I)V
    .registers 7
    .parameter "color"

    .prologue
    .line 66
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v1, 0x100

    if-lt v0, v1, :cond_9

    .line 69
    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->DrawMainView()V

    .line 70
    return-void

    .line 67
    :cond_9
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainColors:[I

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    rsub-int v2, v2, 0xff

    mul-int/2addr v2, v0

    div-int/lit16 v2, v2, 0xff

    rsub-int v2, v2, 0xff

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    rsub-int v3, v3, 0xff

    mul-int/2addr v3, v0

    div-int/lit16 v3, v3, 0xff

    rsub-int v3, v3, 0xff

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    rsub-int v4, v4, 0xff

    mul-int/2addr v4, v0

    div-int/lit16 v4, v4, 0xff

    rsub-int v4, v4, 0xff

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v1, v0

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 117
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewBg:Landroid/graphics/NinePatch;

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewBgRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 118
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 120
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mTouchPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mTouchPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 121
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewBlackRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mTouchPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mTouchPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 122
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mBlackPoint:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mTouchPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mBlackPoint:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mTouchPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mBlackPoint:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 126
    :cond_58
    :goto_58
    return-void

    .line 124
    :cond_59
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mWhitePoint:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mTouchPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mWhitePoint:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mTouchPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mWhitePoint:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_58
.end method

.method protected onSizeChanged(IIII)V
    .registers 13
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v5, 0x1

    .line 99
    const/high16 v3, 0x4080

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v5, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v2, v3

    .line 100
    .local v2, margin:I
    const v3, 0x4305547b

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v5, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v1, v3

    .line 101
    .local v1, black_width:I
    const v3, 0x42ed570a

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v5, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v0, v3

    .line 103
    .local v0, black_height:I
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewBgRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->getPaddingRight()I

    move-result v6

    sub-int v6, p1, v6

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->getPaddingBottom()I

    move-result v7

    sub-int v7, p2, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 104
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewBgRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 105
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 106
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewBlackRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v1

    iget-object v7, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 107
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mTouchPoint:Landroid/graphics/Point;

    div-int/lit8 v4, p1, 0x2

    div-int/lit8 v5, p2, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    .line 109
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewBitmap:Landroid/graphics/Bitmap;

    .line 110
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewCanvas:Landroid/graphics/Canvas;

    .line 111
    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->DrawMainView()V

    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 113
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_28

    .line 141
    :cond_7
    :goto_7
    const/4 v2, 0x1

    return v2

    .line 132
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 133
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 135
    .local v1, y:I
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mMainViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 136
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->mTouchPoint:Landroid/graphics/Point;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 137
    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->ChangeMainViewColor()V

    .line 138
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ColorPickerMainView;->invalidate()V

    goto :goto_7

    .line 130
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method
