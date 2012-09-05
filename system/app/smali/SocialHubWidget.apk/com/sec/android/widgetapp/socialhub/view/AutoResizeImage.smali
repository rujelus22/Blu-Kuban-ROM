.class public Lcom/sec/android/widgetapp/socialhub/view/AutoResizeImage;
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

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/AutoResizeImage;->small_portrait:Landroid/widget/LinearLayout$LayoutParams;

    .line 34
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/AutoResizeImage;->small_landscape:Landroid/widget/LinearLayout$LayoutParams;

    .line 35
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/AutoResizeImage;->large_portrait:Landroid/widget/LinearLayout$LayoutParams;

    .line 36
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/AutoResizeImage;->large_landscape:Landroid/widget/LinearLayout$LayoutParams;

    .line 38
    iput v2, p0, Lcom/sec/android/widgetapp/socialhub/view/AutoResizeImage;->LARGE_MAX:I

    .line 39
    iput v1, p0, Lcom/sec/android/widgetapp/socialhub/view/AutoResizeImage;->SMALL_MAX:I

    .line 40
    const/16 v0, 0x5a

    iput v0, p0, Lcom/sec/android/widgetapp/socialhub/view/AutoResizeImage;->ATTACH_MAX:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/AutoResizeImage;->mTagEx:Ljava/lang/ref/WeakReference;

    .line 47
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

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/AutoResizeImage;->small_portrait:Landroid/widget/LinearLayout$LayoutParams;

    .line 34
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/AutoResizeImage;->small_landscape:Landroid/widget/LinearLayout$LayoutParams;

    .line 35
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/AutoResizeImage;->large_portrait:Landroid/widget/LinearLayout$LayoutParams;

    .line 36
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/AutoResizeImage;->large_landscape:Landroid/widget/LinearLayout$LayoutParams;

    .line 38
    iput v2, p0, Lcom/sec/android/widgetapp/socialhub/view/AutoResizeImage;->LARGE_MAX:I

    .line 39
    iput v1, p0, Lcom/sec/android/widgetapp/socialhub/view/AutoResizeImage;->SMALL_MAX:I

    .line 40
    const/16 v0, 0x5a

    iput v0, p0, Lcom/sec/android/widgetapp/socialhub/view/AutoResizeImage;->ATTACH_MAX:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/AutoResizeImage;->mTagEx:Ljava/lang/ref/WeakReference;

    .line 52
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

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/AutoResizeImage;->small_portrait:Landroid/widget/LinearLayout$LayoutParams;

    .line 34
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/AutoResizeImage;->small_landscape:Landroid/widget/LinearLayout$LayoutParams;

    .line 35
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/AutoResizeImage;->large_portrait:Landroid/widget/LinearLayout$LayoutParams;

    .line 36
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/AutoResizeImage;->large_landscape:Landroid/widget/LinearLayout$LayoutParams;

    .line 38
    iput v2, p0, Lcom/sec/android/widgetapp/socialhub/view/AutoResizeImage;->LARGE_MAX:I

    .line 39
    iput v1, p0, Lcom/sec/android/widgetapp/socialhub/view/AutoResizeImage;->SMALL_MAX:I

    .line 40
    const/16 v0, 0x5a

    iput v0, p0, Lcom/sec/android/widgetapp/socialhub/view/AutoResizeImage;->ATTACH_MAX:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/AutoResizeImage;->mTagEx:Ljava/lang/ref/WeakReference;

    .line 57
    return-void
.end method


# virtual methods
.method public changeParams(Landroid/view/ViewGroup$LayoutParams;FFZLjava/lang/String;Landroid/widget/ImageView;)V
    .registers 11
    .parameter "param"
    .parameter "height"
    .parameter "width"
    .parameter "is_portrait"
    .parameter "image_type"
    .parameter "frame"

    .prologue
    const/16 v3, 0x8

    .line 119
    const/high16 v1, 0x42f8

    .line 121
    .local v1, max:F
    if-eqz p6, :cond_a

    .line 122
    const/4 v2, 0x0

    invoke-virtual {p6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    :cond_a
    if-eqz p5, :cond_1b

    .line 126
    const-string v2, "small"

    invoke-virtual {p5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 132
    sget v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;->paramWidth:I

    .line 133
    .local v0, getwidth:I
    add-int/lit8 v2, v0, -0x28

    div-int/lit8 v2, v2, 0x3

    int-to-float v1, v2

    .line 154
    .end local v0           #getwidth:I
    :cond_1b
    :goto_1b
    if-eqz p4, :cond_52

    .line 156
    float-to-int v2, v1

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 157
    mul-float v2, v1, p3

    div-float/2addr v2, p2

    float-to-int v2, v2

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 165
    :goto_26
    return-void

    .line 136
    :cond_27
    const-string v2, "large"

    invoke-virtual {p5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 138
    const/high16 v1, 0x431e

    goto :goto_1b

    .line 140
    :cond_32
    const-string v2, "youtube"

    invoke-virtual {p5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 142
    const/high16 v1, 0x431e

    .line 143
    if-eqz p6, :cond_1b

    .line 144
    invoke-virtual {p6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1b

    .line 146
    :cond_42
    const-string v2, "attachement"

    invoke-virtual {p5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 148
    const/high16 v1, 0x42b4

    .line 149
    if-eqz p6, :cond_1b

    .line 150
    invoke-virtual {p6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1b

    .line 161
    :cond_52
    float-to-int v2, v1

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 162
    mul-float v2, v1, p2

    div-float/2addr v2, p3

    float-to-int v2, v2

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_26
.end method

.method public getTag(I)Ljava/lang/Object;
    .registers 3
    .parameter "key"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/AutoResizeImage;->mTagEx:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    .line 69
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/AutoResizeImage;->mTagEx:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 71
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

    .line 175
    if-nez p1, :cond_4

    .line 187
    :cond_3
    :goto_3
    return v2

    .line 180
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 181
    .local v1, width:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 183
    .local v0, height:I
    if-lt v0, v1, :cond_3

    .line 185
    const/4 v2, 0x1

    goto :goto_3
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 10
    .parameter "bitmap"

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 92
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/socialhub/view/AutoResizeImage;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 93
    .local v7, parent:Landroid/widget/FrameLayout;
    if-eqz v7, :cond_30

    .line 95
    const v0, 0x7f090023

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 97
    .local v6, imageBG:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/socialhub/view/AutoResizeImage;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 99
    .local v5, size:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/socialhub/view/AutoResizeImage;->isPortraitImage(Landroid/graphics/Bitmap;)Z

    move-result v4

    .line 101
    .local v4, is_portrait:Z
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v3, v0

    .line 102
    .local v3, width:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v2, v0

    .line 104
    .local v2, height:F
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .local v1, param:Landroid/view/ViewGroup$LayoutParams;
    move-object v0, p0

    .line 106
    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/widgetapp/socialhub/view/AutoResizeImage;->changeParams(Landroid/view/ViewGroup$LayoutParams;FFZLjava/lang/String;Landroid/widget/ImageView;)V

    .line 108
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
    .line 77
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/socialhub/view/AutoResizeImage;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 79
    .local v0, parent:Landroid/widget/FrameLayout;
    if-eqz v0, :cond_d

    .line 81
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/AutoResizeImage;->small_landscape:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    :cond_d
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    return-void
.end method

.method public setTag(ILjava/lang/Object;)V
    .registers 4
    .parameter "key"
    .parameter "tag"

    .prologue
    .line 62
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/AutoResizeImage;->mTagEx:Ljava/lang/ref/WeakReference;

    .line 63
    return-void
.end method
