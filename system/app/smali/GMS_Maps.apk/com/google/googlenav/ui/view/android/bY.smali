.class public Lcom/google/googlenav/ui/view/android/by;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private final c:Landroid/widget/ListAdapter;

.field private d:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    const v0, 0x7f0f00d8

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 59
    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/view/android/by;->a(Landroid/view/View;)V

    .line 60
    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/by;->c:Landroid/widget/ListAdapter;

    .line 61
    iput-object p4, p0, Lcom/google/googlenav/ui/view/android/by;->d:Landroid/widget/AdapterView$OnItemClickListener;

    .line 62
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 66
    if-eqz p1, :cond_1f

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 68
    aget v1, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/googlenav/ui/view/android/by;->a:I

    .line 69
    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/ui/view/android/by;->b:I

    .line 74
    :goto_1e
    return-void

    .line 71
    :cond_1f
    iput v1, p0, Lcom/google/googlenav/ui/view/android/by;->a:I

    .line 72
    iput v1, p0, Lcom/google/googlenav/ui/view/android/by;->b:I

    goto :goto_1e
.end method

.method public a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 3
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/by;->d:Landroid/widget/AdapterView$OnItemClickListener;

    .line 78
    const v0, 0x7f100127

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/by;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 79
    if-eqz v0, :cond_12

    if-eqz p1, :cond_12

    .line 80
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    :cond_12
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 86
    const v0, 0x7f040145

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/by;->setContentView(I)V

    .line 87
    const v0, 0x7f100127

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/by;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 88
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/by;->c:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1a

    .line 89
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/by;->c:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    :cond_1a
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/by;->d:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v1, :cond_23

    .line 93
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/by;->d:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 95
    :cond_23
    const v1, 0x7f100355

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/by;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 97
    invoke-virtual {v2, v3, v3}, Landroid/view/View;->measure(II)V

    .line 99
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2, v4, v4, v1, v3}, Landroid/view/View;->layout(IIII)V

    .line 101
    const v1, 0x7f100126

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 103
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/by;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 104
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 107
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/by;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v6, "window"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 109
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 110
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 111
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 112
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 113
    iget v1, p0, Lcom/google/googlenav/ui/view/android/by;->a:I

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 114
    iget v1, p0, Lcom/google/googlenav/ui/view/android/by;->b:I

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 117
    iget v1, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v1, v2

    iget v2, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_9e

    .line 118
    iget v1, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v2, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v3, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v2, v3

    iget v3, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 119
    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 120
    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 122
    :cond_9e
    const/16 v0, 0x33

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 125
    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x20100

    or-int/2addr v0, v1

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 127
    invoke-virtual {v4, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 128
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 142
    if-eqz v0, :cond_7

    .line 149
    :goto_6
    return v0

    .line 145
    :cond_7
    const/16 v0, 0x13

    if-ne p1, v0, :cond_10

    .line 146
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/by;->cancel()V

    .line 147
    const/4 v0, 0x1

    goto :goto_6

    .line 149
    :cond_10
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_b

    .line 133
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/by;->cancel()V

    .line 134
    const/4 v0, 0x1

    .line 136
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
