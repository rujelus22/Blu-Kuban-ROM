.class public Lcom/android/browser/NavTabView;
.super Landroid/widget/LinearLayout;
.source "NavTabView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/NavTabView$ReflectedImage;
    }
.end annotation


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field public mClose:Landroid/widget/ImageView;

.field mImage:Landroid/widget/ImageView;

.field private mReflectedImageHeight:I

.field private mTab:Lcom/android/browser/Tab;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 73
    invoke-direct {p0}, Lcom/android/browser/NavTabView;->init()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    invoke-direct {p0}, Lcom/android/browser/NavTabView;->init()V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    invoke-direct {p0}, Lcom/android/browser/NavTabView;->init()V

    .line 64
    return-void
.end method

.method private init()V
    .registers 3

    .prologue
    .line 77
    const-string v0, "Nav"

    const-string v1, "NavTabView : init()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/android/browser/NavTabView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04002e

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 85
    const v0, 0x7f0d0082

    invoke-virtual {p0, v0}, Lcom/android/browser/NavTabView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/browser/NavTabView;->mClose:Landroid/widget/ImageView;

    .line 86
    const v0, 0x7f0d0003

    invoke-virtual {p0, v0}, Lcom/android/browser/NavTabView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/browser/NavTabView;->mImage:Landroid/widget/ImageView;

    .line 87
    return-void
.end method


# virtual methods
.method public getWebView(Lcom/android/browser/Tab;I)Landroid/graphics/Bitmap;
    .registers 8
    .parameter "tab"
    .parameter "orientation"

    .prologue
    const v4, 0x7f0b003a

    .line 184
    const-string v2, "Nav"

    const-string v3, "NavTabView : getWebView(Tab tab)"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iput-object p1, p0, Lcom/android/browser/NavTabView;->mTab:Lcom/android/browser/Tab;

    .line 187
    const/4 v2, 0x1

    if-eq v2, p2, :cond_12

    const/4 v2, 0x3

    if-ne v2, p2, :cond_3f

    .line 189
    :cond_12
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 190
    .local v0, image:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/browser/NavTabView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/browser/NavTabView;->mReflectedImageHeight:I

    .line 199
    :goto_22
    iget-object v2, p0, Lcom/android/browser/NavTabView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/browser/NavTabView;->mReflectedImageHeight:I

    .line 201
    new-instance v1, Lcom/android/browser/NavTabView$ReflectedImage;

    iget v2, p0, Lcom/android/browser/NavTabView;->mReflectedImageHeight:I

    invoke-direct {v1, p0, v0, v2}, Lcom/android/browser/NavTabView$ReflectedImage;-><init>(Lcom/android/browser/NavTabView;Landroid/graphics/Bitmap;I)V

    .line 202
    .local v1, reflectedThumbnail:Lcom/android/browser/NavTabView$ReflectedImage;
    iget-object v0, v1, Lcom/android/browser/NavTabView$ReflectedImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 204
    if-eqz v0, :cond_3e

    .line 205
    iget-object v2, p0, Lcom/android/browser/NavTabView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 208
    :cond_3e
    return-object v0

    .line 195
    .end local v0           #image:Landroid/graphics/Bitmap;
    .end local v1           #reflectedThumbnail:Lcom/android/browser/NavTabView$ReflectedImage;
    :cond_3f
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getScreenshot_L()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 196
    .restart local v0       #image:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/browser/NavTabView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/browser/NavTabView;->mReflectedImageHeight:I

    goto :goto_22
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/browser/NavTabView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 280
    iget-object v0, p0, Lcom/android/browser/NavTabView;->mClose:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/NavTabView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v0, p0, Lcom/android/browser/NavTabView;->mImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_14

    .line 282
    iget-object v0, p0, Lcom/android/browser/NavTabView;->mImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/NavTabView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    :cond_14
    return-void
.end method

.method public setWebView(Lcom/android/browser/Tab;I)V
    .registers 7
    .parameter "tab"
    .parameter "orientation"

    .prologue
    .line 156
    const-string v2, "Nav"

    const-string v3, "NavTabView : setWebView(Tab tab)"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iput-object p1, p0, Lcom/android/browser/NavTabView;->mTab:Lcom/android/browser/Tab;

    .line 160
    const/4 v2, 0x1

    if-eq v2, p2, :cond_f

    const/4 v2, 0x3

    if-ne v2, p2, :cond_33

    .line 162
    :cond_f
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 163
    .local v0, image:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/browser/NavTabView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/browser/NavTabView;->mReflectedImageHeight:I

    .line 172
    :goto_22
    new-instance v1, Lcom/android/browser/NavTabView$ReflectedImage;

    iget v2, p0, Lcom/android/browser/NavTabView;->mReflectedImageHeight:I

    invoke-direct {v1, p0, v0, v2}, Lcom/android/browser/NavTabView$ReflectedImage;-><init>(Lcom/android/browser/NavTabView;Landroid/graphics/Bitmap;I)V

    .line 173
    .local v1, reflectedThumbnail:Lcom/android/browser/NavTabView$ReflectedImage;
    iget-object v0, v1, Lcom/android/browser/NavTabView$ReflectedImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 175
    if-eqz v0, :cond_32

    .line 176
    iget-object v2, p0, Lcom/android/browser/NavTabView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 180
    :cond_32
    return-void

    .line 168
    .end local v0           #image:Landroid/graphics/Bitmap;
    .end local v1           #reflectedThumbnail:Lcom/android/browser/NavTabView$ReflectedImage;
    :cond_33
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getScreenshot_L()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 169
    .restart local v0       #image:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/browser/NavTabView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/browser/NavTabView;->mReflectedImageHeight:I

    goto :goto_22
.end method
