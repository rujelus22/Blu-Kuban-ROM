.class public Lcom/google/android/music/menu/MusicListMenuView;
.super Landroid/widget/LinearLayout;
.source "MusicListMenuView.java"


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mHasStaleChildren:Z

.field private mMenu:Lcom/google/android/music/menu/MusicListMenu;

.field private mSubView:Landroid/widget/LinearLayout;

.field private mSubViewScrollContainer:Landroid/widget/ScrollView;

.field private mTitleView:Landroid/widget/TextView;

.field private mUseDividers:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-boolean v1, p0, Lcom/google/android/music/menu/MusicListMenuView;->mHasStaleChildren:Z

    .line 45
    iput-boolean v0, p0, Lcom/google/android/music/menu/MusicListMenuView;->mUseDividers:Z

    .line 48
    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/MusicListMenuView;->setWillNotDraw(Z)V

    .line 51
    invoke-virtual {p0, v1}, Lcom/google/android/music/menu/MusicListMenuView;->setFocusableInTouchMode(Z)V

    .line 53
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/MusicListMenuView;->setDescendantFocusability(I)V

    .line 54
    return-void
.end method

.method private addItemView(Lcom/google/android/music/menu/MusicListMenuItemView;)V
    .registers 6
    .parameter "itemView"

    .prologue
    .line 138
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicListMenuItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 139
    const-string v1, "MusicListMenuView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The itemView already has a parent, need to remove this parent. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicListMenuItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_35

    .line 141
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicListMenuItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 142
    .local v0, parent:Landroid/view/ViewGroup;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 151
    .end local v0           #parent:Landroid/view/ViewGroup;
    :cond_2f
    iget-object v1, p0, Lcom/google/android/music/menu/MusicListMenuView;->mSubView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 152
    :goto_34
    return-void

    .line 145
    :cond_35
    const-string v1, "MusicListMenuView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to add an itemView since its parent is not a ViewGroup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method private updateChildren()V
    .registers 7

    .prologue
    .line 117
    iget-object v5, p0, Lcom/google/android/music/menu/MusicListMenuView;->mMenu:Lcom/google/android/music/menu/MusicListMenu;

    invoke-virtual {v5}, Lcom/google/android/music/menu/MusicListMenu;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 118
    .local v1, itemsToShow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/music/menu/MusicMenuItem;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 121
    .local v3, numItems:I
    iget-object v5, p0, Lcom/google/android/music/menu/MusicListMenuView;->mSubView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 124
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    if-ge v0, v3, :cond_29

    .line 125
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/menu/MusicListMenuItem;

    .line 126
    .local v2, menuItem:Lcom/google/android/music/menu/MusicListMenuItem;
    invoke-virtual {v2, p0}, Lcom/google/android/music/menu/MusicListMenuItem;->getItemView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/menu/MusicListMenuItemView;

    .line 127
    .local v4, view:Lcom/google/android/music/menu/MusicListMenuItemView;
    iget-object v5, p0, Lcom/google/android/music/menu/MusicListMenuView;->mMenu:Lcom/google/android/music/menu/MusicListMenu;

    invoke-virtual {v4, v5}, Lcom/google/android/music/menu/MusicListMenuItemView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 128
    invoke-direct {p0, v4}, Lcom/google/android/music/menu/MusicListMenuView;->addItemView(Lcom/google/android/music/menu/MusicListMenuItemView;)V

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 130
    .end local v2           #menuItem:Lcom/google/android/music/menu/MusicListMenuItem;
    .end local v4           #view:Lcom/google/android/music/menu/MusicListMenuItemView;
    :cond_29
    return-void
.end method


# virtual methods
.method public clearChildren()V
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuView;->mSubView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 58
    return-void
.end method

.method public initialize(Lcom/google/android/music/menu/MusicListMenu;)V
    .registers 3
    .parameter "menu"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/android/music/menu/MusicListMenuView;->mMenu:Lcom/google/android/music/menu/MusicListMenu;

    .line 112
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicListMenu;->getHeader()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/MusicListMenuView;->setHeader(Ljava/lang/CharSequence;)V

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/menu/MusicListMenuView;->mHasStaleChildren:Z

    .line 114
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 11
    .parameter "canvas"

    .prologue
    .line 156
    iget-boolean v4, p0, Lcom/google/android/music/menu/MusicListMenuView;->mUseDividers:Z

    if-eqz v4, :cond_3d

    .line 157
    iget-object v4, p0, Lcom/google/android/music/menu/MusicListMenuView;->mSubViewScrollContainer:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    .line 158
    .local v3, scrolledBy:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_b
    iget-object v4, p0, Lcom/google/android/music/menu/MusicListMenuView;->mSubView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_3d

    .line 159
    iget-object v4, p0, Lcom/google/android/music/menu/MusicListMenuView;->mSubView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 162
    .local v0, child:Landroid/view/View;
    new-instance v2, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicListMenuView;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    iget v8, p0, Lcom/google/android/music/menu/MusicListMenuView;->mDividerHeight:I

    add-int/2addr v7, v8

    sub-int/2addr v7, v3

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 164
    .local v2, rect:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/google/android/music/menu/MusicListMenuView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 165
    iget-object v4, p0, Lcom/google/android/music/menu/MusicListMenuView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 168
    .end local v0           #child:Landroid/view/View;
    .end local v1           #i:I
    .end local v2           #rect:Landroid/graphics/Rect;
    .end local v3           #scrolledBy:I
    :cond_3d
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 91
    const v0, 0x7f100089

    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/MusicListMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/music/menu/MusicListMenuView;->mSubView:Landroid/widget/LinearLayout;

    .line 92
    const v0, 0x7f100088

    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/MusicListMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/google/android/music/menu/MusicListMenuView;->mSubViewScrollContainer:Landroid/widget/ScrollView;

    .line 93
    const v0, 0x7f100002

    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/MusicListMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/menu/MusicListMenuView;->mTitleView:Landroid/widget/TextView;

    .line 94
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/google/android/music/menu/MusicListMenuView;->mHasStaleChildren:Z

    if-eqz v0, :cond_a

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/menu/MusicListMenuView;->mHasStaleChildren:Z

    .line 182
    invoke-direct {p0}, Lcom/google/android/music/menu/MusicListMenuView;->updateChildren()V

    .line 184
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 185
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .registers 3
    .parameter "eventType"

    .prologue
    .line 193
    const/16 v0, 0x20

    if-ne p1, v0, :cond_7

    .line 194
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    .line 196
    :cond_7
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "divider"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/music/menu/MusicListMenuView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 64
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    .line 65
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/menu/MusicListMenuView;->mDividerHeight:I

    .line 69
    iget v0, p0, Lcom/google/android/music/menu/MusicListMenuView;->mDividerHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/music/menu/MusicListMenuView;->mDividerHeight:I

    .line 75
    :cond_16
    :goto_16
    return-void

    .line 73
    :cond_17
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/menu/MusicListMenuView;->mDividerHeight:I

    goto :goto_16
.end method

.method public setHeader(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "header"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuView;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 98
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_9
    return-void
.end method

.method public setUseDividers(Z)V
    .registers 4
    .parameter "useDividers"

    .prologue
    .line 82
    if-eqz p1, :cond_18

    iget-object v1, p0, Lcom/google/android/music/menu/MusicListMenuView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_18

    .line 83
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicListMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 84
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f020156

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/music/menu/MusicListMenuView;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_18
    iput-boolean p1, p0, Lcom/google/android/music/menu/MusicListMenuView;->mUseDividers:Z

    .line 87
    return-void
.end method
