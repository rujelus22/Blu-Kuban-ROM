.class public Lcom/google/googlenav/ui/view/android/g;
.super Ljava/lang/Object;

# interfaces
.implements Lbb/d;


# instance fields
.field protected final a:Landroid/view/View;

.field protected final b:Landroid/view/ViewGroup;

.field private final c:Z

.field private final d:[I


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/g;->d:[I

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/g;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/g;->b:Landroid/view/ViewGroup;

    iput-boolean p3, p0, Lcom/google/googlenav/ui/view/android/g;->c:Z

    if-eqz p3, :cond_13

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_13
    return-void
.end method


# virtual methods
.method public a(IIII)V
    .registers 7

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/g;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_10

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_10
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/g;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public a(Landroid/graphics/Point;Lcom/google/googlenav/ui/C;)V
    .registers 3

    return-void
.end method

.method public a(Lbb/c;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/g;->a:Landroid/view/View;

    invoke-static {v0, p1, p0}, Lcom/google/googlenav/ui/android/ao;->a(Landroid/view/View;Lbb/c;Lbb/E;)Lcom/google/googlenav/ui/android/ao;

    return-void
.end method

.method public a(Z)V
    .registers 2

    return-void
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/g;->c:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/g;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/g;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/g;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/g;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/g;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12
.end method

.method public c()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/g;->c:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/g;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/g;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/g;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b
.end method

.method public d()[I
    .registers 4

    const/high16 v2, -0x8000

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/g;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/g;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/g;->a:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/g;->d:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/g;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/g;->d:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/g;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/g;->d:[I

    return-object v0
.end method

.method public e()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/g;->a:Landroid/view/View;

    return-object v0
.end method
