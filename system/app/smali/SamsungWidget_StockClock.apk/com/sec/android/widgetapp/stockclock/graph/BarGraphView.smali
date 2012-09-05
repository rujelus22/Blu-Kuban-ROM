.class public Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;
.super Landroid/view/View;
.source "BarGraphView.java"


# instance fields
.field private mDrawIndex:I

.field private mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

.field private mPeriodArray:[Ljava/lang/String;

.field public mStockValue:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1d"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "5d"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "1m"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3m"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "6m"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "1y"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mPeriodArray:[Ljava/lang/String;

    .line 36
    iput v3, p0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mDrawIndex:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1d"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "5d"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "1m"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3m"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "6m"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "1y"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mPeriodArray:[Ljava/lang/String;

    .line 36
    iput v3, p0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mDrawIndex:I

    .line 47
    return-void
.end method

.method private getMax()D
    .registers 6

    .prologue
    .line 224
    const-wide/16 v1, 0x1

    .line 225
    .local v1, largest:D
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    if-eqz v3, :cond_2a

    .line 227
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->getSize()I

    move-result v3

    if-ge v0, v3, :cond_2a

    .line 229
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    invoke-virtual {v3, v0}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->get(I)Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->GetVolume()D

    move-result-wide v3

    cmpl-double v3, v3, v1

    if-lez v3, :cond_27

    .line 230
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    invoke-virtual {v3, v0}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->get(I)Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->GetVolume()D

    move-result-wide v1

    .line 227
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 233
    .end local v0           #i:I
    :cond_2a
    return-wide v1
.end method

.method private getMin()D
    .registers 6

    .prologue
    .line 238
    const-wide v1, 0x7fefffffffffffffL

    .line 239
    .local v1, smallest:D
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    if-eqz v3, :cond_2d

    .line 241
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->getSize()I

    move-result v3

    if-ge v0, v3, :cond_2d

    .line 243
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    invoke-virtual {v3, v0}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->get(I)Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->GetVolume()D

    move-result-wide v3

    cmpg-double v3, v3, v1

    if-gez v3, :cond_2a

    .line 244
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    invoke-virtual {v3, v0}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->get(I)Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->GetVolume()D

    move-result-wide v1

    .line 241
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 247
    .end local v0           #i:I
    :cond_2d
    return-wide v1
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    if-eqz v0, :cond_c

    .line 55
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->clear()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    .line 58
    :cond_c
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 32
    .parameter "canvas"

    .prologue
    .line 181
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 182
    .local v7, p:Landroid/graphics/Paint;
    const/16 v2, 0x11

    const/16 v3, 0xb8

    const/16 v4, 0xff

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    const/high16 v2, 0x4000

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 184
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->getSize()I

    move-result v2

    if-nez v2, :cond_26

    .line 220
    :goto_25
    return-void

    .line 190
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->getSuggestedMinimumWidth()I

    move-result v2

    int-to-float v0, v2

    move/from16 v27, v0

    .line 191
    .local v27, width:F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->getSuggestedMinimumHeight()I

    move-result v2

    int-to-float v0, v2

    move/from16 v16, v0

    .line 192
    .local v16, height:F
    const/high16 v8, 0x4120

    .line 193
    .local v8, border:F
    const/high16 v2, 0x4000

    mul-float v17, v8, v2

    .line 194
    .local v17, horstart:F
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->getMax()D

    move-result-wide v19

    .line 195
    .local v19, max:D
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->getMin()D

    move-result-wide v21

    .line 196
    .local v21, min:D
    sub-double v11, v19, v21

    .line 197
    .local v11, diff:D
    const/high16 v2, 0x4040

    mul-float/2addr v2, v8

    sub-float v2, v16, v2

    const/high16 v3, 0x40a0

    sub-float v13, v2, v3

    .line 199
    .local v13, graphheight:F
    cmpl-double v2, v19, v21

    if-eqz v2, :cond_df

    .line 201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->getSize()I

    move-result v10

    .line 202
    .local v10, datalength:I
    const/high16 v2, 0x4000

    mul-float/2addr v2, v8

    sub-float v2, v27, v2

    int-to-float v3, v10

    div-float v9, v2, v3

    .line 206
    .local v9, colwidth:F
    const/16 v18, 0x0

    .local v18, i:I
    :goto_63
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mDrawIndex:I

    move/from16 v0, v18

    if-ge v0, v2, :cond_df

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->getSize()I

    move-result v2

    move/from16 v0, v18

    if-le v2, v0, :cond_d6

    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->get(I)Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->GetVolume()D

    move-result-wide v2

    sub-double v2, v2, v21

    const-wide/high16 v4, 0x4000

    mul-double v25, v2, v4

    .line 211
    .local v25, val:D
    div-double v23, v25, v11

    .line 212
    .local v23, rat:D
    float-to-double v2, v13

    mul-double v14, v2, v23

    .line 213
    .local v14, h:D
    move/from16 v0, v18

    int-to-float v2, v0

    mul-float/2addr v2, v9

    add-float v3, v2, v17

    float-to-double v4, v8

    sub-double/2addr v4, v14

    float-to-double v0, v13

    move-wide/from16 v28, v0

    add-double v4, v4, v28

    const-wide/high16 v28, 0x402e

    add-double v4, v4, v28

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v2

    const v6, 0x25800

    if-eq v2, v6, :cond_d9

    const/4 v2, 0x0

    :goto_af
    int-to-double v0, v2

    move-wide/from16 v28, v0

    add-double v4, v4, v28

    double-to-float v4, v4

    move/from16 v0, v18

    int-to-float v2, v0

    mul-float/2addr v2, v9

    add-float v2, v2, v17

    const/high16 v5, 0x3f80

    sub-float v5, v9, v5

    add-float/2addr v5, v2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v2

    const v6, 0x25800

    if-eq v2, v6, :cond_dc

    const/4 v2, 0x0

    :goto_ce
    int-to-float v2, v2

    add-float v6, v16, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 206
    .end local v14           #h:D
    .end local v23           #rat:D
    .end local v25           #val:D
    :cond_d6
    add-int/lit8 v18, v18, 0x1

    goto :goto_63

    .line 213
    .restart local v14       #h:D
    .restart local v23       #rat:D
    .restart local v25       #val:D
    :cond_d9
    const/16 v2, -0xa

    goto :goto_af

    :cond_dc
    const/16 v2, -0xa

    goto :goto_ce

    .line 219
    .end local v9           #colwidth:F
    .end local v10           #datalength:I
    .end local v14           #h:D
    .end local v18           #i:I
    .end local v23           #rat:D
    .end local v25           #val:D
    :cond_df
    const/4 v7, 0x0

    .line 220
    goto/16 :goto_25
.end method

.method public setData(Lcom/sec/android/widgetapp/stockclock/graph/GraphData;Ljava/lang/String;)V
    .registers 15
    .parameter "graphData"
    .parameter "peroid"

    .prologue
    const/16 v9, 0x8

    const/4 v11, 0x1

    const/4 v8, 0x6

    const/4 v7, 0x4

    const/4 v10, 0x0

    .line 64
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    .line 65
    iput v10, p0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mDrawIndex:I

    .line 68
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v11, :cond_e2

    .line 72
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v5

    const v6, 0x25800

    if-ne v5, v6, :cond_a3

    .line 74
    const/16 v4, 0xfb

    .line 75
    .local v4, width:I
    const/16 v0, 0x2d

    .line 97
    .local v0, height:I
    :goto_27
    invoke-virtual {p0, v4}, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->setMinimumWidth(I)V

    .line 98
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->setMinimumHeight(I)V

    .line 133
    :goto_2d
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mPeriodArray:[Ljava/lang/String;

    aget-object v5, v5, v10

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_41

    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mPeriodArray:[Ljava/lang/String;

    aget-object v5, v5, v11

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_136

    .line 136
    :cond_41
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    invoke-virtual {v5, v10}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->get(I)Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->getTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 138
    .local v3, minValue:Ljava/lang/Long;
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    iget-object v6, p0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->getSize()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->get(I)Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->getTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 139
    .local v1, maxValue:Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v5, v7

    const-wide/16 v7, 0x2

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 141
    .local v2, midValue:Ljava/lang/Long;
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    const/4 v6, 0x2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    iput-object v5, p0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mStockValue:[Ljava/lang/String;

    .line 171
    .end local v1           #maxValue:Ljava/lang/Long;
    .end local v2           #midValue:Ljava/lang/Long;
    .end local v3           #minValue:Ljava/lang/Long;
    :goto_a2
    return-void

    .line 77
    .end local v0           #height:I
    .end local v4           #width:I
    :cond_a3
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v5

    const v6, 0xfa000

    if-ne v5, v6, :cond_b6

    .line 79
    const/16 v4, 0x23e

    .line 80
    .restart local v4       #width:I
    const/16 v0, 0x64

    .restart local v0       #height:I
    goto/16 :goto_27

    .line 82
    .end local v0           #height:I
    .end local v4           #width:I
    :cond_b6
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v5

    const v6, 0xe1000

    if-ne v5, v6, :cond_c9

    .line 84
    const/16 v4, 0x1fe

    .line 85
    .restart local v4       #width:I
    const/16 v0, 0x5b

    .restart local v0       #height:I
    goto/16 :goto_27

    .line 87
    .end local v0           #height:I
    .end local v4           #width:I
    :cond_c9
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v5

    const v6, 0x12c00

    if-ne v5, v6, :cond_dc

    .line 89
    const/16 v4, 0x100

    .line 90
    .restart local v4       #width:I
    const/16 v0, 0x17

    .restart local v0       #height:I
    goto/16 :goto_27

    .line 94
    .end local v0           #height:I
    .end local v4           #width:I
    :cond_dc
    const/16 v4, 0x15f

    .line 95
    .restart local v4       #width:I
    const/16 v0, 0x4b

    .restart local v0       #height:I
    goto/16 :goto_27

    .line 104
    .end local v0           #height:I
    .end local v4           #width:I
    :cond_e2
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v5

    const v6, 0x25800

    if-ne v5, v6, :cond_fb

    .line 106
    const/16 v4, 0xfb

    .line 107
    .restart local v4       #width:I
    const/16 v0, 0x32

    .line 129
    .restart local v0       #height:I
    :goto_f3
    invoke-virtual {p0, v4}, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->setMinimumWidth(I)V

    .line 130
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->setMinimumHeight(I)V

    goto/16 :goto_2d

    .line 109
    .end local v0           #height:I
    .end local v4           #width:I
    :cond_fb
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v5

    const v6, 0xfa000

    if-ne v5, v6, :cond_10d

    .line 111
    const/16 v4, 0x23e

    .line 112
    .restart local v4       #width:I
    const/16 v0, 0x64

    .restart local v0       #height:I
    goto :goto_f3

    .line 114
    .end local v0           #height:I
    .end local v4           #width:I
    :cond_10d
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v5

    const v6, 0xe1000

    if-ne v5, v6, :cond_11f

    .line 116
    const/16 v4, 0x23f

    .line 117
    .restart local v4       #width:I
    const/16 v0, 0x5a

    .restart local v0       #height:I
    goto :goto_f3

    .line 119
    .end local v0           #height:I
    .end local v4           #width:I
    :cond_11f
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v5

    const v6, 0x12c00

    if-ne v5, v6, :cond_131

    .line 121
    const/16 v4, 0x100

    .line 122
    .restart local v4       #width:I
    const/16 v0, 0x19

    .restart local v0       #height:I
    goto :goto_f3

    .line 126
    .end local v0           #height:I
    .end local v4           #width:I
    :cond_131
    const/16 v4, 0x15f

    .line 127
    .restart local v4       #width:I
    const/16 v0, 0x42

    .restart local v0       #height:I
    goto :goto_f3

    .line 146
    :cond_136
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    invoke-virtual {v5, v10}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->get(I)Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->getDate()Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, minValue:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    iget-object v6, p0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->getSize()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v6}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->get(I)Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->getDate()Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, midValue:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    iget-object v6, p0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->getSize()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->get(I)Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->getDate()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, maxValue:Ljava/lang/String;
    if-eqz v3, :cond_19b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_19b

    .line 152
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    :cond_19b
    if-eqz v2, :cond_1d0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_1d0

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    :cond_1d0
    if-eqz v1, :cond_205

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v9, :cond_205

    .line 162
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    :cond_205
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    aput-object v3, v5, v10

    aput-object v2, v5, v11

    const/4 v6, 0x2

    aput-object v1, v5, v6

    iput-object v5, p0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mStockValue:[Ljava/lang/String;

    goto/16 :goto_a2
.end method

.method public setDrawIndex(I)V
    .registers 2
    .parameter "index"

    .prologue
    .line 175
    iput p1, p0, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->mDrawIndex:I

    .line 176
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/graph/BarGraphView;->invalidate()V

    .line 177
    return-void
.end method
