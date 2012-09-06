.class public Lcom/google/android/youtube/core/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/j;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Typeface;
    .registers 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final a(Landroid/content/Context;)Z
    .registers 3
    .parameter

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/view/View;)Z
    .registers 3
    .parameter

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Landroid/content/Context;)Z
    .registers 4
    .parameter

    .prologue
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 27
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    .line 28
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/f;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_15

    const/4 v1, 0x3

    if-lt v0, v1, :cond_17

    :cond_15
    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public final c(Landroid/content/Context;)Z
    .registers 4
    .parameter

    .prologue
    .line 33
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 34
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 36
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 37
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 38
    const/16 v1, 0x2d0

    if-lt v0, v1, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public final d(Landroid/content/Context;)Z
    .registers 3
    .parameter

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method
