.class public Lcom/google/android/music/menu/MusicDropdownMenu;
.super Lcom/google/android/music/menu/MusicListMenu;
.source "MusicDropdownMenu.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field private mButtonRect:Landroid/graphics/Rect;

.field private mButtonView:Landroid/view/View;

.field private mPopup:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V
    .registers 4
    .parameter "context"
    .parameter "callback"
    .parameter "rootView"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/menu/MusicListMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    .line 26
    return-void
.end method

.method private computeDisplayLocation(Landroid/graphics/drawable/Drawable;Landroid/view/View;)Landroid/graphics/Point;
    .registers 30
    .parameter "background"
    .parameter "menuView"

    .prologue
    .line 89
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 90
    .local v17, padding:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/menu/MusicDropdownMenu;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f090017

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    .line 93
    .local v23, width:I
    const/16 v24, -0x2

    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 96
    .local v12, height:I
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 97
    .local v9, displayFrame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/menu/MusicDropdownMenu;->mRootView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 98
    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    sub-int v11, v24, v25

    .line 99
    .local v11, displayWidth:I
    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v10, v24, v25

    .line 100
    .local v10, displayHeight:I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    add-int v24, v24, v12

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    add-int v19, v24, v25

    .line 102
    .local v19, popupHeight:I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    add-int v13, v24, v25

    .line 103
    .local v13, highestTopAllowed:I
    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    add-int v24, v24, v10

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    sub-int v16, v24, v25

    .line 104
    .local v16, lowestBottomAllowed:I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    add-int v24, v24, v11

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    sub-int v21, v24, v25

    .line 106
    .local v21, rightmostAllowed:I
    sub-int v3, v16, v13

    .line 108
    .local v3, availableHeight:I
    move/from16 v0, v19

    if-ge v3, v0, :cond_9f

    .line 109
    move v12, v3

    .line 110
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    add-int v24, v24, v3

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    add-int v19, v24, v25

    .line 112
    :cond_9f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/menu/MusicDropdownMenu;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    add-int v25, v25, v23

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    add-int v25, v25, v26

    invoke-virtual/range {v24 .. v25}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/menu/MusicDropdownMenu;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 116
    sub-int v24, v10, v12

    div-int/lit8 v24, v24, 0x2

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    add-int v22, v24, v25

    .line 117
    .local v22, top:I
    sub-int v24, v11, v23

    div-int/lit8 v14, v24, 0x2

    .line 118
    .local v14, left:I
    add-int v4, v22, v12

    .line 119
    .local v4, bottom:I
    add-int v20, v14, v23

    .line 120
    .local v20, right:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/menu/MusicDropdownMenu;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    const v25, 0x7f0f0015

    invoke-virtual/range {v24 .. v25}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 122
    const/4 v6, 0x0

    .line 123
    .local v6, buttonLeft:I
    const/4 v7, 0x0

    .line 124
    .local v7, buttonRight:I
    const/4 v8, 0x0

    .line 125
    .local v8, buttonTop:I
    const/4 v5, 0x0

    .line 126
    .local v5, buttonBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/menu/MusicDropdownMenu;->mButtonView:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_170

    .line 127
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v15, v0, [I

    .line 128
    .local v15, location:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/menu/MusicDropdownMenu;->mButtonView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 129
    const/16 v24, 0x0

    aget v6, v15, v24

    .line 130
    const/16 v24, 0x1

    aget v8, v15, v24

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/menu/MusicDropdownMenu;->mButtonView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getWidth()I

    move-result v24

    add-int v7, v6, v24

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/menu/MusicDropdownMenu;->mButtonView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getHeight()I

    move-result v24

    add-int v5, v8, v24

    .line 140
    .end local v15           #location:[I
    :cond_120
    :goto_120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/menu/MusicDropdownMenu;->mButtonRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    if-nez v24, :cond_130

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/menu/MusicDropdownMenu;->mButtonView:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_154

    .line 143
    :cond_130
    move v14, v6

    .line 144
    add-int v20, v14, v23

    .line 145
    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_13d

    .line 147
    move/from16 v20, v7

    .line 148
    sub-int v14, v20, v23

    .line 151
    :cond_13d
    move/from16 v22, v5

    .line 152
    add-int v4, v22, v12

    .line 153
    move/from16 v0, v16

    if-le v4, v0, :cond_1a1

    .line 155
    move v4, v8

    .line 156
    sub-int v22, v4, v12

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/menu/MusicDropdownMenu;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    const v25, 0x7f0f0015

    invoke-virtual/range {v24 .. v25}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 162
    :cond_154
    :goto_154
    new-instance v18, Landroid/graphics/Point;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v24, v14, v24

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v25, v22, v25

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 163
    .local v18, point:Landroid/graphics/Point;
    return-object v18

    .line 133
    .end local v18           #point:Landroid/graphics/Point;
    :cond_170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/menu/MusicDropdownMenu;->mButtonRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    if-eqz v24, :cond_120

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/menu/MusicDropdownMenu;->mButtonRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v6, v0, Landroid/graphics/Rect;->left:I

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/menu/MusicDropdownMenu;->mButtonRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v7, v0, Landroid/graphics/Rect;->right:I

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/menu/MusicDropdownMenu;->mButtonRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v8, v0, Landroid/graphics/Rect;->top:I

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/menu/MusicDropdownMenu;->mButtonRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_120

    .line 159
    :cond_1a1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/menu/MusicDropdownMenu;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v24, v0

    const v25, 0x7f0f0014

    invoke-virtual/range {v24 .. v25}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_154
.end method


# virtual methods
.method protected clearView()V
    .registers 2

    .prologue
    .line 172
    invoke-super {p0}, Lcom/google/android/music/menu/MusicListMenu;->clearView()V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/menu/MusicDropdownMenu;->mPopup:Landroid/widget/PopupWindow;

    .line 174
    return-void
.end method

.method public close()V
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/music/menu/MusicDropdownMenu;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_9

    .line 188
    iget-object v0, p0, Lcom/google/android/music/menu/MusicDropdownMenu;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 190
    :cond_9
    return-void
.end method

.method public getMenuView()Lcom/google/android/music/menu/MusicListMenuView;
    .registers 5

    .prologue
    .line 51
    monitor-enter p0

    .line 52
    :try_start_1
    iget-object v1, p0, Lcom/google/android/music/menu/MusicDropdownMenu;->mMenuView:Lcom/google/android/music/menu/MusicListMenuView;

    if-nez v1, :cond_24

    .line 53
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicDropdownMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 54
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040022

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/menu/MusicListMenuView;

    iput-object v1, p0, Lcom/google/android/music/menu/MusicDropdownMenu;->mMenuView:Lcom/google/android/music/menu/MusicListMenuView;

    .line 56
    iget-object v1, p0, Lcom/google/android/music/menu/MusicDropdownMenu;->mMenuView:Lcom/google/android/music/menu/MusicListMenuView;

    invoke-virtual {v1, p0}, Lcom/google/android/music/menu/MusicListMenuView;->initialize(Lcom/google/android/music/menu/MusicListMenu;)V

    .line 57
    iget-object v1, p0, Lcom/google/android/music/menu/MusicDropdownMenu;->mMenuView:Lcom/google/android/music/menu/MusicListMenuView;

    invoke-virtual {v1, p0}, Lcom/google/android/music/menu/MusicListMenuView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 60
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_24
    iget-object v1, p0, Lcom/google/android/music/menu/MusicDropdownMenu;->mMenuView:Lcom/google/android/music/menu/MusicListMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/music/menu/MusicListMenuView;->setUseDividers(Z)V

    .line 61
    iget-object v1, p0, Lcom/google/android/music/menu/MusicDropdownMenu;->mMenuView:Lcom/google/android/music/menu/MusicListMenuView;

    monitor-exit p0

    return-object v1

    .line 62
    :catchall_2e
    move-exception v1

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public onDismiss()V
    .registers 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicDropdownMenu;->clearView()V

    .line 168
    return-void
.end method

.method public setButtonLocation(Landroid/graphics/Rect;)V
    .registers 2
    .parameter "rect"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/android/music/menu/MusicDropdownMenu;->mButtonRect:Landroid/graphics/Rect;

    .line 35
    return-void
.end method

.method public setButtonView(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/menu/MusicDropdownMenu;->mButtonRect:Landroid/graphics/Rect;

    .line 30
    iput-object p1, p0, Lcom/google/android/music/menu/MusicDropdownMenu;->mButtonView:Landroid/view/View;

    .line 31
    return-void
.end method

.method public show()V
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicDropdownMenu;->clearView()V

    .line 72
    new-instance v3, Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/google/android/music/menu/MusicDropdownMenu;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/music/menu/MusicDropdownMenu;->mPopup:Landroid/widget/PopupWindow;

    .line 73
    iget-object v3, p0, Lcom/google/android/music/menu/MusicDropdownMenu;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 74
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicDropdownMenu;->getMenuView()Lcom/google/android/music/menu/MusicListMenuView;

    move-result-object v1

    .line 75
    .local v1, menuView:Landroid/view/View;
    iget-object v3, p0, Lcom/google/android/music/menu/MusicDropdownMenu;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 77
    iget-object v3, p0, Lcom/google/android/music/menu/MusicDropdownMenu;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 78
    iget-object v3, p0, Lcom/google/android/music/menu/MusicDropdownMenu;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 79
    iget-object v3, p0, Lcom/google/android/music/menu/MusicDropdownMenu;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v7}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicDropdownMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201fc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 83
    .local v0, background:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/google/android/music/menu/MusicDropdownMenu;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    invoke-direct {p0, v0, v1}, Lcom/google/android/music/menu/MusicDropdownMenu;->computeDisplayLocation(Landroid/graphics/drawable/Drawable;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v2

    .line 85
    .local v2, point:Landroid/graphics/Point;
    iget-object v3, p0, Lcom/google/android/music/menu/MusicDropdownMenu;->mPopup:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/google/android/music/menu/MusicDropdownMenu;->mRootView:Landroid/view/View;

    iget v5, v2, Landroid/graphics/Point;->x:I

    iget v6, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 86
    return-void
.end method
