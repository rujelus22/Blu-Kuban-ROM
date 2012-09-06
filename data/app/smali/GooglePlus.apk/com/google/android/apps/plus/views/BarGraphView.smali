.class public Lcom/google/android/apps/plus/views/BarGraphView;
.super Landroid/view/View;
.source "BarGraphView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;,
        Lcom/google/android/apps/plus/views/BarGraphView$RowInfo;
    }
.end annotation


# static fields
.field protected static BAR_GRAPH_HEIGHT:I

.field protected static BAR_SPACING:I

.field protected static LABEL_BAR_SPACING:I

.field protected static TOTAL_GRAPH_SPACING:I

.field protected static sBarGraphPaint:Landroid/graphics/Paint;

.field protected static sLabelTextPaint:Landroid/text/TextPaint;

.field protected static sTotalTextPaint:Landroid/text/TextPaint;

.field protected static sValueTextPaint:Landroid/text/TextPaint;


# instance fields
.field protected mInternalRowInfos:[Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;

.field protected mMaxValue:J

.field protected mTotalLayout:Landroid/text/StaticLayout;

.field protected mTotalValue:J

.field protected mUnits:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/BarGraphView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/views/BarGraphView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v6, 0x7f0d0199

    const v5, 0x7f0d0198

    const v4, 0x7f0d0197

    const/4 v3, 0x1

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    sget-object v1, Lcom/google/android/apps/plus/views/BarGraphView;->sTotalTextPaint:Landroid/text/TextPaint;

    if-nez v1, :cond_de

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 72
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/BarGraphView;->sTotalTextPaint:Landroid/text/TextPaint;

    .line 73
    sget-object v1, Lcom/google/android/apps/plus/views/BarGraphView;->sTotalTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 74
    sget-object v1, Lcom/google/android/apps/plus/views/BarGraphView;->sTotalTextPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a00f4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 75
    sget-object v1, Lcom/google/android/apps/plus/views/BarGraphView;->sTotalTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 76
    sget-object v1, Lcom/google/android/apps/plus/views/BarGraphView;->sTotalTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 77
    sget-object v1, Lcom/google/android/apps/plus/views/BarGraphView;->sTotalTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v4}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 79
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/BarGraphView;->sLabelTextPaint:Landroid/text/TextPaint;

    .line 80
    sget-object v1, Lcom/google/android/apps/plus/views/BarGraphView;->sLabelTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 81
    sget-object v1, Lcom/google/android/apps/plus/views/BarGraphView;->sLabelTextPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a00f5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 82
    sget-object v1, Lcom/google/android/apps/plus/views/BarGraphView;->sLabelTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 83
    sget-object v1, Lcom/google/android/apps/plus/views/BarGraphView;->sLabelTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 84
    sget-object v1, Lcom/google/android/apps/plus/views/BarGraphView;->sLabelTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v5}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 86
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/BarGraphView;->sValueTextPaint:Landroid/text/TextPaint;

    .line 87
    sget-object v1, Lcom/google/android/apps/plus/views/BarGraphView;->sValueTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 88
    sget-object v1, Lcom/google/android/apps/plus/views/BarGraphView;->sValueTextPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a00f6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 89
    sget-object v1, Lcom/google/android/apps/plus/views/BarGraphView;->sValueTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 90
    sget-object v1, Lcom/google/android/apps/plus/views/BarGraphView;->sValueTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 91
    sget-object v1, Lcom/google/android/apps/plus/views/BarGraphView;->sValueTextPaint:Landroid/text/TextPaint;

    invoke-static {v1, v6}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 93
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/BarGraphView;->sBarGraphPaint:Landroid/graphics/Paint;

    .line 94
    sget-object v1, Lcom/google/android/apps/plus/views/BarGraphView;->sBarGraphPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a00f7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    sget-object v1, Lcom/google/android/apps/plus/views/BarGraphView;->sBarGraphPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    const v1, 0x7f0d019a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/BarGraphView;->TOTAL_GRAPH_SPACING:I

    .line 98
    const v1, 0x7f0d019c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/BarGraphView;->BAR_GRAPH_HEIGHT:I

    .line 99
    const v1, 0x7f0d019b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/BarGraphView;->LABEL_BAR_SPACING:I

    .line 100
    const v1, 0x7f0d019d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/BarGraphView;->BAR_SPACING:I

    .line 102
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_de
    return-void
.end method

.method private measureHeight(II)I
    .registers 21
    .parameter "width"
    .parameter "heightMeasureSpec"

    .prologue
    .line 152
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    .line 153
    .local v16, specMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    .line 155
    .local v17, specSize:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/BarGraphView;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/BarGraphView;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    sub-int p1, p1, v1

    .line 158
    const/high16 v1, 0x4000

    move/from16 v0, v16

    if-ne v0, v1, :cond_1c

    .line 160
    move/from16 v14, v17

    .line 196
    .local v14, result:I
    :cond_1b
    :goto_1b
    return v14

    .line 162
    .end local v14           #result:I
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/BarGraphView;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/BarGraphView;->getPaddingBottom()I

    move-result v3

    add-int v14, v1, v3

    .line 164
    .restart local v14       #result:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/BarGraphView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 166
    .local v13, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/BarGraphView;->mInternalRowInfos:[Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;

    if-eqz v1, :cond_1b

    .line 167
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/BarGraphView;->mInternalRowInfos:[Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;

    array-length v15, v1

    .line 168
    .local v15, size:I
    if-lez v15, :cond_72

    .line 169
    const v1, 0x7f0803c4

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/apps/plus/views/BarGraphView;->mTotalValue:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/views/BarGraphView;->mUnits:Ljava/lang/String;

    aput-object v6, v3, v5

    invoke-virtual {v13, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, total:Ljava/lang/String;
    new-instance v1, Landroid/text/StaticLayout;

    sget-object v3, Lcom/google/android/apps/plus/views/BarGraphView;->sTotalTextPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v4, p1

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/apps/plus/views/BarGraphView;->mTotalLayout:Landroid/text/StaticLayout;

    .line 173
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/BarGraphView;->mTotalLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    sget v3, Lcom/google/android/apps/plus/views/BarGraphView;->TOTAL_GRAPH_SPACING:I

    add-int/2addr v1, v3

    add-int/2addr v14, v1

    .line 176
    .end local v2           #total:Ljava/lang/String;
    :cond_72
    const/4 v11, 0x0

    .local v11, i:I
    :goto_73
    if-ge v11, v15, :cond_e1

    .line 177
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/BarGraphView;->mInternalRowInfos:[Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;

    aget-object v12, v1, v11

    .line 178
    .local v12, internalRowInfo:Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;
    new-instance v3, Landroid/text/StaticLayout;

    iget-object v4, v12, Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;->mLabel:Ljava/lang/String;

    sget-object v5, Lcom/google/android/apps/plus/views/BarGraphView;->sLabelTextPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f80

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v6, p1

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, v12, Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;->mLabelLayout:Landroid/text/StaticLayout;

    .line 181
    iget-object v1, v12, Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;->mLabelLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    sget v3, Lcom/google/android/apps/plus/views/BarGraphView;->LABEL_BAR_SPACING:I

    add-int/2addr v1, v3

    add-int/2addr v14, v1

    .line 183
    const v1, 0x7f0803c5

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, v12, Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;->mValue:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/views/BarGraphView;->mUnits:Ljava/lang/String;

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-wide/16 v6, 0x64

    iget-wide v8, v12, Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;->mValue:J

    mul-long/2addr v6, v8

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/apps/plus/views/BarGraphView;->mTotalValue:J

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {v13, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, value:Ljava/lang/String;
    new-instance v3, Landroid/text/StaticLayout;

    sget-object v5, Lcom/google/android/apps/plus/views/BarGraphView;->sValueTextPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f80

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v6, p1

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, v12, Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;->mValueLayout:Landroid/text/StaticLayout;

    .line 189
    iget-object v1, v12, Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;->mValueLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    sget v3, Lcom/google/android/apps/plus/views/BarGraphView;->LABEL_BAR_SPACING:I

    add-int/2addr v1, v3

    add-int/2addr v14, v1

    .line 176
    add-int/lit8 v11, v11, 0x1

    goto :goto_73

    .line 192
    .end local v4           #value:Ljava/lang/String;
    .end local v12           #internalRowInfo:Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;
    :cond_e1
    sget v1, Lcom/google/android/apps/plus/views/BarGraphView;->BAR_GRAPH_HEIGHT:I

    sget v3, Lcom/google/android/apps/plus/views/BarGraphView;->BAR_SPACING:I

    add-int/2addr v1, v3

    mul-int/2addr v1, v15

    add-int/2addr v14, v1

    goto/16 :goto_1b
.end method

.method private measureWidth(I)I
    .registers 6
    .parameter "measureSpec"

    .prologue
    .line 133
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 134
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 137
    .local v2, specSize:I
    const/high16 v3, 0x4000

    if-ne v1, v3, :cond_e

    .line 139
    move v0, v2

    .line 148
    .local v0, result:I
    :cond_d
    :goto_d
    return v0

    .line 141
    .end local v0           #result:I
    :cond_e
    const/16 v0, 0x1e0

    .line 142
    .restart local v0       #result:I
    const/high16 v3, -0x8000

    if-ne v1, v3, :cond_d

    .line 144
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_d
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16
    .parameter "canvas"

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 203
    iget-object v0, p0, Lcom/google/android/apps/plus/views/BarGraphView;->mInternalRowInfos:[Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;

    if-nez v0, :cond_8

    .line 243
    :cond_7
    return-void

    .line 207
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/BarGraphView;->getPaddingLeft()I

    move-result v8

    .line 208
    .local v8, left:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/BarGraphView;->getPaddingRight()I

    move-result v10

    .line 209
    .local v10, right:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/BarGraphView;->getWidth()I

    move-result v0

    sub-int/2addr v0, v8

    sub-int v12, v0, v10

    .line 210
    .local v12, width:I
    iget-object v0, p0, Lcom/google/android/apps/plus/views/BarGraphView;->mInternalRowInfos:[Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;

    array-length v11, v0

    .line 212
    .local v11, size:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/BarGraphView;->getPaddingTop()I

    move-result v13

    .line 213
    .local v13, y:I
    if-lez v11, :cond_3b

    .line 214
    int-to-float v0, v8

    int-to-float v1, v13

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 215
    iget-object v0, p0, Lcom/google/android/apps/plus/views/BarGraphView;->mTotalLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 216
    neg-int v0, v8

    int-to-float v0, v0

    neg-int v1, v13

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 218
    iget-object v0, p0, Lcom/google/android/apps/plus/views/BarGraphView;->mTotalLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    sget v1, Lcom/google/android/apps/plus/views/BarGraphView;->TOTAL_GRAPH_SPACING:I

    add-int/2addr v0, v1

    add-int/2addr v13, v0

    .line 221
    :cond_3b
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3c
    if-ge v6, v11, :cond_7

    .line 222
    iget-object v0, p0, Lcom/google/android/apps/plus/views/BarGraphView;->mInternalRowInfos:[Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;

    aget-object v7, v0, v6

    .line 223
    .local v7, internalRowInfo:Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;
    iget-object v0, v7, Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;->mLabelLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_4a

    iget-object v0, v7, Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;->mValueLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_4d

    .line 221
    :cond_4a
    :goto_4a
    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    .line 227
    :cond_4d
    iget-wide v0, v7, Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;->mValue:J

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/google/android/apps/plus/views/BarGraphView;->mMaxValue:J

    long-to-float v1, v1

    div-float v9, v0, v1

    .line 229
    .local v9, percentage:F
    int-to-float v0, v8

    int-to-float v1, v13

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 230
    iget-object v0, v7, Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;->mLabelLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 231
    neg-int v0, v8

    int-to-float v0, v0

    neg-int v1, v13

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 232
    iget-object v0, v7, Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;->mLabelLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    sget v1, Lcom/google/android/apps/plus/views/BarGraphView;->LABEL_BAR_SPACING:I

    add-int/2addr v0, v1

    add-int/2addr v13, v0

    .line 234
    int-to-float v0, v8

    int-to-float v1, v13

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 235
    iget-object v0, v7, Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;->mValueLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 236
    neg-int v0, v8

    int-to-float v0, v0

    neg-int v1, v13

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 237
    iget-object v0, v7, Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;->mValueLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    sget v1, Lcom/google/android/apps/plus/views/BarGraphView;->LABEL_BAR_SPACING:I

    add-int/2addr v0, v1

    add-int/2addr v13, v0

    .line 239
    int-to-float v1, v8

    int-to-float v2, v13

    int-to-float v0, v8

    int-to-float v3, v12

    mul-float/2addr v3, v9

    add-float/2addr v3, v0

    sget v0, Lcom/google/android/apps/plus/views/BarGraphView;->BAR_GRAPH_HEIGHT:I

    add-int/2addr v0, v13

    int-to-float v4, v0

    sget-object v5, Lcom/google/android/apps/plus/views/BarGraphView;->sBarGraphPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 241
    sget v0, Lcom/google/android/apps/plus/views/BarGraphView;->BAR_GRAPH_HEIGHT:I

    sget v1, Lcom/google/android/apps/plus/views/BarGraphView;->BAR_SPACING:I

    add-int/2addr v0, v1

    add-int/2addr v13, v0

    goto :goto_4a
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/BarGraphView;->measureWidth(I)I

    move-result v0

    .line 129
    .local v0, width:I
    invoke-direct {p0, v0, p2}, Lcom/google/android/apps/plus/views/BarGraphView;->measureHeight(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/views/BarGraphView;->setMeasuredDimension(II)V

    .line 130
    return-void
.end method

.method public update([Lcom/google/android/apps/plus/views/BarGraphView$RowInfo;Ljava/lang/String;)V
    .registers 9
    .parameter "rowInfos"
    .parameter "units"

    .prologue
    .line 105
    iput-object p2, p0, Lcom/google/android/apps/plus/views/BarGraphView;->mUnits:Ljava/lang/String;

    .line 107
    array-length v0, p1

    .line 109
    .local v0, count:I
    new-array v2, v0, [Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;

    iput-object v2, p0, Lcom/google/android/apps/plus/views/BarGraphView;->mInternalRowInfos:[Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;

    .line 110
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/apps/plus/views/BarGraphView;->mTotalValue:J

    .line 111
    const-wide/32 v2, -0x80000000

    iput-wide v2, p0, Lcom/google/android/apps/plus/views/BarGraphView;->mMaxValue:J

    .line 113
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    if-ge v1, v0, :cond_4c

    .line 114
    iget-object v2, p0, Lcom/google/android/apps/plus/views/BarGraphView;->mInternalRowInfos:[Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;

    new-instance v3, Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;

    invoke-direct {v3}, Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;-><init>()V

    aput-object v3, v2, v1

    .line 115
    iget-object v2, p0, Lcom/google/android/apps/plus/views/BarGraphView;->mInternalRowInfos:[Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;

    aget-object v2, v2, v1

    aget-object v3, p1, v1

    iget-wide v3, v3, Lcom/google/android/apps/plus/views/BarGraphView$RowInfo;->mValue:J

    iput-wide v3, v2, Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;->mValue:J

    .line 116
    iget-object v2, p0, Lcom/google/android/apps/plus/views/BarGraphView;->mInternalRowInfos:[Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;

    aget-object v2, v2, v1

    aget-object v3, p1, v1

    iget-object v3, v3, Lcom/google/android/apps/plus/views/BarGraphView$RowInfo;->mLabel:Ljava/lang/String;

    iput-object v3, v2, Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;->mLabel:Ljava/lang/String;

    .line 118
    iget-wide v2, p0, Lcom/google/android/apps/plus/views/BarGraphView;->mTotalValue:J

    iget-object v4, p0, Lcom/google/android/apps/plus/views/BarGraphView;->mInternalRowInfos:[Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;

    aget-object v4, v4, v1

    iget-wide v4, v4, Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;->mValue:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/apps/plus/views/BarGraphView;->mTotalValue:J

    .line 119
    iget-wide v2, p0, Lcom/google/android/apps/plus/views/BarGraphView;->mMaxValue:J

    iget-object v4, p0, Lcom/google/android/apps/plus/views/BarGraphView;->mInternalRowInfos:[Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;

    aget-object v4, v4, v1

    iget-wide v4, v4, Lcom/google/android/apps/plus/views/BarGraphView$InternalRowInfo;->mValue:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/plus/views/BarGraphView;->mMaxValue:J

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 122
    :cond_4c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/BarGraphView;->invalidate()V

    .line 123
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/BarGraphView;->requestLayout()V

    .line 124
    return-void
.end method
