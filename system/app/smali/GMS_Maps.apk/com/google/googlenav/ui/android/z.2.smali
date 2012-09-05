.class public Lcom/google/googlenav/ui/android/z;
.super Ljava/lang/Object;

# interfaces
.implements Laq/e;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/android/z;->b:Landroid/content/Context;

    return-void
.end method

.method private d()Landroid/util/DisplayMetrics;
    .registers 4

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/z;->b:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-object v1
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/z;->a:Landroid/view/View;

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/z;->d()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/ui/android/z;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_a
.end method

.method public a(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/android/z;->a:Landroid/view/View;

    return-void
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/z;->a:Landroid/view/View;

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/z;->d()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/ui/android/z;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_a
.end method

.method public c()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/z;->a:Landroid/view/View;

    return-object v0
.end method

.method public n()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/z;->a:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/android/z;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_9
    return-void
.end method
