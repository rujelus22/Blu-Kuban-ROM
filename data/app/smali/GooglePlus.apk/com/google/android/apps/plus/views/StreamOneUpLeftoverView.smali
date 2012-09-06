.class public Lcom/google/android/apps/plus/views/StreamOneUpLeftoverView;
.super Landroid/view/View;
.source "StreamOneUpLeftoverView.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/Recyclable;


# static fields
.field private static sBackgroundPaint:Landroid/graphics/Paint;


# instance fields
.field private mFixedHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/StreamOneUpLeftoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/plus/views/StreamOneUpLeftoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpLeftoverView;->sBackgroundPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_29

    .line 40
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpLeftoverView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 43
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/StreamOneUpLeftoverView;->sBackgroundPaint:Landroid/graphics/Paint;

    .line 44
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpLeftoverView;->sBackgroundPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a011a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    sget-object v1, Lcom/google/android/apps/plus/views/StreamOneUpLeftoverView;->sBackgroundPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_29
    return-void
.end method

.method private clearLayoutState()V
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpLeftoverView;->mFixedHeight:I

    .line 73
    return-void
.end method


# virtual methods
.method public bind(I)V
    .registers 2
    .parameter "fixedHeight"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/StreamOneUpLeftoverView;->clearLayoutState()V

    .line 78
    if-gez p1, :cond_6

    const/4 p1, 0x0

    .end local p1
    :cond_6
    iput p1, p0, Lcom/google/android/apps/plus/views/StreamOneUpLeftoverView;->mFixedHeight:I

    .line 80
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpLeftoverView;->invalidate()V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpLeftoverView;->requestLayout()V

    .line 82
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 59
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpLeftoverView;->getWidth()I

    move-result v7

    .line 60
    .local v7, width:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpLeftoverView;->getHeight()I

    move-result v6

    .line 62
    .local v6, height:I
    int-to-float v3, v7

    int-to-float v4, v6

    sget-object v5, Lcom/google/android/apps/plus/views/StreamOneUpLeftoverView;->sBackgroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 63
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 52
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamOneUpLeftoverView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpLeftoverView;->mFixedHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/views/StreamOneUpLeftoverView;->setMeasuredDimension(II)V

    .line 53
    return-void
.end method

.method public onRecycle()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/StreamOneUpLeftoverView;->clearLayoutState()V

    .line 68
    return-void
.end method
