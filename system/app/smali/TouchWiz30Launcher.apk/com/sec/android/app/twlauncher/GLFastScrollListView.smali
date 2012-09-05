.class public Lcom/sec/android/app/twlauncher/GLFastScrollListView;
.super Landroid/view/ViewGroup;
.source "GLFastScrollListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCollator:Ljava/text/Collator;

.field private mCurrentFastScrollIndexView:I

.field private mFastScrollIndexGravity:I

.field private mFastScrollIndexGrpBoundary:Landroid/graphics/RectF;

.field private mFastScrollIndexViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;",
            ">;"
        }
    .end annotation
.end field

.field private mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

.field private mFirstCharColor:I

.field private mLastMovePt:Landroid/graphics/PointF;

.field private mLastSelLen:I

.field private mListBestMatchIndices:Landroid/util/SparseIntArray;

.field private mListExactMatchIndices:Landroid/util/SparseIntArray;

.field private mListView:Lcom/sec/android/app/twlauncher/GLListView;

.field private mPopupHeight:F

.field private mPopupHeightInc:F

.field private mPopupWidth:F

.field private mPopupWidthInc:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-string v0, "GLFastScrollListView"

    sput-object v0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/high16 v4, -0x100

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexGrpBoundary:Landroid/graphics/RectF;

    .line 46
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mLastMovePt:Landroid/graphics/PointF;

    .line 47
    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    iput v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mLastSelLen:I

    iput v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFirstCharColor:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexGravity:I

    .line 49
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListBestMatchIndices:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListExactMatchIndices:Landroid/util/SparseIntArray;

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    .line 52
    iput-object v6, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListView:Lcom/sec/android/app/twlauncher/GLListView;

    .line 53
    iput-object v6, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    .line 54
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mPopupWidth:F

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mPopupHeight:F

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mPopupWidthInc:F

    iput v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mPopupHeightInc:F

    .line 57
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCollator:Ljava/text/Collator;

    .line 62
    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->GLFastScrollListView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexGravity:I

    .line 64
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mPopupWidth:F

    .line 65
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mPopupHeight:F

    .line 66
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mPopupWidthInc:F

    .line 67
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mPopupHeightInc:F

    .line 68
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFirstCharColor:I

    .line 69
    return-void
.end method

.method private feedPtToIndexView(ILandroid/graphics/PointF;)Z
    .registers 12
    .parameter "aViewIndex"
    .parameter "aPt"

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    .line 219
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    .line 220
    .local v1, indexView:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .line 221
    .local v3, relPt:Landroid/graphics/PointF;
    invoke-virtual {v3, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 222
    iget v6, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getLeft()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iput v6, v3, Landroid/graphics/PointF;->x:F

    .line 223
    iget v6, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getTop()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    iput v6, v3, Landroid/graphics/PointF;->y:F

    .line 224
    invoke-virtual {v1, p2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->feedPt(Landroid/graphics/PointF;)I

    move-result v4

    .line 225
    .local v4, res:I
    if-eq v4, v8, :cond_2e

    if-ne v4, v5, :cond_3d

    .line 227
    :cond_2e
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getSelection(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, currentSel:Ljava/lang/String;
    if-eqz v0, :cond_3d

    .line 229
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->updatePopup(Ljava/lang/String;)Z

    .line 230
    if-ne v4, v8, :cond_3e

    move v2, v5

    .line 231
    .local v2, moveToTop:Z
    :goto_3a
    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->updateList(ZLjava/lang/String;)Z

    .line 234
    .end local v0           #currentSel:Ljava/lang/String;
    .end local v2           #moveToTop:Z
    :cond_3d
    return v5

    .line 230
    .restart local v0       #currentSel:Ljava/lang/String;
    :cond_3e
    const/4 v2, 0x0

    goto :goto_3a
.end method

.method private getMatchingIndex(Ljava/lang/String;IIZ)I
    .registers 14
    .parameter "aStr"
    .parameter "aAdapterStartIndex"
    .parameter "aAdapterEndIndex"
    .parameter "aExact"

    .prologue
    .line 144
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListView:Lcom/sec/android/app/twlauncher/GLListView;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/GLListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 145
    .local v0, adapter:Landroid/widget/BaseAdapter;
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    .line 146
    .local v5, len:I
    if-ltz p2, :cond_12

    if-le p2, v5, :cond_13

    .line 147
    :cond_12
    const/4 p2, 0x0

    .line 149
    :cond_13
    if-ltz p3, :cond_17

    if-le p3, v5, :cond_18

    .line 150
    :cond_17
    move p3, v5

    .line 152
    :cond_18
    const/4 v1, -0x1

    .local v1, cmpRes:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 156
    .local v2, curLen:I
    move v3, p2

    .local v3, i:I
    :goto_1e
    if-gt v3, p3, :cond_45

    .line 157
    invoke-virtual {v0, v3}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    .line 158
    .local v6, obj:Ljava/lang/Object;
    instance-of v8, v6, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    if-nez v8, :cond_2b

    .line 156
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_2b
    move-object v4, v6

    .line 161
    check-cast v4, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    .line 162
    .local v4, item:Lcom/sec/android/app/twlauncher/SimpleTextIconItem;
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 163
    .local v7, text:Ljava/lang/String;
    if-eqz p4, :cond_3d

    .line 164
    const/4 v8, 0x0

    invoke-virtual {v7, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 166
    :cond_3d
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCollator:Ljava/text/Collator;

    invoke-virtual {v8, v7, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 167
    if-ltz v1, :cond_28

    .line 171
    .end local v4           #item:Lcom/sec/android/app/twlauncher/SimpleTextIconItem;
    .end local v6           #obj:Ljava/lang/Object;
    .end local v7           #text:Ljava/lang/String;
    :cond_45
    if-eqz v1, :cond_49

    if-nez p4, :cond_4a

    .line 174
    .end local v3           #i:I
    :cond_49
    :goto_49
    return v3

    .restart local v3       #i:I
    :cond_4a
    const/4 v3, -0x1

    goto :goto_49
.end method

.method private getNextLevelIndexStr(ILjava/lang/String;)Ljava/lang/String;
    .registers 25
    .parameter "aViewIndex"
    .parameter "aCurrentSel"

    .prologue
    .line 88
    move-object/from16 v9, p2

    .line 89
    .local v9, currentSel:Ljava/lang/String;
    if-nez v9, :cond_8

    .line 90
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getSelection(I)Ljava/lang/String;

    move-result-object v9

    .line 92
    :cond_8
    if-nez v9, :cond_d

    .line 93
    const/16 v18, 0x0

    .line 139
    :goto_c
    return-object v18

    .line 95
    :cond_d
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 96
    .local v10, firstChar:C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListExactMatchIndices:Landroid/util/SparseIntArray;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    .line 97
    .local v12, index:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v0, v12, :cond_57

    .line 98
    invoke-static {v10}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v18

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getMatchingIndex(Ljava/lang/String;IIZ)I

    move-result v12

    .line 99
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v0, v12, :cond_4c

    .line 100
    const/16 v18, 0x0

    goto :goto_c

    .line 102
    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListExactMatchIndices:Landroid/util/SparseIntArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 104
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListView:Lcom/sec/android/app/twlauncher/GLListView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/GLListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Landroid/widget/BaseAdapter;

    .line 105
    .local v5, adapter:Landroid/widget/BaseAdapter;
    invoke-virtual {v5}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v14

    .local v14, len:I
    const/4 v7, -0x1

    .local v7, cmpRes:I
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    .line 109
    .local v8, curLen:I
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 110
    .local v16, res:Ljava/lang/StringBuffer;
    move v11, v12

    .local v11, i:I
    :goto_72
    if-ge v11, v14, :cond_ae

    .line 111
    invoke-virtual {v5, v11}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v15

    .line 112
    .local v15, obj:Ljava/lang/Object;
    instance-of v0, v15, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    move/from16 v18, v0

    if-nez v18, :cond_81

    .line 110
    :cond_7e
    :goto_7e
    add-int/lit8 v11, v11, 0x1

    goto :goto_72

    :cond_81
    move-object v13, v15

    .line 115
    check-cast v13, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;

    .line 116
    .local v13, item:Lcom/sec/android/app/twlauncher/SimpleTextIconItem;
    invoke-virtual {v13}, Lcom/sec/android/app/twlauncher/SimpleTextIconItem;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 120
    .local v17, text:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v8, :cond_7e

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCollator:Ljava/text/Collator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 124
    if-lez v7, :cond_be

    .line 136
    .end local v13           #item:Lcom/sec/android/app/twlauncher/SimpleTextIconItem;
    .end local v15           #obj:Ljava/lang/Object;
    .end local v17           #text:Ljava/lang/String;
    :cond_ae
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_e0

    .line 137
    const/16 v18, 0x0

    goto/16 :goto_c

    .line 127
    .restart local v13       #item:Lcom/sec/android/app/twlauncher/SimpleTextIconItem;
    .restart local v15       #obj:Ljava/lang/Object;
    .restart local v17       #text:Ljava/lang/String;
    :cond_be
    if-ltz v7, :cond_7e

    .line 130
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 131
    .local v6, ch:C
    const/16 v18, -0x1

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7e

    .line 134
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7e

    .line 139
    .end local v6           #ch:C
    .end local v13           #item:Lcom/sec/android/app/twlauncher/SimpleTextIconItem;
    .end local v15           #obj:Ljava/lang/Object;
    .end local v17           #text:Ljava/lang/String;
    :cond_e0
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_c
.end method

.method private getSelection(I)Ljava/lang/String;
    .registers 7
    .parameter "aLevel"

    .prologue
    .line 72
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 76
    .local v3, res:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    if-gt v1, p1, :cond_1e

    .line 77
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    .line 78
    .local v2, indexView:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getCurrentChar()Ljava/lang/Character;

    move-result-object v0

    .line 79
    .local v0, ch:Ljava/lang/Character;
    if-nez v0, :cond_18

    .line 80
    const/4 v4, 0x0

    .line 84
    .end local v0           #ch:Ljava/lang/Character;
    .end local v2           #indexView:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
    :goto_17
    return-object v4

    .line 82
    .restart local v0       #ch:Ljava/lang/Character;
    .restart local v2       #indexView:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
    :cond_18
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 84
    .end local v0           #ch:Ljava/lang/Character;
    .end local v2           #indexView:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
    :cond_1e
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_17
.end method

.method private handleMove(Landroid/graphics/PointF;)Z
    .registers 9
    .parameter "aPt"

    .prologue
    const/4 v6, 0x1

    .line 310
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    .line 312
    .local v2, indexView:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
    const/4 v0, 0x0

    .line 313
    .local v0, dir:I
    iget v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexGravity:I

    packed-switch v4, :pswitch_data_ae

    .line 329
    :cond_11
    :goto_11
    if-ne v0, v6, :cond_26

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mLastMovePt:Landroid/graphics/PointF;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->Contains(Landroid/graphics/PointF;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 333
    const/4 v0, 0x0

    .line 336
    :cond_26
    if-gez v0, :cond_87

    .line 337
    iget v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    .local v1, i:I
    :goto_2a
    if-ltz v1, :cond_3c

    .line 338
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #indexView:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
    check-cast v2, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    .line 339
    .restart local v2       #indexView:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->Contains(Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 340
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    .line 364
    .end local v1           #i:I
    :cond_3c
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mLastMovePt:Landroid/graphics/PointF;

    invoke-virtual {v4, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 365
    iget v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    invoke-direct {p0, v4, p1}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->feedPtToIndexView(ILandroid/graphics/PointF;)Z

    .line 366
    return v6

    .line 315
    :pswitch_47
    iget v4, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getLeft()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_54

    .line 316
    const/4 v0, 0x1

    goto :goto_11

    .line 317
    :cond_54
    iget v4, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_11

    .line 318
    const/4 v0, -0x1

    goto :goto_11

    .line 322
    :pswitch_61
    iget v4, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6e

    .line 323
    const/4 v0, 0x1

    goto :goto_11

    .line 324
    :cond_6e
    iget v4, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getLeft()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_11

    .line 325
    const/4 v0, -0x1

    goto :goto_11

    .line 343
    .restart local v1       #i:I
    :cond_7b
    if-lez v1, :cond_84

    .line 344
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setVisibility(I)V

    .line 345
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->clearCurrentChar()V

    .line 337
    :cond_84
    add-int/lit8 v1, v1, -0x1

    goto :goto_2a

    .line 348
    .end local v1           #i:I
    :cond_87
    if-lez v0, :cond_3c

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->isPreMatching()Z

    move-result v4

    if-nez v4, :cond_3c

    .line 353
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 354
    .local v3, size:I
    iget v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    add-int/lit8 v1, v4, 0x1

    .restart local v1       #i:I
    :goto_99
    if-ge v1, v3, :cond_3c

    .line 355
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v1}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->showNextLevel(Landroid/graphics/PointF;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 358
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    .line 359
    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->Contains(Landroid/graphics/PointF;)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_99

    .line 313
    nop

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_61
        :pswitch_47
    .end packed-switch
.end method

.method private handleUp(Landroid/graphics/PointF;)Z
    .registers 7
    .parameter "aPt"

    .prologue
    const/4 v4, 0x4

    const/4 v3, -0x1

    .line 266
    iget v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    .local v0, i:I
    :goto_4
    if-ltz v0, :cond_21

    .line 267
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    .line 268
    .local v1, indexView:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->clearCurrentChar()V

    .line 269
    if-lez v0, :cond_1d

    .line 270
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setPressedImmediate(Z)V

    .line 271
    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setVisibility(I)V

    .line 266
    :goto_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 273
    :cond_1d
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->unPressDelayed()Z

    goto :goto_1a

    .line 276
    .end local v1           #indexView:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
    :cond_21
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    if-eqz v2, :cond_2a

    .line 277
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/GLTextSurface;->setVisibility(I)V

    .line 279
    :cond_2a
    iput v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    .line 280
    iput v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mLastSelLen:I

    .line 281
    const/4 v2, 0x1

    return v2
.end method

.method private showNextLevel(Landroid/graphics/PointF;Ljava/lang/String;I)Z
    .registers 13
    .parameter "aPt"
    .parameter "aCurrentStr"
    .parameter "aViewIndex"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 285
    if-ge p3, v7, :cond_6

    move v5, v6

    .line 306
    :goto_5
    return v5

    .line 288
    :cond_6
    add-int/lit8 v3, p3, -0x1

    .line 289
    .local v3, prevLevel:I
    invoke-direct {p0, v3, p2}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getNextLevelIndexStr(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, nextLevelStr:Ljava/lang/String;
    if-nez v2, :cond_10

    move v5, v6

    .line 291
    goto :goto_5

    .line 293
    :cond_10
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    .line 294
    .local v0, indexView:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    .line 295
    .local v4, relPt:Landroid/graphics/PointF;
    invoke-virtual {v4, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 296
    iget v5, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getLeft()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v5, v8

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 297
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getMidYForCurrentChar()F

    move-result v1

    .line 298
    .local v1, indexY:F
    const/high16 v5, -0x4080

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_49

    .line 299
    iput v1, v4, Landroid/graphics/PointF;->y:F

    .line 303
    :goto_3e
    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setVisibility(I)V

    .line 304
    invoke-virtual {v0, v7}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setPressedImmediate(Z)V

    .line 305
    invoke-virtual {v0, v2, v4}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setIndexStr(Ljava/lang/String;Landroid/graphics/PointF;)V

    move v5, v7

    .line 306
    goto :goto_5

    .line 301
    :cond_49
    iget v5, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getTop()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v5, v8

    iput v5, v4, Landroid/graphics/PointF;->y:F

    goto :goto_3e
.end method

.method private updateList(ZLjava/lang/String;)Z
    .registers 8
    .parameter "aMoveToTop"
    .parameter "aSelStr"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 178
    const/4 v1, -0x1

    .line 179
    .local v1, index:I
    if-eqz p1, :cond_d

    .line 180
    const/4 v1, 0x0

    .line 190
    :goto_6
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListView:Lcom/sec/android/app/twlauncher/GLListView;

    invoke-virtual {v2, v1, v4}, Lcom/sec/android/app/twlauncher/GLListView;->setSelectionFromTop(II)V

    .line 191
    const/4 v2, 0x1

    return v2

    .line 182
    :cond_d
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 183
    .local v0, firstChar:C
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListBestMatchIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 184
    if-ne v1, v3, :cond_26

    .line 185
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3, v3, v4}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getMatchingIndex(Ljava/lang/String;IIZ)I

    move-result v1

    .line 186
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListBestMatchIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 188
    :cond_26
    invoke-direct {p0, p2, v1, v3, v4}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getMatchingIndex(Ljava/lang/String;IIZ)I

    move-result v1

    goto :goto_6
.end method

.method private updatePopup(Ljava/lang/String;)Z
    .registers 11
    .parameter "aSelStr"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 195
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    if-nez v5, :cond_7

    .line 215
    :goto_6
    return v3

    .line 198
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 199
    .local v1, newLen:I
    iget v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mLastSelLen:I

    if-eq v1, v5, :cond_50

    .line 200
    new-instance v2, Landroid/graphics/PointF;

    iget v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mPopupWidth:F

    add-int/lit8 v6, v1, -0x1

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mPopupWidthInc:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mPopupHeight:F

    add-int/lit8 v7, v1, -0x1

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mPopupHeightInc:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-direct {v2, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 202
    .local v2, newSize:Landroid/graphics/PointF;
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    invoke-virtual {v5, v2}, Lcom/sec/android/app/twlauncher/GLTextSurface;->setDrawBounds(Landroid/graphics/PointF;)V

    .line 203
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/GLTextSurface;->clearStyles()V

    .line 204
    if-le v1, v4, :cond_4e

    .line 205
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/GLTextSurface;->getTextColor()I

    move-result v0

    .line 206
    .local v0, defColor:I
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    iget v7, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFirstCharColor:I

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v5, v3, v6}, Lcom/sec/android/app/twlauncher/GLTextSurface;->setStyle(ILandroid/text/style/CharacterStyle;)V

    .line 207
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v5, v4, v6}, Lcom/sec/android/app/twlauncher/GLTextSurface;->setStyle(ILandroid/text/style/CharacterStyle;)V

    .line 209
    .end local v0           #defColor:I
    :cond_4e
    iput v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mLastSelLen:I

    .line 211
    .end local v2           #newSize:Landroid/graphics/PointF;
    :cond_50
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/GLTextSurface;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_5d

    .line 212
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    invoke-virtual {v5, v3}, Lcom/sec/android/app/twlauncher/GLTextSurface;->setVisibility(I)V

    .line 214
    :cond_5d
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/twlauncher/GLTextSurface;->setText(Ljava/lang/String;)V

    move v3, v4

    .line 215
    goto :goto_6
.end method

.method private updateViewIndexes(Landroid/widget/BaseAdapter;)Z
    .registers 7
    .parameter "aAdapter"

    .prologue
    const/4 v4, 0x0

    .line 535
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListBestMatchIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    .line 536
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListExactMatchIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    .line 537
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 538
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    if-ge v0, v2, :cond_27

    .line 539
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    .line 540
    .local v1, indexView:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->clearCurrentChar()V

    .line 541
    if-lez v0, :cond_24

    .line 542
    invoke-virtual {v1, v4, v4}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setIndexStr(Ljava/lang/String;Landroid/graphics/PointF;)V

    .line 538
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 545
    .end local v1           #indexView:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
    :cond_27
    const/4 v3, 0x1

    return v3
.end method


# virtual methods
.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .registers 4
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 496
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v0

    .line 497
    .local v0, parent:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
    if-nez v0, :cond_8

    .line 515
    :goto_7
    return v1

    .line 500
    :cond_8
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 501
    invoke-virtual {p1, p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->addTransRefSelf(Landroid/view/View;)V

    .line 502
    invoke-virtual {v0, p1, p0, v1, v1}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->drawChildrenDeep(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/ViewGroup;II)Z

    move-result v1

    .line 503
    .local v1, res:Z
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    goto :goto_7
.end method

.method public notifyDataChanged()V
    .registers 3

    .prologue
    .line 519
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListView:Lcom/sec/android/app/twlauncher/GLListView;

    if-eqz v1, :cond_12

    .line 520
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListView:Lcom/sec/android/app/twlauncher/GLListView;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/GLListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 521
    .local v0, adapter:Landroid/widget/BaseAdapter;
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 522
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->updateViewIndexes(Landroid/widget/BaseAdapter;)Z

    .line 524
    .end local v0           #adapter:Landroid/widget/BaseAdapter;
    :cond_12
    return-void
.end method

.method protected onFinishInflate()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 468
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 469
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    .line 476
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getChildCount()I

    move-result v0

    .line 477
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v0, :cond_2d

    .line 478
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 479
    .local v3, view:Landroid/view/View;
    instance-of v4, v3, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    if-eqz v4, :cond_1e

    move-object v2, v3

    .line 480
    check-cast v2, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    .line 481
    .local v2, indexView:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    .end local v2           #indexView:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
    :cond_1e
    instance-of v4, v3, Lcom/sec/android/app/twlauncher/GLTextSurface;

    if-eqz v4, :cond_2a

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    if-nez v4, :cond_2a

    .line 484
    check-cast v3, Lcom/sec/android/app/twlauncher/GLTextSurface;

    .end local v3           #view:Landroid/view/View;
    iput-object v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollTextView:Lcom/sec/android/app/twlauncher/GLTextSurface;

    .line 477
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 487
    :cond_2d
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_40

    .line 488
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setAllowWiggle(Z)V

    .line 490
    :cond_40
    const v4, 0x7f06003f

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/GLListView;

    iput-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListView:Lcom/sec/android/app/twlauncher/GLListView;

    .line 491
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListView:Lcom/sec/android/app/twlauncher/GLListView;

    invoke-virtual {v4, p0}, Lcom/sec/android/app/twlauncher/GLListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 493
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "aEv"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 239
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v3, :cond_10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eqz v4, :cond_11

    .line 260
    :cond_10
    :goto_10
    return v2

    .line 242
    :cond_11
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 243
    .local v1, pt:Landroid/graphics/PointF;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexGrpBoundary:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 250
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    .line 251
    .local v0, indexView:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->Contains(Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 254
    const/4 v4, -0x1

    iput v4, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mLastSelLen:I

    .line 255
    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->feedPtToIndexView(ILandroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 258
    iput v2, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    .line 259
    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->setPressedImmediate(Z)V

    move v2, v3

    .line 260
    goto :goto_10
.end method

.method protected onLayout(ZIIII)V
    .registers 21
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 401
    new-instance v8, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getPaddingLeft()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getPaddingTop()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getPaddingRight()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getPaddingBottom()I

    move-result v13

    int-to-float v13, v13

    invoke-direct {v8, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 402
    .local v8, padding:Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    iget v11, v8, Landroid/graphics/RectF;->left:F

    iget v12, v8, Landroid/graphics/RectF;->right:F

    add-float/2addr v11, v12

    sub-float/2addr v10, v11

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    iget v12, v8, Landroid/graphics/RectF;->top:F

    iget v13, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v12, v13

    sub-float/2addr v11, v12

    invoke-direct {v1, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    .line 403
    .local v1, availSize:Landroid/graphics/PointF;
    new-instance v0, Landroid/graphics/RectF;

    iget v10, v8, Landroid/graphics/RectF;->left:F

    iget v11, v8, Landroid/graphics/RectF;->top:F

    iget v12, v8, Landroid/graphics/RectF;->left:F

    iget v13, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v12, v13

    iget v13, v8, Landroid/graphics/RectF;->top:F

    iget v14, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v13, v14

    invoke-direct {v0, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 405
    .local v0, availRect:Landroid/graphics/RectF;
    const/4 v7, 0x0

    .local v7, indexViewOffset:F
    const/4 v9, 0x0

    .line 407
    .local v9, totalIndexViewsWidth:F
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getChildCount()I

    move-result v5

    .line 408
    .local v5, count:I
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    .line 409
    .local v4, childSize:Landroid/graphics/PointF;
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 411
    .local v2, centeredRect:Landroid/graphics/RectF;
    if-eqz p1, :cond_5f

    .line 412
    const/4 v10, -0x1

    iput v10, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    .line 413
    const/4 v10, -0x1

    iput v10, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mLastSelLen:I

    .line 415
    :cond_5f
    iget v10, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexGravity:I

    packed-switch v10, :pswitch_data_ec

    .line 424
    :goto_64
    const/4 v6, 0x0

    .local v6, i:I
    :goto_65
    if-ge v6, v5, :cond_cb

    .line 425
    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 426
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v4, v10, v11}, Landroid/graphics/PointF;->set(FF)V

    .line 427
    instance-of v10, v3, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    if-eqz v10, :cond_b8

    .line 432
    iget v10, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v10

    .line 433
    iget v10, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexGravity:I

    packed-switch v10, :pswitch_data_f4

    .line 424
    :goto_84
    add-int/lit8 v6, v6, 0x1

    goto :goto_65

    .line 417
    .end local v3           #child:Landroid/view/View;
    .end local v6           #i:I
    :pswitch_87
    iget v7, v8, Landroid/graphics/RectF;->left:F

    .line 418
    goto :goto_64

    .line 420
    :pswitch_8a
    iget v7, v1, Landroid/graphics/PointF;->x:F

    goto :goto_64

    .line 435
    .restart local v3       #child:Landroid/view/View;
    .restart local v6       #i:I
    :pswitch_8d
    float-to-int v10, v7

    iget v11, v8, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    iget v12, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v12, v7

    float-to-int v12, v12

    iget v13, v8, Landroid/graphics/RectF;->top:F

    iget v14, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v13, v14

    float-to-int v13, v13

    invoke-virtual {v3, v10, v11, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 437
    iget v10, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v10

    .line 438
    goto :goto_84

    .line 440
    :pswitch_a2
    iget v10, v4, Landroid/graphics/PointF;->x:F

    sub-float v10, v7, v10

    float-to-int v10, v10

    iget v11, v8, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    float-to-int v12, v7

    iget v13, v8, Landroid/graphics/RectF;->top:F

    iget v14, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v13, v14

    float-to-int v13, v13

    invoke-virtual {v3, v10, v11, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 442
    iget v10, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v10

    goto :goto_84

    .line 447
    :cond_b8
    invoke-static {v2, v0, v4}, Lcom/sec/android/app/twlauncher/SamsungUtils;->centerChildInParent(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;)V

    .line 448
    iget v10, v2, Landroid/graphics/RectF;->left:F

    float-to-int v10, v10

    iget v11, v2, Landroid/graphics/RectF;->top:F

    float-to-int v11, v11

    iget v12, v2, Landroid/graphics/RectF;->right:F

    float-to-int v12, v12

    iget v13, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v13, v13

    invoke-virtual {v3, v10, v11, v12, v13}, Landroid/view/View;->layout(IIII)V

    goto :goto_84

    .line 455
    .end local v3           #child:Landroid/view/View;
    :cond_cb
    iget v10, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexGravity:I

    packed-switch v10, :pswitch_data_fc

    .line 464
    :goto_d0
    return-void

    .line 457
    :pswitch_d1
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexGrpBoundary:Landroid/graphics/RectF;

    iget v11, v8, Landroid/graphics/RectF;->left:F

    iget v12, v8, Landroid/graphics/RectF;->top:F

    iget v13, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v10, v11, v12, v9, v13}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_d0

    .line 460
    :pswitch_dd
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexGrpBoundary:Landroid/graphics/RectF;

    iget v11, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v11, v9

    iget v12, v8, Landroid/graphics/RectF;->top:F

    iget v13, v0, Landroid/graphics/RectF;->right:F

    iget v14, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_d0

    .line 415
    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_87
        :pswitch_8a
    .end packed-switch

    .line 433
    :pswitch_data_f4
    .packed-switch 0x0
        :pswitch_8d
        :pswitch_a2
    .end packed-switch

    .line 455
    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_d1
        :pswitch_dd
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .registers 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 394
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 395
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->measureChildren(II)V

    .line 396
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 549
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 6
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 552
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_16

    .line 553
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mFastScrollIndexViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;

    .line 554
    .local v0, indexView:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
    if-nez p2, :cond_17

    .line 555
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->unPressDelayed()Z

    .line 560
    .end local v0           #indexView:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
    :cond_16
    :goto_16
    return-void

    .line 557
    .restart local v0       #indexView:Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;
    :cond_17
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLFastScrollIndexView;->pressDelayed()Z

    goto :goto_16
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "aEv"

    .prologue
    .line 371
    iget v3, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mCurrentFastScrollIndexView:I

    if-gez v3, :cond_6

    .line 372
    const/4 v2, 0x0

    .line 389
    :goto_5
    return v2

    .line 374
    :cond_6
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 375
    .local v1, pt:Landroid/graphics/PointF;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 376
    .local v0, action:I
    const/4 v2, 0x0

    .line 377
    .local v2, res:Z
    packed-switch v0, :pswitch_data_28

    goto :goto_5

    .line 386
    :pswitch_1c
    const/4 v2, 0x1

    goto :goto_5

    .line 380
    :pswitch_1e
    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->handleUp(Landroid/graphics/PointF;)Z

    move-result v2

    .line 381
    goto :goto_5

    .line 383
    :pswitch_23
    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->handleMove(Landroid/graphics/PointF;)Z

    move-result v2

    .line 384
    goto :goto_5

    .line 377
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1e
        :pswitch_23
        :pswitch_1e
    .end packed-switch
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .registers 3
    .parameter "aAdapter"

    .prologue
    .line 527
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListView:Lcom/sec/android/app/twlauncher/GLListView;

    if-eqz v0, :cond_c

    .line 528
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->mListView:Lcom/sec/android/app/twlauncher/GLListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/GLListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 529
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/GLFastScrollListView;->updateViewIndexes(Landroid/widget/BaseAdapter;)Z

    .line 531
    :cond_c
    return-void
.end method
