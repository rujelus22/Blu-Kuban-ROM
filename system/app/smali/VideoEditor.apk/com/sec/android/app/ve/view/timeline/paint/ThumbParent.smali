.class public Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;
.super Landroid/widget/LinearLayout;
.source "ThumbParent.java"


# instance fields
.field private elementPaint:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private pTouch:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;->mContext:Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;->init()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;->mContext:Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;->init()V

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private init()V
    .registers 3

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;->setBackgroundColor(I)V

    .line 53
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 20
    .parameter "arg0"

    .prologue
    .line 105
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 126
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v1

    iget-object v7, v1, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    .line 127
    .local v7, element:Lcom/samsung/app/video/editor/external/Element;
    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/Element;->getDuration()F

    move-result v1

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getMyWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v12, v1, v2

    .line 128
    .local v12, scale:F
    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v1

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/Element;->getSplitTime()F

    move-result v2

    sub-float/2addr v1, v2

    div-float v8, v1, v12

    .line 129
    .local v8, firstRectRight:F
    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v1

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/Element;->getSplitTime()F

    move-result v2

    sub-float/2addr v1, v2

    div-float v13, v1, v12

    .line 131
    .local v13, secondRectLeft:F
    new-instance v9, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v9, v1, v2, v8, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 132
    .local v9, frect:Landroid/graphics/RectF;
    new-instance v14, Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getMyWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v14, v13, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 134
    .local v14, srect:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;->elementPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_70

    .line 135
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;->elementPaint:Landroid/graphics/Paint;

    .line 136
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;->elementPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 137
    const v3, 0x7f070003

    .line 136
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    :cond_70
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;->elementPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;->elementPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 144
    const/16 v16, 0x0

    .line 145
    .local v16, x:I
    const/16 v17, 0x0

    .line 146
    .local v17, x1:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;->pTouch:Landroid/graphics/Paint;

    if-nez v1, :cond_96

    .line 147
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;->pTouch:Landroid/graphics/Paint;

    .line 148
    :cond_96
    const/4 v10, 0x0

    .local v10, i:I
    :goto_97
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getChildCount()I

    move-result v1

    if-lt v10, v1, :cond_dd

    .line 160
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;

    .line 161
    .local v15, view:Lcom/sec/android/app/ve/view/timeline/paint/DurationView;
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v1

    invoke-virtual {v15}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->getElement()Lcom/samsung/app/video/editor/external/ClipartParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/ClipartParams;->getEndTime()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getX(F)I

    move-result v16

    .line 162
    move/from16 v0, v16

    int-to-float v2, v0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;->getHeight()I

    move-result v1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;->pTouch:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 165
    return-void

    .line 149
    .end local v15           #view:Lcom/sec/android/app/ve/view/timeline/paint/DurationView;
    :cond_dd
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;

    .line 150
    .restart local v15       #view:Lcom/sec/android/app/ve/view/timeline/paint/DurationView;
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v1

    invoke-virtual {v15}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->getElement()Lcom/samsung/app/video/editor/external/ClipartParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStartTime()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getX(F)I

    move-result v16

    .line 151
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v1

    add-int/lit8 v2, v10, -0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getView(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;

    .line 152
    .local v11, preView:Lcom/sec/android/app/ve/view/timeline/paint/DurationView;
    if-eqz v10, :cond_117

    if-eqz v11, :cond_117

    .line 153
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;

    move-result-object v1

    invoke-virtual {v11}, Lcom/sec/android/app/ve/view/timeline/paint/DurationView;->getElement()Lcom/samsung/app/video/editor/external/ClipartParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/ClipartParams;->getEndTime()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/timeline/paint/DurationViewGroup;->getX(F)I

    move-result v17

    .line 155
    :cond_117
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;->pTouch:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    move/from16 v0, v17

    int-to-float v2, v0

    const/4 v3, 0x0

    move/from16 v0, v16

    int-to-float v4, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;->getHeight()I

    move-result v1

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;->pTouch:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 148
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_97
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 56
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 58
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent$1;-><init>(Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;)V

    .line 97
    const-wide/16 v1, 0x1f4

    .line 58
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/ve/view/timeline/paint/ThumbParent;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 99
    return-void
.end method
