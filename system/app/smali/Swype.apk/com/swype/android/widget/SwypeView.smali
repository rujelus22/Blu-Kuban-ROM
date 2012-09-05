.class public abstract Lcom/swype/android/widget/SwypeView;
.super Landroid/view/View;
.source "SwypeView.java"

# interfaces
.implements Lcom/swype/android/widget/MultitouchEventReceiver;
.implements Lcom/swype/android/widget/PaintBuffer$PaintBufferListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;
    }
.end annotation


# static fields
.field private static final COMBINE_LINES_MARGIN:I = 0x10

.field private static final FONT_DIR:Ljava/lang/String; = "keyboards/"

.field private static final FONT_EXTENSION:Ljava/lang/String; = ".ttf"

.field private static final FONT_SYSTEM_DIR:Ljava/lang/String; = "/system/fonts/"

.field static final TEXT_LENGTH_CAP_LEFT:I = 0x2

.field static final TEXT_LENGTH_CAP_RIGHT:I = 0x3

.field static final TEXT_LENGTH_STYLE_AUTOWRAP:I = 0x1

.field static final TEXT_LENGTH_STYLE_NONE:I


# instance fields
.field private app:Lcom/swype/android/inputmethod/SwypeApplication;

.field protected bigTextSize:F

.field private core:Lcom/swype/android/jni/SwypeCore;

.field protected defaultTextSize:F

.field protected fontSizeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field protected isCanvasDirty:Z

.field protected isDrawingHalted:Z

.field protected linePaint:Landroid/graphics/Paint;

.field protected nameTypefaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field protected offScreenBitmap:Landroid/graphics/Bitmap;

.field protected offScreenCanvas:Landroid/graphics/Canvas;

.field protected paintBuffer:Lcom/swype/android/widget/PaintBuffer;

.field screenLocation:[I

.field private specialTextAdjuster:Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;

.field private textBounds:Landroid/graphics/Rect;

.field private textLinesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected textPaint:Landroid/graphics/Paint;

.field protected textSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field protected typefaceBold:Landroid/graphics/Typeface;

.field protected typefaceNormal:Landroid/graphics/Typeface;

.field protected useGiantFonts:Z

.field private windowId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 170
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swype/android/widget/SwypeView;->isCanvasDirty:Z

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/SwypeView;->nameTypefaceMap:Ljava/util/Map;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/SwypeView;->fontSizeMap:Ljava/util/Map;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/SwypeView;->textLinesMap:Ljava/util/Map;

    .line 152
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/SwypeView;->textBounds:Landroid/graphics/Rect;

    .line 805
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/swype/android/widget/SwypeView;->screenLocation:[I

    .line 906
    new-instance v0, Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;

    invoke-direct {v0}, Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/SwypeView;->specialTextAdjuster:Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 180
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swype/android/widget/SwypeView;->isCanvasDirty:Z

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/SwypeView;->nameTypefaceMap:Ljava/util/Map;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/SwypeView;->fontSizeMap:Ljava/util/Map;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/SwypeView;->textLinesMap:Ljava/util/Map;

    .line 152
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/SwypeView;->textBounds:Landroid/graphics/Rect;

    .line 805
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/swype/android/widget/SwypeView;->screenLocation:[I

    .line 906
    new-instance v0, Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;

    invoke-direct {v0}, Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/SwypeView;->specialTextAdjuster:Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;

    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 191
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swype/android/widget/SwypeView;->isCanvasDirty:Z

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/SwypeView;->nameTypefaceMap:Ljava/util/Map;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/SwypeView;->fontSizeMap:Ljava/util/Map;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/SwypeView;->textLinesMap:Ljava/util/Map;

    .line 152
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/SwypeView;->textBounds:Landroid/graphics/Rect;

    .line 805
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/swype/android/widget/SwypeView;->screenLocation:[I

    .line 906
    new-instance v0, Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;

    invoke-direct {v0}, Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/SwypeView;->specialTextAdjuster:Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;

    .line 192
    return-void
.end method

.method private drawTextSingleLine(Ljava/lang/String;Landroid/graphics/Rect;ZFLjava/lang/String;IIIII)V
    .registers 21
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 396
    const/4 v2, 0x2

    move/from16 v0, p10

    move v1, v2

    if-eq v0, v1, :cond_c

    const/4 v2, 0x3

    move/from16 v0, p10

    move v1, v2

    if-ne v0, v1, :cond_3e

    .line 398
    :cond_c
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 399
    invoke-direct {p0, p1}, Lcom/swype/android/widget/SwypeView;->getTextWidth(Ljava/lang/String;)I

    move-result v3

    .line 400
    const/4 v4, 0x0

    .line 402
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move v6, v3

    move-object v3, p1

    .line 404
    :goto_1b
    if-le v6, v2, :cond_3f

    const/4 v6, 0x1

    sub-int v6, v5, v6

    if-ge v4, v6, :cond_3f

    .line 405
    add-int/lit8 v3, v4, 0x1

    .line 406
    const/4 v4, 0x2

    move/from16 v0, p10

    move v1, v4

    if-ne v0, v1, :cond_39

    .line 407
    const/4 v4, 0x0

    sub-int v6, v5, v3

    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 411
    :goto_31
    invoke-direct {p0, v4}, Lcom/swype/android/widget/SwypeView;->getTextWidth(Ljava/lang/String;)I

    move-result v6

    move-object v9, v4

    move v4, v3

    move-object v3, v9

    goto :goto_1b

    .line 409
    :cond_39
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_31

    :cond_3e
    move-object v3, p1

    .line 417
    :cond_3f
    packed-switch p8, :pswitch_data_b8

    .line 426
    iget v2, p2, Landroid/graphics/Rect;->left:I

    move v4, v2

    .line 430
    :goto_45
    iget-object v2, p0, Lcom/swype/android/widget/SwypeView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v6

    .line 431
    packed-switch p9, :pswitch_data_c0

    .line 445
    :pswitch_4e
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v5

    iget v5, v6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    move v5, v2

    .line 449
    :goto_59
    invoke-virtual {p0}, Lcom/swype/android/widget/SwypeView;->getCurCanvas()Landroid/graphics/Canvas;

    move-result-object v8

    .line 450
    if-eqz v8, :cond_7f

    if-eqz v3, :cond_7f

    iget-object v2, p0, Lcom/swype/android/widget/SwypeView;->textPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_7f

    .line 451
    iget-object v2, p0, Lcom/swype/android/widget/SwypeView;->specialTextAdjuster:Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;

    iget-object v7, p0, Lcom/swype/android/widget/SwypeView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;->adjustTextPosition(Ljava/lang/String;IILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/Paint;)Z

    .line 452
    iget-object v2, p0, Lcom/swype/android/widget/SwypeView;->specialTextAdjuster:Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;

    iget-object v2, v2, Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;->text:Ljava/lang/String;

    iget-object v3, p0, Lcom/swype/android/widget/SwypeView;->specialTextAdjuster:Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;

    iget v3, v3, Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;->x:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/swype/android/widget/SwypeView;->specialTextAdjuster:Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;

    iget v4, v4, Lcom/swype/android/widget/SwypeView$SpecialTextAdjuster;->y:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/swype/android/widget/SwypeView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 454
    :cond_7f
    return-void

    .line 419
    :pswitch_80
    iget v2, p2, Landroid/graphics/Rect;->right:I

    move v4, v2

    .line 420
    goto :goto_45

    .line 422
    :pswitch_84
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    move v4, v2

    .line 423
    goto :goto_45

    .line 433
    :pswitch_8d
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v5, v6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v2, v5

    move v5, v2

    .line 434
    goto :goto_59

    .line 436
    :pswitch_94
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v5, v6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v2, v5

    move v5, v2

    .line 437
    goto :goto_59

    .line 439
    :pswitch_9b
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 440
    iget-object v5, p0, Lcom/swype/android/widget/SwypeView;->textPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v3, v7, v8, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 441
    iget v5, p2, Landroid/graphics/Rect;->top:I

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v7

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v2, v5, v2

    div-int/lit8 v2, v2, 0x2

    move v5, v2

    .line 442
    goto :goto_59

    .line 417
    nop

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_84
        :pswitch_80
    .end packed-switch

    .line 431
    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_8d
        :pswitch_4e
        :pswitch_94
        :pswitch_9b
    .end packed-switch
.end method

.method private drawTextWrapped(Ljava/lang/String;Landroid/graphics/Rect;ZFLjava/lang/String;IIII)V
    .registers 30
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 469
    if-nez p1, :cond_3

    .line 662
    :cond_2
    return-void

    .line 476
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_2bc

    .line 477
    const/4 v4, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, p1

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .line 481
    :goto_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/SwypeView;->fontSizeMap:Ljava/util/Map;

    move-object v4, v0

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/SwypeView;->textLinesMap:Ljava/util/Map;

    move-object v4, v0

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Vector;

    .line 489
    if-nez v4, :cond_93

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/SwypeView;->textSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    move-object v4, v0

    if-nez v4, :cond_6b

    .line 491
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v7, 0xa

    invoke-direct {v4, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/swype/android/widget/SwypeView;->textSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 493
    :cond_6b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/SwypeView;->textSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    move-object v4, v0

    invoke-virtual {v4, v5}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 494
    new-instance v5, Ljava/util/Vector;

    const/4 v4, 0x3

    invoke-direct {v5, v4}, Ljava/util/Vector;-><init>(I)V

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/SwypeView;->textSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_82
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_92

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 496
    invoke-virtual {v5, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_82

    :cond_92
    move-object v4, v5

    .line 501
    :cond_93
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    if-eqz v5, :cond_2

    .line 507
    if-nez p1, :cond_2b8

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/SwypeView;->textPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 510
    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 513
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 514
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 517
    const/16 v9, 0x10

    sub-int v9, v7, v9

    .line 519
    const/4 v10, 0x0

    .line 524
    new-instance v11, Ljava/util/Vector;

    const/4 v12, 0x3

    invoke-direct {v11, v12}, Ljava/util/Vector;-><init>(I)V

    .line 527
    new-instance v12, Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v13

    .line 533
    const/4 v14, 0x1

    move/from16 v19, v14

    move v14, v10

    move/from16 v10, v19

    :goto_d6
    if-ge v10, v13, :cond_140

    .line 535
    invoke-virtual {v4, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 536
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    .line 537
    const/16 v16, 0x1

    sub-int v16, v15, v16

    .line 540
    if-lez v15, :cond_134

    .line 542
    move-object v0, v12

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v17

    const/16 v18, 0x2d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_12a

    .line 545
    move-object v0, v12

    move/from16 v1, v16

    move v2, v15

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/SwypeView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    move v0, v9

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v17, v17, v18

    if-gez v17, :cond_11a

    .line 550
    const/4 v14, 0x1

    .line 533
    :goto_117
    add-int/lit8 v10, v10, 0x1

    goto :goto_d6

    .line 555
    :cond_11a
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    const-string v18, "-"

    move-object v0, v12

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    :cond_12a
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 563
    :cond_134
    const/16 v16, 0x0

    move-object v0, v12

    move/from16 v1, v16

    move v2, v15

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_117

    .line 567
    :cond_140
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 570
    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 571
    invoke-virtual {v4, v11}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 572
    invoke-virtual {v11}, Ljava/util/Vector;->clear()V

    .line 575
    const/4 v10, 0x0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v0, v12

    move v1, v10

    move v2, v13

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v10

    .line 580
    const/4 v13, 0x1

    :goto_169
    if-ge v13, v10, :cond_1bd

    .line 582
    invoke-virtual {v4, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 583
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    .line 586
    if-lez v15, :cond_1ae

    .line 589
    const-string v16, " "

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/SwypeView;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v16

    move v0, v9

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v16, v16, v17

    if-gez v16, :cond_1a1

    .line 594
    const/4 v14, 0x1

    .line 580
    :goto_19e
    add-int/lit8 v13, v13, 0x1

    goto :goto_169

    .line 600
    :cond_1a1
    const/16 v16, 0x0

    move-object v0, v12

    move/from16 v1, v16

    move v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 603
    :cond_1ae
    const/4 v15, 0x0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    move-object v0, v12

    move v1, v15

    move/from16 v2, v16

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19e

    .line 607
    :cond_1bd
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 612
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v4

    .line 615
    invoke-virtual {v11}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1cc
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_21c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 616
    :goto_1d8
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v10

    const/4 v12, 0x0

    cmpl-float v10, v10, v12

    if-lez v10, :cond_1cc

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/SwypeView;->textPaint:Landroid/graphics/Paint;

    move-object v10, v0

    invoke-virtual {v10}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v10

    .line 619
    iget v12, v10, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v10, v10, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v10, v12, v10

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/SwypeView;->textPaint:Landroid/graphics/Paint;

    move-object v12, v0

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    int-to-float v13, v7

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_204

    mul-int/2addr v10, v4

    if-le v10, v8, :cond_1cc

    .line 625
    :cond_204
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/high16 v10, 0x3f00

    sub-float/2addr v5, v10

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/SwypeView;->textPaint:Landroid/graphics/Paint;

    move-object v10, v0

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-virtual {v10, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_1d8

    .line 634
    :cond_21c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/SwypeView;->fontSizeMap:Ljava/util/Map;

    move-object v4, v0

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    if-eqz v14, :cond_231

    .line 638
    invoke-virtual {v11}, Ljava/util/Vector;->trimToSize()V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/SwypeView;->textLinesMap:Ljava/util/Map;

    move-object v4, v0

    invoke-interface {v4, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_231
    move-object v4, v11

    move-object v15, v5

    .line 644
    :goto_233
    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float v5, v5, p4

    if-eqz v5, :cond_247

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/SwypeView;->textPaint:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 648
    :cond_247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/SwypeView;->textPaint:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    .line 649
    iget v6, v5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v16, v6, v5

    .line 652
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    mul-int v5, v5, v16

    div-int/lit8 v5, v5, 0x2

    .line 653
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    sub-int/2addr v6, v5

    move v0, v6

    move-object/from16 v1, p2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 654
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v6, v0

    sub-int v5, v6, v5

    move v0, v5

    move-object/from16 v1, p2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 657
    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_27b
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 658
    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v8

    const/4 v14, 0x0

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    invoke-direct/range {v4 .. v14}, Lcom/swype/android/widget/SwypeView;->drawTextSingleLine(Ljava/lang/String;Landroid/graphics/Rect;ZFLjava/lang/String;IIIII)V

    .line 659
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v4, v0

    add-int v4, v4, v16

    move v0, v4

    move-object/from16 v1, p2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 660
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v4, v0

    add-int v4, v4, v16

    move v0, v4

    move-object/from16 v1, p2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_27b

    :cond_2b8
    move-object/from16 v15, p1

    goto/16 :goto_233

    :cond_2bc
    move-object/from16 v5, p1

    goto/16 :goto_1d
.end method

.method private getTextWidth(Ljava/lang/String;)I
    .registers 6
    .parameter "text"

    .prologue
    .line 801
    iget-object v0, p0, Lcom/swype/android/widget/SwypeView;->textPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/swype/android/widget/SwypeView;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 802
    iget-object v0, p0, Lcom/swype/android/widget/SwypeView;->textBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/swype/android/widget/SwypeView;->textBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private getTypeface(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 753
    const/4 v0, 0x0

    .line 754
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_19

    .line 755
    iget-object v1, p0, Lcom/swype/android/widget/SwypeView;->nameTypefaceMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 756
    iget-object v0, p0, Lcom/swype/android/widget/SwypeView;->nameTypefaceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 782
    :cond_19
    :goto_19
    if-nez v0, :cond_23

    .line 783
    const/4 v0, 0x2

    if-eq p2, v0, :cond_21

    const/4 v0, 0x1

    if-ne p2, v0, :cond_88

    .line 784
    :cond_21
    iget-object v0, p0, Lcom/swype/android/widget/SwypeView;->typefaceBold:Landroid/graphics/Typeface;

    .line 789
    :cond_23
    :goto_23
    return-object v0

    .line 759
    :cond_24
    :try_start_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 760
    const-string v2, "keyboards/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    const-string v2, ".ttf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    invoke-virtual {p0}, Lcom/swype/android/widget/SwypeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_45
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_45} :catch_4c

    move-result-object v0

    .line 778
    :goto_46
    iget-object v1, p0, Lcom/swype/android/widget/SwypeView;->nameTypefaceMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 764
    :catch_4c
    move-exception v1

    .line 765
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 766
    const-string v3, "/system/fonts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    const-string v3, ".ttf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    :try_start_5f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_66
    .catch Ljava/lang/RuntimeException; {:try_start_5f .. :try_end_66} :catch_68

    move-result-object v0

    goto :goto_46

    .line 772
    :catch_68
    move-exception v2

    const-string v2, "View"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load TTF font ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_46

    .line 786
    :cond_88
    iget-object v0, p0, Lcom/swype/android/widget/SwypeView;->typefaceNormal:Landroid/graphics/Typeface;

    goto :goto_23
.end method

.method public static recycleBitmap(Landroid/graphics/Bitmap;)V
    .registers 1
    .parameter "bm"

    .prologue
    .line 812
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 813
    return-void
.end method


# virtual methods
.method protected addCommand(Lcom/swype/android/widget/PaintCommand;)V
    .registers 3
    .parameter "command"

    .prologue
    .line 697
    iget-object v0, p0, Lcom/swype/android/widget/SwypeView;->paintBuffer:Lcom/swype/android/widget/PaintBuffer;

    invoke-virtual {v0, p1}, Lcom/swype/android/widget/PaintBuffer;->addCommand(Lcom/swype/android/widget/PaintCommand;)V

    .line 698
    return-void
.end method

.method public checkBitmap()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 821
    invoke-virtual {p0}, Lcom/swype/android/widget/SwypeView;->getOffScreenBitmapSize()Lcom/swype/android/widget/ViewSize;

    move-result-object v0

    .line 822
    .local v0, size:Lcom/swype/android/widget/ViewSize;
    if-eqz v0, :cond_3b

    iget-object v1, p0, Lcom/swype/android/widget/SwypeView;->app:Lcom/swype/android/inputmethod/SwypeApplication;

    if-eqz v1, :cond_3b

    .line 824
    iget-object v1, p0, Lcom/swype/android/widget/SwypeView;->offScreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/swype/android/widget/SwypeView;->offScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 826
    :cond_17
    iget-object v1, p0, Lcom/swype/android/widget/SwypeView;->app:Lcom/swype/android/inputmethod/SwypeApplication;

    iget v2, p0, Lcom/swype/android/widget/SwypeView;->windowId:I

    invoke-virtual {v0}, Lcom/swype/android/widget/ViewSize;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/swype/android/widget/ViewSize;->getHeight()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/swype/android/inputmethod/SwypeApplication;->getBitmap(III)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/swype/android/widget/SwypeView;->offScreenBitmap:Landroid/graphics/Bitmap;

    .line 827
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/swype/android/widget/SwypeView;->offScreenBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/swype/android/widget/SwypeView;->offScreenCanvas:Landroid/graphics/Canvas;

    .line 828
    iget-object v1, p0, Lcom/swype/android/widget/SwypeView;->offScreenCanvas:Landroid/graphics/Canvas;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 830
    :cond_39
    const/4 v1, 0x1

    .line 832
    :goto_3a
    return v1

    :cond_3b
    move v1, v5

    goto :goto_3a
.end method

.method protected debugDrawRect(Landroid/graphics/Rect;I)V
    .registers 7
    .parameter "rect"
    .parameter "color"

    .prologue
    .line 739
    iget-object v2, p0, Lcom/swype/android/widget/SwypeView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 740
    .local v0, savedColor:I
    iget-object v2, p0, Lcom/swype/android/widget/SwypeView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    .line 741
    .local v1, savedLineWidth:F
    iget-object v2, p0, Lcom/swype/android/widget/SwypeView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 742
    iget-object v2, p0, Lcom/swype/android/widget/SwypeView;->linePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 743
    invoke-virtual {p0}, Lcom/swype/android/widget/SwypeView;->getCurCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    iget-object v3, p0, Lcom/swype/android/widget/SwypeView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 744
    iget-object v2, p0, Lcom/swype/android/widget/SwypeView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 745
    iget-object v2, p0, Lcom/swype/android/widget/SwypeView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 746
    return-void
.end method

.method protected doWrapText(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 671
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected drawText(Ljava/lang/String;Landroid/graphics/Rect;ZFLjava/lang/String;IIIII)V
    .registers 24
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 372
    move-object v2, p0

    move/from16 v3, p6

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-virtual/range {v2 .. v7}, Lcom/swype/android/widget/SwypeView;->setTextStyle(IFLjava/lang/String;II)V

    .line 373
    const/4 v2, 0x1

    move/from16 v0, p10

    move v1, v2

    if-ne v0, v1, :cond_34

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_34

    .line 374
    iget-object v2, p0, Lcom/swype/android/widget/SwypeView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v2 .. v11}, Lcom/swype/android/widget/SwypeView;->drawTextWrapped(Ljava/lang/String;Landroid/graphics/Rect;ZFLjava/lang/String;IIII)V

    .line 378
    :goto_33
    return-void

    .line 376
    :cond_34
    iget-object v2, p0, Lcom/swype/android/widget/SwypeView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-direct/range {v2 .. v12}, Lcom/swype/android/widget/SwypeView;->drawTextSingleLine(Ljava/lang/String;Landroid/graphics/Rect;ZFLjava/lang/String;IIIII)V

    goto :goto_33
.end method

.method protected getCommandWithType(Lcom/swype/android/widget/PaintCommandType;)Lcom/swype/android/widget/PaintCommand;
    .registers 3
    .parameter "type"

    .prologue
    .line 705
    iget-object v0, p0, Lcom/swype/android/widget/SwypeView;->paintBuffer:Lcom/swype/android/widget/PaintBuffer;

    invoke-virtual {v0}, Lcom/swype/android/widget/PaintBuffer;->getPaintCommandPool()Lcom/swype/android/widget/PaintCommand$Pool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/swype/android/widget/PaintCommand$Pool;->checkout(Lcom/swype/android/widget/PaintCommandType;)Lcom/swype/android/widget/PaintCommand;

    move-result-object v0

    return-object v0
.end method

.method protected getCurCanvas()Landroid/graphics/Canvas;
    .registers 2

    .prologue
    .line 749
    iget-object v0, p0, Lcom/swype/android/widget/SwypeView;->offScreenCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public abstract getOffScreenBitmapSize()Lcom/swype/android/widget/ViewSize;
.end method

.method public getRawYPosition()I
    .registers 3

    .prologue
    .line 807
    iget-object v0, p0, Lcom/swype/android/widget/SwypeView;->screenLocation:[I

    invoke-virtual {p0, v0}, Lcom/swype/android/widget/SwypeView;->getLocationOnScreen([I)V

    .line 808
    iget-object v0, p0, Lcom/swype/android/widget/SwypeView;->screenLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public abstract getWindowSize()Lcom/swype/android/widget/ViewSize;
.end method

.method public haltDrawing(Z)V
    .registers 2
    .parameter "isDrawingHalted"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/swype/android/widget/SwypeView;->isDrawingHalted:Z

    .line 197
    return-void
.end method

.method protected init(I)V
    .registers 7
    .parameter "whichWindow"

    .prologue
    const/16 v4, 0xff

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 266
    iput p1, p0, Lcom/swype/android/widget/SwypeView;->windowId:I

    .line 267
    invoke-virtual {p0, v3}, Lcom/swype/android/widget/SwypeView;->setWillNotDraw(Z)V

    .line 268
    new-instance v0, Lcom/swype/android/widget/PaintBuffer;

    invoke-direct {v0, p0}, Lcom/swype/android/widget/PaintBuffer;-><init>(Lcom/swype/android/widget/PaintBuffer$PaintBufferListener;)V

    iput-object v0, p0, Lcom/swype/android/widget/SwypeView;->paintBuffer:Lcom/swype/android/widget/PaintBuffer;

    .line 269
    invoke-virtual {p0}, Lcom/swype/android/widget/SwypeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/swype/android/inputmethod/SwypeApplication;

    iput-object v0, p0, Lcom/swype/android/widget/SwypeView;->app:Lcom/swype/android/inputmethod/SwypeApplication;

    .line 270
    iget-object v0, p0, Lcom/swype/android/widget/SwypeView;->app:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getSwypeCore()Lcom/swype/android/jni/SwypeCore;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/widget/SwypeView;->core:Lcom/swype/android/jni/SwypeCore;

    .line 271
    invoke-virtual {p0}, Lcom/swype/android/widget/SwypeView;->checkBitmap()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 272
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/SwypeView;->linePaint:Landroid/graphics/Paint;

    .line 273
    iget-object v0, p0, Lcom/swype/android/widget/SwypeView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 275
    iget-object v0, p0, Lcom/swype/android/widget/SwypeView;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 276
    iget-object v0, p0, Lcom/swype/android/widget/SwypeView;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 277
    iget-object v0, p0, Lcom/swype/android/widget/SwypeView;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 278
    iget-object v0, p0, Lcom/swype/android/widget/SwypeView;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 280
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/SwypeView;->textPaint:Landroid/graphics/Paint;

    .line 281
    iget-object v0, p0, Lcom/swype/android/widget/SwypeView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 283
    iget-object v0, p0, Lcom/swype/android/widget/SwypeView;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 284
    iget-object v0, p0, Lcom/swype/android/widget/SwypeView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 286
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/widget/SwypeView;->typefaceBold:Landroid/graphics/Typeface;

    .line 287
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/widget/SwypeView;->typefaceNormal:Landroid/graphics/Typeface;

    .line 288
    iget-object v0, p0, Lcom/swype/android/widget/SwypeView;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/swype/android/widget/SwypeView;->useGiantFonts:Z

    .line 290
    invoke-virtual {p0}, Lcom/swype/android/widget/SwypeView;->onBufferInitDraw()V

    .line 292
    :cond_85
    return-void
.end method

.method protected abstract onBufferInitDraw()V
.end method

.method protected abstract onBufferRedraw()V
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 217
    invoke-virtual {p0}, Lcom/swype/android/widget/SwypeView;->checkBitmap()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 222
    invoke-virtual {p0}, Lcom/swype/android/widget/SwypeView;->onBufferRedraw()V

    .line 223
    iget-boolean v0, p0, Lcom/swype/android/widget/SwypeView;->isDrawingHalted:Z

    if-nez v0, :cond_14

    .line 224
    iget-object v0, p0, Lcom/swype/android/widget/SwypeView;->offScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 231
    :cond_14
    :goto_14
    return-void

    .line 229
    :cond_15
    iget-object v0, p0, Lcom/swype/android/widget/SwypeView;->paintBuffer:Lcom/swype/android/widget/PaintBuffer;

    invoke-virtual {v0}, Lcom/swype/android/widget/PaintBuffer;->clear()V

    goto :goto_14
.end method

.method public onDrawFlush()V
    .registers 3

    .prologue
    .line 730
    sget-object v1, Lcom/swype/android/widget/PaintCommandType;->FLUSH_DRAWING:Lcom/swype/android/widget/PaintCommandType;

    invoke-virtual {p0, v1}, Lcom/swype/android/widget/SwypeView;->getCommandWithType(Lcom/swype/android/widget/PaintCommandType;)Lcom/swype/android/widget/PaintCommand;

    move-result-object v0

    .line 731
    .local v0, command:Lcom/swype/android/widget/PaintCommand;
    invoke-virtual {p0, v0}, Lcom/swype/android/widget/SwypeView;->addCommand(Lcom/swype/android/widget/PaintCommand;)V

    .line 732
    return-void
.end method

.method public onMeasure(II)V
    .registers 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v2, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/swype/android/widget/SwypeView;->getWindowSize()Lcom/swype/android/widget/ViewSize;

    move-result-object v0

    .line 203
    .local v0, size:Lcom/swype/android/widget/ViewSize;
    if-nez v0, :cond_c

    .line 204
    new-instance v0, Lcom/swype/android/widget/ViewSize;

    .end local v0           #size:Lcom/swype/android/widget/ViewSize;
    invoke-direct {v0, v2, v2}, Lcom/swype/android/widget/ViewSize;-><init>(II)V

    .line 206
    .restart local v0       #size:Lcom/swype/android/widget/ViewSize;
    :cond_c
    invoke-virtual {v0}, Lcom/swype/android/widget/ViewSize;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/swype/android/widget/SwypeView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/swype/android/widget/SwypeView;->getPaddingRight()I

    move-result v3

    add-int v1, v2, v3

    .line 208
    .local v1, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    add-int/lit8 v3, v1, 0xa

    if-ge v2, v3, :cond_27

    .line 209
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 211
    :cond_27
    invoke-virtual {v0}, Lcom/swype/android/widget/ViewSize;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/swype/android/widget/SwypeView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/swype/android/widget/SwypeView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/swype/android/widget/SwypeView;->setMeasuredDimension(II)V

    .line 213
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x0

    .line 235
    sget-boolean v0, Lcom/swype/android/inputmethod/ConfigSetting;->MULTI_TOUCH_SUPPORT:Z

    if-eqz v0, :cond_d

    .line 236
    iget v0, p0, Lcom/swype/android/widget/SwypeView;->windowId:I

    invoke-static {p1, p0, v0}, Lcom/swype/android/compat/MultitouchHandler;->handleMT(Landroid/view/MotionEvent;Lcom/swype/android/widget/MultitouchEventReceiver;I)V

    .line 259
    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0

    .line 242
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 243
    if-ne v7, v1, :cond_34

    .line 244
    invoke-static {v1}, Lcom/swype/android/widget/TouchEventType;->fromMotionEvent(I)Lcom/swype/android/widget/TouchEventType;

    move-result-object v1

    .line 245
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v8

    move v9, v4

    :goto_1c
    if-ge v9, v8, :cond_34

    .line 246
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v0

    .line 247
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v3

    .line 248
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v5

    .line 249
    float-to-int v2, v0

    float-to-int v3, v3

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/swype/android/widget/SwypeView;->onMultitouchEvent(Lcom/swype/android/widget/TouchEventType;IIIJ)V

    .line 245
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1c

    .line 252
    :cond_34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 254
    invoke-static {v7}, Lcom/swype/android/widget/TouchEventType;->fromMotionEvent(I)Lcom/swype/android/widget/TouchEventType;

    move-result-object v1

    .line 255
    if-eqz v1, :cond_b

    .line 256
    float-to-int v2, v0

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/swype/android/widget/SwypeView;->onMultitouchEvent(Lcom/swype/android/widget/TouchEventType;IIIJ)V

    goto :goto_b
.end method

.method public paintBufferUpdated(Landroid/graphics/Rect;)V
    .registers 2
    .parameter "rect"

    .prologue
    .line 724
    invoke-virtual {p0}, Lcom/swype/android/widget/SwypeView;->postInvalidate()V

    .line 726
    return-void
.end method

.method public resizeCanvas()V
    .registers 5

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/swype/android/widget/SwypeView;->getOffScreenBitmapSize()Lcom/swype/android/widget/ViewSize;

    move-result-object v0

    .line 357
    .local v0, size:Lcom/swype/android/widget/ViewSize;
    if-eqz v0, :cond_24

    .line 358
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    iput-object v1, p0, Lcom/swype/android/widget/SwypeView;->offScreenCanvas:Landroid/graphics/Canvas;

    .line 359
    invoke-virtual {v0}, Lcom/swype/android/widget/ViewSize;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/swype/android/widget/ViewSize;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/swype/android/widget/SwypeView;->offScreenBitmap:Landroid/graphics/Bitmap;

    .line 360
    iget-object v1, p0, Lcom/swype/android/widget/SwypeView;->offScreenCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/swype/android/widget/SwypeView;->offScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 362
    :cond_24
    invoke-virtual {p0}, Lcom/swype/android/widget/SwypeView;->requestLayout()V

    .line 364
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/swype/android/widget/SwypeView;->isCanvasDirty:Z

    .line 365
    return-void
.end method

.method protected setFontSize(I)V
    .registers 3
    .parameter "resId"

    .prologue
    .line 680
    invoke-virtual {p0}, Lcom/swype/android/widget/SwypeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/swype/android/widget/SwypeView;->defaultTextSize:F

    .line 681
    return-void
.end method

.method protected setFontSizeBig(I)V
    .registers 3
    .parameter "resId"

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/swype/android/widget/SwypeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/swype/android/widget/SwypeView;->bigTextSize:F

    .line 690
    return-void
.end method

.method protected setTextStyle(IFLjava/lang/String;II)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 306
    packed-switch p5, :pswitch_data_78

    .line 314
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 319
    :goto_5
    iget-object v1, p0, Lcom/swype/android/widget/SwypeView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 320
    iget-object v0, p0, Lcom/swype/android/widget/SwypeView;->textPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    or-int/2addr v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 323
    const/high16 v0, 0x3f80

    .line 324
    iget-boolean v1, p0, Lcom/swype/android/widget/SwypeView;->useGiantFonts:Z

    if-eqz v1, :cond_1a

    .line 325
    const/high16 v0, 0x3fc0

    .line 329
    :cond_1a
    iget-object v1, p0, Lcom/swype/android/widget/SwypeView;->app:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v1}, Lcom/swype/android/inputmethod/SwypeApplication;->isForcingNonBoldFont()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 330
    if-eqz p3, :cond_76

    const-string v1, "DroidSans-Bold"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 331
    const-string v1, "DroidSans"

    .line 335
    :goto_2e
    iget-object v2, p0, Lcom/swype/android/widget/SwypeView;->textPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v1, p1}, Lcom/swype/android/widget/SwypeView;->getTypeface(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 336
    if-eqz v1, :cond_6d

    iget-object v2, p0, Lcom/swype/android/widget/SwypeView;->app:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v2}, Lcom/swype/android/inputmethod/SwypeApplication;->isForcingNonBoldFont()Z

    move-result v2

    if-nez v2, :cond_6d

    iget-object v2, p0, Lcom/swype/android/widget/SwypeView;->app:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v2}, Lcom/swype/android/inputmethod/SwypeApplication;->isApplyingFakeBoldFont()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bold"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6d

    const/4 v1, 0x1

    .line 342
    :goto_56
    iget-object v2, p0, Lcom/swype/android/widget/SwypeView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 344
    const/4 v1, 0x2

    if-ne p1, v1, :cond_6f

    .line 345
    iget-object v1, p0, Lcom/swype/android/widget/SwypeView;->textPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/swype/android/widget/SwypeView;->bigTextSize:F

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 349
    :goto_66
    return-void

    .line 308
    :pswitch_67
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    goto :goto_5

    .line 311
    :pswitch_6a
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    goto :goto_5

    .line 336
    :cond_6d
    const/4 v1, 0x0

    goto :goto_56

    .line 347
    :cond_6f
    iget-object v1, p0, Lcom/swype/android/widget/SwypeView;->textPaint:Landroid/graphics/Paint;

    mul-float/2addr v0, p2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_66

    :cond_76
    move-object v1, p3

    goto :goto_2e

    .line 306
    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_67
    .end packed-switch
.end method
