.class public Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;
.super Lcom/google/android/apps/plus/views/StreamOneUpBaseView;
.source "StreamOneUpCommentCountView.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/Recyclable;


# static fields
.field private static sBackgroundPaint:Landroid/graphics/Paint;

.field private static sCountMarginLeft:I

.field private static sCountPaint:Landroid/text/TextPaint;

.field private static sDividerPaint:Landroid/graphics/Paint;

.field private static sDividerWidth:I

.field private static sMarginLeft:I

.field private static sMarginRight:I


# instance fields
.field private mCount:Ljava/lang/String;

.field private mCountLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

.field private mDivider:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const v3, 0x7f0d01ff

    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/StreamOneUpBaseView;-><init>(Landroid/content/Context;)V

    .line 54
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sBackgroundPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_99

    .line 55
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 58
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0d01d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sMarginLeft:I

    .line 59
    const v1, 0x7f0d01d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sMarginRight:I

    .line 60
    const v1, 0x7f0d01e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sCountMarginLeft:I

    .line 62
    const v1, 0x7f0d01e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sDividerWidth:I

    .line 65
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sCountPaint:Landroid/text/TextPaint;

    .line 66
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sCountPaint:Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 67
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sCountPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a012b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 68
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 70
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sCountPaint:Landroid/text/TextPaint;

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 73
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sBackgroundPaint:Landroid/graphics/Paint;

    .line 74
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sBackgroundPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a011a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sDividerPaint:Landroid/graphics/Paint;

    .line 78
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sDividerPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a012c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sDividerPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sDividerPaint:Landroid/graphics/Paint;

    sget v2, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sDividerWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 43
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v3, 0x7f0d01ff

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/StreamOneUpBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sBackgroundPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_99

    .line 55
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 58
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0d01d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sMarginLeft:I

    .line 59
    const v1, 0x7f0d01d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sMarginRight:I

    .line 60
    const v1, 0x7f0d01e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sCountMarginLeft:I

    .line 62
    const v1, 0x7f0d01e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sDividerWidth:I

    .line 65
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sCountPaint:Landroid/text/TextPaint;

    .line 66
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sCountPaint:Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 67
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sCountPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a012b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 68
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 70
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sCountPaint:Landroid/text/TextPaint;

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 73
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sBackgroundPaint:Landroid/graphics/Paint;

    .line 74
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sBackgroundPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a011a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sDividerPaint:Landroid/graphics/Paint;

    .line 78
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sDividerPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a012c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sDividerPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sDividerPaint:Landroid/graphics/Paint;

    sget v2, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sDividerWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 47
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v3, 0x7f0d01ff

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/StreamOneUpBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sBackgroundPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_99

    .line 55
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 58
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0d01d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sMarginLeft:I

    .line 59
    const v1, 0x7f0d01d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sMarginRight:I

    .line 60
    const v1, 0x7f0d01e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sCountMarginLeft:I

    .line 62
    const v1, 0x7f0d01e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sDividerWidth:I

    .line 65
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sCountPaint:Landroid/text/TextPaint;

    .line 66
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sCountPaint:Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 67
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sCountPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a012b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 68
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 70
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sCountPaint:Landroid/text/TextPaint;

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 73
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sBackgroundPaint:Landroid/graphics/Paint;

    .line 74
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sBackgroundPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a011a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sDividerPaint:Landroid/graphics/Paint;

    .line 78
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sDividerPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a012c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sDividerPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sDividerPaint:Landroid/graphics/Paint;

    sget v2, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sDividerWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 51
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_99
    return-void
.end method

.method private clearLayoutState()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->mCountLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    .line 176
    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->mCount:Ljava/lang/String;

    .line 177
    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->mDivider:Landroid/graphics/RectF;

    .line 178
    return-void
.end method

.method private drawCommentCount(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter "canvas"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->mCountLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    if-nez v0, :cond_5

    .line 163
    :goto_4
    return-void

    .line 155
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->mCountLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->getLeft()I

    move-result v6

    .line 156
    .local v6, drawX:I
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->mCountLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->getTop()I

    move-result v7

    .line 157
    .local v7, drawY:I
    int-to-float v0, v6

    int-to-float v1, v7

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 158
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->mCountLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 159
    neg-int v0, v6

    int-to-float v0, v0

    neg-int v1, v7

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 161
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->mDivider:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->mDivider:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->mDivider:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->mDivider:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sget-object v5, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sDividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_4
.end method

.method private measureAndLayoutCommentCount(III)I
    .registers 15
    .parameter "xStart"
    .parameter "yStart"
    .parameter "contentWidth"

    .prologue
    .line 125
    move v8, p1

    .line 126
    .local v8, drawX:I
    move v9, p2

    .line 128
    .local v9, drawY:I
    sget-object v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sCountPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->mCount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v3, v0

    .line 129
    .local v3, countWidth:I
    new-instance v0, Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->mCount:Ljava/lang/String;

    sget-object v2, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sCountPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->mCountLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    .line 131
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->mCountLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v0, v8, v9}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->setPosition(II)V

    .line 133
    sget-object v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v10

    .line 134
    .local v10, fm:Landroid/graphics/Paint$FontMetricsInt;
    sget v0, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sCountMarginLeft:I

    add-int/2addr v0, v3

    add-int/2addr v8, v0

    .line 136
    iget v0, v10, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v1, v10, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, v1

    sget v1, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sDividerWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v9, v0

    .line 138
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, v8

    int-to-float v2, v9

    add-int v4, p1, p3

    sget v5, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sCountMarginLeft:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v9

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->mDivider:Landroid/graphics/RectF;

    .line 140
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->mCountLayout:Lcom/google/android/apps/plus/views/PositionedStaticLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->getHeight()I

    move-result v0

    add-int/2addr v0, p2

    return v0
.end method


# virtual methods
.method public bind(Landroid/database/Cursor;)V
    .registers 9
    .parameter "cursor"

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 184
    .local v2, res:Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->clearLayoutState()V

    .line 186
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 187
    .local v0, count:I
    const v3, 0x7f0e002e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, countString:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->mCount:Ljava/lang/String;

    .line 190
    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->mCount:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 192
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->invalidate()V

    .line 193
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->requestLayout()V

    .line 194
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/StreamOneUpBaseView;->onDraw(Landroid/graphics/Canvas;)V

    .line 107
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->getWidth()I

    move-result v7

    .line 108
    .local v7, width:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->getHeight()I

    move-result v6

    .line 110
    .local v6, height:I
    int-to-float v3, v7

    int-to-float v4, v6

    sget-object v5, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 112
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->drawCommentCount(Landroid/graphics/Canvas;)V

    .line 113
    return-void
.end method

.method protected onMeasure(II)V
    .registers 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/views/StreamOneUpBaseView;->onMeasure(II)V

    .line 88
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->getPaddingLeft()I

    move-result v4

    sget v5, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sMarginLeft:I

    add-int v2, v4, v5

    .line 89
    .local v2, xStart:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->getPaddingTop()I

    move-result v3

    .line 91
    .local v3, yStart:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->getMeasuredWidth()I

    move-result v1

    .line 92
    .local v1, width:I
    sub-int v4, v1, v2

    sget v5, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->sMarginRight:I

    sub-int v0, v4, v5

    .line 94
    .local v0, contentWidth:I
    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->measureAndLayoutCommentCount(III)I

    move-result v3

    .line 96
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v1, v4}, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->setMeasuredDimension(II)V

    .line 98
    iget-object v4, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->mOnMeasuredListener:Lcom/google/android/apps/plus/views/StreamOneUpBaseView$OnMeasuredListener;

    if-eqz v4, :cond_2e

    .line 99
    iget-object v4, p0, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->mOnMeasuredListener:Lcom/google/android/apps/plus/views/StreamOneUpBaseView$OnMeasuredListener;

    invoke-interface {v4, p0}, Lcom/google/android/apps/plus/views/StreamOneUpBaseView$OnMeasuredListener;->onMeasured(Landroid/view/View;)V

    .line 101
    :cond_2e
    return-void
.end method

.method public onRecycle()V
    .registers 1

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/StreamOneUpCommentCountView;->clearLayoutState()V

    .line 168
    return-void
.end method
