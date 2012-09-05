.class public Lcom/android/email/activity/MessageListItemContainer;
.super Landroid/view/View;
.source "MessageListItemContainer.java"


# instance fields
.field private mCurrentBg:I

.field public mFontSize:I

.field public mIsBgColorChanged:Z

.field public mItemMode:I

.field public mItemPrevMode:I

.field private mListItem:Lcom/android/email/activity/MessageListItem;

.field private mListSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

.field private mNeedResizeHeight:Z

.field private mPrevBg:I

.field public mPrevFontSize:I

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6
    .parameter "context"
    .parameter "itemMode"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 63
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    iput v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mItemMode:I

    .line 34
    iput v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mItemPrevMode:I

    .line 36
    iput v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mFontSize:I

    .line 38
    iput v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mPrevFontSize:I

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mIsBgColorChanged:Z

    .line 52
    iput v2, p0, Lcom/android/email/activity/MessageListItemContainer;->mViewHeight:I

    .line 54
    iput v2, p0, Lcom/android/email/activity/MessageListItemContainer;->mViewWidth:I

    .line 56
    iput v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mCurrentBg:I

    .line 58
    iput v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mPrevBg:I

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageListItemContainer;->init(Landroid/content/Context;I)V

    .line 65
    return-void
.end method

.method private init(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "itemMode"

    .prologue
    .line 68
    iput p2, p0, Lcom/android/email/activity/MessageListItemContainer;->mItemMode:I

    .line 69
    if-nez p2, :cond_10

    .line 70
    iget-object v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mListItem:Lcom/android/email/activity/MessageListItem;

    if-nez v0, :cond_f

    .line 71
    new-instance v0, Lcom/android/email/activity/MessageListItem;

    invoke-direct {v0, p1, p0}, Lcom/android/email/activity/MessageListItem;-><init>(Landroid/content/Context;Lcom/android/email/activity/MessageListItemContainer;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mListItem:Lcom/android/email/activity/MessageListItem;

    .line 78
    :cond_f
    :goto_f
    return-void

    .line 73
    :cond_10
    const/4 v0, 0x1

    if-ne p2, v0, :cond_f

    .line 74
    iget-object v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mListSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

    if-nez v0, :cond_f

    .line 75
    new-instance v0, Lcom/android/email/activity/MessageListSubTitleItem;

    invoke-direct {v0, p1, p0}, Lcom/android/email/activity/MessageListSubTitleItem;-><init>(Landroid/content/Context;Lcom/android/email/activity/MessageListItemContainer;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mListSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

    goto :goto_f
.end method


# virtual methods
.method public clearItem()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mListItem:Lcom/android/email/activity/MessageListItem;

    .line 104
    iput-object v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mListSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

    .line 105
    return-void
.end method

.method public getItemMode()I
    .registers 2

    .prologue
    .line 108
    iget v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mItemMode:I

    return v0
.end method

.method public getListItem()Lcom/android/email/activity/MessageListItem;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mListItem:Lcom/android/email/activity/MessageListItem;

    return-object v0
.end method

.method public getListItem(Landroid/content/Context;)Lcom/android/email/activity/MessageListItem;
    .registers 3
    .parameter "context"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mListItem:Lcom/android/email/activity/MessageListItem;

    if-nez v0, :cond_b

    .line 86
    new-instance v0, Lcom/android/email/activity/MessageListItem;

    invoke-direct {v0, p1, p0}, Lcom/android/email/activity/MessageListItem;-><init>(Landroid/content/Context;Lcom/android/email/activity/MessageListItemContainer;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mListItem:Lcom/android/email/activity/MessageListItem;

    .line 88
    :cond_b
    iget-object v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mListItem:Lcom/android/email/activity/MessageListItem;

    return-object v0
.end method

.method public getListSubTitleItem()Lcom/android/email/activity/MessageListSubTitleItem;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mListSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

    return-object v0
.end method

.method public getListSubTitleItem(Landroid/content/Context;)Lcom/android/email/activity/MessageListSubTitleItem;
    .registers 3
    .parameter "context"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mListSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

    if-nez v0, :cond_b

    .line 97
    new-instance v0, Lcom/android/email/activity/MessageListSubTitleItem;

    invoke-direct {v0, p1, p0}, Lcom/android/email/activity/MessageListSubTitleItem;-><init>(Landroid/content/Context;Lcom/android/email/activity/MessageListItemContainer;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mListSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

    .line 99
    :cond_b
    iget-object v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mListSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "canvas"

    .prologue
    .line 182
    iget v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mItemMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 183
    iget-object v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mListSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

    if-eqz v0, :cond_e

    .line 184
    iget-object v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mListSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageListSubTitleItem;->onDraw(Landroid/graphics/Canvas;)V

    .line 191
    :cond_e
    :goto_e
    return-void

    .line 186
    :cond_f
    iget v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mItemMode:I

    if-nez v0, :cond_e

    .line 187
    iget-object v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mListItem:Lcom/android/email/activity/MessageListItem;

    if-eqz v0, :cond_e

    .line 188
    iget-object v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mListItem:Lcom/android/email/activity/MessageListItem;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageListItem;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_e
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 159
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mViewWidth:I

    .line 160
    iget-object v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mListSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

    if-eqz v0, :cond_11

    .line 161
    iget-object v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mListSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

    iget v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mViewWidth:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListSubTitleItem;->setViewSize(I)V

    .line 163
    :cond_11
    iget-object v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mListItem:Lcom/android/email/activity/MessageListItem;

    if-eqz v0, :cond_1c

    .line 164
    iget-object v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mListItem:Lcom/android/email/activity/MessageListItem;

    iget v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mViewWidth:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListItem;->setViewSize(I)V

    .line 166
    :cond_1c
    iget v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mItemMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_35

    .line 167
    iget-object v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mListSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

    if-eqz v0, :cond_2d

    .line 168
    iget-object v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mListSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListSubTitleItem;->getViewHeight()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mViewHeight:I

    .line 177
    :cond_2d
    :goto_2d
    iget v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mViewWidth:I

    iget v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mViewHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageListItemContainer;->setMeasuredDimension(II)V

    .line 178
    return-void

    .line 170
    :cond_35
    iget v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mItemMode:I

    if-nez v0, :cond_46

    .line 171
    iget-object v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mListItem:Lcom/android/email/activity/MessageListItem;

    if-eqz v0, :cond_2d

    .line 172
    iget-object v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mListItem:Lcom/android/email/activity/MessageListItem;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListItem;->getViewHeight()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mViewHeight:I

    goto :goto_2d

    .line 175
    :cond_46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mViewHeight:I

    goto :goto_2d
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, handled:Z
    iget v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mItemMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    .line 197
    iget-object v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mListSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

    invoke-virtual {v1, p1}, Lcom/android/email/activity/MessageListSubTitleItem;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 201
    :cond_c
    :goto_c
    if-eqz v0, :cond_1d

    .line 202
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItemContainer;->invalidate()V

    .line 206
    :goto_11
    return v0

    .line 198
    :cond_12
    iget v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mItemMode:I

    if-nez v1, :cond_c

    .line 199
    iget-object v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mListItem:Lcom/android/email/activity/MessageListItem;

    invoke-virtual {v1, p1}, Lcom/android/email/activity/MessageListItem;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_c

    .line 204
    :cond_1d
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_11
.end method

.method public setFontSize(I)V
    .registers 4
    .parameter "newFontSize"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mFontSize:I

    iput v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mPrevFontSize:I

    .line 113
    iput p1, p0, Lcom/android/email/activity/MessageListItemContainer;->mFontSize:I

    .line 114
    iget v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mPrevFontSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    iget v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mPrevFontSize:I

    iget v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mFontSize:I

    if-eq v0, v1, :cond_14

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListItemContainer;->mNeedResizeHeight:Z

    .line 117
    :cond_14
    return-void
.end method

.method public updateBackground()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 120
    iget v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mItemMode:I

    if-ne v1, v4, :cond_65

    .line 121
    iget-object v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mListSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListSubTitleItem;->getBackgroundType()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mCurrentBg:I

    .line 125
    :cond_e
    :goto_e
    iget v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mCurrentBg:I

    iget v2, p0, Lcom/android/email/activity/MessageListItemContainer;->mPrevBg:I

    if-ne v1, v2, :cond_18

    iget-boolean v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mIsBgColorChanged:Z

    if-eqz v1, :cond_27

    .line 126
    :cond_18
    iget v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mItemMode:I

    if-ne v1, v4, :cond_72

    .line 127
    iget-object v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mListSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

    iget v2, p0, Lcom/android/email/activity/MessageListItemContainer;->mCurrentBg:I

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListSubTitleItem;->getBackgroundDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListItemContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    :cond_27
    :goto_27
    iget v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mItemPrevMode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5a

    iget v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mItemPrevMode:I

    iget v2, p0, Lcom/android/email/activity/MessageListItemContainer;->mItemMode:I

    if-ne v1, v2, :cond_36

    iget-boolean v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mNeedResizeHeight:Z

    if-eqz v1, :cond_5a

    .line 134
    :cond_36
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListItemContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 135
    .local v0, fParam:Landroid/widget/AbsListView$LayoutParams;
    iget v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mItemMode:I

    if-ne v1, v4, :cond_82

    .line 136
    iget-boolean v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mNeedResizeHeight:Z

    if-eqz v1, :cond_49

    .line 137
    iget-object v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mListSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListSubTitleItem;->setViewHeight()V

    .line 139
    :cond_49
    iget-object v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mListSubItem:Lcom/android/email/activity/MessageListSubTitleItem;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListSubTitleItem;->getViewHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 148
    :goto_51
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mViewHeight:I

    .line 149
    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageListItemContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItemContainer;->mNeedResizeHeight:Z

    .line 152
    .end local v0           #fParam:Landroid/widget/AbsListView$LayoutParams;
    :cond_5a
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListItemContainer;->mIsBgColorChanged:Z

    .line 153
    iget v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mCurrentBg:I

    iput v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mPrevBg:I

    .line 154
    iget v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mItemMode:I

    iput v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mItemPrevMode:I

    .line 155
    return-void

    .line 122
    :cond_65
    iget v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mItemMode:I

    if-nez v1, :cond_e

    .line 123
    iget-object v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mListItem:Lcom/android/email/activity/MessageListItem;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListItem;->getBackgroundType()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mCurrentBg:I

    goto :goto_e

    .line 128
    :cond_72
    iget v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mItemMode:I

    if-nez v1, :cond_27

    .line 129
    iget-object v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mListItem:Lcom/android/email/activity/MessageListItem;

    iget v2, p0, Lcom/android/email/activity/MessageListItemContainer;->mCurrentBg:I

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListItem;->getBackgroundDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListItemContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_27

    .line 140
    .restart local v0       #fParam:Landroid/widget/AbsListView$LayoutParams;
    :cond_82
    iget v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mItemMode:I

    if-nez v1, :cond_98

    .line 141
    iget-boolean v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mNeedResizeHeight:Z

    if-eqz v1, :cond_8f

    .line 142
    iget-object v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mListItem:Lcom/android/email/activity/MessageListItem;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListItem;->setViewHeight()V

    .line 144
    :cond_8f
    iget-object v1, p0, Lcom/android/email/activity/MessageListItemContainer;->mListItem:Lcom/android/email/activity/MessageListItem;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListItem;->getViewHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_51

    .line 146
    :cond_98
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_51
.end method
