.class public Lcom/sec/android/socialhub/view/TypeImageView;
.super Landroid/widget/ImageView;
.source "TypeImageView.java"


# instance fields
.field default_size:Landroid/widget/LinearLayout$LayoutParams;

.field private mTagEx:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/16 v1, 0x18

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/TypeImageView;->default_size:Landroid/widget/LinearLayout$LayoutParams;

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/view/TypeImageView;->mTagEx:Ljava/lang/ref/WeakReference;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v1, 0x18

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/TypeImageView;->default_size:Landroid/widget/LinearLayout$LayoutParams;

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/view/TypeImageView;->mTagEx:Ljava/lang/ref/WeakReference;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v1, 0x18

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/TypeImageView;->default_size:Landroid/widget/LinearLayout$LayoutParams;

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/view/TypeImageView;->mTagEx:Ljava/lang/ref/WeakReference;

    .line 38
    return-void
.end method


# virtual methods
.method public changeParams(Landroid/view/ViewGroup$LayoutParams;FFLjava/lang/String;Landroid/widget/ImageView;)V
    .registers 8
    .parameter "param"
    .parameter "height"
    .parameter "width"
    .parameter "image_type"
    .parameter "frame"

    .prologue
    .line 86
    const/high16 v0, 0x41c0

    .line 87
    .local v0, max:F
    float-to-int v1, v0

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 88
    mul-float v1, v0, p3

    div-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 89
    return-void
.end method

.method public getTag(I)Ljava/lang/Object;
    .registers 3
    .parameter "key"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/socialhub/view/TypeImageView;->mTagEx:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    .line 101
    iget-object v0, p0, Lcom/sec/android/socialhub/view/TypeImageView;->mTagEx:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 103
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 8
    .parameter "bitmap"

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 65
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/TypeImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 67
    .local v4, size:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v3, v0

    .line 68
    .local v3, width:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v2, v0

    .line 71
    .local v2, height:F
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/TypeImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .local v1, param:Landroid/view/ViewGroup$LayoutParams;
    move-object v0, p0

    move-object v5, p0

    .line 73
    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/view/TypeImageView;->changeParams(Landroid/view/ViewGroup$LayoutParams;FFLjava/lang/String;Landroid/widget/ImageView;)V

    .line 75
    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/view/TypeImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    return-void
.end method

.method public setImageResource(I)V
    .registers 3
    .parameter "resId"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/socialhub/view/TypeImageView;->default_size:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/view/TypeImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    return-void
.end method

.method public setTag(ILjava/lang/Object;)V
    .registers 4
    .parameter "key"
    .parameter "tag"

    .prologue
    .line 94
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/TypeImageView;->mTagEx:Ljava/lang/ref/WeakReference;

    .line 95
    return-void
.end method

.method public setVisibility(I)V
    .registers 3
    .parameter "visibility"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/TypeImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 46
    .local v0, parent:Landroid/view/View;
    if-eqz v0, :cond_e

    .line 48
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    :cond_e
    return-void
.end method
