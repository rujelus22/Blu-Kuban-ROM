.class public Lcom/google/googlenav/ui/view/android/bC;
.super Landroid/app/Dialog;


# instance fields
.field private a:I

.field private b:I

.field private final c:Landroid/widget/ListAdapter;

.field private d:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 6

    const v0, 0x7f0d00c0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/view/android/bC;->a(Landroid/view/View;)V

    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/bC;->c:Landroid/widget/ListAdapter;

    iput-object p4, p0, Lcom/google/googlenav/ui/view/android/bC;->d:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [I

    if-eqz p1, :cond_1f

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v1, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/googlenav/ui/view/android/bC;->a:I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/ui/view/android/bC;->b:I

    :goto_1e
    return-void

    :cond_1f
    iput v1, p0, Lcom/google/googlenav/ui/view/android/bC;->a:I

    iput v1, p0, Lcom/google/googlenav/ui/view/android/bC;->b:I

    goto :goto_1e
.end method

.method public a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bC;->d:Landroid/widget/AdapterView$OnItemClickListener;

    const v0, 0x7f0f00fd

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bC;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    if-eqz v0, :cond_12

    if-eqz p1, :cond_12

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_12
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v4, 0x0

    const/4 v3, -0x2

    const v0, 0x7f0300fb

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bC;->setContentView(I)V

    const v0, 0x7f0f00fd

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bC;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bC;->c:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bC;->c:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_1a
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bC;->d:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bC;->d:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_23
    const v1, 0x7f0f02cf

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/bC;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2, v4, v4, v1, v3}, Landroid/view/View;->layout(IIII)V

    const v1, 0x7f0f008e

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bC;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bC;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v6, "window"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v1, p0, Lcom/google/googlenav/ui/view/android/bC;->a:I

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/google/googlenav/ui/view/android/bC;->b:I

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v1, v2

    iget v2, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_9e

    iget v1, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v3, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v2, v3

    iget v3, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_9e
    const/16 v0, 0x33

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x20100

    or-int/2addr v0, v1

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return v0

    :cond_7
    const/16 v0, 0x13

    if-ne p1, v0, :cond_10

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bC;->cancel()V

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

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bC;->cancel()V

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
