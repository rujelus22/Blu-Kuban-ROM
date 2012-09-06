.class public Lcom/google/android/apps/googlevoice/SingleLineView;
.super Landroid/view/View;
.source "SingleLineView.java"


# instance fields
.field private height:I

.field private lastHeightMeasureSpec:I

.field private lastWidthMeasureSpec:I

.field private metrics:Landroid/util/DisplayMetrics;

.field private paint:Landroid/text/TextPaint;

.field private text:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 47
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->paint:Landroid/text/TextPaint;

    .line 31
    iput-object v3, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->text:Ljava/lang/String;

    .line 32
    iput-object v3, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->metrics:Landroid/util/DisplayMetrics;

    .line 33
    iput v2, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->lastWidthMeasureSpec:I

    .line 34
    iput v2, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->lastHeightMeasureSpec:I

    .line 35
    iput v1, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->width:I

    .line 36
    iput v1, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->height:I

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->paint:Landroid/text/TextPaint;

    .line 31
    iput-object v3, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->text:Ljava/lang/String;

    .line 32
    iput-object v3, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->metrics:Landroid/util/DisplayMetrics;

    .line 33
    iput v2, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->lastWidthMeasureSpec:I

    .line 34
    iput v2, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->lastHeightMeasureSpec:I

    .line 35
    iput v1, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->width:I

    .line 36
    iput v1, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->height:I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->paint:Landroid/text/TextPaint;

    .line 31
    iput-object v3, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->text:Ljava/lang/String;

    .line 32
    iput-object v3, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->metrics:Landroid/util/DisplayMetrics;

    .line 33
    iput v2, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->lastWidthMeasureSpec:I

    .line 34
    iput v2, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->lastHeightMeasureSpec:I

    .line 35
    iput v1, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->width:I

    .line 36
    iput v1, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->height:I

    .line 40
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->text:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9
    .parameter "canvas"

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/SingleLineView;->setDrawingCacheEnabled(Z)V

    .line 62
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 65
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->text:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 72
    :goto_b
    return-void

    .line 69
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->paint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->width:I

    int-to-float v3, v3

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 70
    .local v1, toDraw:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/SingleLineView;->getPaddingLeft()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/SingleLineView;->getPaddingTop()I

    move-result v0

    iget v5, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->height:I

    add-int/2addr v0, v5

    int-to-float v0, v0

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->paint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float v5, v0, v5

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->paint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_b
.end method

.method protected onMeasure(II)V
    .registers 15
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v11, 0x4000

    const/high16 v10, -0x8000

    const/4 v9, 0x0

    .line 77
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->text:Ljava/lang/String;

    if-nez v6, :cond_d

    .line 78
    invoke-virtual {p0, v9, v9}, Lcom/google/android/apps/googlevoice/SingleLineView;->setMeasuredDimension(II)V

    .line 132
    :goto_c
    return-void

    .line 82
    :cond_d
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->metrics:Landroid/util/DisplayMetrics;

    if-nez v6, :cond_2d

    .line 83
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v6, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->metrics:Landroid/util/DisplayMetrics;

    .line 84
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/SingleLineView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 86
    .local v2, mgr:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v6, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 89
    .end local v2           #mgr:Landroid/view/WindowManager;
    :cond_2d
    iget v6, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->lastWidthMeasureSpec:I

    if-ne p1, v6, :cond_35

    iget v6, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->lastHeightMeasureSpec:I

    if-eq p2, v6, :cond_ea

    .line 90
    :cond_35
    iput p1, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->lastWidthMeasureSpec:I

    .line 91
    iput p2, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->lastHeightMeasureSpec:I

    .line 93
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->paint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/SingleLineView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x106000b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setColor(I)V

    .line 94
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->paint:Landroid/text/TextPaint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 95
    new-instance v5, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/SingleLineView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x1030042

    invoke-direct {v5, v6, v7}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 97
    .local v5, tas:Landroid/text/style/TextAppearanceSpan;
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->paint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 99
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->paint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 100
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->paint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 103
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    if-eqz v6, :cond_f3

    .line 104
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 108
    .local v1, maxWidth:I
    :goto_84
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    if-eqz v6, :cond_f7

    .line 109
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 114
    .local v0, maxHeight:I
    :goto_8e
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->paint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->getTextSize()F

    move-result v3

    .line 115
    .local v3, requestedHeight:F
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->paint:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->text:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->text:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v7, v9, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result v4

    .line 117
    .local v4, requestedWidth:F
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/SingleLineView;->getPaddingLeft()I

    move-result v6

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/SingleLineView;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->width:I

    .line 118
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/SingleLineView;->getPaddingTop()I

    move-result v6

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/SingleLineView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->height:I

    .line 120
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    if-eq v6, v11, :cond_d6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    if-ne v6, v10, :cond_d8

    iget v6, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->width:I

    if-le v6, v1, :cond_d8

    .line 123
    :cond_d6
    iput v1, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->width:I

    .line 125
    :cond_d8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    if-eq v6, v11, :cond_e8

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    if-ne v6, v10, :cond_ea

    iget v6, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->height:I

    if-le v6, v0, :cond_ea

    .line 128
    :cond_e8
    iput v0, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->height:I

    .line 131
    .end local v0           #maxHeight:I
    .end local v1           #maxWidth:I
    .end local v3           #requestedHeight:F
    .end local v4           #requestedWidth:F
    .end local v5           #tas:Landroid/text/style/TextAppearanceSpan;
    :cond_ea
    iget v6, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->width:I

    iget v7, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->height:I

    invoke-virtual {p0, v6, v7}, Lcom/google/android/apps/googlevoice/SingleLineView;->setMeasuredDimension(II)V

    goto/16 :goto_c

    .line 106
    .restart local v5       #tas:Landroid/text/style/TextAppearanceSpan;
    :cond_f3
    const v1, 0x7fffffff

    .restart local v1       #maxWidth:I
    goto :goto_84

    .line 111
    :cond_f7
    const v0, 0x7fffffff

    .restart local v0       #maxHeight:I
    goto :goto_8e
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/SingleLineView;->text:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/SingleLineView;->requestLayout()V

    .line 53
    return-void
.end method
