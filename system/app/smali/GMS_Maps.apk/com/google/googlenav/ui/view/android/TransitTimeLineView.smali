.class public Lcom/google/googlenav/ui/view/android/TransitTimeLineView;
.super Landroid/view/View;


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Rect;

.field private c:Lbb/C;

.field private d:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitTimeLineView;->a:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitTimeLineView;->b:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/TransitTimeLineView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitTimeLineView;->a:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitTimeLineView;->b:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/TransitTimeLineView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/TransitTimeLineView;->setMinimumHeight(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/TransitTimeLineView;->d:F

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 14

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitTimeLineView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitTimeLineView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/TransitTimeLineView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x106

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitTimeLineView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitTimeLineView;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/TransitTimeLineView;->getHeight()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitTimeLineView;->c:Lbb/C;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/TransitTimeLineView;->getWidth()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lbb/C;->a(FI)J

    move-result-wide v0

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/TransitTimeLineView;->c:Lbb/C;

    invoke-virtual {v3, v0, v1}, Lbb/C;->b(J)J

    move-result-wide v0

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/TransitTimeLineView;->c:Lbb/C;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/TransitTimeLineView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/TransitTimeLineView;->getWidth()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lbb/C;->a(FI)J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/googlenav/ui/view/android/TransitTimeLineView;->c:Lbb/C;

    invoke-virtual {v5, v3, v4}, Lbb/C;->a(J)J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/googlenav/ui/view/android/TransitTimeLineView;->c:Lbb/C;

    invoke-virtual {v5}, Lbb/C;->a()J

    move-result-wide v5

    :goto_56
    cmp-long v7, v0, v3

    if-gtz v7, :cond_99

    iget-object v7, p0, Lcom/google/googlenav/ui/view/android/TransitTimeLineView;->c:Lbb/C;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/TransitTimeLineView;->getWidth()I

    move-result v8

    invoke-virtual {v7, v0, v1, v8}, Lbb/C;->a(JI)F

    move-result v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {v8}, Lcom/google/googlenav/ui/bq;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/google/googlenav/ui/view/android/TransitTimeLineView;->a:Landroid/graphics/Paint;

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    sub-float v9, v7, v9

    div-int/lit8 v10, v2, 0x2

    int-to-float v10, v10

    iget-object v11, p0, Lcom/google/googlenav/ui/view/android/TransitTimeLineView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v8, p0, Lcom/google/googlenav/ui/view/android/TransitTimeLineView;->b:Landroid/graphics/Rect;

    float-to-int v9, v7

    add-int/lit8 v10, v2, -0xa

    iget v11, p0, Lcom/google/googlenav/ui/view/android/TransitTimeLineView;->d:F

    add-float/2addr v7, v11

    float-to-int v7, v7

    add-int/lit8 v11, v2, 0xa

    invoke-virtual {v8, v9, v10, v7, v11}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v7, p0, Lcom/google/googlenav/ui/view/android/TransitTimeLineView;->b:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/google/googlenav/ui/view/android/TransitTimeLineView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-long/2addr v0, v5

    goto :goto_56

    :cond_99
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitTimeLineView;->b:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/TransitTimeLineView;->getScrollX()I

    move-result v1

    iget v3, p0, Lcom/google/googlenav/ui/view/android/TransitTimeLineView;->d:F

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v2, v3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/TransitTimeLineView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/TransitTimeLineView;->getScrollX()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/google/googlenav/ui/view/android/TransitTimeLineView;->d:F

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/TransitTimeLineView;->b:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/TransitTimeLineView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method
