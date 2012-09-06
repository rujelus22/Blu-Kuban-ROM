.class public Lcom/google/android/maps/driveabout/app/cP;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Landroid/widget/ListAdapter;

.field private d:Lcom/google/android/maps/driveabout/app/cR;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/ListAdapter;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    const v0, 0x7f0f000a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 53
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 54
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/maps/driveabout/app/cP;->a:I

    .line 55
    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/cP;->b:I

    .line 56
    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/cP;->c:Landroid/widget/ListAdapter;

    .line 57
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/app/cR;)V
    .registers 2
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cP;->d:Lcom/google/android/maps/driveabout/app/cR;

    .line 61
    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/cP;->dismiss()V

    .line 128
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cP;->d:Lcom/google/android/maps/driveabout/app/cR;

    if-eqz v0, :cond_c

    .line 129
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cP;->d:Lcom/google/android/maps/driveabout/app/cR;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/app/cR;->a(Ljava/lang/Object;)V

    .line 131
    :cond_c
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter

    .prologue
    const/4 v3, -0x2

    const/4 v1, 0x0

    .line 65
    const v0, 0x7f040046

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/cP;->setContentView(I)V

    .line 67
    const v0, 0x7f100127

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/cP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 68
    new-instance v2, Lcom/google/android/maps/driveabout/app/cQ;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/cQ;-><init>(Lcom/google/android/maps/driveabout/app/cP;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 80
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/cP;->c:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_22

    .line 81
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/cP;->c:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    :cond_22
    const v0, 0x7f100124

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/cP;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 86
    invoke-virtual {v2, v3, v3}, Landroid/view/View;->measure(II)V

    .line 88
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2, v1, v1, v0, v3}, Landroid/view/View;->layout(IIII)V

    .line 90
    const v0, 0x7f100126

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 92
    if-eqz v3, :cond_af

    .line 93
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 96
    :goto_4b
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/cP;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 98
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 99
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 100
    iget v2, p0, Lcom/google/android/maps/driveabout/app/cP;->a:I

    sub-int v0, v2, v0

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 101
    iget v0, p0, Lcom/google/android/maps/driveabout/app/cP;->b:I

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 105
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 106
    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 107
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 108
    if-eqz v3, :cond_9f

    iget v2, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v2, v5

    if-le v2, v0, :cond_9f

    .line 109
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

    .line 115
    :cond_9f
    const/16 v0, 0x33

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 117
    iget v0, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x20100

    or-int/2addr v0, v2

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 119
    invoke-virtual {v1, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 120
    return-void

    :cond_af
    move v0, v1

    goto :goto_4b
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 144
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 145
    if-eqz v0, :cond_7

    .line 152
    :goto_6
    return v0

    .line 148
    :cond_7
    const/16 v0, 0x13

    if-ne p1, v0, :cond_10

    .line 149
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/cP;->cancel()V

    .line 150
    const/4 v0, 0x1

    goto :goto_6

    .line 152
    :cond_10
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_b

    .line 136
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/cP;->cancel()V

    .line 137
    const/4 v0, 0x1

    .line 139
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
