.class public Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;
.super Lcom/android/inputmethod/keyboard/internal/KeyboardParams;
.source "MiniKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiniKeyboardParams"
.end annotation


# instance fields
.field public mLeftKeys:I

.field public mNumColumns:I

.field public mNumRows:I

.field public mRightKeys:I

.field mTopRowAdjustment:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;-><init>()V

    .line 50
    return-void
.end method

.method constructor <init>(IIIIII)V
    .registers 7
    .parameter "numKeys"
    .parameter "maxColumns"
    .parameter "keyWidth"
    .parameter "rowHeight"
    .parameter "coordXInParent"
    .parameter "parentKeyboardWidth"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardParams;-><init>()V

    .line 55
    invoke-virtual/range {p0 .. p6}, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->setParameters(IIIIII)V

    .line 57
    return-void
.end method

.method private getOptimizedColumns(II)I
    .registers 6
    .parameter "numKeys"
    .parameter "maxColumns"

    .prologue
    .line 173
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 174
    .local v0, numColumns:I
    :goto_4
    invoke-static {p1, v0}, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->getTopRowEmptySlots(II)I

    move-result v1

    iget v2, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mNumRows:I

    if-ge v1, v2, :cond_d

    .line 177
    return v0

    .line 175
    :cond_d
    add-int/lit8 v0, v0, -0x1

    goto :goto_4
.end method

.method private static getTopRowEmptySlots(II)I
    .registers 4
    .parameter "numKeys"
    .parameter "numColumns"

    .prologue
    .line 164
    rem-int v0, p0, p1

    .line 165
    .local v0, remainingKeys:I
    if-nez v0, :cond_6

    .line 166
    const/4 v1, 0x0

    .line 168
    :goto_5
    return v1

    :cond_6
    sub-int v1, p1, v0

    goto :goto_5
.end method

.method private isTopRow(I)Z
    .registers 3
    .parameter "rowCount"

    .prologue
    .line 204
    iget v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mNumRows:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method getColumnPos(I)I
    .registers 8
    .parameter "n"

    .prologue
    .line 133
    iget v5, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mNumColumns:I

    rem-int v0, p1, v5

    .line 134
    .local v0, col:I
    if-nez v0, :cond_8

    .line 136
    const/4 v3, 0x0

    .line 160
    :cond_7
    :goto_7
    return v3

    .line 138
    :cond_8
    const/4 v3, 0x0

    .line 139
    .local v3, pos:I
    const/4 v4, 0x1

    .line 140
    .local v4, right:I
    const/4 v2, 0x0

    .line 141
    .local v2, left:I
    const/4 v1, 0x0

    .line 144
    .local v1, i:I
    :cond_c
    iget v5, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mRightKeys:I

    if-ge v4, v5, :cond_15

    .line 145
    move v3, v4

    .line 146
    add-int/lit8 v4, v4, 0x1

    .line 147
    add-int/lit8 v1, v1, 0x1

    .line 149
    :cond_15
    if-ge v1, v0, :cond_7

    .line 152
    iget v5, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mLeftKeys:I

    if-ge v2, v5, :cond_20

    .line 153
    add-int/lit8 v2, v2, 0x1

    .line 154
    neg-int v3, v2

    .line 155
    add-int/lit8 v1, v1, 0x1

    .line 157
    :cond_20
    if-lt v1, v0, :cond_c

    goto :goto_7
.end method

.method public getDefaultKeyCoordX()I
    .registers 3

    .prologue
    .line 181
    iget v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mLeftKeys:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mDefaultKeyWidth:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getX(II)I
    .registers 6
    .parameter "n"
    .parameter "row"

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->getColumnPos(I)I

    move-result v1

    iget v2, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mDefaultKeyWidth:I

    mul-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->getDefaultKeyCoordX()I

    move-result v2

    add-int v0, v1, v2

    .line 186
    .local v0, x:I
    invoke-direct {p0, p2}, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->isTopRow(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 187
    iget v1, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mTopRowAdjustment:I

    iget v2, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mDefaultKeyWidth:I

    div-int/lit8 v2, v2, 0x2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 189
    .end local v0           #x:I
    :cond_1b
    return v0
.end method

.method public getY(I)I
    .registers 4
    .parameter "row"

    .prologue
    .line 193
    iget v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mNumRows:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    iget v1, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mDefaultRowHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mTopPadding:I

    add-int/2addr v0, v1

    return v0
.end method

.method public markAsEdgeKey(Lcom/android/inputmethod/keyboard/Key;I)V
    .registers 4
    .parameter "key"
    .parameter "row"

    .prologue
    .line 197
    if-nez p2, :cond_5

    .line 198
    invoke-virtual {p1, p0}, Lcom/android/inputmethod/keyboard/Key;->markAsTopEdge(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    .line 199
    :cond_5
    invoke-direct {p0, p2}, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->isTopRow(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 200
    invoke-virtual {p1, p0}, Lcom/android/inputmethod/keyboard/Key;->markAsBottomEdge(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    .line 201
    :cond_e
    return-void
.end method

.method public setParameters(IIIIII)V
    .registers 20
    .parameter "numKeys"
    .parameter "maxColumns"
    .parameter "keyWidth"
    .parameter "rowHeight"
    .parameter "coordXInParent"
    .parameter "parentKeyboardWidth"

    .prologue
    .line 71
    div-int v10, p6, p3

    if-ge v10, p2, :cond_31

    .line 72
    new-instance v10, Ljava/lang/IllegalArgumentException;

    .line 73
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Keyboard is too small to hold mini keyboard: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p6

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 74
    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 73
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 72
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 76
    :cond_31
    move/from16 v0, p3

    iput v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mDefaultKeyWidth:I

    .line 77
    move/from16 v0, p4

    iput v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mDefaultRowHeight:I

    .line 79
    add-int v10, p1, p2

    add-int/lit8 v10, v10, -0x1

    div-int v7, v10, p2

    .line 80
    .local v7, numRows:I
    iput v7, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mNumRows:I

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->getOptimizedColumns(II)I

    move-result v4

    .line 82
    .local v4, numColumns:I
    iput v4, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mNumColumns:I

    .line 84
    add-int/lit8 v10, v4, -0x1

    div-int/lit8 v5, v10, 0x2

    .line 85
    .local v5, numLeftKeys:I
    sub-int v6, v4, v5

    .line 86
    .local v6, numRightKeys:I
    div-int v2, p5, p3

    .line 87
    .local v2, maxLeftKeys:I
    const/4 v10, 0x1

    sub-int v11, p6, p5

    .line 88
    div-int v11, v11, p3

    .line 87
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 90
    .local v3, maxRightKeys:I
    if-le v5, v2, :cond_ae

    .line 91
    move v1, v2

    .line 92
    .local v1, leftKeys:I
    sub-int v9, v4, v2

    .line 102
    .local v9, rightKeys:I
    :goto_5d
    mul-int v10, v1, p3

    move/from16 v0, p5

    if-lt v10, v0, :cond_69

    if-lez v1, :cond_69

    .line 103
    add-int/lit8 v1, v1, -0x1

    .line 104
    add-int/lit8 v9, v9, 0x1

    .line 108
    :cond_69
    mul-int v10, v9, p3

    add-int v10, v10, p5

    move/from16 v0, p6

    if-lt v10, v0, :cond_78

    const/4 v10, 0x1

    if-le v9, v10, :cond_78

    .line 109
    add-int/lit8 v1, v1, 0x1

    .line 110
    add-int/lit8 v9, v9, -0x1

    .line 112
    :cond_78
    iput v1, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mLeftKeys:I

    .line 113
    iput v9, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mRightKeys:I

    .line 116
    if-eqz v1, :cond_b7

    const/4 v10, 0x1

    if-eq v9, v10, :cond_b7

    const/4 v8, 0x0

    .line 117
    .local v8, onEdge:Z
    :goto_82
    const/4 v10, 0x2

    if-lt v7, v10, :cond_8f

    if-nez v8, :cond_8f

    invoke-static {p1, v4}, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->getTopRowEmptySlots(II)I

    move-result v10

    rem-int/lit8 v10, v10, 0x2

    if-nez v10, :cond_b9

    .line 118
    :cond_8f
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mTopRowAdjustment:I

    .line 125
    :goto_92
    iget v10, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mNumColumns:I

    iget v11, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mDefaultKeyWidth:I

    mul-int/2addr v10, v11

    iput v10, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mOccupiedWidth:I

    iput v10, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mBaseWidth:I

    .line 127
    iget v10, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mNumRows:I

    iget v11, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mDefaultRowHeight:I

    mul-int/2addr v10, v11

    iget v11, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mVerticalGap:I

    sub-int/2addr v10, v11

    .line 128
    iget v11, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mTopPadding:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mBottomPadding:I

    add-int/2addr v10, v11

    .line 127
    iput v10, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mOccupiedHeight:I

    iput v10, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mBaseHeight:I

    .line 129
    return-void

    .line 93
    .end local v1           #leftKeys:I
    .end local v8           #onEdge:Z
    .end local v9           #rightKeys:I
    :cond_ae
    if-le v6, v3, :cond_b4

    .line 94
    sub-int v1, v4, v3

    .line 95
    .restart local v1       #leftKeys:I
    move v9, v3

    .restart local v9       #rightKeys:I
    goto :goto_5d

    .line 97
    .end local v1           #leftKeys:I
    .end local v9           #rightKeys:I
    :cond_b4
    move v1, v5

    .line 98
    .restart local v1       #leftKeys:I
    move v9, v6

    .restart local v9       #rightKeys:I
    goto :goto_5d

    .line 116
    :cond_b7
    const/4 v8, 0x1

    goto :goto_82

    .line 119
    .restart local v8       #onEdge:Z
    :cond_b9
    iget v10, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mLeftKeys:I

    iget v11, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mRightKeys:I

    add-int/lit8 v11, v11, -0x1

    if-ge v10, v11, :cond_c5

    .line 120
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mTopRowAdjustment:I

    goto :goto_92

    .line 122
    :cond_c5
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard$Builder$MiniKeyboardParams;->mTopRowAdjustment:I

    goto :goto_92
.end method
