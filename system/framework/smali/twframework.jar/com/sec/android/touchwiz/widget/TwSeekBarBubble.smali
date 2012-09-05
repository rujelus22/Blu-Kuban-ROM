.class public Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
.super Landroid/widget/FrameLayout;
.source "TwSeekBarBubble.java"


# static fields
.field public static final BUBBLE_ALIGN_BOTTOM:I = 0x3

.field public static final BUBBLE_ALIGN_CENTER:I = 0x4

.field public static final BUBBLE_ALIGN_LEFT:I = 0x0

.field public static final BUBBLE_ALIGN_RIGHT:I = 0x1

.field public static final BUBBLE_ALIGN_TOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TwSeekbarBubble"


# instance fields
.field private TWSEEKBARBUBBLE_DEFAULT_TEXT_SIZE:F

.field private TWSEEKBARBUBBLE_INNER_PADDING_LEFT:F

.field private TWSEEKBARBUBBLE_INNER_PADDING_RIGHT:F

.field private mBubbleAlign:I

.field private mBubbleBackground:Landroid/graphics/drawable/Drawable;

.field private mBubbleDisplay:Z

.field private mBubbleDrawnRect:Landroid/graphics/Rect;

.field private mBubbleFontColor:I

.field private mBubbleFontSize:F

.field private mBubbleInnerPaddingLeft:F

.field private mBubbleInnerPaddingRight:F

.field private mBubblePosLeft:I

.field private mBubblePosTop:I

.field private mBubbleText:Ljava/lang/CharSequence;

.field private mScale:F

.field private mTextPainter:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const v1, 0x3faa3d71

    .line 108
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 82
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleAlign:I

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleDisplay:Z

    .line 92
    const v0, 0x421551ec

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->TWSEEKBARBUBBLE_DEFAULT_TEXT_SIZE:F

    .line 93
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->TWSEEKBARBUBBLE_INNER_PADDING_LEFT:F

    .line 94
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->TWSEEKBARBUBBLE_INNER_PADDING_RIGHT:F

    .line 99
    const/high16 v0, 0x205

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleFontColor:I

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mScale:F

    .line 109
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->init()V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v1, 0x3faa3d71

    .line 119
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleAlign:I

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleDisplay:Z

    .line 92
    const v0, 0x421551ec

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->TWSEEKBARBUBBLE_DEFAULT_TEXT_SIZE:F

    .line 93
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->TWSEEKBARBUBBLE_INNER_PADDING_LEFT:F

    .line 94
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->TWSEEKBARBUBBLE_INNER_PADDING_RIGHT:F

    .line 99
    const/high16 v0, 0x205

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleFontColor:I

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mScale:F

    .line 120
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->init()V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v1, 0x3faa3d71

    .line 130
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleAlign:I

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleDisplay:Z

    .line 92
    const v0, 0x421551ec

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->TWSEEKBARBUBBLE_DEFAULT_TEXT_SIZE:F

    .line 93
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->TWSEEKBARBUBBLE_INNER_PADDING_LEFT:F

    .line 94
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->TWSEEKBARBUBBLE_INNER_PADDING_RIGHT:F

    .line 99
    const/high16 v0, 0x205

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleFontColor:I

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mScale:F

    .line 131
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->init()V

    .line 132
    return-void
.end method

.method private calculateBubblePosition(Landroid/graphics/Point;)V
    .registers 12
    .parameter "bubblePosition"

    .prologue
    .line 466
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleBackground:Landroid/graphics/drawable/Drawable;

    .line 467
    .local v3, dBubbleBg:Landroid/graphics/drawable/Drawable;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 469
    .local v5, rectText:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 470
    .local v4, rectBubblePadding:Landroid/graphics/Rect;
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 472
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 473
    .local v2, bubbleWidth:I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 475
    .local v1, bubbleHeight:I
    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    sub-int v0, v2, v6

    .line 477
    .local v0, bubbleContentWidth:I
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mTextPainter:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleText:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleText:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 478
    const-string v6, "TwSeekbarBubble"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "calculateBubblePosition::bubbleContentWidth("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), rectText.width()("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-ge v0, v6, :cond_6e

    .line 480
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleInnerPaddingLeft:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleInnerPaddingRight:F

    add-float/2addr v6, v7

    float-to-int v0, v6

    .line 483
    :cond_6e
    iget v6, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v0

    iget v7, v4, Landroid/graphics/Rect;->right:I

    add-int v2, v6, v7

    .line 485
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleAlign:I

    packed-switch v6, :pswitch_data_bc

    .line 508
    :goto_7a
    return-void

    .line 487
    :pswitch_7b
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubblePosLeft:I

    iput v6, p1, Landroid/graphics/Point;->x:I

    .line 488
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubblePosTop:I

    div-int/lit8 v7, v1, 0x2

    sub-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Point;->y:I

    goto :goto_7a

    .line 491
    :pswitch_87
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubblePosLeft:I

    sub-int/2addr v6, v2

    iput v6, p1, Landroid/graphics/Point;->x:I

    .line 492
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubblePosTop:I

    div-int/lit8 v7, v1, 0x2

    sub-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Point;->y:I

    goto :goto_7a

    .line 495
    :pswitch_94
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubblePosLeft:I

    div-int/lit8 v7, v2, 0x2

    sub-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Point;->x:I

    .line 496
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubblePosTop:I

    iput v6, p1, Landroid/graphics/Point;->y:I

    goto :goto_7a

    .line 499
    :pswitch_a0
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubblePosLeft:I

    div-int/lit8 v7, v2, 0x2

    sub-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Point;->x:I

    .line 500
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubblePosTop:I

    sub-int/2addr v6, v1

    iput v6, p1, Landroid/graphics/Point;->y:I

    goto :goto_7a

    .line 503
    :pswitch_ad
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubblePosLeft:I

    div-int/lit8 v7, v2, 0x2

    sub-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Point;->x:I

    .line 504
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubblePosTop:I

    div-int/lit8 v7, v1, 0x2

    sub-int/2addr v6, v7

    iput v6, p1, Landroid/graphics/Point;->y:I

    goto :goto_7a

    .line 485
    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_7b
        :pswitch_87
        :pswitch_94
        :pswitch_a0
        :pswitch_ad
    .end packed-switch
.end method

.method private init()V
    .registers 5

    .prologue
    const/high16 v3, 0x3f00

    const/4 v2, 0x0

    .line 135
    const-string v0, "TwSeekbarBubble"

    const-string v1, "init::W E L C O M E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mScale:F

    .line 138
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setClickable(Z)V

    .line 139
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setFocusable(Z)V

    .line 141
    const-string v0, " "

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleText:Ljava/lang/CharSequence;

    .line 143
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2020039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleBackground:Landroid/graphics/drawable/Drawable;

    .line 145
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubblePosLeft:I

    .line 146
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubblePosTop:I

    .line 148
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    .line 150
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mTextPainter:Landroid/graphics/Paint;

    .line 151
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mTextPainter:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 153
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->TWSEEKBARBUBBLE_DEFAULT_TEXT_SIZE:F

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mScale:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleFontSize:F

    .line 154
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->TWSEEKBARBUBBLE_INNER_PADDING_LEFT:F

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mScale:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleInnerPaddingLeft:F

    .line 155
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->TWSEEKBARBUBBLE_INNER_PADDING_RIGHT:F

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mScale:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleInnerPaddingRight:F

    .line 156
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 23
    .parameter "canvas"

    .prologue
    .line 290
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 292
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleDisplay:Z

    move/from16 v17, v0

    if-eqz v17, :cond_25e

    .line 294
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleBackground:Landroid/graphics/drawable/Drawable;

    .line 295
    .local v9, dBubbleBg:Landroid/graphics/drawable/Drawable;
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 296
    .local v11, rectBg:Landroid/graphics/Rect;
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 301
    .local v13, rectText:Landroid/graphics/Rect;
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 302
    .local v12, rectBubblePadding:Landroid/graphics/Rect;
    invoke-virtual {v9, v12}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 304
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 305
    .local v8, bubbleWidth:I
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 307
    .local v6, bubbleHeight:I
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    add-int v17, v17, v18

    sub-int v5, v8, v17

    .line 309
    .local v5, bubbleContentWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mTextPainter:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleFontColor:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mTextPainter:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleFontSize:F

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mTextPainter:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleText:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleText:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/lang/CharSequence;->length()I

    move-result v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v13}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 313
    const-string v17, "TwSeekbarBubble"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "dispatchDraw::bubbleContentWidth("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "), rectText.width()("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_d4

    .line 319
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleInnerPaddingLeft:F

    move/from16 v18, v0

    add-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleInnerPaddingRight:F

    move/from16 v18, v0

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v5, v0

    .line 322
    :cond_d4
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    add-int v17, v17, v5

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    add-int v8, v17, v18

    .line 323
    const-string v17, "TwSeekbarBubble"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "dispatchDraw::bubbleWidth("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 326
    .local v7, bubblePoint:Landroid/graphics/Point;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->calculateBubblePosition(Landroid/graphics/Point;)V

    .line 328
    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    add-int v19, v19, v8

    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    add-int v20, v20, v6

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 333
    invoke-virtual {v9, v11}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 334
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    add-int v18, v18, v8

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    add-int v18, v18, v6

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mTextPainter:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v10

    .line 344
    .local v10, pf:Landroid/graphics/Paint$FontMetrics;
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v17

    sub-int v17, v5, v17

    div-int/lit8 v14, v17, 0x2

    .line 345
    .local v14, temp:I
    const-string v17, "TwSeekbarBubble"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "dispatchDraw::bubbleContentWidth("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "), rectText.width()("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string v17, "TwSeekbarBubble"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "dispatchDraw::bubblePoint.x("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "), temp("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget v0, v7, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    add-int v17, v17, v18

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v18

    sub-int v18, v5, v18

    div-int/lit8 v18, v18, 0x2

    add-int v15, v17, v18

    .line 354
    .local v15, textX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v17

    const/16 v18, 0x31

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_222

    .line 355
    int-to-float v0, v15

    move/from16 v17, v0

    const v18, 0x40551eb8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mScale:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    const/high16 v19, 0x3f00

    add-float v18, v18, v19

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v15, v0

    .line 357
    :cond_222
    iget v0, v7, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    iget v0, v10, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v16, v17, v18

    .line 360
    .local v16, textY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleText:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    int-to-float v0, v15

    move/from16 v18, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mTextPainter:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 361
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 365
    .end local v5           #bubbleContentWidth:I
    .end local v6           #bubbleHeight:I
    .end local v7           #bubblePoint:Landroid/graphics/Point;
    .end local v8           #bubbleWidth:I
    .end local v9           #dBubbleBg:Landroid/graphics/drawable/Drawable;
    .end local v10           #pf:Landroid/graphics/Paint$FontMetrics;
    .end local v11           #rectBg:Landroid/graphics/Rect;
    .end local v12           #rectBubblePadding:Landroid/graphics/Rect;
    .end local v13           #rectText:Landroid/graphics/Rect;
    .end local v14           #temp:I
    .end local v15           #textX:I
    .end local v16           #textY:I
    :goto_25d
    return-void

    .line 364
    :cond_25e
    const-string v17, "TwSeekbarBubble"

    const-string v18, "dispatchDraw::mBubbleDisplay is false"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25d
.end method

.method public getBubbleFontSize()F
    .registers 2

    .prologue
    .line 277
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleFontSize:F

    return v0
.end method

.method public getBubbleHeight()I
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getBubbleWidth()I
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public hideBubble()V
    .registers 2

    .prologue
    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleDisplay:Z

    .line 245
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "event"

    .prologue
    .line 369
    const/4 v0, 0x0

    .line 371
    .local v0, bResult:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 372
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 374
    .local v2, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_3e

    .line 393
    :cond_10
    :goto_10
    return v0

    .line 376
    :pswitch_11
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    float-to-int v4, v1

    float-to-int v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 377
    const-string v3, "TwSeekbarBubble"

    const-string v4, "onInterceptTouchEvent::bubble touchDown"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleBackground:Landroid/graphics/drawable/Drawable;

    sget-object v4, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->PRESSED_STATE_SET:[I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 380
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate(IIII)V

    .line 386
    const/4 v0, 0x1

    goto :goto_10

    .line 374
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_11
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "event"

    .prologue
    .line 398
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 399
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 401
    .local v1, y:F
    const-string v2, "TwSeekbarBubble"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEvent::x("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), y("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_9c

    .line 448
    :cond_37
    :goto_37
    :pswitch_37
    const/4 v2, 0x1

    return v2

    .line 405
    :pswitch_39
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    float-to-int v3, v0

    float-to-int v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 406
    const-string v2, "TwSeekbarBubble"

    const-string v3, "onTouchEvent::bubble touchDown"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleBackground:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->PRESSED_STATE_SET:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 409
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate(IIII)V

    goto :goto_37

    .line 431
    :pswitch_65
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleBackground:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->EMPTY_STATE_SET:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 433
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate(IIII)V

    goto :goto_37

    .line 440
    :pswitch_80
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleBackground:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->EMPTY_STATE_SET:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 442
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate(IIII)V

    goto :goto_37

    .line 403
    nop

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_39
        :pswitch_65
        :pswitch_37
        :pswitch_80
    .end packed-switch
.end method

.method public setBubbleAlign(I)V
    .registers 2
    .parameter "bubbleAlign"

    .prologue
    .line 230
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleAlign:I

    .line 231
    return-void
.end method

.method public setBubbleBackgroundDrawable(I)V
    .registers 3
    .parameter "resId"

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    return-void
.end method

.method public setBubbleBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "background"

    .prologue
    .line 167
    if-eqz p1, :cond_4

    .line 168
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleBackground:Landroid/graphics/drawable/Drawable;

    .line 170
    :cond_4
    return-void
.end method

.method public setBubbleFontColor(I)V
    .registers 2
    .parameter "resId"

    .prologue
    .line 285
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleFontColor:I

    .line 286
    return-void
.end method

.method public setBubbleFontSize(F)V
    .registers 4
    .parameter "fontSize"

    .prologue
    .line 265
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_10

    .line 266
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->TWSEEKBARBUBBLE_DEFAULT_TEXT_SIZE:F

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleFontSize:F

    .line 270
    :goto_f
    return-void

    .line 268
    :cond_10
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleFontSize:F

    goto :goto_f
.end method

.method public setBubblePosition(Landroid/view/View;II)V
    .registers 8
    .parameter "offsetView"
    .parameter "left"
    .parameter "top"

    .prologue
    .line 210
    const-string v1, "TwSeekbarBubble"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBubblePosition::left("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), top("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 213
    .local v0, rectOffset:Landroid/graphics/Rect;
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 214
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubblePosLeft:I

    .line 215
    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubblePosTop:I

    .line 217
    const-string v1, "TwSeekbarBubble"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBubblePosition::mBubblePosLeft("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubblePosLeft:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), mBubblePosTop("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubblePosTop:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void
.end method

.method public setBubbleText(I)V
    .registers 3
    .parameter "resId"

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleText(Ljava/lang/CharSequence;)V

    .line 197
    return-void
.end method

.method public setBubbleText(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleText:Ljava/lang/CharSequence;

    .line 188
    return-void
.end method

.method public showBubble()V
    .registers 2

    .prologue
    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->mBubbleDisplay:Z

    .line 238
    return-void
.end method
