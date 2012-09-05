.class public Lcom/sec/android/app/myfiles/fileselector/views/MXListPlayerProgressView;
.super Landroid/widget/ImageView;
.source "MXListPlayerProgressView.java"


# instance fields
.field private mProgress:F

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXListPlayerProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXListPlayerProgressView;->mProgress:F

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXListPlayerProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXListPlayerProgressView;->mProgress:F

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXListPlayerProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXListPlayerProgressView;->mProgress:F

    .line 51
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "canvas"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 75
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXListPlayerProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_33

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 81
    .local v0, r:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXListPlayerProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXListPlayerProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXListPlayerProgressView;->mProgress:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 84
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXListPlayerProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 86
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXListPlayerProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 90
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_33
    return-void
.end method

.method public setPregressDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "d"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXListPlayerProgressView;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 67
    return-void
.end method

.method public setProgress(F)V
    .registers 2
    .parameter "progress"

    .prologue
    .line 57
    iput p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXListPlayerProgressView;->mProgress:F

    .line 59
    return-void
.end method
