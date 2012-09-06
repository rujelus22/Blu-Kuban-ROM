.class public Lcom/google/android/apps/plus/views/EventStreamCardView;
.super Lcom/google/android/apps/plus/views/StreamCardView;
.source "EventStreamCardView.java"


# instance fields
.field private mDrawer:Lcom/google/android/apps/plus/views/EventCardDrawer;

.field private mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

.field private mWrapContent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/EventStreamCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/StreamCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Lcom/google/android/apps/plus/views/EventCardDrawer;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/views/EventCardDrawer;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/EventStreamCardView;->mDrawer:Lcom/google/android/apps/plus/views/EventCardDrawer;

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/EventStreamCardView;->setPaddingEnabled(Z)V

    .line 39
    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;IIII)I
    .registers 13
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventStreamCardView;->mDrawer:Lcom/google/android/apps/plus/views/EventCardDrawer;

    add-int v3, p2, p4

    add-int v1, p3, p5

    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventStreamCardView;->mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int v4, v1, v2

    move v1, p2

    move v2, p3

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/views/EventCardDrawer;->draw(IIIILandroid/graphics/Canvas;)I

    move-result v6

    .line 139
    .local v6, returnValue:I
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/views/EventStreamCardView;->drawPlusOneBar(Landroid/graphics/Canvas;)V

    .line 140
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/views/EventStreamCardView;->drawWhatsHot(Landroid/graphics/Canvas;)V

    .line 141
    return v6
.end method

.method public getEvent()Lcom/google/api/services/plusi/model/PlusEvent;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventStreamCardView;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    return-object v0
.end method

.method public init(Landroid/database/Cursor;IILandroid/view/View$OnClickListener;Lcom/google/android/apps/plus/views/ItemClickListener;Lcom/google/android/apps/plus/views/StreamCardView$ViewedListener;Lcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;)V
    .registers 16
    .parameter "cursor"
    .parameter "displaySizeType"
    .parameter "size"
    .parameter "onClickListener"
    .parameter "itemClickListener"
    .parameter "viewedListener"
    .parameter "plusBarClickListener"

    .prologue
    .line 50
    invoke-super/range {p0 .. p7}, Lcom/google/android/apps/plus/views/StreamCardView;->init(Landroid/database/Cursor;IILandroid/view/View$OnClickListener;Lcom/google/android/apps/plus/views/ItemClickListener;Lcom/google/android/apps/plus/views/StreamCardView$ViewedListener;Lcom/google/android/apps/plus/views/StreamCardView$StreamPlusBarClickListener;)V

    .line 53
    const v0, 0x7f080441

    iput v0, p0, Lcom/google/android/apps/plus/views/EventStreamCardView;->mAutoText:I

    .line 55
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 56
    .local v7, eventData:[B
    if-eqz v7, :cond_33

    .line 57
    invoke-static {}, Lcom/google/api/services/plusi/model/PlusEventJson;->getInstance()Lcom/google/api/services/plusi/model/PlusEventJson;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/api/services/plusi/model/PlusEventJson;->fromByteArray([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/plusi/model/PlusEvent;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/EventStreamCardView;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    .line 64
    :goto_1c
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventStreamCardView;->mDrawer:Lcom/google/android/apps/plus/views/EventCardDrawer;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EventStreamCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/service/EsService;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/apps/plus/views/EventStreamCardView;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventStreamCardView;->mAuthorGaiaId:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventStreamCardView;->mAttribution:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/google/android/apps/plus/views/EventStreamCardView;->mItemClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    move-object v2, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/plus/views/EventCardDrawer;->bind(Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/views/CardView;Lcom/google/api/services/plusi/model/PlusEvent;Ljava/lang/String;Ljava/lang/CharSequence;Lcom/google/android/apps/plus/views/ClickableUserImage$UserImageClickListener;)V

    .line 66
    return-void

    .line 60
    :cond_33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/EventStreamCardView;->mEvent:Lcom/google/api/services/plusi/model/PlusEvent;

    goto :goto_1c
.end method

.method protected layoutElements(IIII)I
    .registers 11
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 109
    sget v3, Lcom/google/android/apps/plus/views/EventStreamCardView;->sXPadding:I

    add-int/2addr v3, p1

    sget v4, Lcom/google/android/apps/plus/views/EventStreamCardView;->sBottomBorderPadding:I

    sub-int v4, p4, v4

    sget v5, Lcom/google/android/apps/plus/views/EventStreamCardView;->sXDoublePadding:I

    sub-int v5, p3, v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/google/android/apps/plus/views/EventStreamCardView;->createPlusOneBar(III)I

    .line 110
    iget-object v3, p0, Lcom/google/android/apps/plus/views/EventStreamCardView;->mDrawer:Lcom/google/android/apps/plus/views/EventCardDrawer;

    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventStreamCardView;->mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int v4, p4, v4

    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/google/android/apps/plus/views/EventCardDrawer;->layout(IIII)I

    move-result v3

    sget v4, Lcom/google/android/apps/plus/views/EventStreamCardView;->sBottomBorderPadding:I

    add-int v2, v3, v4

    .line 113
    .local v2, returnHeight:I
    iget-boolean v3, p0, Lcom/google/android/apps/plus/views/EventStreamCardView;->mWrapContent:Z

    if-eqz v3, :cond_5f

    .line 114
    add-int v0, p2, v2

    .line 116
    .local v0, buttonTop:I
    iget-object v3, p0, Lcom/google/android/apps/plus/views/EventStreamCardView;->mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 117
    .local v1, r:Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v3, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 119
    iget-object v3, p0, Lcom/google/android/apps/plus/views/EventStreamCardView;->mReshareButton:Lcom/google/android/apps/plus/views/ClickableButton;

    if-eqz v3, :cond_44

    .line 120
    iget-object v3, p0, Lcom/google/android/apps/plus/views/EventStreamCardView;->mReshareButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 121
    iget v3, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v3, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 124
    :cond_44
    iget-object v3, p0, Lcom/google/android/apps/plus/views/EventStreamCardView;->mCommentsButton:Lcom/google/android/apps/plus/views/ClickableButton;

    if-eqz v3, :cond_53

    .line 125
    iget-object v3, p0, Lcom/google/android/apps/plus/views/EventStreamCardView;->mCommentsButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 126
    iget v3, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v3, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 129
    :cond_53
    iget-object v3, p0, Lcom/google/android/apps/plus/views/EventStreamCardView;->mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sget v4, Lcom/google/android/apps/plus/views/EventStreamCardView;->sBottomBorderPadding:I

    add-int v2, v3, v4

    .line 132
    .end local v0           #buttonTop:I
    .end local v1           #r:Landroid/graphics/Rect;
    :cond_5f
    return v2
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 146
    invoke-super {p0}, Lcom/google/android/apps/plus/views/StreamCardView;->onAttachedToWindow()V

    .line 147
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventStreamCardView;->mDrawer:Lcom/google/android/apps/plus/views/EventCardDrawer;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/EventCardDrawer;->attach()V

    .line 148
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 152
    invoke-super {p0}, Lcom/google/android/apps/plus/views/StreamCardView;->onDetachedFromWindow()V

    .line 153
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventStreamCardView;->mDrawer:Lcom/google/android/apps/plus/views/EventCardDrawer;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/EventCardDrawer;->detach()V

    .line 154
    return-void
.end method

.method protected onMeasure(II)V
    .registers 16
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 77
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 78
    .local v3, widthDimension:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 79
    .local v1, heightDimensionArg:I
    if-gtz v1, :cond_4b

    const/4 v8, 0x1

    :goto_b
    iput-boolean v8, p0, Lcom/google/android/apps/plus/views/EventStreamCardView;->mWrapContent:Z

    .line 80
    iget-boolean v8, p0, Lcom/google/android/apps/plus/views/EventStreamCardView;->mWrapContent:Z

    if-eqz v8, :cond_4d

    move v0, v3

    .line 82
    .local v0, heightDimension:I
    :goto_12
    const/4 v5, 0x0

    .line 83
    .local v5, xPadding:I
    const/4 v7, 0x0

    .line 84
    .local v7, yPadding:I
    const/4 v4, 0x0

    .line 85
    .local v4, xDoublePadding:I
    const/4 v6, 0x0

    .line 87
    .local v6, yDoublePadding:I
    iget-boolean v8, p0, Lcom/google/android/apps/plus/views/EventStreamCardView;->mPaddingEnabled:Z

    if-eqz v8, :cond_22

    .line 88
    sget v5, Lcom/google/android/apps/plus/views/EventStreamCardView;->sXPadding:I

    .line 89
    sget v7, Lcom/google/android/apps/plus/views/EventStreamCardView;->sYPadding:I

    .line 90
    sget v4, Lcom/google/android/apps/plus/views/EventStreamCardView;->sXDoublePadding:I

    .line 91
    sget v6, Lcom/google/android/apps/plus/views/EventStreamCardView;->sYDoublePadding:I

    .line 94
    :cond_22
    sget v8, Lcom/google/android/apps/plus/views/EventStreamCardView;->sLeftBorderPadding:I

    add-int/2addr v8, v5

    sget v9, Lcom/google/android/apps/plus/views/EventStreamCardView;->sTopBorderPadding:I

    add-int/2addr v9, v7

    sget v10, Lcom/google/android/apps/plus/views/EventStreamCardView;->sLeftBorderPadding:I

    add-int/2addr v10, v4

    sget v11, Lcom/google/android/apps/plus/views/EventStreamCardView;->sRightBorderPadding:I

    add-int/2addr v10, v11

    sub-int v10, v3, v10

    sget v11, Lcom/google/android/apps/plus/views/EventStreamCardView;->sTopBorderPadding:I

    add-int/2addr v11, v6

    sget v12, Lcom/google/android/apps/plus/views/EventStreamCardView;->sBottomBorderPadding:I

    add-int/2addr v11, v12

    sub-int v11, v0, v11

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/google/android/apps/plus/views/EventStreamCardView;->layoutElements(IIII)I

    move-result v2

    .line 99
    .local v2, measuredHeight:I
    iget-boolean v8, p0, Lcom/google/android/apps/plus/views/EventStreamCardView;->mWrapContent:Z

    if-eqz v8, :cond_4f

    .line 100
    sget v8, Lcom/google/android/apps/plus/views/EventStreamCardView;->sTopBorderPadding:I

    add-int/2addr v8, v2

    add-int/2addr v8, v6

    sget v9, Lcom/google/android/apps/plus/views/EventStreamCardView;->sBottomBorderPadding:I

    add-int/2addr v8, v9

    invoke-virtual {p0, v3, v8}, Lcom/google/android/apps/plus/views/EventStreamCardView;->setMeasuredDimension(II)V

    .line 105
    :goto_4a
    return-void

    .line 79
    .end local v0           #heightDimension:I
    .end local v2           #measuredHeight:I
    .end local v4           #xDoublePadding:I
    .end local v5           #xPadding:I
    .end local v6           #yDoublePadding:I
    .end local v7           #yPadding:I
    :cond_4b
    const/4 v8, 0x0

    goto :goto_b

    :cond_4d
    move v0, v1

    .line 80
    goto :goto_12

    .line 103
    .restart local v0       #heightDimension:I
    .restart local v2       #measuredHeight:I
    .restart local v4       #xDoublePadding:I
    .restart local v5       #xPadding:I
    .restart local v6       #yDoublePadding:I
    .restart local v7       #yPadding:I
    :cond_4f
    invoke-virtual {p0, v3, v0}, Lcom/google/android/apps/plus/views/EventStreamCardView;->setMeasuredDimension(II)V

    goto :goto_4a
.end method

.method public onRecycle()V
    .registers 2

    .prologue
    .line 70
    invoke-super {p0}, Lcom/google/android/apps/plus/views/StreamCardView;->onRecycle()V

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventStreamCardView;->mDrawer:Lcom/google/android/apps/plus/views/EventCardDrawer;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/EventCardDrawer;->clear()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/EventStreamCardView;->mWrapContent:Z

    .line 73
    return-void
.end method
