.class public Lcom/google/android/apps/plus/views/ScaledLayout;
.super Landroid/widget/RelativeLayout;
.source "ScaledLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/ScaledLayout$1;,
        Lcom/google/android/apps/plus/views/ScaledLayout$MarginMode;
    }
.end annotation


# instance fields
.field private final mDispSize:Landroid/graphics/Rect;

.field private final mDisplay:Landroid/view/Display;

.field private marginMode:Lcom/google/android/apps/plus/views/ScaledLayout$MarginMode;

.field private scaleHeight:D

.field private scaleMarginBottom:D

.field private scaleMarginLeft:D

.field private scaleMarginRight:D

.field private scaleMarginTop:D

.field private scaleWidth:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/ScaledLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attributes"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/views/ScaledLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .parameter "context"
    .parameter "attributes"
    .parameter "defStyle"

    .prologue
    const-wide/high16 v3, 0x3ff0

    const-wide/16 v1, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    iput-wide v3, p0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleWidth:D

    .line 55
    iput-wide v3, p0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleHeight:D

    .line 56
    iput-wide v1, p0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleMarginLeft:D

    .line 57
    iput-wide v1, p0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleMarginRight:D

    .line 58
    iput-wide v1, p0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleMarginTop:D

    .line 59
    iput-wide v1, p0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleMarginBottom:D

    .line 60
    sget-object v1, Lcom/google/android/apps/plus/views/ScaledLayout$MarginMode;->SCALE_MARGIN_NONE:Lcom/google/android/apps/plus/views/ScaledLayout$MarginMode;

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ScaledLayout;->marginMode:Lcom/google/android/apps/plus/views/ScaledLayout$MarginMode;

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/ScaledLayout;->loadAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ScaledLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 77
    .local v0, windowManager:Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ScaledLayout;->mDisplay:Landroid/view/Display;

    .line 78
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ScaledLayout;->mDispSize:Landroid/graphics/Rect;

    .line 79
    return-void
.end method

.method private loadAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 15
    .parameter "context"
    .parameter "attributes"
    .parameter "defStyle"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x3

    const/high16 v8, 0x3f80

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 83
    if-nez p2, :cond_9

    .line 139
    :cond_8
    :goto_8
    return-void

    .line 87
    :cond_9
    sget-object v4, Lcom/google/android/apps/plus/R$styleable;->ScaledLayout:[I

    invoke-virtual {p1, p2, v4, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 89
    .local v0, attrsArray:Landroid/content/res/TypedArray;
    if-eqz v0, :cond_8

    .line 93
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 94
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    float-to-double v2, v4

    .line 96
    .local v2, scale:D
    iput-wide v2, p0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleWidth:D

    .line 97
    iput-wide v2, p0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleHeight:D

    .line 104
    .end local v2           #scale:D
    :goto_20
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 105
    invoke-virtual {v0, v9, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    float-to-double v2, v4

    .line 107
    .restart local v2       #scale:D
    iput-wide v2, p0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleMarginLeft:D

    .line 108
    iput-wide v2, p0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleMarginRight:D

    .line 109
    iput-wide v2, p0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleMarginTop:D

    .line 110
    iput-wide v2, p0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleMarginBottom:D

    .line 127
    .end local v2           #scale:D
    :goto_33
    const/16 v4, 0x8

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 128
    .local v1, mode:I
    if-ne v1, v10, :cond_74

    .line 129
    sget-object v4, Lcom/google/android/apps/plus/views/ScaledLayout$MarginMode;->SCALE_MARGIN_INDEPENDENT:Lcom/google/android/apps/plus/views/ScaledLayout$MarginMode;

    iput-object v4, p0, Lcom/google/android/apps/plus/views/ScaledLayout;->marginMode:Lcom/google/android/apps/plus/views/ScaledLayout$MarginMode;

    .line 138
    :goto_3f
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_8

    .line 99
    .end local v1           #mode:I
    :cond_43
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    float-to-double v4, v4

    iput-wide v4, p0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleWidth:D

    .line 101
    invoke-virtual {v0, v10, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    float-to-double v4, v4

    iput-wide v4, p0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleHeight:D

    goto :goto_20

    .line 112
    :cond_53
    const/4 v4, 0x6

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    float-to-double v4, v4

    iput-wide v4, p0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleMarginLeft:D

    .line 115
    const/4 v4, 0x7

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    float-to-double v4, v4

    iput-wide v4, p0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleMarginRight:D

    .line 118
    const/4 v4, 0x4

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    float-to-double v4, v4

    iput-wide v4, p0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleMarginTop:D

    .line 121
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    float-to-double v4, v4

    iput-wide v4, p0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleMarginBottom:D

    goto :goto_33

    .line 130
    .restart local v1       #mode:I
    :cond_74
    const/4 v4, 0x2

    if-ne v1, v4, :cond_7c

    .line 131
    sget-object v4, Lcom/google/android/apps/plus/views/ScaledLayout$MarginMode;->SCALE_MARGIN_LONG_EDGE:Lcom/google/android/apps/plus/views/ScaledLayout$MarginMode;

    iput-object v4, p0, Lcom/google/android/apps/plus/views/ScaledLayout;->marginMode:Lcom/google/android/apps/plus/views/ScaledLayout$MarginMode;

    goto :goto_3f

    .line 132
    :cond_7c
    if-ne v1, v9, :cond_83

    .line 133
    sget-object v4, Lcom/google/android/apps/plus/views/ScaledLayout$MarginMode;->SCALE_MARGIN_SHORT_EDGE:Lcom/google/android/apps/plus/views/ScaledLayout$MarginMode;

    iput-object v4, p0, Lcom/google/android/apps/plus/views/ScaledLayout;->marginMode:Lcom/google/android/apps/plus/views/ScaledLayout$MarginMode;

    goto :goto_3f

    .line 135
    :cond_83
    sget-object v4, Lcom/google/android/apps/plus/views/ScaledLayout$MarginMode;->SCALE_MARGIN_NONE:Lcom/google/android/apps/plus/views/ScaledLayout$MarginMode;

    iput-object v4, p0, Lcom/google/android/apps/plus/views/ScaledLayout;->marginMode:Lcom/google/android/apps/plus/views/ScaledLayout$MarginMode;

    goto :goto_3f
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 24
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 284
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    .line 285
    .local v16, widthMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 286
    .local v7, incomingWidth:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 287
    .local v5, heightMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 290
    .local v6, incomingHeight:I
    move v15, v7

    .line 291
    .local v15, width:I
    const/high16 v17, -0x8000

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_95

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleWidth:D

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmpl-double v17, v17, v19

    if-lez v17, :cond_95

    .line 292
    int-to-double v0, v7

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleWidth:D

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v15, v0

    .line 293
    const/high16 v16, 0x4000

    .line 297
    :cond_35
    :goto_35
    move v4, v6

    .line 298
    .local v4, height:I
    const/high16 v17, -0x8000

    move/from16 v0, v17

    if-ne v5, v0, :cond_99

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleHeight:D

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmpl-double v17, v17, v19

    if-lez v17, :cond_99

    .line 299
    int-to-double v0, v6

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleHeight:D

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v4, v0

    .line 300
    const/high16 v5, 0x4000

    .line 305
    :cond_58
    :goto_58
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v4}, Lcom/google/android/apps/plus/views/ScaledLayout;->setMeasuredDimension(II)V

    .line 308
    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 309
    .local v3, childWidthSpec:I
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 310
    .local v2, childHeightSpec:I
    move-object/from16 v0, p0

    invoke-super {v0, v3, v2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ScaledLayout;->marginMode:Lcom/google/android/apps/plus/views/ScaledLayout$MarginMode;

    move-object/from16 v17, v0

    sget-object v18, Lcom/google/android/apps/plus/views/ScaledLayout$MarginMode;->SCALE_MARGIN_INDEPENDENT:Lcom/google/android/apps/plus/views/ScaledLayout$MarginMode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_9d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ScaledLayout;->marginMode:Lcom/google/android/apps/plus/views/ScaledLayout$MarginMode;

    move-object/from16 v17, v0

    sget-object v18, Lcom/google/android/apps/plus/views/ScaledLayout$MarginMode;->SCALE_MARGIN_LONG_EDGE:Lcom/google/android/apps/plus/views/ScaledLayout$MarginMode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_9d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ScaledLayout;->marginMode:Lcom/google/android/apps/plus/views/ScaledLayout$MarginMode;

    move-object/from16 v17, v0

    sget-object v18, Lcom/google/android/apps/plus/views/ScaledLayout$MarginMode;->SCALE_MARGIN_SHORT_EDGE:Lcom/google/android/apps/plus/views/ScaledLayout$MarginMode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_9d

    .line 376
    :goto_94
    return-void

    .line 294
    .end local v2           #childHeightSpec:I
    .end local v3           #childWidthSpec:I
    .end local v4           #height:I
    :cond_95
    if-nez v16, :cond_35

    .line 295
    const/4 v15, -0x2

    goto :goto_35

    .line 301
    .restart local v4       #height:I
    :cond_99
    if-nez v5, :cond_58

    .line 302
    const/4 v4, -0x2

    goto :goto_58

    .line 325
    .restart local v2       #childHeightSpec:I
    .restart local v3       #childWidthSpec:I
    :cond_9d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ScaledLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    .line 326
    .local v10, parent:Landroid/view/ViewParent;
    if-eqz v10, :cond_a9

    instance-of v0, v10, Landroid/view/View;

    move/from16 v17, v0

    if-eqz v17, :cond_9d

    .line 327
    :cond_a9
    if-eqz v10, :cond_d7

    move-object v12, v10

    .line 328
    check-cast v12, Landroid/view/View;

    .line 329
    .local v12, parentView:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 330
    .local v13, parentWidth:I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 339
    .end local v12           #parentView:Landroid/view/View;
    .local v11, parentHeight:I
    :goto_b6
    if-ge v13, v11, :cond_fb

    .line 340
    move v14, v13

    .line 341
    .local v14, shortSize:I
    move v9, v11

    .line 347
    .local v9, longSize:I
    :goto_ba
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/ScaledLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 348
    .local v8, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    sget-object v17, Lcom/google/android/apps/plus/views/ScaledLayout$1;->$SwitchMap$com$google$android$apps$plus$views$ScaledLayout$MarginMode:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ScaledLayout;->marginMode:Lcom/google/android/apps/plus/views/ScaledLayout$MarginMode;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/apps/plus/views/ScaledLayout$MarginMode;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_1f4

    .line 375
    :goto_d1
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/google/android/apps/plus/views/ScaledLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_94

    .line 332
    .end local v8           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9           #longSize:I
    .end local v11           #parentHeight:I
    .end local v13           #parentWidth:I
    .end local v14           #shortSize:I
    :cond_d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ScaledLayout;->mDisplay:Landroid/view/Display;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ScaledLayout;->mDispSize:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ScaledLayout;->mDispSize:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v13

    .line 334
    .restart local v13       #parentWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/ScaledLayout;->mDispSize:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v11

    .restart local v11       #parentHeight:I
    goto :goto_b6

    .line 343
    :cond_fb
    move v14, v11

    .line 344
    .restart local v14       #shortSize:I
    move v9, v13

    .restart local v9       #longSize:I
    goto :goto_ba

    .line 350
    .restart local v8       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_fe
    int-to-double v0, v11

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleMarginTop:D

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 351
    int-to-double v0, v11

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleMarginBottom:D

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 352
    int-to-double v0, v13

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleMarginLeft:D

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 353
    int-to-double v0, v13

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleMarginRight:D

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_d1

    .line 357
    :pswitch_14f
    int-to-double v0, v9

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleMarginTop:D

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 358
    int-to-double v0, v9

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleMarginBottom:D

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 359
    int-to-double v0, v9

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleMarginLeft:D

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 360
    int-to-double v0, v9

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleMarginRight:D

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_d1

    .line 364
    :pswitch_1a1
    int-to-double v0, v14

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleMarginTop:D

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 365
    int-to-double v0, v14

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleMarginBottom:D

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 366
    int-to-double v0, v14

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleMarginLeft:D

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 367
    int-to-double v0, v14

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleMarginRight:D

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_d1

    .line 348
    nop

    :pswitch_data_1f4
    .packed-switch 0x1
        :pswitch_fe
        :pswitch_14f
        :pswitch_1a1
    .end packed-switch
.end method

.method public setScale(D)V
    .registers 3
    .parameter "scale"

    .prologue
    .line 165
    iput-wide p1, p0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleWidth:D

    .line 166
    iput-wide p1, p0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleHeight:D

    .line 167
    return-void
.end method

.method public setScaleHeight(D)V
    .registers 3
    .parameter "scale"

    .prologue
    .line 205
    iput-wide p1, p0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleHeight:D

    .line 206
    return-void
.end method

.method public setScaleMargin(D)V
    .registers 3
    .parameter "scale"

    .prologue
    .line 175
    iput-wide p1, p0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleMarginBottom:D

    .line 176
    iput-wide p1, p0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleMarginRight:D

    .line 177
    iput-wide p1, p0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleMarginLeft:D

    .line 178
    iput-wide p1, p0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleMarginTop:D

    .line 179
    return-void
.end method

.method public setScaleMarginBottom(D)V
    .registers 3
    .parameter "scale"

    .prologue
    .line 237
    iput-wide p1, p0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleMarginBottom:D

    .line 238
    return-void
.end method

.method public setScaleMarginLeft(D)V
    .registers 3
    .parameter "scale"

    .prologue
    .line 269
    iput-wide p1, p0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleMarginLeft:D

    .line 270
    return-void
.end method

.method public setScaleMarginMode(Lcom/google/android/apps/plus/views/ScaledLayout$MarginMode;)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ScaledLayout;->marginMode:Lcom/google/android/apps/plus/views/ScaledLayout$MarginMode;

    .line 147
    return-void
.end method

.method public setScaleMarginRight(D)V
    .registers 3
    .parameter "scale"

    .prologue
    .line 253
    iput-wide p1, p0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleMarginRight:D

    .line 254
    return-void
.end method

.method public setScaleMarginTop(D)V
    .registers 3
    .parameter "scale"

    .prologue
    .line 221
    iput-wide p1, p0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleMarginTop:D

    .line 222
    return-void
.end method

.method public setScaleWidth(D)V
    .registers 3
    .parameter "scale"

    .prologue
    .line 188
    iput-wide p1, p0, Lcom/google/android/apps/plus/views/ScaledLayout;->scaleWidth:D

    .line 189
    return-void
.end method
