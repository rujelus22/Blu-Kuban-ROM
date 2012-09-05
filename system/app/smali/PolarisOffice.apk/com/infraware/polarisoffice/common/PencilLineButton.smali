.class public Lcom/infraware/polarisoffice/common/PencilLineButton;
.super Landroid/widget/ImageButton;
.source "PencilLineButton.java"


# instance fields
.field public mColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/infraware/polarisoffice/common/PencilLineButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/infraware/polarisoffice/common/PencilLineButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/polarisoffice/common/PencilLineButton;->mColor:I

    .line 28
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .parameter "arg0"

    .prologue
    const/high16 v9, 0x4000

    .line 36
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 37
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 38
    .local v1, paint:Landroid/graphics/Paint;
    iget v4, p0, Lcom/infraware/polarisoffice/common/PencilLineButton;->mColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/PencilLineButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200f8

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 41
    .local v0, color:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/PencilLineButton;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v2, v4, v5

    .line 42
    .local v2, x:I
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/PencilLineButton;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 43
    .local v3, y:I
    new-instance v4, Landroid/graphics/RectF;

    add-int/lit8 v5, v2, 0x9

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, -0xd

    int-to-float v6, v6

    add-int/lit8 v7, v2, 0x46

    int-to-float v7, v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    add-int/2addr v8, v3

    add-int/lit8 v8, v8, -0x7

    int-to-float v8, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v4, v9, v9, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 44
    int-to-float v4, v2

    int-to-float v5, v3

    const/4 v6, 0x0

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 45
    return-void
.end method

.method public setColor(I)V
    .registers 2
    .parameter "color"

    .prologue
    .line 31
    iput p1, p0, Lcom/infraware/polarisoffice/common/PencilLineButton;->mColor:I

    .line 32
    return-void
.end method
