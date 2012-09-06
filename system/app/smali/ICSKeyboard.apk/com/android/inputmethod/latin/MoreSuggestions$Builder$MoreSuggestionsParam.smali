.class public Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;
.super Lcom/android/inputmethod/keyboard/internal/KeyboardParams;
.source "MoreSuggestions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/MoreSuggestions$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MoreSuggestionsParam"
.end annotation


# static fields
.field private static final COLUMN_ORDER_TO_NUMBER:[[I = null

.field private static final MAX_COLUMNS_IN_ROW:I = 0x3


# instance fields
.field private final mColumnOrders:[I

.field public mDivider:Landroid/graphics/drawable/Drawable;

.field public mDividerWidth:I

.field private final mNumColumnsInRow:[I

.field private mNumRows:I

.field private final mRowNumbers:[I

.field private final mWidths:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 126
    new-array v0, v5, [[I

    .line 127
    new-array v1, v2, [I

    aput-object v1, v0, v4

    .line 128
    new-array v1, v3, [I

    aput v2, v1, v4

    aput-object v1, v0, v2

    .line 129
    new-array v1, v5, [I

    aput v3, v1, v4

    aput v2, v1, v3

    aput-object v1, v0, v3

    .line 126
    sput-object v0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->COLUMN_ORDER_TO_NUMBER:[[I

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x12

    .line 48
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;-><init>()V

    .line 49
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mWidths:[I

    .line 50
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mRowNumbers:[I

    .line 51
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mColumnOrders:[I

    .line 52
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mNumColumnsInRow:[I

    .line 48
    return-void
.end method

.method private calcurateMaxRowWidth(II)I
    .registers 11
    .parameter "startPos"
    .parameter "endPos"

    .prologue
    .line 111
    const/4 v1, 0x0

    .line 112
    .local v1, maxRowWidth:I
    move v3, p1

    .line 113
    .local v3, pos:I
    const/4 v4, 0x0

    .local v4, row:I
    :goto_3
    iget v5, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mNumRows:I

    if-lt v4, v5, :cond_8

    .line 123
    return v1

    .line 114
    :cond_8
    iget-object v5, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mNumColumnsInRow:[I

    aget v2, v5, v4

    .line 115
    .local v2, numColumnInRow:I
    const/4 v0, 0x0

    .line 116
    .local v0, maxKeyWidth:I
    :goto_d
    if-ge v3, p2, :cond_15

    iget-object v5, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mRowNumbers:[I

    aget v5, v5, v3

    if-eq v5, v4, :cond_24

    .line 121
    :cond_15
    mul-int v5, v0, v2

    iget v6, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mDividerWidth:I

    add-int/lit8 v7, v2, -0x1

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 120
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 113
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 117
    :cond_24
    iget-object v5, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mWidths:[I

    aget v5, v5, v3

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 118
    add-int/lit8 v3, v3, 0x1

    goto :goto_d
.end method

.method private fitInWidth(III)Z
    .registers 6
    .parameter "startPos"
    .parameter "endPos"
    .parameter "width"

    .prologue
    .line 103
    move v0, p1

    .local v0, pos:I
    :goto_1
    if-lt v0, p2, :cond_5

    .line 107
    const/4 v1, 0x1

    :goto_4
    return v1

    .line 104
    :cond_5
    iget-object v1, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mWidths:[I

    aget v1, v1, v0

    if-le v1, p3, :cond_d

    .line 105
    const/4 v1, 0x0

    goto :goto_4

    .line 103
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getColumnNumber(I)I
    .registers 6
    .parameter "pos"

    .prologue
    .line 137
    iget-object v2, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mColumnOrders:[I

    aget v0, v2, p1

    .line 138
    .local v0, columnOrder:I
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->getNumColumnInRow(I)I

    move-result v1

    .line 139
    .local v1, numColumn:I
    sget-object v2, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->COLUMN_ORDER_TO_NUMBER:[[I

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    aget v2, v2, v0

    return v2
.end method

.method public getNumColumnInRow(I)I
    .registers 4
    .parameter "pos"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mNumColumnsInRow:[I

    iget-object v1, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mRowNumbers:[I

    aget v1, v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public getWidth(I)I
    .registers 6
    .parameter "pos"

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->getNumColumnInRow(I)I

    move-result v0

    .line 154
    .local v0, numColumnInRow:I
    iget v1, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mOccupiedWidth:I

    iget v2, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mDividerWidth:I

    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    div-int/2addr v1, v0

    return v1
.end method

.method public getX(I)I
    .registers 5
    .parameter "pos"

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->getColumnNumber(I)I

    move-result v0

    .line 144
    .local v0, columnNumber:I
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->getWidth(I)I

    move-result v1

    iget v2, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mDividerWidth:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    return v1
.end method

.method public getY(I)I
    .registers 5
    .parameter "pos"

    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mRowNumbers:[I

    aget v0, v1, p1

    .line 149
    .local v0, row:I
    iget v1, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mNumRows:I

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v0

    iget v2, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mDefaultRowHeight:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mTopPadding:I

    add-int/2addr v1, v2

    return v1
.end method

.method public layout(Lcom/android/inputmethod/latin/SuggestedWords;IIIILcom/android/inputmethod/keyboard/KeyboardView;)I
    .registers 20
    .parameter "suggestions"
    .parameter "fromPos"
    .parameter "maxWidth"
    .parameter "minWidth"
    .parameter "maxRow"
    .parameter "view"

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->clearKeys()V

    .line 61
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 62
    .local v4, paint:Landroid/graphics/Paint;
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    invoke-virtual/range {p6 .. p6}, Lcom/android/inputmethod/keyboard/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 64
    .local v6, res:Landroid/content/res/Resources;
    const v11, 0x7f020049

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 66
    iget-object v11, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mDivider:Landroid/graphics/drawable/Drawable;

    const/16 v12, 0x80

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 67
    iget-object v11, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    iput v11, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mDividerWidth:I

    .line 69
    const v11, 0x7f0b0013

    .line 68
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v3, v11

    .line 71
    .local v3, padding:I
    const/4 v7, 0x0

    .line 72
    .local v7, row:I
    move v5, p2

    .local v5, pos:I
    move v8, p2

    .line 73
    .local v8, rowStartPos:I
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v11

    const/16 v12, 0x12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 74
    .local v9, size:I
    :goto_41
    if-lt v5, v9, :cond_6a

    .line 94
    :cond_43
    iget-object v11, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mNumColumnsInRow:[I

    sub-int v12, v5, v8

    aput v12, v11, v7

    .line 95
    add-int/lit8 v11, v7, 0x1

    iput v11, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mNumRows:I

    .line 97
    invoke-direct {p0, p2, v5}, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->calcurateMaxRowWidth(II)I

    move-result v11

    .line 96
    move/from16 v0, p4

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mOccupiedWidth:I

    iput v11, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mBaseWidth:I

    .line 98
    iget v11, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mNumRows:I

    iget v12, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mDefaultRowHeight:I

    mul-int/2addr v11, v12

    iget v12, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mVerticalGap:I

    add-int/2addr v11, v12

    iput v11, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mOccupiedHeight:I

    iput v11, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mBaseHeight:I

    .line 99
    sub-int v11, v5, p2

    return v11

    .line 75
    :cond_6a
    invoke-virtual {p1, v5}, Lcom/android/inputmethod/latin/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 77
    .local v10, word:Ljava/lang/CharSequence;
    iget-object v11, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mWidths:[I

    move-object/from16 v0, p6

    invoke-virtual {v0, v10, v4}, Lcom/android/inputmethod/keyboard/KeyboardView;->getDefaultLabelWidth(Ljava/lang/CharSequence;Landroid/graphics/Paint;)F

    move-result v12

    float-to-int v12, v12

    add-int/2addr v12, v3

    aput v12, v11, v5

    .line 78
    sub-int v11, v5, v8

    add-int/lit8 v2, v11, 0x1

    .line 80
    .local v2, numColumn:I
    iget v11, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mDividerWidth:I

    add-int/lit8 v12, v2, -0x1

    mul-int/2addr v11, v12

    sub-int v11, p3, v11

    div-int v1, v11, v2

    .line 81
    .local v1, columnWidth:I
    const/4 v11, 0x3

    if-gt v2, v11, :cond_92

    .line 82
    add-int/lit8 v11, v5, 0x1

    invoke-direct {p0, v8, v11, v1}, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->fitInWidth(III)Z

    move-result v11

    if-nez v11, :cond_a1

    .line 83
    :cond_92
    add-int/lit8 v11, v7, 0x1

    move/from16 v0, p5

    if-ge v11, v0, :cond_43

    .line 86
    iget-object v11, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mNumColumnsInRow:[I

    sub-int v12, v5, v8

    aput v12, v11, v7

    .line 87
    move v8, v5

    .line 88
    add-int/lit8 v7, v7, 0x1

    .line 90
    :cond_a1
    iget-object v11, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mColumnOrders:[I

    sub-int v12, v5, v8

    aput v12, v11, v5

    .line 91
    iget-object v11, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mRowNumbers:[I

    aput v7, v11, v5

    .line 92
    add-int/lit8 v5, v5, 0x1

    goto :goto_41
.end method

.method public markAsEdgeKey(Lcom/android/inputmethod/keyboard/Key;I)V
    .registers 7
    .parameter "key"
    .parameter "pos"

    .prologue
    .line 158
    iget-object v3, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mRowNumbers:[I

    aget v2, v3, p2

    .line 159
    .local v2, row:I
    if-nez v2, :cond_9

    .line 160
    invoke-virtual {p1, p0}, Lcom/android/inputmethod/keyboard/Key;->markAsBottomEdge(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    .line 161
    :cond_9
    iget v3, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mNumRows:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_12

    .line 162
    invoke-virtual {p1, p0}, Lcom/android/inputmethod/keyboard/Key;->markAsTopEdge(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    .line 164
    :cond_12
    iget-object v3, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mNumColumnsInRow:[I

    aget v1, v3, v2

    .line 165
    .local v1, numColumnInRow:I
    invoke-virtual {p0, p2}, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->getColumnNumber(I)I

    move-result v0

    .line 166
    .local v0, column:I
    if-nez v0, :cond_1f

    .line 167
    invoke-virtual {p1, p0}, Lcom/android/inputmethod/keyboard/Key;->markAsLeftEdge(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    .line 168
    :cond_1f
    add-int/lit8 v3, v1, -0x1

    if-ne v0, v3, :cond_26

    .line 169
    invoke-virtual {p1, p0}, Lcom/android/inputmethod/keyboard/Key;->markAsRightEdge(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    .line 170
    :cond_26
    return-void
.end method
