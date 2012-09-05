.class public Lcom/google/googlenav/ui/view/dialog/a;
.super Lcom/google/googlenav/ui/view/android/ap;


# instance fields
.field protected a:I

.field protected b:I

.field protected c:Landroid/view/View;

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;II)V
    .registers 5

    invoke-direct {p0, p4}, Lcom/google/googlenav/ui/view/android/ap;-><init>(I)V

    iput p3, p0, Lcom/google/googlenav/ui/view/dialog/a;->d:I

    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/view/dialog/a;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public L_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected N_()V
    .registers 1

    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/a;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/a;->h()V

    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/a;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/ui/view/dialog/a;->d:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected g()V
    .registers 6

    const/4 v3, 0x0

    const/4 v1, -0x2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->h:Landroid/view/View;

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/a;->h:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/a;->h:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    const v0, 0x7f0f008e

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/a;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/a;->h:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/a;->h:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v3, p0, Lcom/google/googlenav/ui/view/dialog/a;->a:I

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v3, v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->b:I

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v0, 0x33

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x20100

    or-int/2addr v0, v3

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public h()V
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/a;->c:Landroid/view/View;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/a;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v1, v0, v2

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/a;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/googlenav/ui/view/dialog/a;->a:I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/a;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/ui/view/dialog/a;->b:I

    :goto_26
    return-void

    :cond_27
    iput v2, p0, Lcom/google/googlenav/ui/view/dialog/a;->a:I

    iput v2, p0, Lcom/google/googlenav/ui/view/dialog/a;->b:I

    goto :goto_26
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/ap;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return v0

    :cond_7
    const/16 v0, 0x13

    if-ne p1, v0, :cond_10

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/a;->cancel()V

    const/4 v0, 0x1

    goto :goto_6

    :cond_10
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/a;->cancel()V

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
