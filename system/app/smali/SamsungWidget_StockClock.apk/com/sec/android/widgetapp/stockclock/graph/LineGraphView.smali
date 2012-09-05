.class public Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;
.super Landroid/view/View;
.source "LineGraphView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDrawIndex:I

.field private mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

.field public mStockTimeValue:[Ljava/lang/String;

.field public mStockValue:[D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mDrawIndex:I

    .line 41
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mDrawIndex:I

    .line 47
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method private getMax()D
    .registers 6

    .prologue
    .line 282
    const-wide/16 v1, 0x1

    .line 284
    .local v1, largest:D
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    if-eqz v3, :cond_2a

    .line 286
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->getSize()I

    move-result v3

    if-ge v0, v3, :cond_2a

    .line 289
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    invoke-virtual {v3, v0}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->get(I)Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->GetHigh()D

    move-result-wide v3

    cmpl-double v3, v3, v1

    if-lez v3, :cond_27

    .line 291
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    invoke-virtual {v3, v0}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->get(I)Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->GetHigh()D

    move-result-wide v1

    .line 286
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 297
    .end local v0           #i:I
    :cond_2a
    return-wide v1
.end method

.method private getMid()D
    .registers 11

    .prologue
    const-wide v7, 0x3f847ae147ae147bL

    .line 318
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->getMax()D

    move-result-wide v0

    .line 319
    .local v0, largest:D
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->getMin()D

    move-result-wide v4

    .line 321
    .local v4, smallest:D
    cmpl-double v6, v0, v4

    if-nez v6, :cond_13

    .line 323
    add-double/2addr v0, v7

    .line 324
    sub-double/2addr v4, v7

    .line 327
    :cond_13
    sub-double v6, v0, v4

    const-wide/high16 v8, 0x4000

    div-double/2addr v6, v8

    add-double v2, v6, v4

    .line 329
    .local v2, middle:D
    return-wide v2
.end method

.method private getMin()D
    .registers 6

    .prologue
    .line 302
    const-wide v1, 0x7fefffffffffffffL

    .line 303
    .local v1, smallest:D
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    if-eqz v3, :cond_2d

    .line 305
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->getSize()I

    move-result v3

    if-ge v0, v3, :cond_2d

    .line 307
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    invoke-virtual {v3, v0}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->get(I)Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->GetHigh()D

    move-result-wide v3

    cmpg-double v3, v3, v1

    if-gez v3, :cond_2a

    .line 308
    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    invoke-virtual {v3, v0}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->get(I)Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->GetHigh()D

    move-result-wide v1

    .line 305
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 313
    .end local v0           #i:I
    :cond_2d
    return-wide v1
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 52
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mStockValue:[D

    .line 53
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mStockTimeValue:[Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    if-eqz v0, :cond_10

    .line 56
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->clear()V

    .line 57
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    .line 59
    :cond_10
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 42
    .parameter "canvas"

    .prologue
    .line 194
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 195
    .local v11, p:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v4

    const v6, 0xfa000

    if-ne v4, v6, :cond_32

    .line 196
    const/4 v4, 0x0

    const/16 v6, 0xd1

    const/16 v9, 0xfc

    invoke-static {v4, v6, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    const/high16 v4, 0x4040

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 204
    :goto_23
    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 206
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->getSize()I

    move-result v4

    if-nez v4, :cond_45

    .line 278
    :goto_31
    return-void

    .line 200
    :cond_32
    const/16 v4, 0x11

    const/16 v6, 0xb8

    const/16 v9, 0xff

    invoke-static {v4, v6, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    const/high16 v4, 0x4040

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_23

    .line 209
    :cond_45
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->getSuggestedMinimumWidth()I

    move-result v4

    int-to-float v0, v4

    move/from16 v35, v0

    .line 210
    .local v35, width:F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->getSuggestedMinimumHeight()I

    move-result v4

    int-to-float v0, v4

    move/from16 v20, v0

    .line 211
    .local v20, height:F
    const/high16 v12, 0x4120

    .line 212
    .local v12, border:F
    const/high16 v4, 0x4000

    mul-float v21, v12, v4

    .line 213
    .local v21, horstart:F
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->getMax()D

    move-result-wide v27

    .line 214
    .local v27, max:D
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->getMin()D

    move-result-wide v29

    .line 215
    .local v29, min:D
    new-instance v25, Landroid/graphics/Path;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Path;-><init>()V

    .line 216
    .local v25, linePath:Landroid/graphics/Path;
    new-instance v26, Landroid/graphics/Paint;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Paint;-><init>()V

    .line 218
    .local v26, mPaintShader:Landroid/graphics/Paint;
    cmpl-double v4, v27, v29

    if-nez v4, :cond_7d

    .line 220
    const-wide v9, 0x3f847ae147ae147bL

    add-double v27, v27, v9

    .line 221
    const-wide v9, 0x3f847ae147ae147bL

    sub-double v29, v29, v9

    .line 224
    :cond_7d
    sub-double v16, v27, v29

    .line 225
    .local v16, diff:D
    const/high16 v4, 0x4000

    mul-float/2addr v4, v12

    sub-float v5, v20, v4

    .line 226
    .local v5, graphheight:F
    const/4 v14, 0x0

    .line 227
    .local v14, count:I
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Paint;->reset()V

    .line 231
    const/4 v3, 0x0

    .line 232
    .local v3, linearGradientShader:Landroid/graphics/LinearGradient;
    new-instance v3, Landroid/graphics/LinearGradient;

    .end local v3           #linearGradientShader:Landroid/graphics/LinearGradient;
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x28

    const/16 v10, 0x10

    const/16 v36, 0xaf

    const/16 v37, 0xf1

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-static {v9, v10, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    const/16 v9, 0xf0

    const/16 v10, 0x10

    const/16 v36, 0xaf

    const/16 v37, 0xf1

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-static {v9, v10, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 235
    .restart local v3       #linearGradientShader:Landroid/graphics/LinearGradient;
    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 236
    cmpl-double v4, v27, v29

    if-eqz v4, :cond_182

    .line 238
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->getSize()I

    move-result v4

    int-to-float v15, v4

    .line 239
    .local v15, datalength:F
    const/high16 v4, 0x4000

    mul-float/2addr v4, v12

    sub-float v4, v35, v4

    const/high16 v6, 0x3f80

    sub-float v6, v15, v6

    div-float v13, v4, v6

    .line 240
    .local v13, colwidth:F
    const-wide/16 v23, 0x0

    .line 242
    .local v23, lasth:D
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Path;->reset()V

    .line 243
    const/high16 v4, 0x3f80

    add-float v4, v4, v21

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 246
    const/16 v22, 0x0

    .local v22, i:I
    :goto_e2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mDrawIndex:I

    move/from16 v0, v22

    if-ge v0, v4, :cond_15c

    .line 248
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->getSize()I

    move-result v4

    move/from16 v0, v22

    if-le v4, v0, :cond_159

    .line 250
    const-wide/16 v33, 0x0

    .line 251
    .local v33, val:D
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/sec/android/widgetapp/stockclock/graph/GraphData;->get(I)Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/stockclock/graph/StockGraphData;->GetHigh()D

    move-result-wide v9

    sub-double v33, v9, v29

    .line 253
    div-double v31, v33, v16

    .line 254
    .local v31, rat:D
    float-to-double v9, v5

    mul-double v18, v9, v31

    .line 255
    .local v18, h:D
    if-lez v22, :cond_13e

    .line 257
    add-int/lit8 v4, v22, -0x1

    int-to-float v4, v4

    mul-float/2addr v4, v13

    const/high16 v6, 0x3f80

    add-float v6, v6, v21

    add-float v7, v4, v6

    .line 258
    .local v7, startX:F
    float-to-double v9, v12

    sub-double v9, v9, v23

    float-to-double v0, v5

    move-wide/from16 v36, v0

    add-double v9, v9, v36

    double-to-float v8, v9

    .line 259
    .local v8, startY:F
    move/from16 v0, v22

    int-to-float v4, v0

    mul-float/2addr v4, v13

    const/high16 v6, 0x3f80

    add-float v6, v6, v21

    add-float v9, v4, v6

    float-to-double v0, v12

    move-wide/from16 v36, v0

    sub-double v36, v36, v18

    float-to-double v0, v5

    move-wide/from16 v38, v0

    add-double v36, v36, v38

    move-wide/from16 v0, v36

    double-to-float v10, v0

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 261
    .end local v7           #startX:F
    .end local v8           #startY:F
    :cond_13e
    move-wide/from16 v23, v18

    .line 262
    move/from16 v0, v22

    int-to-float v4, v0

    mul-float/2addr v4, v13

    const/high16 v6, 0x3f80

    add-float v6, v6, v21

    add-float/2addr v4, v6

    float-to-double v9, v12

    sub-double v9, v9, v18

    float-to-double v0, v5

    move-wide/from16 v36, v0

    add-double v9, v9, v36

    double-to-float v6, v9

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 263
    move/from16 v14, v22

    .line 246
    .end local v18           #h:D
    .end local v31           #rat:D
    .end local v33           #val:D
    :cond_159
    add-int/lit8 v22, v22, 0x1

    goto :goto_e2

    .line 266
    :cond_15c
    int-to-float v4, v14

    mul-float/2addr v4, v13

    const/high16 v6, 0x3f80

    add-float v6, v6, v21

    add-float/2addr v4, v6

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 267
    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 268
    const/4 v4, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 270
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 274
    .end local v13           #colwidth:F
    .end local v15           #datalength:F
    .end local v22           #i:I
    .end local v23           #lasth:D
    :cond_182
    const/4 v11, 0x0

    .line 275
    const/16 v25, 0x0

    .line 276
    const/16 v26, 0x0

    .line 277
    const/4 v3, 0x0

    .line 278
    goto/16 :goto_31
.end method

.method public setCurrencyData(Lcom/sec/android/widgetapp/stockclock/graph/GraphData;)V
    .registers 16
    .parameter "graphData"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const-wide v10, 0x3f847ae147ae147bL

    .line 118
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    .line 119
    iput v12, p0, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mDrawIndex:I

    .line 123
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v8

    const v9, 0x25800

    if-ne v8, v9, :cond_41

    .line 125
    const/16 v7, 0xfe

    .line 126
    .local v7, width:I
    const/16 v0, 0x82

    .line 155
    .local v0, height:I
    :goto_1c
    invoke-virtual {p0, v7}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->setMinimumWidth(I)V

    .line 156
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->setMinimumHeight(I)V

    .line 166
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->getMax()D

    move-result-wide v1

    .line 167
    .local v1, maxValue:D
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->getMin()D

    move-result-wide v5

    .line 169
    .local v5, minValue:D
    cmpl-double v8, v1, v5

    if-nez v8, :cond_30

    .line 171
    add-double/2addr v1, v10

    .line 172
    sub-double/2addr v5, v10

    .line 175
    :cond_30
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->getMid()D

    move-result-wide v3

    .line 177
    .local v3, midValue:D
    const/4 v8, 0x3

    new-array v8, v8, [D

    aput-wide v1, v8, v12

    aput-wide v3, v8, v13

    const/4 v9, 0x2

    aput-wide v5, v8, v9

    iput-object v8, p0, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mStockValue:[D

    .line 183
    return-void

    .line 128
    .end local v0           #height:I
    .end local v1           #maxValue:D
    .end local v3           #midValue:D
    .end local v5           #minValue:D
    .end local v7           #width:I
    :cond_41
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v8

    const v9, 0xfa000

    if-ne v8, v9, :cond_53

    .line 130
    const/16 v7, 0x23f

    .line 131
    .restart local v7       #width:I
    const/16 v0, 0x159

    .restart local v0       #height:I
    goto :goto_1c

    .line 133
    .end local v0           #height:I
    .end local v7           #width:I
    :cond_53
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v8

    const v9, 0xe1000

    if-ne v8, v9, :cond_76

    .line 135
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v13, :cond_71

    .line 137
    const/16 v7, 0x1fb

    .line 138
    .restart local v7       #width:I
    const/16 v0, 0x146

    .restart local v0       #height:I
    goto :goto_1c

    .line 140
    .end local v0           #height:I
    .end local v7           #width:I
    :cond_71
    const/16 v7, 0x23d

    .line 141
    .restart local v7       #width:I
    const/16 v0, 0x146

    .restart local v0       #height:I
    goto :goto_1c

    .line 145
    .end local v0           #height:I
    .end local v7           #width:I
    :cond_76
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v8

    const v9, 0x12c00

    if-ne v8, v9, :cond_88

    .line 147
    const/16 v7, 0x100

    .line 148
    .restart local v7       #width:I
    const/16 v0, 0x82

    .restart local v0       #height:I
    goto :goto_1c

    .line 152
    .end local v0           #height:I
    .end local v7           #width:I
    :cond_88
    const/16 v7, 0x179

    .line 153
    .restart local v7       #width:I
    const/16 v0, 0xc8

    .restart local v0       #height:I
    goto :goto_1c
.end method

.method public setData(Lcom/sec/android/widgetapp/stockclock/graph/GraphData;)V
    .registers 16
    .parameter "graphData"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const-wide v10, 0x3f847ae147ae147bL

    .line 63
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mGraphData:Lcom/sec/android/widgetapp/stockclock/graph/GraphData;

    .line 64
    iput v12, p0, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mDrawIndex:I

    .line 68
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v8

    const v9, 0x25800

    if-ne v8, v9, :cond_41

    .line 70
    const/16 v7, 0xfe

    .line 71
    .local v7, width:I
    const/16 v0, 0x63

    .line 99
    .local v0, height:I
    :goto_1c
    invoke-virtual {p0, v7}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->setMinimumWidth(I)V

    .line 100
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->setMinimumHeight(I)V

    .line 103
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->getMax()D

    move-result-wide v1

    .line 104
    .local v1, maxValue:D
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->getMin()D

    move-result-wide v5

    .line 106
    .local v5, minValue:D
    cmpl-double v8, v1, v5

    if-nez v8, :cond_30

    .line 108
    add-double/2addr v1, v10

    .line 109
    sub-double/2addr v5, v10

    .line 112
    :cond_30
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->getMid()D

    move-result-wide v3

    .line 113
    .local v3, midValue:D
    const/4 v8, 0x3

    new-array v8, v8, [D

    aput-wide v1, v8, v12

    aput-wide v3, v8, v13

    const/4 v9, 0x2

    aput-wide v5, v8, v9

    iput-object v8, p0, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mStockValue:[D

    .line 114
    return-void

    .line 73
    .end local v0           #height:I
    .end local v1           #maxValue:D
    .end local v3           #midValue:D
    .end local v5           #minValue:D
    .end local v7           #width:I
    :cond_41
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v8

    const v9, 0xfa000

    if-ne v8, v9, :cond_53

    .line 75
    const/16 v7, 0x23e

    .line 76
    .restart local v7       #width:I
    const/16 v0, 0xe5

    .restart local v0       #height:I
    goto :goto_1c

    .line 78
    .end local v0           #height:I
    .end local v7           #width:I
    :cond_53
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v8

    const v9, 0xe1000

    if-ne v8, v9, :cond_76

    .line 80
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v13, :cond_71

    .line 82
    const/16 v7, 0x1fe

    .line 83
    .restart local v7       #width:I
    const/16 v0, 0xd0

    .restart local v0       #height:I
    goto :goto_1c

    .line 85
    .end local v0           #height:I
    .end local v7           #width:I
    :cond_71
    const/16 v7, 0x23d

    .line 86
    .restart local v7       #width:I
    const/16 v0, 0xe6

    .restart local v0       #height:I
    goto :goto_1c

    .line 89
    .end local v0           #height:I
    .end local v7           #width:I
    :cond_76
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getSystemResolution(Landroid/content/Context;)I

    move-result v8

    const v9, 0x12c00

    if-ne v8, v9, :cond_88

    .line 91
    const/16 v7, 0xad

    .line 92
    .restart local v7       #width:I
    const/16 v0, 0x46

    .restart local v0       #height:I
    goto :goto_1c

    .line 96
    .end local v0           #height:I
    .end local v7           #width:I
    :cond_88
    const/16 v7, 0x15d

    .line 97
    .restart local v7       #width:I
    const/16 v0, 0x82

    .restart local v0       #height:I
    goto :goto_1c
.end method

.method public setDrawIndex(I)V
    .registers 2
    .parameter "index"

    .prologue
    .line 187
    iput p1, p0, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->mDrawIndex:I

    .line 188
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/graph/LineGraphView;->invalidate()V

    .line 189
    return-void
.end method
