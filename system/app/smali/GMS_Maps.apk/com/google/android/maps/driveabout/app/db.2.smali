.class public Lcom/google/android/maps/driveabout/app/db;
.super Landroid/app/Dialog;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Landroid/widget/ListAdapter;

.field private d:Lcom/google/android/maps/driveabout/app/dd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/ListAdapter;)V
    .registers 7

    const v0, 0x7f0d000a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/maps/driveabout/app/db;->a:I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/db;->b:I

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/db;->c:Landroid/widget/ListAdapter;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/app/dd;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/db;->d:Lcom/google/android/maps/driveabout/app/dd;

    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/db;->dismiss()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/db;->d:Lcom/google/android/maps/driveabout/app/dd;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/db;->d:Lcom/google/android/maps/driveabout/app/dd;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/app/dd;->a(Ljava/lang/Object;)V

    :cond_c
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v3, -0x2

    const/4 v1, 0x0

    const v0, 0x7f03003c

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/db;->setContentView(I)V

    const v0, 0x7f0f00fd

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/db;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v2, Lcom/google/android/maps/driveabout/app/dc;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/dc;-><init>(Lcom/google/android/maps/driveabout/app/db;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/db;->c:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/db;->c:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_22
    const v0, 0x7f0f00fb

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/db;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2, v1, v1, v0, v3}, Landroid/view/View;->layout(IIII)V

    const v0, 0x7f0f008e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_af

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    :goto_4b
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/db;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v2, p0, Lcom/google/android/maps/driveabout/app/db;->a:I

    sub-int v0, v2, v0

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, p0, Lcom/google/android/maps/driveabout/app/db;->b:I

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-eqz v3, :cond_9f

    iget v2, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v2, v5

    if-le v2, v0, :cond_9f

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v5, v6

    sub-int v0, v5, v0

    add-int/2addr v0, v2

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v3, v0, v2, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    :cond_9f
    const/16 v0, 0x33

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x20100

    or-int/2addr v0, v2

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v1, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_af
    move v0, v1

    goto :goto_4b
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

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/db;->cancel()V

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

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/db;->cancel()V

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
