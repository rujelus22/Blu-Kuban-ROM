.class Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;
.super Landroid/view/ViewGroup;
.source "EventDetailsCardLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/EventDetailsCardLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContainerView"
.end annotation


# instance fields
.field private mDividerLeft:I

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mDividerTop:I

.field private mDrawDivider:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 38
    .local v0, resources:Landroid/content/res/Resources;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;->mDividerPaint:Landroid/graphics/Paint;

    .line 39
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;->mDividerPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a013e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;->mDividerPaint:Landroid/graphics/Paint;

    const v2, 0x7f0d0105

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 44
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;->setWillNotDraw(Z)V

    .line 45
    return-void
.end method


# virtual methods
.method public clearDivider()V
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;->mDrawDivider:Z

    .line 59
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter "canvas"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;->mDrawDivider:Z

    if-eqz v0, :cond_1d

    .line 64
    iget v0, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;->mDividerLeft:I

    int-to-float v1, v0

    iget v0, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;->mDividerTop:I

    int-to-float v2, v0

    iget v0, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;->mDividerLeft:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;->getMeasuredHeight()I

    move-result v0

    invoke-static {}, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->access$000()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;->mDividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 69
    :cond_1d
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 70
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 49
    return-void
.end method

.method public setDivider(II)V
    .registers 4
    .parameter "left"
    .parameter "top"

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;->mDrawDivider:Z

    .line 53
    iput p1, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;->mDividerLeft:I

    .line 54
    iput p2, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;->mDividerTop:I

    .line 55
    return-void
.end method
