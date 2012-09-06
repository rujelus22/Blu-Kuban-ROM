.class public Lcom/google/android/apps/googlevoice/TranscriptView;
.super Landroid/view/View;
.source "TranscriptView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/TranscriptView$1;,
        Lcom/google/android/apps/googlevoice/TranscriptView$SlopTracker;,
        Lcom/google/android/apps/googlevoice/TranscriptView$Listener;,
        Lcom/google/android/apps/googlevoice/TranscriptView$LayoutWord;
    }
.end annotation


# static fields
.field private static final HIGHLIGHTED_COLOR:I = -0xeaab6a

.field private static final HIGH_CONFIDENCE:F = 0.8f

.field private static final HIGH_CONFIDENCE_COLOR:I = -0x1

.field private static final LOW_CONFIDENCE_COLOR:I = -0x1d1d1e

.field private static final MEDIUM_COMFIDENCE:F = 0.6f

.field private static final MEDIUM_CONFIDENCE_COLOR:I = -0x323233

.field private static final NO_WORD_SELECTED:I = -0x1

.field private static final UNKNOWN_CONFIDENCE_COLOR:I = -0x670000


# instance fields
.field private height:I

.field private highlightedWord:I

.field private lastHeightMeasureSpec:I

.field private lastWidthMeasureSpec:I

.field private layoutWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/googlevoice/TranscriptView$LayoutWord;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/google/android/apps/googlevoice/TranscriptView$Listener;

.field private metrics:Landroid/util/DisplayMetrics;

.field private paint:Landroid/graphics/Paint;

.field private final seekingTracker:Lcom/google/android/apps/googlevoice/PlaybackSeekingTracker;

.field private final slopTracker:Lcom/google/android/apps/googlevoice/TranscriptView$SlopTracker;

.field private transcript:Lcom/google/android/apps/googlevoice/core/Transcript;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput-object v1, p0, Lcom/google/android/apps/googlevoice/TranscriptView;->layoutWords:Ljava/util/List;

    .line 42
    iput v0, p0, Lcom/google/android/apps/googlevoice/TranscriptView;->width:I

    .line 43
    iput v0, p0, Lcom/google/android/apps/googlevoice/TranscriptView;->height:I

    .line 44
    iput v0, p0, Lcom/google/android/apps/googlevoice/TranscriptView;->highlightedWord:I

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/TranscriptView;->paint:Landroid/graphics/Paint;

    .line 46
    iput v2, p0, Lcom/google/android/apps/googlevoice/TranscriptView;->lastWidthMeasureSpec:I

    .line 47
    iput v2, p0, Lcom/google/android/apps/googlevoice/TranscriptView;->lastHeightMeasureSpec:I

    .line 51
    iput-object v1, p0, Lcom/google/android/apps/googlevoice/TranscriptView;->metrics:Landroid/util/DisplayMetrics;

    .line 55
    new-instance v0, Lcom/google/android/apps/googlevoice/AndroidPlaybackSeekingTracker;

    invoke-direct {v0, p1}, Lcom/google/android/apps/googlevoice/AndroidPlaybackSeekingTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/TranscriptView;->seekingTracker:Lcom/google/android/apps/googlevoice/PlaybackSeekingTracker;

    .line 56
    new-instance v0, Lcom/google/android/apps/googlevoice/TranscriptView$SlopTracker;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/TranscriptView$SlopTracker;-><init>(Lcom/google/android/apps/googlevoice/TranscriptView;Lcom/google/android/apps/googlevoice/TranscriptView$1;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/TranscriptView;->slopTracker:Lcom/google/android/apps/googlevoice/TranscriptView$SlopTracker;

    .line 57
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/googlevoice/TranscriptView;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/googlevoice/TranscriptView;->clickWordAt(II)V

    return-void
.end method

.method private clickWordAt(II)V
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 239
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/googlevoice/TranscriptView;->getWordAt(II)I

    move-result v0

    .line 240
    .local v0, index:I
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/TranscriptView;->listener:Lcom/google/android/apps/googlevoice/TranscriptView$Listener;

    if-eqz v1, :cond_f

    .line 241
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/TranscriptView;->listener:Lcom/google/android/apps/googlevoice/TranscriptView$Listener;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/TranscriptView;->transcript:Lcom/google/android/apps/googlevoice/core/Transcript;

    invoke-interface {v1, p0, v2, v0}, Lcom/google/android/apps/googlevoice/TranscriptView$Listener;->onTranscriptWordClick(Lcom/google/android/apps/googlevoice/TranscriptView;Lcom/google/android/apps/googlevoice/core/Transcript;I)V

    .line 243
    :cond_f
    return-void
.end method

.method private getWordAt(II)I
    .registers 12
    .parameter "x"
    .parameter "y"

    .prologue
    .line 246
    const/4 v1, 0x0

    .line 247
    .local v1, closestWordIndex:I
    const v0, 0x7fffffff

    .line 248
    .local v0, closestWordDistSq:I
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/TranscriptView;->layoutWords:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, i:I
    :goto_c
    if-ltz v5, :cond_2b

    .line 249
    iget-object v7, p0, Lcom/google/android/apps/googlevoice/TranscriptView;->layoutWords:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/googlevoice/TranscriptView$LayoutWord;

    .line 250
    .local v6, layoutWord:Lcom/google/android/apps/googlevoice/TranscriptView$LayoutWord;
    iget v7, v6, Lcom/google/android/apps/googlevoice/TranscriptView$LayoutWord;->centerX:I

    sub-int v3, v7, p1

    .line 251
    .local v3, distX:I
    iget v7, v6, Lcom/google/android/apps/googlevoice/TranscriptView$LayoutWord;->centerY:I

    sub-int v4, v7, p2

    .line 252
    .local v4, distY:I
    mul-int v7, v3, v3

    mul-int v8, v4, v4

    add-int v2, v7, v8

    .line 253
    .local v2, distSq:I
    if-ge v2, v0, :cond_28

    .line 254
    move v1, v5

    .line 255
    move v0, v2

    .line 248
    :cond_28
    add-int/lit8 v5, v5, -0x1

    goto :goto_c

    .line 258
    .end local v2           #distSq:I
    .end local v3           #distX:I
    .end local v4           #distY:I
    .end local v6           #layoutWord:Lcom/google/android/apps/googlevoice/TranscriptView$LayoutWord;
    :cond_2b
    return v1
.end method


# virtual methods
.method public getTranscript()Lcom/google/android/apps/googlevoice/core/Transcript;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/TranscriptView;->transcript:Lcom/google/android/apps/googlevoice/core/Transcript;

    return-object v0
.end method

.method public highlightWordAtIndex(I)V
    .registers 2
    .parameter "index"

    .prologue
    .line 77
    iput p1, p0, Lcom/google/android/apps/googlevoice/TranscriptView;->highlightedWord:I

    .line 78
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/TranscriptView;->postInvalidate()V

    .line 79
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .parameter "canvas"

    .prologue
    .line 88
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/google/android/apps/googlevoice/TranscriptView;->setDrawingCacheEnabled(Z)V

    .line 89
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 92
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/TranscriptView;->layoutWords:Ljava/util/List;

    if-nez v6, :cond_c

    .line 105
    :cond_b
    return-void

    .line 96
    :cond_c
    const/4 v1, 0x0

    .line 97
    .local v1, i:I
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/TranscriptView;->getPaddingLeft()I

    move-result v3

    .line 98
    .local v3, left:I
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/TranscriptView;->getPaddingTop()I

    move-result v4

    .line 99
    .local v4, top:I
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/TranscriptView;->layoutWords:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/googlevoice/TranscriptView$LayoutWord;

    .line 100
    .local v5, word:Lcom/google/android/apps/googlevoice/TranscriptView$LayoutWord;
    iget v6, p0, Lcom/google/android/apps/googlevoice/TranscriptView;->highlightedWord:I

    if-ne v1, v6, :cond_44

    const/high16 v0, -0x1

    .line 101
    .local v0, color:I
    :goto_2d
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/TranscriptView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v6, v5, Lcom/google/android/apps/googlevoice/TranscriptView$LayoutWord;->word:Ljava/lang/String;

    int-to-float v7, v3

    iget v8, v5, Lcom/google/android/apps/googlevoice/TranscriptView$LayoutWord;->left:F

    add-float/2addr v7, v8

    int-to-float v8, v4

    iget v9, v5, Lcom/google/android/apps/googlevoice/TranscriptView$LayoutWord;->top:F

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/google/android/apps/googlevoice/TranscriptView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 103
    add-int/lit8 v1, v1, 0x1

    .line 104
    goto :goto_1b

    .line 100
    .end local v0           #color:I
    :cond_44
    iget v0, v5, Lcom/google/android/apps/googlevoice/TranscriptView$LayoutWord;->confidenceColor:I

    goto :goto_2d
.end method

.method protected onMeasure(II)V
    .registers 26
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 110
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/TranscriptView;->transcript:Lcom/google/android/apps/googlevoice/core/Transcript;

    if-nez v2, :cond_11

    .line 111
    const/4 v2, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Lcom/google/android/apps/googlevoice/TranscriptView;->setMeasuredDimension(II)V

    .line 194
    :goto_10
    return-void

    .line 115
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/TranscriptView;->metrics:Landroid/util/DisplayMetrics;

    if-nez v2, :cond_3d

    .line 116
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/TranscriptView;->metrics:Landroid/util/DisplayMetrics;

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/TranscriptView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v20, "window"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/WindowManager;

    .line 119
    .local v15, mgr:Landroid/view/WindowManager;
    invoke-interface {v15}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/TranscriptView;->metrics:Landroid/util/DisplayMetrics;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 122
    .end local v15           #mgr:Landroid/view/WindowManager;
    :cond_3d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/TranscriptView;->layoutWords:Ljava/util/List;

    if-eqz v2, :cond_53

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/googlevoice/TranscriptView;->lastWidthMeasureSpec:I

    move/from16 v0, p1

    if-ne v0, v2, :cond_53

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/googlevoice/TranscriptView;->lastHeightMeasureSpec:I

    move/from16 v0, p2

    if-eq v0, v2, :cond_20e

    .line 124
    :cond_53
    sget-boolean v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v2, :cond_82

    .line 125
    const-string v2, "Measuring %s %s"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 128
    :cond_82
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/googlevoice/TranscriptView;->lastWidthMeasureSpec:I

    .line 129
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/googlevoice/TranscriptView;->lastHeightMeasureSpec:I

    .line 131
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/googlevoice/TranscriptView;->layoutWords:Ljava/util/List;

    .line 132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/TranscriptView;->paint:Landroid/graphics/Paint;

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/TranscriptView;->paint:Landroid/graphics/Paint;

    sget-object v20, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/TranscriptView;->paint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    const/high16 v21, 0x4160

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/TranscriptView;->metrics:Landroid/util/DisplayMetrics;

    if-eqz v2, :cond_162

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/TranscriptView;->metrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    :goto_c1
    mul-float v2, v2, v21

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 139
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-eqz v2, :cond_166

    .line 140
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 144
    .local v14, maxWidth:I
    :goto_d2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-eqz v2, :cond_16b

    .line 145
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 150
    .local v13, maxHeight:I
    :goto_dc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/TranscriptView;->transcript:Lcom/google/android/apps/googlevoice/core/Transcript;

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/Transcript;->getWords()[Ljava/lang/String;

    move-result-object v17

    .line 151
    .local v17, words:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/TranscriptView;->transcript:Lcom/google/android/apps/googlevoice/core/Transcript;

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/core/Transcript;->getWordConfidenceLevels()[F

    move-result-object v10

    .line 152
    .local v10, confidenceLevels:[F
    const/4 v4, 0x0

    .line 153
    .local v4, x:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/TranscriptView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    .line 154
    .local v5, y:F
    move/from16 v18, v4

    .line 155
    .local v18, xMax:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/TranscriptView;->paint:Landroid/graphics/Paint;

    const-string v20, " "

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v16

    .line 156
    .local v16, spaceWidth:F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/TranscriptView;->getPaddingLeft()I

    move-result v2

    sub-int v2, v14, v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/TranscriptView;->getPaddingRight()I

    move-result v20

    sub-int v9, v2, v20

    .line 157
    .local v9, availableWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/TranscriptView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v2

    const/high16 v20, 0x3fc0

    mul-float v7, v2, v20

    .line 159
    .local v7, verticalSpacing:F
    const/4 v11, 0x0

    .local v11, i:I
    :goto_11c
    move-object/from16 v0, v17

    array-length v2, v0

    if-ge v11, v2, :cond_18a

    .line 160
    aget-object v3, v17, v11

    .line 161
    .local v3, word:Ljava/lang/String;
    aget v12, v10, v11

    .line 162
    .local v12, level:F
    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_170

    const v8, -0x670000

    .line 167
    .local v8, color:I
    :goto_12e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/TranscriptView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 168
    .local v6, width:F
    add-float v2, v4, v6

    int-to-float v0, v9

    move/from16 v20, v0

    cmpl-float v2, v2, v20

    if-lez v2, :cond_146

    const/4 v2, 0x0

    cmpl-float v2, v4, v2

    if-lez v2, :cond_146

    .line 169
    const/4 v4, 0x0

    .line 170
    add-float/2addr v5, v7

    .line 172
    :cond_146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/TranscriptView;->layoutWords:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v2, Lcom/google/android/apps/googlevoice/TranscriptView$LayoutWord;

    invoke-direct/range {v2 .. v8}, Lcom/google/android/apps/googlevoice/TranscriptView$LayoutWord;-><init>(Ljava/lang/String;FFFFI)V

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    add-float/2addr v4, v6

    .line 174
    cmpl-float v2, v4, v18

    if-lez v2, :cond_15d

    move/from16 v18, v4

    .line 175
    :cond_15d
    add-float v4, v4, v16

    .line 159
    add-int/lit8 v11, v11, 0x1

    goto :goto_11c

    .line 136
    .end local v3           #word:Ljava/lang/String;
    .end local v4           #x:F
    .end local v5           #y:F
    .end local v6           #width:F
    .end local v7           #verticalSpacing:F
    .end local v8           #color:I
    .end local v9           #availableWidth:I
    .end local v10           #confidenceLevels:[F
    .end local v11           #i:I
    .end local v12           #level:F
    .end local v13           #maxHeight:I
    .end local v14           #maxWidth:I
    .end local v16           #spaceWidth:F
    .end local v17           #words:[Ljava/lang/String;
    .end local v18           #xMax:F
    :cond_162
    const/high16 v2, 0x3f80

    goto/16 :goto_c1

    .line 142
    :cond_166
    const v14, 0x7fffffff

    .restart local v14       #maxWidth:I
    goto/16 :goto_d2

    .line 147
    :cond_16b
    const v13, 0x7fffffff

    .restart local v13       #maxHeight:I
    goto/16 :goto_dc

    .line 162
    .restart local v3       #word:Ljava/lang/String;
    .restart local v4       #x:F
    .restart local v5       #y:F
    .restart local v7       #verticalSpacing:F
    .restart local v9       #availableWidth:I
    .restart local v10       #confidenceLevels:[F
    .restart local v11       #i:I
    .restart local v12       #level:F
    .restart local v16       #spaceWidth:F
    .restart local v17       #words:[Ljava/lang/String;
    .restart local v18       #xMax:F
    :cond_170
    const v2, 0x3f4ccccd

    cmpl-float v2, v12, v2

    if-ltz v2, :cond_17b

    const v8, -0x1

    goto :goto_12e

    :cond_17b
    const v2, 0x3f19999a

    cmpl-float v2, v12, v2

    if-ltz v2, :cond_186

    const v8, -0x323232

    goto :goto_12e

    :cond_186
    const v8, -0x1d1d1e

    goto :goto_12e

    .line 178
    .end local v3           #word:Ljava/lang/String;
    .end local v12           #level:F
    :cond_18a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/googlevoice/TranscriptView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float v19, v5, v2

    .line 179
    .local v19, yMax:F
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/TranscriptView;->getPaddingLeft()I

    move-result v2

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    add-int v2, v2, v20

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/TranscriptView;->getPaddingRight()I

    move-result v20

    add-int v2, v2, v20

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/apps/googlevoice/TranscriptView;->width:I

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/TranscriptView;->getPaddingTop()I

    move-result v2

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    add-int v2, v2, v20

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/googlevoice/TranscriptView;->getPaddingBottom()I

    move-result v20

    add-int v2, v2, v20

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/apps/googlevoice/TranscriptView;->height:I

    .line 182
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v20, 0x4000

    move/from16 v0, v20

    if-eq v2, v0, :cond_1ec

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v20, -0x8000

    move/from16 v0, v20

    if-ne v2, v0, :cond_1f0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/googlevoice/TranscriptView;->width:I

    if-le v2, v14, :cond_1f0

    .line 185
    :cond_1ec
    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/android/apps/googlevoice/TranscriptView;->width:I

    .line 187
    :cond_1f0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v20, 0x4000

    move/from16 v0, v20

    if-eq v2, v0, :cond_20a

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v20, -0x8000

    move/from16 v0, v20

    if-ne v2, v0, :cond_20e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/googlevoice/TranscriptView;->height:I

    if-le v2, v13, :cond_20e

    .line 190
    :cond_20a
    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/android/apps/googlevoice/TranscriptView;->height:I

    .line 193
    .end local v4           #x:F
    .end local v5           #y:F
    .end local v7           #verticalSpacing:F
    .end local v9           #availableWidth:I
    .end local v10           #confidenceLevels:[F
    .end local v11           #i:I
    .end local v13           #maxHeight:I
    .end local v14           #maxWidth:I
    .end local v16           #spaceWidth:F
    .end local v17           #words:[Ljava/lang/String;
    .end local v18           #xMax:F
    .end local v19           #yMax:F
    :cond_20e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/googlevoice/TranscriptView;->width:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/googlevoice/TranscriptView;->height:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Lcom/google/android/apps/googlevoice/TranscriptView;->setMeasuredDimension(II)V

    goto/16 :goto_10
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 199
    .local v0, action:I
    if-eqz v0, :cond_10

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/TranscriptView;->slopTracker:Lcom/google/android/apps/googlevoice/TranscriptView$SlopTracker;

    invoke-virtual {v3}, Lcom/google/android/apps/googlevoice/TranscriptView$SlopTracker;->isWithinSlop()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 200
    :cond_10
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/TranscriptView;->slopTracker:Lcom/google/android/apps/googlevoice/TranscriptView$SlopTracker;

    #calls: Lcom/google/android/apps/googlevoice/TranscriptView$SlopTracker;->handleTouchEvent(Landroid/view/MotionEvent;)V
    invoke-static {v3, p1}, Lcom/google/android/apps/googlevoice/TranscriptView$SlopTracker;->access$100(Lcom/google/android/apps/googlevoice/TranscriptView$SlopTracker;Landroid/view/MotionEvent;)V

    .line 203
    if-nez v0, :cond_18

    .line 234
    :cond_17
    :goto_17
    return v1

    :cond_18
    move v1, v2

    .line 203
    goto :goto_17

    .line 206
    :cond_1a
    packed-switch v0, :pswitch_data_56

    move v1, v2

    .line 234
    goto :goto_17

    .line 209
    :pswitch_1f
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/TranscriptView;->seekingTracker:Lcom/google/android/apps/googlevoice/PlaybackSeekingTracker;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-interface {v3, v4, v5}, Lcom/google/android/apps/googlevoice/PlaybackSeekingTracker;->shouldSeek(II)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 215
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/TranscriptView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/googlevoice/TranscriptView;->clickWordAt(II)V

    goto :goto_17

    .line 223
    :cond_46
    if-eqz v0, :cond_17

    move v1, v2

    goto :goto_17

    .line 228
    :pswitch_4a
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/TranscriptView;->seekingTracker:Lcom/google/android/apps/googlevoice/PlaybackSeekingTracker;

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/PlaybackSeekingTracker;->reset()V

    .line 229
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/TranscriptView;->slopTracker:Lcom/google/android/apps/googlevoice/TranscriptView$SlopTracker;

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/TranscriptView$SlopTracker;->reset()V

    goto :goto_17

    .line 206
    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_4a
        :pswitch_1f
        :pswitch_4a
    .end packed-switch
.end method

.method public setListener(Lcom/google/android/apps/googlevoice/TranscriptView$Listener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/TranscriptView;->listener:Lcom/google/android/apps/googlevoice/TranscriptView$Listener;

    .line 74
    return-void
.end method

.method public setTranscript(Lcom/google/android/apps/googlevoice/core/Transcript;)V
    .registers 3
    .parameter "transcript"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/TranscriptView;->transcript:Lcom/google/android/apps/googlevoice/core/Transcript;

    if-eq p1, v0, :cond_f

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/TranscriptView;->layoutWords:Ljava/util/List;

    .line 62
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/TranscriptView;->requestLayout()V

    .line 63
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/TranscriptView;->postInvalidate()V

    .line 64
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/TranscriptView;->transcript:Lcom/google/android/apps/googlevoice/core/Transcript;

    .line 66
    :cond_f
    return-void
.end method

.method public unHighlight()V
    .registers 2

    .prologue
    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/googlevoice/TranscriptView;->highlightedWord:I

    .line 83
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/TranscriptView;->postInvalidate()V

    .line 84
    return-void
.end method
