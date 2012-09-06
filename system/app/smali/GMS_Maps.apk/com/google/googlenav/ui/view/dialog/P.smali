.class public Lcom/google/googlenav/ui/view/dialog/p;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field private final a:I

.field protected b:I

.field protected c:I

.field protected d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;II)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p4}, Lcom/google/googlenav/ui/view/android/V;-><init>(I)V

    .line 52
    iput p3, p0, Lcom/google/googlenav/ui/view/dialog/p;->a:I

    .line 53
    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/view/dialog/p;->a(Landroid/view/View;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected I_()V
    .registers 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/p;->l()V

    .line 111
    return-void
.end method

.method protected N_()V
    .registers 1

    .prologue
    .line 115
    return-void
.end method

.method public O_()Z
    .registers 2

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/p;->d:Landroid/view/View;

    .line 122
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/p;->i()V

    .line 123
    return-void
.end method

.method protected a(Landroid/view/WindowManager$LayoutParams;)V
    .registers 5
    .parameter

    .prologue
    .line 98
    const v0, 0x7f100126

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/p;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 99
    iget v1, p0, Lcom/google/googlenav/ui/view/dialog/p;->b:I

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 100
    iget v0, p0, Lcom/google/googlenav/ui/view/dialog/p;->c:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 101
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 4

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/p;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/ui/view/dialog/p;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .registers 4

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/p;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/p;->d:Landroid/view/View;

    if-eqz v1, :cond_2f

    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 64
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/p;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 65
    const/4 v1, 0x0

    aget v1, v0, v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/p;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/googlenav/ui/view/dialog/p;->b:I

    .line 66
    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/p;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/ui/view/dialog/p;->c:I

    .line 71
    :goto_2e
    return-void

    .line 68
    :cond_2f
    const v1, 0x7f0b005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/view/dialog/p;->b:I

    .line 69
    const v1, 0x7f0b004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/dialog/p;->c:I

    goto :goto_2e
.end method

.method public l()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x2

    .line 77
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/p;->i:Landroid/view/View;

    if-eqz v0, :cond_46

    .line 78
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/p;->i:Landroid/view/View;

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 80
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/p;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/p;->i:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/p;->i:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 82
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/p;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 85
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/p;->i:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 86
    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/p;->i:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 87
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/dialog/p;->a(Landroid/view/WindowManager$LayoutParams;)V

    .line 88
    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 91
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x20100

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 95
    :cond_46
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 136
    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/V;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 137
    if-eqz v0, :cond_7

    .line 144
    :goto_6
    return v0

    .line 140
    :cond_7
    const/16 v0, 0x13

    if-ne p1, v0, :cond_10

    .line 141
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/p;->cancel()V

    .line 142
    const/4 v0, 0x1

    goto :goto_6

    .line 144
    :cond_10
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_b

    .line 128
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/p;->cancel()V

    .line 129
    const/4 v0, 0x1

    .line 131
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
