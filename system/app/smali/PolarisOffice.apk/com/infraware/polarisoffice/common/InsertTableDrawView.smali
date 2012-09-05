.class public Lcom/infraware/polarisoffice/common/InsertTableDrawView;
.super Landroid/view/View;
.source "InsertTableDrawView.java"


# instance fields
.field m_nCol:I

.field m_nRow:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x2

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    iput v1, p0, Lcom/infraware/polarisoffice/common/InsertTableDrawView;->m_nRow:I

    .line 79
    iput v1, p0, Lcom/infraware/polarisoffice/common/InsertTableDrawView;->m_nCol:I

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x2

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    iput v0, p0, Lcom/infraware/polarisoffice/common/InsertTableDrawView;->m_nRow:I

    .line 86
    iput v0, p0, Lcom/infraware/polarisoffice/common/InsertTableDrawView;->m_nCol:I

    .line 87
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16
    .parameter "canvas"

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/InsertTableDrawView;->getWidth()I

    move-result v9

    .line 21
    .local v9, w:I
    div-int/lit8 v5, v9, 0x5

    .line 22
    .local v5, one_w:I
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/InsertTableDrawView;->getHeight()I

    move-result v1

    .line 23
    .local v1, h:I
    div-int/lit8 v4, v1, 0x4

    .line 24
    .local v4, one_h:I
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 27
    .local v6, pt:Landroid/graphics/Paint;
    const/4 v2, 0x0

    .line 28
    .local v2, imgLeft:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 30
    .local v3, imgRight:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/InsertTableDrawView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020200

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 31
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/InsertTableDrawView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0201ff

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 33
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 36
    .local v8, rc:Landroid/graphics/Rect;
    const/4 v7, 0x0

    .local v7, r:I
    :goto_37
    const/4 v10, 0x4

    if-lt v7, v10, :cond_3e

    .line 72
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 73
    return-void

    .line 38
    :cond_3e
    const/4 v0, 0x0

    .local v0, c:I
    :goto_3f
    const/4 v10, 0x5

    if-lt v0, v10, :cond_45

    .line 36
    add-int/lit8 v7, v7, 0x1

    goto :goto_37

    .line 40
    :cond_45
    mul-int v10, v0, v5

    add-int/lit8 v10, v10, 0x2

    mul-int v11, v7, v4

    add-int/lit8 v11, v11, 0x2

    mul-int v12, v0, v5

    add-int/2addr v12, v5

    add-int/lit8 v12, v12, -0x2

    mul-int v13, v7, v4

    add-int/2addr v13, v4

    add-int/lit8 v13, v13, -0x2

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 43
    iget v10, p0, Lcom/infraware/polarisoffice/common/InsertTableDrawView;->m_nCol:I

    if-ge v0, v10, :cond_7d

    iget v10, p0, Lcom/infraware/polarisoffice/common/InsertTableDrawView;->m_nRow:I

    if-ge v7, v10, :cond_7d

    .line 45
    if-eqz v2, :cond_6f

    .line 47
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 48
    const/4 v10, 0x0

    invoke-virtual {p1, v2, v10, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 38
    :goto_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 52
    :cond_6f
    const/16 v10, 0x80

    const/4 v11, 0x6

    const/16 v12, 0xba

    const/16 v13, 0xb6

    invoke-virtual {v6, v10, v11, v12, v13}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 53
    invoke-virtual {p1, v8, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_6c

    .line 58
    :cond_7d
    if-eqz v3, :cond_88

    .line 60
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    const/4 v10, 0x0

    invoke-virtual {p1, v3, v10, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_6c

    .line 65
    :cond_88
    const/16 v10, 0x80

    const/16 v11, 0x3c

    const/16 v12, 0x3c

    const/16 v13, 0x3c

    invoke-virtual {v6, v10, v11, v12, v13}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 66
    invoke-virtual {p1, v8, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_6c
.end method

.method public setRowCol(II)V
    .registers 3
    .parameter "r"
    .parameter "c"

    .prologue
    .line 91
    iput p1, p0, Lcom/infraware/polarisoffice/common/InsertTableDrawView;->m_nRow:I

    .line 92
    iput p2, p0, Lcom/infraware/polarisoffice/common/InsertTableDrawView;->m_nCol:I

    .line 93
    return-void
.end method
