.class public Lcom/infraware/office/basetoolbar/SubToolbar;
.super Landroid/widget/LinearLayout;
.source "SubToolbar.java"

# interfaces
.implements Lcom/infraware/office/basetoolbar/ToolbarE$ToolbarID;
.implements Lcom/infraware/office/basetoolbar/ToolbarE$ToolbarTypeDef;
.implements Lcom/infraware/office/basetoolbar/SubToolbarBtn$OnSubToolbarBtnListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/office/basetoolbar/SubToolbar$OnSubToolbarListener;
    }
.end annotation


# instance fields
.field private final LOG_CAT:Ljava/lang/String;

.field private mColorToolbar:Ljava/lang/Boolean;

.field private mListener:Lcom/infraware/office/basetoolbar/SubToolbar$OnSubToolbarListener;

.field private mSubToolBarItem:Lcom/infraware/office/basetoolbar/SubToolbarItem;

.field private m_TipX:I

.field private m_TipY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbar;->mListener:Lcom/infraware/office/basetoolbar/SubToolbar$OnSubToolbarListener;

    .line 20
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbar;->mSubToolBarItem:Lcom/infraware/office/basetoolbar/SubToolbarItem;

    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbar;->mColorToolbar:Ljava/lang/Boolean;

    .line 23
    iput v1, p0, Lcom/infraware/office/basetoolbar/SubToolbar;->m_TipX:I

    .line 24
    iput v1, p0, Lcom/infraware/office/basetoolbar/SubToolbar;->m_TipY:I

    .line 25
    const-string v0, "SubToolBar"

    iput-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbar;->LOG_CAT:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbar;->mListener:Lcom/infraware/office/basetoolbar/SubToolbar$OnSubToolbarListener;

    .line 20
    iput-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbar;->mSubToolBarItem:Lcom/infraware/office/basetoolbar/SubToolbarItem;

    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbar;->mColorToolbar:Ljava/lang/Boolean;

    .line 23
    iput v1, p0, Lcom/infraware/office/basetoolbar/SubToolbar;->m_TipX:I

    .line 24
    iput v1, p0, Lcom/infraware/office/basetoolbar/SubToolbar;->m_TipY:I

    .line 25
    const-string v0, "SubToolBar"

    iput-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbar;->LOG_CAT:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private SetSubToolbarBtn()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/SubToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/infraware/office/basetoolbar/SubToolbar;->mSubToolBarItem:Lcom/infraware/office/basetoolbar/SubToolbarItem;

    invoke-virtual {v4}, Lcom/infraware/office/basetoolbar/SubToolbarItem;->getSubToolbarResource()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    .local v0, array:Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    .line 63
    .local v2, toolbarBtn:Lcom/infraware/office/basetoolbar/SubToolbarBtn;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-lt v1, v3, :cond_1b

    .line 68
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    return-void

    .line 64
    :cond_1b
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/infraware/office/basetoolbar/SubToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #toolbarBtn:Lcom/infraware/office/basetoolbar/SubToolbarBtn;
    check-cast v2, Lcom/infraware/office/basetoolbar/SubToolbarBtn;

    .line 65
    .restart local v2       #toolbarBtn:Lcom/infraware/office/basetoolbar/SubToolbarBtn;
    invoke-virtual {p0, v6}, Lcom/infraware/office/basetoolbar/SubToolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iget-object v5, p0, Lcom/infraware/office/basetoolbar/SubToolbar;->mColorToolbar:Ljava/lang/Boolean;

    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->setImageResource(Lcom/infraware/office/basetoolbar/SubToolbarBtn$OnSubToolbarBtnListener;IILjava/lang/Boolean;)V

    .line 63
    add-int/lit8 v1, v1, 0x2

    goto :goto_11
.end method


# virtual methods
.method public InitDisabledSubToolbarBtn([I)V
    .registers 8
    .parameter "btnState"

    .prologue
    .line 114
    if-nez p1, :cond_3

    .line 134
    :goto_2
    return-void

    .line 117
    :cond_3
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/SubToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/infraware/office/basetoolbar/SubToolbar;->mSubToolBarItem:Lcom/infraware/office/basetoolbar/SubToolbarItem;

    invoke-virtual {v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;->getSubToolbarResource()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 119
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    array-length v5, p1

    mul-int/lit8 v5, v5, 0x2

    if-ne v4, v5, :cond_39

    .line 120
    const/4 v3, -0x1

    .line 121
    .local v3, toolbarBtnId:I
    const/4 v2, 0x0

    .line 123
    .local v2, toolbarBtn:Lcom/infraware/office/basetoolbar/SubToolbarBtn;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1d
    array-length v4, p1

    if-lt v1, v4, :cond_24

    .line 133
    .end local v1           #i:I
    .end local v2           #toolbarBtn:Lcom/infraware/office/basetoolbar/SubToolbarBtn;
    .end local v3           #toolbarBtnId:I
    :goto_20
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    .line 124
    .restart local v1       #i:I
    .restart local v2       #toolbarBtn:Lcom/infraware/office/basetoolbar/SubToolbarBtn;
    .restart local v3       #toolbarBtnId:I
    :cond_24
    mul-int/lit8 v4, v1, 0x2

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 125
    invoke-virtual {p0, v3}, Lcom/infraware/office/basetoolbar/SubToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #toolbarBtn:Lcom/infraware/office/basetoolbar/SubToolbarBtn;
    check-cast v2, Lcom/infraware/office/basetoolbar/SubToolbarBtn;

    .line 126
    .restart local v2       #toolbarBtn:Lcom/infraware/office/basetoolbar/SubToolbarBtn;
    aget v4, p1, v1

    invoke-virtual {v2, v4}, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->setBtnState(I)V

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 130
    .end local v1           #i:I
    .end local v2           #toolbarBtn:Lcom/infraware/office/basetoolbar/SubToolbarBtn;
    .end local v3           #toolbarBtnId:I
    :cond_39
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/infraware/office/basetoolbar/SubToolbar;->InitSelectedSubToolbarBtn(I)V

    goto :goto_20
.end method

.method public InitMultiSelectedSubToolbarBtn([I)V
    .registers 8
    .parameter "btnState"

    .prologue
    .line 91
    if-nez p1, :cond_3

    .line 111
    :goto_2
    return-void

    .line 94
    :cond_3
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/SubToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/infraware/office/basetoolbar/SubToolbar;->mSubToolBarItem:Lcom/infraware/office/basetoolbar/SubToolbarItem;

    invoke-virtual {v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;->getSubToolbarResource()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 96
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    array-length v5, p1

    mul-int/lit8 v5, v5, 0x2

    if-ne v4, v5, :cond_39

    .line 97
    const/4 v3, -0x1

    .line 98
    .local v3, toolbarBtnId:I
    const/4 v2, 0x0

    .line 100
    .local v2, toolbarBtn:Lcom/infraware/office/basetoolbar/SubToolbarBtn;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1d
    array-length v4, p1

    if-lt v1, v4, :cond_24

    .line 110
    .end local v1           #i:I
    .end local v2           #toolbarBtn:Lcom/infraware/office/basetoolbar/SubToolbarBtn;
    .end local v3           #toolbarBtnId:I
    :goto_20
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    .line 101
    .restart local v1       #i:I
    .restart local v2       #toolbarBtn:Lcom/infraware/office/basetoolbar/SubToolbarBtn;
    .restart local v3       #toolbarBtnId:I
    :cond_24
    mul-int/lit8 v4, v1, 0x2

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 102
    invoke-virtual {p0, v3}, Lcom/infraware/office/basetoolbar/SubToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #toolbarBtn:Lcom/infraware/office/basetoolbar/SubToolbarBtn;
    check-cast v2, Lcom/infraware/office/basetoolbar/SubToolbarBtn;

    .line 103
    .restart local v2       #toolbarBtn:Lcom/infraware/office/basetoolbar/SubToolbarBtn;
    aget v4, p1, v1

    invoke-virtual {v2, v4}, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->setBtnState(I)V

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 107
    .end local v1           #i:I
    .end local v2           #toolbarBtn:Lcom/infraware/office/basetoolbar/SubToolbarBtn;
    .end local v3           #toolbarBtnId:I
    :cond_39
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/infraware/office/basetoolbar/SubToolbar;->InitSelectedSubToolbarBtn(I)V

    goto :goto_20
.end method

.method public InitSelectedSubToolbarBtn(I)V
    .registers 10
    .parameter "selectBtnId"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/SubToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/infraware/office/basetoolbar/SubToolbar;->mSubToolBarItem:Lcom/infraware/office/basetoolbar/SubToolbarItem;

    invoke-virtual {v5}, Lcom/infraware/office/basetoolbar/SubToolbarItem;->getSubToolbarResource()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    .local v0, array:Landroid/content/res/TypedArray;
    const/4 v3, -0x1

    .line 74
    .local v3, toolbarBtnId:I
    const/4 v2, 0x0

    .line 76
    .local v2, toolbarBtn:Lcom/infraware/office/basetoolbar/SubToolbarBtn;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    if-lt v1, v4, :cond_1d

    .line 87
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    return-void

    .line 77
    :cond_1d
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 78
    invoke-virtual {p0, v3}, Lcom/infraware/office/basetoolbar/SubToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #toolbarBtn:Lcom/infraware/office/basetoolbar/SubToolbarBtn;
    check-cast v2, Lcom/infraware/office/basetoolbar/SubToolbarBtn;

    .line 79
    .restart local v2       #toolbarBtn:Lcom/infraware/office/basetoolbar/SubToolbarBtn;
    iget-object v4, p0, Lcom/infraware/office/basetoolbar/SubToolbar;->mColorToolbar:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-virtual {v2}, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->getColor()I

    move-result v4

    if-ne p1, v4, :cond_3b

    .line 80
    invoke-virtual {v2, v7}, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->setBtnState(I)V

    .line 76
    :goto_38
    add-int/lit8 v1, v1, 0x2

    goto :goto_13

    .line 81
    :cond_3b
    iget-object v4, p0, Lcom/infraware/office/basetoolbar/SubToolbar;->mColorToolbar:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_49

    if-ne p1, v3, :cond_49

    .line 82
    invoke-virtual {v2, v7}, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->setBtnState(I)V

    goto :goto_38

    .line 84
    :cond_49
    invoke-virtual {v2, v6}, Lcom/infraware/office/basetoolbar/SubToolbarBtn;->setBtnState(I)V

    goto :goto_38
.end method

.method public OnClickSubToolbarBtn(II)V
    .registers 4
    .parameter "toolbarId"
    .parameter "toolbarBtnId"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/infraware/office/basetoolbar/SubToolbar;->mListener:Lcom/infraware/office/basetoolbar/SubToolbar$OnSubToolbarListener;

    invoke-interface {v0, p1, p2}, Lcom/infraware/office/basetoolbar/SubToolbar$OnSubToolbarListener;->OnClickSubToolbar(II)V

    .line 138
    return-void
.end method

.method public SetInit(Lcom/infraware/office/basetoolbar/SubToolbar$OnSubToolbarListener;Lcom/infraware/office/basetoolbar/SubToolbarItem;)Landroid/view/View;
    .registers 9
    .parameter "listener"
    .parameter "subToolBarItem"

    .prologue
    const/4 v5, 0x1

    .line 40
    iput-object p1, p0, Lcom/infraware/office/basetoolbar/SubToolbar;->mListener:Lcom/infraware/office/basetoolbar/SubToolbar$OnSubToolbarListener;

    .line 41
    iput-object p2, p0, Lcom/infraware/office/basetoolbar/SubToolbar;->mSubToolBarItem:Lcom/infraware/office/basetoolbar/SubToolbarItem;

    .line 42
    invoke-virtual {p2}, Lcom/infraware/office/basetoolbar/SubToolbarItem;->getSubtoolbarID()I

    move-result v1

    .line 43
    .local v1, subToolbarId:I
    const/4 v3, 0x6

    if-eq v1, v3, :cond_1f

    const/4 v3, 0x7

    if-eq v1, v3, :cond_1f

    .line 44
    const/16 v3, 0x10

    if-eq v1, v3, :cond_1f

    const/16 v3, 0x11

    if-eq v1, v3, :cond_1f

    .line 45
    const/16 v3, 0x24

    if-eq v1, v3, :cond_1f

    const/16 v3, 0x25

    if-ne v1, v3, :cond_25

    .line 46
    :cond_1f
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/office/basetoolbar/SubToolbar;->mColorToolbar:Ljava/lang/Boolean;

    .line 48
    :cond_25
    invoke-virtual {p0}, Lcom/infraware/office/basetoolbar/SubToolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 49
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p2}, Lcom/infraware/office/basetoolbar/SubToolbarItem;->getSubToolbarLayout()I

    move-result v3

    invoke-virtual {v0, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 50
    .local v2, view:Landroid/view/View;
    invoke-direct {p0}, Lcom/infraware/office/basetoolbar/SubToolbar;->SetSubToolbarBtn()V

    .line 51
    return-object v2
.end method

.method public SetTipPos(II)V
    .registers 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 55
    iput p1, p0, Lcom/infraware/office/basetoolbar/SubToolbar;->m_TipX:I

    .line 56
    iput p2, p0, Lcom/infraware/office/basetoolbar/SubToolbar;->m_TipY:I

    .line 57
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 27
    .parameter "canvas"

    .prologue
    .line 142
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 143
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v13, v0, [I

    .line 144
    .local v13, location:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/infraware/office/basetoolbar/SubToolbar;->getLocationOnScreen([I)V

    .line 145
    const-string v20, "SubToolBar"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "location x = "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v22, 0x0

    aget v22, v13, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " || location y ="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget v22, v13, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const v16, 0x7f0202aa

    .line 148
    .local v16, nResLeftID:I
    const v15, 0x7f0202a9

    .line 149
    .local v15, nResCenterID:I
    const v17, 0x7f0202ab

    .line 150
    .local v17, nResRightID:I
    const v14, 0x7f0202a8

    .line 152
    .local v14, nResArrowID:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/office/basetoolbar/SubToolbar;->mSubToolBarItem:Lcom/infraware/office/basetoolbar/SubToolbarItem;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/infraware/office/basetoolbar/SubToolbarItem;->getSubToolBarLineCnt()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_204

    .line 153
    const v16, 0x7f02029d

    .line 154
    const v15, 0x7f02029c

    .line 155
    const v17, 0x7f02029e

    .line 156
    const v14, 0x7f02029b

    .line 171
    :cond_5e
    :goto_5e
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/basetoolbar/SubToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 172
    .local v8, bitmapLeft:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/basetoolbar/SubToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 173
    .local v7, bitmapCenter:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/basetoolbar/SubToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 174
    .local v9, bitmapRight:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/basetoolbar/SubToolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 176
    .local v6, bitmapArrow:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/infraware/office/basetoolbar/SubToolbar;->m_TipX:I

    move/from16 v20, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    const/16 v22, 0x0

    aget v22, v13, v22

    add-int v21, v21, v22

    sub-int v19, v20, v21

    .line 177
    .local v19, startArrowLeft:I
    const-string v20, "SubToolBar"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "getWidth()= "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/basetoolbar/SubToolbar;->getWidth()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " || getHeight() ="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/basetoolbar/SubToolbar;->getHeight()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v20, "SubToolBar"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "bitmapArrow.getWidth()= "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " || bitmapArrow.getHeight() ="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v12, Landroid/graphics/Rect;

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/basetoolbar/SubToolbar;->getHeight()I

    move-result v23

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 180
    .local v12, leftRt:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    const/16 v20, 0x0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    add-int v21, v21, v19

    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/basetoolbar/SubToolbar;->getHeight()I

    move-result v22

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 182
    .local v5, arrowRt:Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    const/16 v21, 0x0

    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/basetoolbar/SubToolbar;->getHeight()I

    move-result v23

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 183
    .local v10, centerLeftRt:Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/Rect;

    iget v0, v5, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/basetoolbar/SubToolbar;->getWidth()I

    move-result v22

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    sub-int v22, v22, v23

    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/basetoolbar/SubToolbar;->getHeight()I

    move-result v23

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 184
    .local v11, centerRightRt:Landroid/graphics/Rect;
    new-instance v18, Landroid/graphics/Rect;

    iget v0, v11, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/basetoolbar/SubToolbar;->getWidth()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/infraware/office/basetoolbar/SubToolbar;->getHeight()I

    move-result v23

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 186
    .local v18, rightRt:Landroid/graphics/Rect;
    new-instance v20, Landroid/graphics/Rect;

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    invoke-direct/range {v20 .. v24}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v8, v1, v12, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 187
    new-instance v20, Landroid/graphics/Rect;

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    invoke-direct/range {v20 .. v24}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v7, v1, v10, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 188
    new-instance v20, Landroid/graphics/Rect;

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    invoke-direct/range {v20 .. v24}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v6, v1, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 189
    new-instance v20, Landroid/graphics/Rect;

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    invoke-direct/range {v20 .. v24}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v7, v1, v11, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 190
    new-instance v20, Landroid/graphics/Rect;

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    invoke-direct/range {v20 .. v24}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    move-object/from16 v3, v21

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 191
    return-void

    .line 158
    .end local v5           #arrowRt:Landroid/graphics/Rect;
    .end local v6           #bitmapArrow:Landroid/graphics/Bitmap;
    .end local v7           #bitmapCenter:Landroid/graphics/Bitmap;
    .end local v8           #bitmapLeft:Landroid/graphics/Bitmap;
    .end local v9           #bitmapRight:Landroid/graphics/Bitmap;
    .end local v10           #centerLeftRt:Landroid/graphics/Rect;
    .end local v11           #centerRightRt:Landroid/graphics/Rect;
    .end local v12           #leftRt:Landroid/graphics/Rect;
    .end local v18           #rightRt:Landroid/graphics/Rect;
    .end local v19           #startArrowLeft:I
    :cond_204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/office/basetoolbar/SubToolbar;->mSubToolBarItem:Lcom/infraware/office/basetoolbar/SubToolbarItem;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/infraware/office/basetoolbar/SubToolbarItem;->getSubToolBarLineCnt()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_224

    .line 159
    const v16, 0x7f0202a1

    .line 160
    const v15, 0x7f0202a0

    .line 161
    const v17, 0x7f0202a2

    .line 162
    const v14, 0x7f02029f

    goto/16 :goto_5e

    .line 164
    :cond_224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/office/basetoolbar/SubToolbar;->mSubToolBarItem:Lcom/infraware/office/basetoolbar/SubToolbarItem;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/infraware/office/basetoolbar/SubToolbarItem;->getSubToolBarLineCnt()I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5e

    .line 165
    const v16, 0x7f0202a5

    .line 166
    const v15, 0x7f0202a4

    .line 167
    const v17, 0x7f0202a6

    .line 168
    const v14, 0x7f0202a3

    goto/16 :goto_5e
.end method
