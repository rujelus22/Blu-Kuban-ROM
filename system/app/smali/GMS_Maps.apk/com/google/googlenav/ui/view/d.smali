.class public Lcom/google/googlenav/ui/view/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/view/J;


# instance fields
.field private final a:Z

.field private final b:[I

.field protected final d:Landroid/view/View;

.field protected final e:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/googlenav/ui/view/d;->b:[I

    .line 35
    iput-object p1, p0, Lcom/google/googlenav/ui/view/d;->d:Landroid/view/View;

    .line 36
    iput-object p2, p0, Lcom/google/googlenav/ui/view/d;->e:Landroid/view/ViewGroup;

    .line 37
    iput-boolean p3, p0, Lcom/google/googlenav/ui/view/d;->a:Z

    .line 39
    if-eqz p3, :cond_13

    .line 40
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 42
    :cond_13
    return-void
.end method


# virtual methods
.method public a(IIII)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/googlenav/ui/view/d;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 84
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_10

    .line 85
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 86
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 87
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 89
    :cond_10
    iget-object v0, p0, Lcom/google/googlenav/ui/view/d;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 90
    return-void
.end method

.method public a(Landroid/graphics/Point;Lcom/google/googlenav/ui/u;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 50
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/view/c;)V
    .registers 3
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/googlenav/ui/view/d;->d:Landroid/view/View;

    invoke-static {v0, p1, p0}, Lcom/google/googlenav/ui/android/aD;->a(Landroid/view/View;Lcom/google/googlenav/ui/view/c;Lcom/google/googlenav/ui/view/J;)Lcom/google/googlenav/ui/android/aD;

    .line 94
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 75
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/d;->a:Z

    if-eqz v0, :cond_13

    .line 58
    iget-object v0, p0, Lcom/google/googlenav/ui/view/d;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/d;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 59
    iget-object v0, p0, Lcom/google/googlenav/ui/view/d;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/d;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    :goto_12
    return-void

    .line 61
    :cond_13
    iget-object v0, p0, Lcom/google/googlenav/ui/view/d;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12
.end method

.method public c()V
    .registers 3

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/d;->a:Z

    if-eqz v0, :cond_c

    .line 67
    iget-object v0, p0, Lcom/google/googlenav/ui/view/d;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/d;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 71
    :goto_b
    return-void

    .line 69
    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/ui/view/d;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b
.end method

.method public d()Landroid/view/View;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/googlenav/ui/view/d;->d:Landroid/view/View;

    return-object v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public f()[I
    .registers 4

    .prologue
    const/high16 v2, -0x8000

    .line 98
    iget-object v0, p0, Lcom/google/googlenav/ui/view/d;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 100
    iget-object v1, p0, Lcom/google/googlenav/ui/view/d;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 102
    iget-object v2, p0, Lcom/google/googlenav/ui/view/d;->d:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 103
    iget-object v0, p0, Lcom/google/googlenav/ui/view/d;->b:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/googlenav/ui/view/d;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    aput v2, v0, v1

    .line 104
    iget-object v0, p0, Lcom/google/googlenav/ui/view/d;->b:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/d;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    aput v2, v0, v1

    .line 105
    iget-object v0, p0, Lcom/google/googlenav/ui/view/d;->b:[I

    return-object v0
.end method
