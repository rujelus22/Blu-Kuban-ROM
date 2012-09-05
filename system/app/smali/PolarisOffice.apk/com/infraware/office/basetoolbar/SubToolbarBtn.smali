.class public Lcom/infraware/office/basetoolbar/SubToolbarBtn;
.super Landroid/widget/ImageView;
.source "SubToolbarBtn.java"

# interfaces
.implements Lcom/infraware/office/basetoolbar/ToolbarE$ToolbarID;
.implements Lcom/infraware/office/basetoolbar/ToolbarE$ToolbarTypeDef;
.implements Lcom/infraware/office/basetoolbar/ToolbarE$ToolbarMsgType;
.implements Lcom/infraware/office/basetoolbar/ToolbarE$SubToolbarBtnType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/office/basetoolbar/SubToolbarBtn$OnSubToolbarBtnListener;
    }
.end annotation


# instance fields
.field private mBgColor:Landroid/graphics/Bitmap;

.field private mBgImageRect:Landroid/graphics/Rect;

.field private mBgPress:Landroid/graphics/Bitmap;

.field private mBgSelect:Landroid/graphics/Bitmap;

.field private mBtnState:I

.field private mClientRc:Landroid/graphics/Rect;

.field private mColorBtn:I

.field private mDrawRect:Landroid/graphics/Rect;

.field private mFillPaint:Landroid/graphics/Paint;

.field private mHandler:Landroid/os/Handler;

.field private mIconDisable:Landroid/graphics/Bitmap;

.field private mIconNormal:Landroid/graphics/Bitmap;

.field private mIconResID:I

.field private mListener:Lcom/infraware/office/basetoolbar/SubToolbarBtn$OnSubToolbarBtnListener;

.field private mStrokePaint:Landroid/graphics/Paint;

.field private mToast:Landroid/widget/Toast;

.field private mToastTextId:I

.field private mToolbarId:I

.field private mbPress:Z

.field private mbShowTooltip:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 32
    iput v2, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mIconResID:I

    .line 34
    iput v1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mBtnState:I

    .line 35
    iput-boolean v1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mbPress:Z

    .line 36
    iput-boolean v1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mbShowTooltip:Z

    .line 37
    iput v1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mToastTextId:I

    .line 38
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mClientRc:Landroid/graphics/Rect;

    .line 39
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mFillPaint:Landroid/graphics/Paint;

    .line 40
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mStrokePaint:Landroid/graphics/Paint;

    .line 41
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mDrawRect:Landroid/graphics/Rect;

    .line 42
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mBgImageRect:Landroid/graphics/Rect;

    .line 43
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mToast:Landroid/widget/Toast;

    .line 45
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mListener:Lcom/infraware/office/basetoolbar/SubToolbarBtn$OnSubToolbarBtnListener;

    .line 46
    iput v2, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mToolbarId:I

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mColorBtn:I

    .line 48
    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarBtn$1;

    invoke-direct {v0, p0}, Lcom/infraware/office/basetoolbar/SubToolbarBtn$1;-><init>(Lcom/infraware/office/basetoolbar/SubToolbarBtn;)V

    iput-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mHandler:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput v2, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mIconResID:I

    .line 34
    iput v1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mBtnState:I

    .line 35
    iput-boolean v1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mbPress:Z

    .line 36
    iput-boolean v1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mbShowTooltip:Z

    .line 37
    iput v1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mToastTextId:I

    .line 38
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mClientRc:Landroid/graphics/Rect;

    .line 39
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mFillPaint:Landroid/graphics/Paint;

    .line 40
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mStrokePaint:Landroid/graphics/Paint;

    .line 41
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mDrawRect:Landroid/graphics/Rect;

    .line 42
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mBgImageRect:Landroid/graphics/Rect;

    .line 43
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mToast:Landroid/widget/Toast;

    .line 45
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mListener:Lcom/infraware/office/basetoolbar/SubToolbarBtn$OnSubToolbarBtnListener;

    .line 46
    iput v2, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mToolbarId:I

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mColorBtn:I

    .line 48
    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarBtn$1;

    invoke-direct {v0, p0}, Lcom/infraware/office/basetoolbar/SubToolbarBtn$1;-><init>(Lcom/infraware/office/basetoolbar/SubToolbarBtn;)V

    iput-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mHandler:Landroid/os/Handler;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput v2, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mIconResID:I

    .line 34
    iput v1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mBtnState:I

    .line 35
    iput-boolean v1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mbPress:Z

    .line 36
    iput-boolean v1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mbShowTooltip:Z

    .line 37
    iput v1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mToastTextId:I

    .line 38
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mClientRc:Landroid/graphics/Rect;

    .line 39
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mFillPaint:Landroid/graphics/Paint;

    .line 40
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mStrokePaint:Landroid/graphics/Paint;

    .line 41
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mDrawRect:Landroid/graphics/Rect;

    .line 42
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mBgImageRect:Landroid/graphics/Rect;

    .line 43
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mToast:Landroid/widget/Toast;

    .line 45
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mListener:Lcom/infraware/office/basetoolbar/SubToolbarBtn$OnSubToolbarBtnListener;

    .line 46
    iput v2, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mToolbarId:I

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mColorBtn:I

    .line 48
    new-instance v0, Lcom/infraware/office/basetoolbar/SubToolbarBtn$1;

    invoke-direct {v0, p0}, Lcom/infraware/office/basetoolbar/SubToolbarBtn$1;-><init>(Lcom/infraware/office/basetoolbar/SubToolbarBtn;)V

    iput-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method


# virtual methods
.method public getBtnState()I
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mBtnState:I

    return v0
.end method

.method public getColor()I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 91
    iget v1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mColorBtn:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    .line 97
    :cond_6
    :goto_6
    return v0

    .line 93
    :cond_7
    iget v1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mColorBtn:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_e

    .line 94
    const/4 v0, 0x1

    goto :goto_6

    .line 95
    :cond_e
    iget v1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mColorBtn:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 96
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mIconResID:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_6
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter "canvas"

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const-string v2, "SubToolbarBtn"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getWidth = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "getHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget v2, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mBtnState:I

    if-ne v2, v5, :cond_42

    .line 259
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mIconDisable:Landroid/graphics/Bitmap;

    .line 269
    :cond_30
    :goto_30
    iget v2, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mColorBtn:I

    if-ne v2, v5, :cond_60

    .line 270
    iget-object v2, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mDrawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mDrawRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v2, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 284
    :goto_41
    return-void

    .line 262
    :cond_42
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mIconNormal:Landroid/graphics/Bitmap;

    .line 263
    iget-boolean v2, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mbPress:Z

    if-eqz v2, :cond_52

    .line 264
    iget-object v2, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mBgPress:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mBgImageRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mClientRc:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_30

    .line 265
    :cond_52
    iget v2, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mBtnState:I

    if-ne v2, v7, :cond_30

    .line 266
    iget-object v2, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mBgSelect:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mBgImageRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mClientRc:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_30

    .line 273
    :cond_60
    iget-boolean v2, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mbPress:Z

    if-nez v2, :cond_8d

    iget v2, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mBtnState:I

    if-eq v2, v7, :cond_8d

    .line 274
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 275
    .local v1, rect:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mBgColor:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mBgColor:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mBgColor:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 278
    .end local v1           #rect:Landroid/graphics/Rect;
    :cond_8d
    iget-object v2, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mIconNormal:Landroid/graphics/Bitmap;

    if-nez v2, :cond_a0

    .line 279
    iget-object v2, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mDrawRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 282
    :goto_98
    iget-object v2, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mDrawRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_41

    .line 281
    :cond_a0
    iget-object v2, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mDrawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mDrawRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    invoke-virtual {p1, v0, v2, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_98
.end method

.method protected onSizeChanged(IIII)V
    .registers 12
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 175
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 177
    iget-object v4, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mClientRc:Landroid/graphics/Rect;

    if-nez v4, :cond_10

    .line 178
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mClientRc:Landroid/graphics/Rect;

    .line 179
    :cond_10
    iget-object v4, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mClientRc:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v5, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 181
    if-lez p1, :cond_3e

    if-lez p2, :cond_3e

    .line 182
    const/4 v2, 0x0

    .line 183
    .local v2, paddingWidth:I
    const/4 v1, 0x0

    .line 184
    .local v1, paddingHeight:I
    iget v4, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mColorBtn:I

    if-ne v4, v6, :cond_3f

    .line 185
    iget-object v4, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mIconNormal:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, p1, v4

    div-int/lit8 v2, v4, 0x2

    .line 186
    iget-object v4, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mIconNormal:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v4, p2, v4

    div-int/lit8 v1, v4, 0x2

    .line 187
    new-instance v4, Landroid/graphics/Rect;

    sub-int v5, p1, v2

    sub-int v6, p2, v1

    invoke-direct {v4, v2, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mDrawRect:Landroid/graphics/Rect;

    .line 197
    .end local v1           #paddingHeight:I
    .end local v2           #paddingWidth:I
    :cond_3e
    :goto_3e
    return-void

    .line 190
    .restart local v1       #paddingHeight:I
    .restart local v2       #paddingWidth:I
    :cond_3f
    const/high16 v4, 0x4210

    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v6, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v3, v4

    .line 191
    .local v3, width:I
    const/high16 v4, 0x41e0

    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v6, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v0, v4

    .line 192
    .local v0, height:I
    sub-int v4, p1, v3

    div-int/lit8 v2, v4, 0x2

    .line 193
    sub-int v4, p2, v0

    div-int/lit8 v1, v4, 0x2

    .line 194
    new-instance v4, Landroid/graphics/Rect;

    sub-int v5, p1, v2

    add-int/lit8 v5, v5, -0x1

    sub-int v6, p2, v1

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v4, v2, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mDrawRect:Landroid/graphics/Rect;

    goto :goto_3e
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 201
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 202
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 250
    :goto_c
    return v0

    .line 205
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_b0

    .line 250
    :cond_14
    :goto_14
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_c

    .line 207
    :pswitch_19
    iput-boolean v5, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mbPress:Z

    .line 208
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 209
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 210
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->invalidate()V

    goto :goto_14

    .line 213
    :pswitch_33
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mClientRc:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_14

    .line 214
    iput-boolean v3, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mbPress:Z

    .line 215
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 216
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->invalidate()V

    goto :goto_14

    .line 220
    :pswitch_50
    iget-boolean v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mbShowTooltip:Z

    if-nez v0, :cond_87

    .line 221
    iget v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mBtnState:I

    if-eq v0, v5, :cond_87

    .line 222
    iget-boolean v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mbPress:Z

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mClientRc:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 223
    iget v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mBtnState:I

    if-nez v0, :cond_94

    .line 224
    const/4 v0, 0x2

    iput v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mBtnState:I

    .line 228
    :goto_75
    iget v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mColorBtn:I

    if-ne v0, v5, :cond_97

    .line 229
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mListener:Lcom/infraware/office/basetoolbar/SubToolbarBtn$OnSubToolbarBtnListener;

    iget v1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mToolbarId:I

    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->getId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/infraware/office/basetoolbar/SubToolbarBtn$OnSubToolbarBtnListener;->OnClickSubToolbarBtn(II)V

    .line 232
    :goto_84
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->invalidate()V

    .line 236
    :cond_87
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->invalidate()V

    .line 237
    iput-boolean v3, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mbShowTooltip:Z

    .line 238
    iput-boolean v3, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mbPress:Z

    .line 239
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_14

    .line 226
    :cond_94
    iput v3, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mBtnState:I

    goto :goto_75

    .line 231
    :cond_97
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mListener:Lcom/infraware/office/basetoolbar/SubToolbarBtn$OnSubToolbarBtnListener;

    iget v1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mToolbarId:I

    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->getColor()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/infraware/office/basetoolbar/SubToolbarBtn$OnSubToolbarBtnListener;->OnClickSubToolbarBtn(II)V

    goto :goto_84

    .line 242
    :pswitch_a3
    iput-boolean v3, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mbPress:Z

    .line 243
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 244
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->invalidate()V

    goto/16 :goto_14

    .line 205
    nop

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_50
        :pswitch_33
        :pswitch_a3
    .end packed-switch
.end method

.method public setBtnState(I)V
    .registers 5
    .parameter "BtnState"

    .prologue
    const/4 v2, 0x2

    .line 81
    iget v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mBtnState:I

    if-ne v0, p1, :cond_6

    .line 88
    :cond_5
    :goto_5
    return-void

    .line 83
    :cond_6
    iget v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mBtnState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    if-eq p1, v2, :cond_5

    .line 86
    :cond_d
    iput p1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mBtnState:I

    .line 87
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5
.end method

.method public setImageResource(Lcom/infraware/office/basetoolbar/SubToolbarBtn$OnSubToolbarBtnListener;IILjava/lang/Boolean;)V
    .registers 12
    .parameter "Listener"
    .parameter "toolbarId"
    .parameter "resId"
    .parameter "colorBtn"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 105
    iput-object p1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mListener:Lcom/infraware/office/basetoolbar/SubToolbarBtn$OnSubToolbarBtnListener;

    .line 106
    iput p2, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mToolbarId:I

    .line 108
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202ad

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mBgSelect:Landroid/graphics/Bitmap;

    .line 109
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202ac

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mBgPress:Landroid/graphics/Bitmap;

    .line 110
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mBgSelect:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mBgSelect:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mBgImageRect:Landroid/graphics/Rect;

    .line 111
    invoke-super {p0, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 113
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 114
    iput p3, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mIconResID:I

    .line 115
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mIconResID:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mIconDisable:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mIconNormal:Landroid/graphics/Bitmap;

    .line 116
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202ae

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mBgColor:Landroid/graphics/Bitmap;

    .line 117
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mIconNormal:Landroid/graphics/Bitmap;

    if-nez v1, :cond_9b

    .line 118
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mFillPaint:Landroid/graphics/Paint;

    .line 119
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mFillPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mIconResID:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    iput v5, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mColorBtn:I

    .line 129
    :cond_7d
    :goto_7d
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mStrokePaint:Landroid/graphics/Paint;

    .line 130
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 131
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mStrokePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 132
    iget-object v1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mStrokePaint:Landroid/graphics/Paint;

    const v2, 0x7f070032

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    :goto_9a
    return-void

    .line 124
    :cond_9b
    iget v1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mIconResID:I

    const v2, 0x7f0200a0

    if-ne v1, v2, :cond_a5

    .line 125
    iput v6, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mColorBtn:I

    goto :goto_7d

    .line 126
    :cond_a5
    iget v1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mIconResID:I

    const v2, 0x7f02009f

    if-ne v1, v2, :cond_7d

    .line 127
    const/4 v1, 0x4

    iput v1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mColorBtn:I

    goto :goto_7d

    .line 135
    :cond_b0
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 136
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mIconNormal:Landroid/graphics/Bitmap;

    .line 137
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mIconDisable:Landroid/graphics/Bitmap;

    .line 138
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-ne v1, v6, :cond_e1

    .line 139
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mToastTextId:I

    .line 140
    :cond_e1
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-super {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9a
.end method

.method public setPress(Z)V
    .registers 2
    .parameter "bPress"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mbPress:Z

    .line 102
    return-void
.end method

.method public showTooltip()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 145
    iget v3, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mToastTextId:I

    if-eqz v3, :cond_5a

    .line 146
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 147
    .local v0, imageCodeProject:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mIconNormal:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 149
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 150
    .local v1, location:[I
    invoke-virtual {p0, v1}, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->getLocationOnScreen([I)V

    .line 154
    iget-object v3, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mToast:Landroid/widget/Toast;

    if-nez v3, :cond_5b

    .line 156
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mToastTextId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mToast:Landroid/widget/Toast;

    .line 157
    iget-object v3, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 158
    .local v2, toastView:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 159
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 160
    invoke-virtual {v2, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 165
    .end local v2           #toastView:Landroid/widget/LinearLayout;
    :goto_45
    iget-object v3, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mToast:Landroid/widget/Toast;

    const/16 v4, 0x31

    aget v5, v1, v7

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v4, v6, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 166
    iget-object v3, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 167
    iput-boolean v7, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mbShowTooltip:Z

    .line 169
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->invalidate()V

    .line 171
    .end local v0           #imageCodeProject:Landroid/widget/ImageView;
    .end local v1           #location:[I
    :cond_5a
    return-void

    .line 163
    .restart local v0       #imageCodeProject:Landroid/widget/ImageView;
    .restart local v1       #location:[I
    :cond_5b
    iget-object v3, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->mToastTextId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_45
.end method
