.class public Lcom/google/googlenav/ui/android/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ/d;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/googlenav/ui/android/L;->b:Landroid/content/Context;

    .line 36
    return-void
.end method

.method private d()Landroid/util/DisplayMetrics;
    .registers 4

    .prologue
    .line 85
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 86
    iget-object v0, p0, Lcom/google/googlenav/ui/android/L;->b:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 88
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 89
    return-object v1
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/googlenav/ui/android/L;->a:Landroid/view/View;

    if-nez v0, :cond_b

    .line 60
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/L;->d()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 61
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 63
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/ui/android/L;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_a
.end method

.method public a(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/googlenav/ui/android/L;->a:Landroid/view/View;

    .line 100
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/googlenav/ui/android/L;->a:Landroid/view/View;

    if-nez v0, :cond_b

    .line 78
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/L;->d()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 79
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 81
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/ui/android/L;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_a
.end method

.method public c()Landroid/view/View;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/googlenav/ui/android/L;->a:Landroid/view/View;

    return-object v0
.end method

.method public q()V
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/googlenav/ui/android/L;->a:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 45
    iget-object v0, p0, Lcom/google/googlenav/ui/android/L;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 47
    :cond_9
    return-void
.end method
