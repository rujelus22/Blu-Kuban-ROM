.class public Lcom/dropbox/android/widget/OffscreenProgressBar;
.super Landroid/widget/ProgressBar;
.source "panda.py"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 14
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 10
    iput v0, p0, Lcom/dropbox/android/widget/OffscreenProgressBar;->a:I

    .line 11
    iput v0, p0, Lcom/dropbox/android/widget/OffscreenProgressBar;->b:I

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    iput v0, p0, Lcom/dropbox/android/widget/OffscreenProgressBar;->a:I

    .line 11
    iput v0, p0, Lcom/dropbox/android/widget/OffscreenProgressBar;->b:I

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    iput v0, p0, Lcom/dropbox/android/widget/OffscreenProgressBar;->a:I

    .line 11
    iput v0, p0, Lcom/dropbox/android/widget/OffscreenProgressBar;->b:I

    .line 23
    return-void
.end method


# virtual methods
.method protected declared-synchronized onMeasure(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 28
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/dropbox/android/widget/OffscreenProgressBar;->a:I

    if-gtz v0, :cond_18

    .line 29
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onMeasure(II)V

    .line 30
    invoke-virtual {p0}, Lcom/dropbox/android/widget/OffscreenProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/dropbox/android/widget/OffscreenProgressBar;->a:I

    .line 32
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/dropbox/android/widget/OffscreenProgressBar;->b:I

    .line 38
    :cond_18
    iget v0, p0, Lcom/dropbox/android/widget/OffscreenProgressBar;->a:I

    iget v1, p0, Lcom/dropbox/android/widget/OffscreenProgressBar;->b:I

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/android/widget/OffscreenProgressBar;->setMeasuredDimension(II)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 39
    monitor-exit p0

    return-void

    .line 28
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method
