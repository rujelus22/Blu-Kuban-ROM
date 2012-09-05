.class public Lcom/infraware/office/basetoolbar/ToolbarBtn;
.super Landroid/widget/ImageButton;
.source "ToolbarBtn.java"

# interfaces
.implements Lcom/infraware/office/basetoolbar/ToolbarE$ToolbarID;
.implements Lcom/infraware/office/basetoolbar/ToolbarE$ToolbarTypeDef;
.implements Lcom/infraware/office/basetoolbar/ToolbarE$ToolbarMsgType;


# instance fields
.field private mBgImageRect:Landroid/graphics/Rect;

.field private mBgPress:Landroid/graphics/Bitmap;

.field private mBgSelect:Landroid/graphics/Bitmap;

.field private mBtnState:I

.field private mClientRc:Landroid/graphics/Rect;

.field private mHandler:Landroid/os/Handler;

.field private mIconDisable:Landroid/graphics/Bitmap;

.field private mIconNormal:Landroid/graphics/Bitmap;

.field private mToast:Landroid/widget/Toast;

.field private mToolBarItem:Lcom/infraware/office/basetoolbar/ToolbarItem;

.field private mbChangeImage:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mClientRc:Landroid/graphics/Rect;

    .line 27
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mBgImageRect:Landroid/graphics/Rect;

    .line 28
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mToast:Landroid/widget/Toast;

    .line 30
    iput v1, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mBtnState:I

    .line 31
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mToolBarItem:Lcom/infraware/office/basetoolbar/ToolbarItem;

    .line 32
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mbChangeImage:Ljava/lang/Boolean;

    .line 33
    new-instance v0, Lcom/infraware/office/basetoolbar/ToolbarBtn$1;

    invoke-direct {v0, p0}, Lcom/infraware/office/basetoolbar/ToolbarBtn$1;-><init>(Lcom/infraware/office/basetoolbar/ToolbarBtn;)V

    iput-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mHandler:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mClientRc:Landroid/graphics/Rect;

    .line 27
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mBgImageRect:Landroid/graphics/Rect;

    .line 28
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mToast:Landroid/widget/Toast;

    .line 30
    iput v1, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mBtnState:I

    .line 31
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mToolBarItem:Lcom/infraware/office/basetoolbar/ToolbarItem;

    .line 32
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mbChangeImage:Ljava/lang/Boolean;

    .line 33
    new-instance v0, Lcom/infraware/office/basetoolbar/ToolbarBtn$1;

    invoke-direct {v0, p0}, Lcom/infraware/office/basetoolbar/ToolbarBtn$1;-><init>(Lcom/infraware/office/basetoolbar/ToolbarBtn;)V

    iput-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mHandler:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mClientRc:Landroid/graphics/Rect;

    .line 27
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mBgImageRect:Landroid/graphics/Rect;

    .line 28
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mToast:Landroid/widget/Toast;

    .line 30
    iput v1, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mBtnState:I

    .line 31
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mToolBarItem:Lcom/infraware/office/basetoolbar/ToolbarItem;

    .line 32
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mbChangeImage:Ljava/lang/Boolean;

    .line 33
    new-instance v0, Lcom/infraware/office/basetoolbar/ToolbarBtn$1;

    invoke-direct {v0, p0}, Lcom/infraware/office/basetoolbar/ToolbarBtn$1;-><init>(Lcom/infraware/office/basetoolbar/ToolbarBtn;)V

    iput-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mHandler:Landroid/os/Handler;

    .line 52
    return-void
.end method


# virtual methods
.method public getBtnState()I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mBtnState:I

    return v0
.end method

.method public getToolBarItem()Lcom/infraware/office/basetoolbar/ToolbarItem;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mToolBarItem:Lcom/infraware/office/basetoolbar/ToolbarItem;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 143
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mIconNormal:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mIconDisable:Landroid/graphics/Bitmap;

    if-nez v0, :cond_a

    .line 160
    :cond_9
    :goto_9
    return-void

    .line 146
    :cond_a
    iget v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mBtnState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_40

    .line 147
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 148
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mBgSelect:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mBgImageRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mClientRc:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 150
    :cond_1e
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mIconDisable:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mIconDisable:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mIconDisable:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_9

    .line 153
    :cond_40
    iget v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mBtnState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_70

    .line 154
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mBgSelect:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mBgImageRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mClientRc:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 158
    :cond_4e
    :goto_4e
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mIconNormal:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mIconNormal:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mIconNormal:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_9

    .line 155
    :cond_70
    iget v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mBtnState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4e

    .line 156
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mBgPress:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mBgImageRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mClientRc:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_4e
.end method

.method protected onSizeChanged(IIII)V
    .registers 7
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;->onSizeChanged(IIII)V

    .line 136
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mClientRc:Landroid/graphics/Rect;

    if-nez v0, :cond_f

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mClientRc:Landroid/graphics/Rect;

    .line 138
    :cond_f
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mClientRc:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 139
    return-void
.end method

.method public setBtnState(I)V
    .registers 5
    .parameter "BtnState"

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 59
    iget v1, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mBtnState:I

    if-ne v1, p1, :cond_7

    .line 67
    :cond_6
    :goto_6
    return-void

    .line 61
    :cond_7
    iget v1, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mBtnState:I

    if-ne v1, v0, :cond_d

    if-eq p1, v2, :cond_6

    .line 64
    :cond_d
    if-ne p1, v0, :cond_10

    const/4 v0, 0x0

    :cond_10
    invoke-virtual {p0, v0}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->setEnabled(Z)V

    .line 65
    iput p1, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mBtnState:I

    .line 66
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_6
.end method

.method public setChangeImage(Ljava/lang/Boolean;)V
    .registers 4
    .parameter "bChangeImage"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mbChangeImage:Ljava/lang/Boolean;

    .line 97
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mbChangeImage:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 98
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mToolBarItem:Lcom/infraware/office/basetoolbar/ToolbarItem;

    invoke-virtual {v0}, Lcom/infraware/office/basetoolbar/ToolbarItem;->getIconSetNormalId()I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 99
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mToolBarItem:Lcom/infraware/office/basetoolbar/ToolbarItem;

    invoke-virtual {v1}, Lcom/infraware/office/basetoolbar/ToolbarItem;->getIconSetNormalId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mIconNormal:Landroid/graphics/Bitmap;

    .line 100
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mToolBarItem:Lcom/infraware/office/basetoolbar/ToolbarItem;

    invoke-virtual {v1}, Lcom/infraware/office/basetoolbar/ToolbarItem;->getIconSetDisableId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mIconDisable:Landroid/graphics/Bitmap;

    .line 107
    :goto_33
    return-void

    .line 103
    :cond_34
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mToolBarItem:Lcom/infraware/office/basetoolbar/ToolbarItem;

    invoke-virtual {v0}, Lcom/infraware/office/basetoolbar/ToolbarItem;->getIconNormalId()I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 104
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mToolBarItem:Lcom/infraware/office/basetoolbar/ToolbarItem;

    invoke-virtual {v1}, Lcom/infraware/office/basetoolbar/ToolbarItem;->getIconNormalId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mIconNormal:Landroid/graphics/Bitmap;

    .line 105
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mToolBarItem:Lcom/infraware/office/basetoolbar/ToolbarItem;

    invoke-virtual {v1}, Lcom/infraware/office/basetoolbar/ToolbarItem;->getIconDisableId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mIconDisable:Landroid/graphics/Bitmap;

    goto :goto_33
.end method

.method public setInit(Lcom/infraware/office/basetoolbar/ToolbarItem;)V
    .registers 6
    .parameter "toolBarItem"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 74
    iput-object p1, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mToolBarItem:Lcom/infraware/office/basetoolbar/ToolbarItem;

    .line 76
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mToolBarItem:Lcom/infraware/office/basetoolbar/ToolbarItem;

    invoke-virtual {v0}, Lcom/infraware/office/basetoolbar/ToolbarItem;->getToolbarId()I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->setId(I)V

    .line 77
    invoke-super {p0, v2}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 78
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mToolBarItem:Lcom/infraware/office/basetoolbar/ToolbarItem;

    invoke-virtual {v0}, Lcom/infraware/office/basetoolbar/ToolbarItem;->getIconNormalId()I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 79
    invoke-super {p0, v3}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 80
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mToolBarItem:Lcom/infraware/office/basetoolbar/ToolbarItem;

    invoke-virtual {v1}, Lcom/infraware/office/basetoolbar/ToolbarItem;->getTextId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 81
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isSupportAccessibility()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 82
    invoke-super {p0, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 85
    :goto_36
    invoke-super {p0, v3}, Landroid/widget/ImageButton;->setFocusableInTouchMode(Z)V

    .line 87
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mToolBarItem:Lcom/infraware/office/basetoolbar/ToolbarItem;

    invoke-virtual {v1}, Lcom/infraware/office/basetoolbar/ToolbarItem;->getIconNormalId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mIconNormal:Landroid/graphics/Bitmap;

    .line 88
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mToolBarItem:Lcom/infraware/office/basetoolbar/ToolbarItem;

    invoke-virtual {v1}, Lcom/infraware/office/basetoolbar/ToolbarItem;->getIconDisableId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mIconDisable:Landroid/graphics/Bitmap;

    .line 89
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020392

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mBgSelect:Landroid/graphics/Bitmap;

    .line 90
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020391

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mBgPress:Landroid/graphics/Bitmap;

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mBgSelect:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mBgSelect:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mBgImageRect:Landroid/graphics/Rect;

    .line 92
    return-void

    .line 84
    :cond_87
    invoke-super {p0, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    goto :goto_36
.end method

.method public showTooltip()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 110
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 111
    .local v0, imageCodeProject:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mbChangeImage:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_63

    .line 112
    iget-object v3, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mToolBarItem:Lcom/infraware/office/basetoolbar/ToolbarItem;

    invoke-virtual {v3}, Lcom/infraware/office/basetoolbar/ToolbarItem;->getIconSetNormalId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    :goto_1b
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 117
    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 118
    iget-object v3, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mToast:Landroid/widget/Toast;

    if-nez v3, :cond_6d

    .line 120
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mToolBarItem:Lcom/infraware/office/basetoolbar/ToolbarItem;

    invoke-virtual {v5}, Lcom/infraware/office/basetoolbar/ToolbarItem;->getTextId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mToast:Landroid/widget/Toast;

    .line 121
    iget-object v3, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 122
    .local v2, toastView:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 123
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 124
    invoke-virtual {v2, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 129
    .end local v2           #toastView:Landroid/widget/LinearLayout;
    :goto_52
    iget-object v3, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mToast:Landroid/widget/Toast;

    const/16 v4, 0x31

    iget v5, v1, Landroid/graphics/Rect;->top:I

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v4, v6, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 130
    iget-object v3, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 131
    return-void

    .line 114
    .end local v1           #rect:Landroid/graphics/Rect;
    :cond_63
    iget-object v3, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mToolBarItem:Lcom/infraware/office/basetoolbar/ToolbarItem;

    invoke-virtual {v3}, Lcom/infraware/office/basetoolbar/ToolbarItem;->getIconNormalId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1b

    .line 127
    .restart local v1       #rect:Landroid/graphics/Rect;
    :cond_6d
    iget-object v3, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/infraware/office/basetoolbar/ToolbarBtn;->mToolBarItem:Lcom/infraware/office/basetoolbar/ToolbarItem;

    invoke-virtual {v5}, Lcom/infraware/office/basetoolbar/ToolbarItem;->getTextId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_52
.end method
