.class Lcom/infraware/polarisoffice/common/ColorView;
.super Landroid/view/View;
.source "ColorView.java"


# instance fields
.field mClientRc:Landroid/graphics/Rect;

.field mColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/infraware/polarisoffice/common/ColorView;->mColor:I

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ColorView;->mClientRc:Landroid/graphics/Rect;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/infraware/polarisoffice/common/ColorView;->mColor:I

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ColorView;->mClientRc:Landroid/graphics/Rect;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/infraware/polarisoffice/common/ColorView;->mColor:I

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ColorView;->mClientRc:Landroid/graphics/Rect;

    .line 24
    return-void
.end method


# virtual methods
.method public getColor()I
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lcom/infraware/polarisoffice/common/ColorView;->mColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter "canvas"

    .prologue
    .line 46
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 47
    .local v1, paint:Landroid/graphics/Paint;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 48
    .local v0, fillRect:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ColorView;->mClientRc:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/ColorView;->mClientRc:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/infraware/polarisoffice/common/ColorView;->mClientRc:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/infraware/polarisoffice/common/ColorView;->mClientRc:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 50
    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ColorView;->mClientRc:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 54
    iget v2, p0, Lcom/infraware/polarisoffice/common/ColorView;->mColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 57
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 7
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 31
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ColorView;->mClientRc:Landroid/graphics/Rect;

    if-nez v0, :cond_f

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ColorView;->mClientRc:Landroid/graphics/Rect;

    .line 33
    :cond_f
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ColorView;->mClientRc:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 34
    return-void
.end method

.method public setColor(I)V
    .registers 2
    .parameter "aColor"

    .prologue
    .line 37
    iput p1, p0, Lcom/infraware/polarisoffice/common/ColorView;->mColor:I

    .line 38
    return-void
.end method
