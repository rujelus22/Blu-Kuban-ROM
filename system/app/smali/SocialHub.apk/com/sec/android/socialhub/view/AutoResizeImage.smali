.class public Lcom/sec/android/socialhub/view/AutoResizeImage;
.super Landroid/widget/ImageView;
.source "AutoResizeImage.java"


# instance fields
.field private final ATTACH_MAX:I

.field private final LARGE_MAX:I

.field private final SMALL_MAX:I

.field large_landscape:Landroid/widget/LinearLayout$LayoutParams;

.field large_portrait:Landroid/widget/LinearLayout$LayoutParams;

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

.field small_landscape:Landroid/widget/LinearLayout$LayoutParams;

.field small_portrait:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/16 v4, 0x76

    const/16 v3, 0x5e

    const/16 v2, 0x9e

    const/16 v1, 0x7c

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/AutoResizeImage;->small_portrait:Landroid/widget/LinearLayout$LayoutParams;

    .line 28
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/AutoResizeImage;->small_landscape:Landroid/widget/LinearLayout$LayoutParams;

    .line 29
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/AutoResizeImage;->large_portrait:Landroid/widget/LinearLayout$LayoutParams;

    .line 30
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/AutoResizeImage;->large_landscape:Landroid/widget/LinearLayout$LayoutParams;

    .line 32
    iput v2, p0, Lcom/sec/android/socialhub/view/AutoResizeImage;->LARGE_MAX:I

    .line 33
    iput v1, p0, Lcom/sec/android/socialhub/view/AutoResizeImage;->SMALL_MAX:I

    .line 34
    const/16 v0, 0x5a

    iput v0, p0, Lcom/sec/android/socialhub/view/AutoResizeImage;->ATTACH_MAX:I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/view/AutoResizeImage;->mTagEx:Ljava/lang/ref/WeakReference;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v4, 0x76

    const/16 v3, 0x5e

    const/16 v2, 0x9e

    const/16 v1, 0x7c

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/AutoResizeImage;->small_portrait:Landroid/widget/LinearLayout$LayoutParams;

    .line 28
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/AutoResizeImage;->small_landscape:Landroid/widget/LinearLayout$LayoutParams;

    .line 29
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/AutoResizeImage;->large_portrait:Landroid/widget/LinearLayout$LayoutParams;

    .line 30
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/AutoResizeImage;->large_landscape:Landroid/widget/LinearLayout$LayoutParams;

    .line 32
    iput v2, p0, Lcom/sec/android/socialhub/view/AutoResizeImage;->LARGE_MAX:I

    .line 33
    iput v1, p0, Lcom/sec/android/socialhub/view/AutoResizeImage;->SMALL_MAX:I

    .line 34
    const/16 v0, 0x5a

    iput v0, p0, Lcom/sec/android/socialhub/view/AutoResizeImage;->ATTACH_MAX:I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/view/AutoResizeImage;->mTagEx:Ljava/lang/ref/WeakReference;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v4, 0x76

    const/16 v3, 0x5e

    const/16 v2, 0x9e

    const/16 v1, 0x7c

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/AutoResizeImage;->small_portrait:Landroid/widget/LinearLayout$LayoutParams;

    .line 28
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/AutoResizeImage;->small_landscape:Landroid/widget/LinearLayout$LayoutParams;

    .line 29
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/AutoResizeImage;->large_portrait:Landroid/widget/LinearLayout$LayoutParams;

    .line 30
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/AutoResizeImage;->large_landscape:Landroid/widget/LinearLayout$LayoutParams;

    .line 32
    iput v2, p0, Lcom/sec/android/socialhub/view/AutoResizeImage;->LARGE_MAX:I

    .line 33
    iput v1, p0, Lcom/sec/android/socialhub/view/AutoResizeImage;->SMALL_MAX:I

    .line 34
    const/16 v0, 0x5a

    iput v0, p0, Lcom/sec/android/socialhub/view/AutoResizeImage;->ATTACH_MAX:I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/view/AutoResizeImage;->mTagEx:Ljava/lang/ref/WeakReference;

    .line 51
    return-void
.end method


# virtual methods
.method public changeParams(Landroid/view/ViewGroup$LayoutParams;FFZLjava/lang/String;Landroid/widget/ImageView;)V
    .registers 10
    .parameter "param"
    .parameter "height"
    .parameter "width"
    .parameter "is_portrait"
    .parameter "image_type"
    .parameter "frame"

    .prologue
    const/16 v2, 0x8

    .line 113
    const/high16 v0, 0x42f8

    .line 115
    .local v0, max:F
    if-eqz p6, :cond_a

    .line 116
    const/4 v1, 0x0

    invoke-virtual {p6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    :cond_a
    if-eqz p5, :cond_16

    .line 120
    const-string v1, "small"

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 122
    const/high16 v0, 0x42f8

    .line 142
    :cond_16
    :goto_16
    if-eqz p4, :cond_4d

    .line 144
    float-to-int v1, v0

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 145
    mul-float v1, v0, p3

    div-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 153
    :goto_21
    return-void

    .line 124
    :cond_22
    const-string v1, "large"

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 126
    const/high16 v0, 0x431e

    goto :goto_16

    .line 128
    :cond_2d
    const-string v1, "youtube"

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 130
    const/high16 v0, 0x431e

    .line 131
    if-eqz p6, :cond_16

    .line 132
    invoke-virtual {p6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_16

    .line 134
    :cond_3d
    const-string v1, "attachement"

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 136
    const/high16 v0, 0x42b4

    .line 137
    if-eqz p6, :cond_16

    .line 138
    invoke-virtual {p6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_16

    .line 149
    :cond_4d
    float-to-int v1, v0

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 150
    mul-float v1, v0, p2

    div-float/2addr v1, p3

    float-to-int v1, v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_21
.end method

.method public getTag(I)Ljava/lang/Object;
    .registers 3
    .parameter "key"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/socialhub/view/AutoResizeImage;->mTagEx:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    .line 63
    iget-object v0, p0, Lcom/sec/android/socialhub/view/AutoResizeImage;->mTagEx:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 65
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isPortraitImage(Landroid/graphics/Bitmap;)Z
    .registers 5
    .parameter "bitmap"

    .prologue
    const/4 v2, 0x0

    .line 163
    if-nez p1, :cond_4

    .line 175
    :cond_3
    :goto_3
    return v2

    .line 168
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 169
    .local v1, width:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 171
    .local v0, height:I
    if-lt v0, v1, :cond_3

    .line 173
    const/4 v2, 0x1

    goto :goto_3
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 10
    .parameter "bitmap"

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 86
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/AutoResizeImage;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 87
    .local v7, parent:Landroid/widget/FrameLayout;
    if-eqz v7, :cond_30

    .line 89
    const v0, 0x7f0b00ce

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 91
    .local v6, imageBG:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/AutoResizeImage;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 93
    .local v5, size:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/view/AutoResizeImage;->isPortraitImage(Landroid/graphics/Bitmap;)Z

    move-result v4

    .line 95
    .local v4, is_portrait:Z
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v3, v0

    .line 96
    .local v3, width:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v2, v0

    .line 98
    .local v2, height:F
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .local v1, param:Landroid/view/ViewGroup$LayoutParams;
    move-object v0, p0

    .line 100
    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/socialhub/view/AutoResizeImage;->changeParams(Landroid/view/ViewGroup$LayoutParams;FFZLjava/lang/String;Landroid/widget/ImageView;)V

    .line 102
    .end local v1           #param:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #height:F
    .end local v3           #width:F
    .end local v4           #is_portrait:Z
    .end local v5           #size:Ljava/lang/String;
    .end local v6           #imageBG:Landroid/widget/ImageView;
    :cond_30
    return-void
.end method

.method public setImageResource(I)V
    .registers 4
    .parameter "resId"

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/AutoResizeImage;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 73
    .local v0, parent:Landroid/widget/FrameLayout;
    if-eqz v0, :cond_d

    .line 75
    iget-object v1, p0, Lcom/sec/android/socialhub/view/AutoResizeImage;->small_landscape:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    :cond_d
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    return-void
.end method

.method public setTag(ILjava/lang/Object;)V
    .registers 4
    .parameter "key"
    .parameter "tag"

    .prologue
    .line 56
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/AutoResizeImage;->mTagEx:Ljava/lang/ref/WeakReference;

    .line 57
    return-void
.end method
