.class public Lcom/google/googlenav/ui/view/android/M;
.super Lcom/google/googlenav/ui/view/d;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/ui/android/AndroidBubbleView;

.field private final b:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/googlenav/ui/android/AndroidBubbleView;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/ui/view/d;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Z)V

    .line 22
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/M;->b:Landroid/graphics/Point;

    .line 32
    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/M;->a:Lcom/google/googlenav/ui/android/AndroidBubbleView;

    .line 33
    return-void
.end method


# virtual methods
.method public a(IIII)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/M;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 57
    iput p1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 58
    iput p2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 59
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/M;->a:Lcom/google/googlenav/ui/android/AndroidBubbleView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/AndroidBubbleView;->a()V

    .line 60
    return-void
.end method

.method public a(Landroid/graphics/Point;Lcom/google/googlenav/ui/u;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/M;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 42
    iget v0, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/M;->d()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 43
    iget v1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/M;->d()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 45
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/M;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-ne v2, v0, :cond_2d

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/M;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ne v2, v1, :cond_2d

    .line 51
    :goto_2c
    return-void

    .line 48
    :cond_2d
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/M;->a:Lcom/google/googlenav/ui/android/AndroidBubbleView;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/android/AndroidBubbleView;->invalidate()V

    .line 49
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/M;->b:Landroid/graphics/Point;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 50
    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/google/googlenav/ui/view/android/M;->a(IIII)V

    goto :goto_2c
.end method
