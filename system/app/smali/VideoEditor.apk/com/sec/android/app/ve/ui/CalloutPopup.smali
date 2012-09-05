.class public Lcom/sec/android/app/ve/ui/CalloutPopup;
.super Lcom/sec/android/app/ve/ui/Popupwidget;
.source "CalloutPopup.java"


# instance fields
.field private actionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final inflater:Landroid/view/LayoutInflater;

.field private final mArrowDown:Landroid/widget/ImageView;

.field private final mArrowUp:Landroid/widget/ImageView;

.field private mCalloutitems:Landroid/widget/ListView;

.field private final mRootView:Landroid/view/View;

.field private scroller:Landroid/widget/LinearLayout;

.field titleItem:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 7
    .parameter "sourceView"

    .prologue
    const/4 v3, 0x0

    .line 37
    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/ui/Popupwidget;-><init>(Landroid/view/View;)V

    .line 34
    iput-object v3, p0, Lcom/sec/android/app/ve/ui/CalloutPopup;->titleItem:Landroid/widget/TextView;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/CalloutPopup;->actionList:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/CalloutPopup;->context:Landroid/content/Context;

    .line 41
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/CalloutPopup;->context:Landroid/content/Context;

    .line 42
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 41
    iput-object v0, p0, Lcom/sec/android/app/ve/ui/CalloutPopup;->inflater:Landroid/view/LayoutInflater;

    .line 44
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/CalloutPopup;->actionList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/ve/ui/CalloutPopup;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/CalloutPopup;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030003

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/CalloutPopup;->mRootView:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/CalloutPopup;->mRootView:Landroid/view/View;

    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/CalloutPopup;->mArrowDown:Landroid/widget/ImageView;

    .line 49
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/CalloutPopup;->mRootView:Landroid/view/View;

    const v1, 0x7f0b000e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/CalloutPopup;->mArrowUp:Landroid/widget/ImageView;

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/CalloutPopup;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/ui/CalloutPopup;->setContentView(Landroid/view/View;)V

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/CalloutPopup;->mRootView:Landroid/view/View;

    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/CalloutPopup;->titleItem:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/CalloutPopup;->mRootView:Landroid/view/View;

    const v1, 0x7f0b000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/CalloutPopup;->mCalloutitems:Landroid/widget/ListView;

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/CalloutPopup;->mRootView:Landroid/view/View;

    const v1, 0x7f0b000c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/ve/ui/CalloutPopup;->scroller:Landroid/widget/LinearLayout;

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/CalloutPopup;->mCalloutitems:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/sec/android/app/ve/ui/CalloutPopup;->context:Landroid/content/Context;

    .line 57
    const v3, 0x7f030002

    iget-object v4, p0, Lcom/sec/android/app/ve/ui/CalloutPopup;->actionList:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 56
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "count "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/ve/ui/CalloutPopup;->actionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private setAnimationStyle(IIZ)V
    .registers 6
    .parameter "screenWidth"
    .parameter "requestedX"
    .parameter "onTop"

    .prologue
    .line 132
    iget-object v1, p0, Lcom/sec/android/app/ve/ui/CalloutPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 133
    if-eqz p3, :cond_b

    const v0, 0x7f090006

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 136
    return-void

    .line 134
    :cond_b
    const v0, 0x7f090004

    goto :goto_7
.end method

.method private showArrow(II)V
    .registers 8
    .parameter "whichArrow"
    .parameter "requestedX"

    .prologue
    const v4, 0x7f0b000e

    .line 139
    if-ne p1, v4, :cond_26

    iget-object v3, p0, Lcom/sec/android/app/ve/ui/CalloutPopup;->mArrowUp:Landroid/widget/ImageView;

    .line 141
    .local v3, showArrow:Landroid/view/View;
    :goto_7
    if-ne p1, v4, :cond_29

    iget-object v1, p0, Lcom/sec/android/app/ve/ui/CalloutPopup;->mArrowDown:Landroid/widget/ImageView;

    .line 144
    .local v1, hideArrow:Landroid/view/View;
    :goto_b
    iget-object v4, p0, Lcom/sec/android/app/ve/ui/CalloutPopup;->mArrowUp:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    .line 146
    .local v0, arrowWidth:I
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 149
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 148
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 151
    .local v2, param:Landroid/view/ViewGroup$MarginLayoutParams;
    div-int/lit8 v4, v0, 0x2

    sub-int v4, p2, v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 153
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 154
    return-void

    .line 140
    .end local v0           #arrowWidth:I
    .end local v1           #hideArrow:Landroid/view/View;
    .end local v2           #param:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v3           #showArrow:Landroid/view/View;
    :cond_26
    iget-object v3, p0, Lcom/sec/android/app/ve/ui/CalloutPopup;->mArrowDown:Landroid/widget/ImageView;

    goto :goto_7

    .line 142
    .restart local v3       #showArrow:Landroid/view/View;
    :cond_29
    iget-object v1, p0, Lcom/sec/android/app/ve/ui/CalloutPopup;->mArrowUp:Landroid/widget/ImageView;

    goto :goto_b
.end method


# virtual methods
.method public setListClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 62
    .local p1, itemListener:Landroid/widget/AdapterView$OnItemClickListener;,"Landroid/widget/AdapterView$OnItemClickListener;"
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/CalloutPopup;->mCalloutitems:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 63
    return-void
.end method

.method public show(II)V
    .registers 25
    .parameter "xPosition"
    .parameter "yPosition"

    .prologue
    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/ui/CalloutPopup;->preShow()V

    .line 70
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v9, v0, [I

    .line 72
    .local v9, location:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/ui/CalloutPopup;->mSourceView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 74
    new-instance v5, Landroid/graphics/Rect;

    const/16 v17, 0x0

    aget v17, v9, v17

    const/16 v18, 0x1

    aget v18, v9, v18

    const/16 v19, 0x0

    aget v19, v9, v19

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/ui/CalloutPopup;->mSourceView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getWidth()I

    move-result v20

    add-int v19, v19, v20

    const/16 v20, 0x1

    aget v20, v9, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/ui/CalloutPopup;->mSourceView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getHeight()I

    move-result v21

    add-int v20, v20, v21

    .line 74
    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 77
    .local v5, anchorRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/ui/CalloutPopup;->mRootView:Landroid/view/View;

    move-object/from16 v17, v0

    new-instance v18, Landroid/view/ViewGroup$LayoutParams;

    const/16 v19, -0x2

    .line 78
    const/16 v20, -0x2

    invoke-direct/range {v18 .. v20}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 77
    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/ui/CalloutPopup;->mRootView:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, -0x2

    const/16 v19, -0x2

    invoke-virtual/range {v17 .. v19}, Landroid/view/View;->measure(II)V

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/ui/CalloutPopup;->mRootView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 82
    .local v11, rootHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/ui/CalloutPopup;->mRootView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 84
    .local v12, rootWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/ui/CalloutPopup;->windowManager:Landroid/view/WindowManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/Display;->getWidth()I

    move-result v14

    .line 85
    .local v14, screenWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/ui/CalloutPopup;->windowManager:Landroid/view/WindowManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/Display;->getHeight()I

    move-result v13

    .line 88
    .local v13, screenHeight:I
    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    add-int v17, v17, v12

    move/from16 v0, v17

    if-le v0, v14, :cond_11a

    .line 89
    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/ui/CalloutPopup;->mSourceView:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWidth()I

    move-result v18

    sub-int v18, v12, v18

    sub-int v15, v17, v18

    .line 98
    .local v15, xPos:I
    :goto_b4
    iget v7, v5, Landroid/graphics/Rect;->top:I

    .line 99
    .local v7, dyTop:I
    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    sub-int v6, v13, v17

    .line 101
    .local v6, dyBottom:I
    if-le v7, v6, :cond_134

    const/4 v10, 0x1

    .line 103
    .local v10, onTop:Z
    :goto_bf
    if-eqz v10, :cond_13d

    .line 104
    if-le v11, v7, :cond_136

    .line 105
    const/16 v16, 0xf

    .line 106
    .local v16, yPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/ui/CalloutPopup;->scroller:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 107
    .local v8, l:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/ui/CalloutPopup;->mSourceView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v17

    sub-int v17, v7, v17

    move/from16 v0, v17

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 120
    .end local v8           #l:Landroid/view/ViewGroup$LayoutParams;
    :cond_df
    :goto_df
    if-eqz v10, :cond_150

    const v17, 0x7f0b000f

    .line 121
    :goto_e4
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v18

    sub-int v18, v18, v15

    .line 120
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/ve/ui/CalloutPopup;->showArrow(II)V

    .line 123
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v14, v1, v10}, Lcom/sec/android/app/ve/ui/CalloutPopup;->setAnimationStyle(IIZ)V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/ui/CalloutPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/ui/CalloutPopup;->mSourceView:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 127
    return-void

    .line 91
    .end local v6           #dyBottom:I
    .end local v7           #dyTop:I
    .end local v10           #onTop:Z
    .end local v15           #xPos:I
    .end local v16           #yPos:I
    :cond_11a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/ui/CalloutPopup;->mSourceView:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWidth()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v12, :cond_131

    .line 92
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    div-int/lit8 v18, v12, 0x2

    sub-int v15, v17, v18

    .restart local v15       #xPos:I
    goto :goto_b4

    .line 94
    .end local v15           #xPos:I
    :cond_131
    iget v15, v5, Landroid/graphics/Rect;->left:I

    .restart local v15       #xPos:I
    goto :goto_b4

    .line 101
    .restart local v6       #dyBottom:I
    .restart local v7       #dyTop:I
    :cond_134
    const/4 v10, 0x0

    goto :goto_bf

    .line 109
    .restart local v10       #onTop:Z
    :cond_136
    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    sub-int v16, v17, v11

    .restart local v16       #yPos:I
    goto :goto_df

    .line 112
    .end local v16           #yPos:I
    :cond_13d
    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    .line 114
    .restart local v16       #yPos:I
    if-le v11, v6, :cond_df

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/ve/ui/CalloutPopup;->scroller:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 116
    .restart local v8       #l:Landroid/view/ViewGroup$LayoutParams;
    iput v6, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_df

    .line 120
    .end local v8           #l:Landroid/view/ViewGroup$LayoutParams;
    :cond_150
    const v17, 0x7f0b000e

    goto :goto_e4
.end method
