.class Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;
.super Ljava/lang/Object;
.source "ScreenshotsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/ScreenshotsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageEntry"
.end annotation


# instance fields
.field private mCurrentContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

.field private final mImageView:Landroid/widget/ImageView;

.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/finsky/activities/ScreenshotsActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/activities/ScreenshotsActivity;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter "url"

    .prologue
    const/4 v2, -0x1

    .line 43
    iput-object p1, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;->this$0:Lcom/google/android/finsky/activities/ScreenshotsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/widget/ImageView;

    #getter for: Lcom/google/android/finsky/activities/ScreenshotsActivity;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/google/android/finsky/activities/ScreenshotsActivity;->access$000(Lcom/google/android/finsky/activities/ScreenshotsActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;->mImageView:Landroid/widget/ImageView;

    .line 45
    iget-object v0, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;->mImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 46
    iget-object v0, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iput-object p2, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;->mUrl:Ljava/lang/String;

    .line 49
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;->mCurrentContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;->mCurrentContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_5
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .registers 5
    .parameter "bitmap"

    .prologue
    .line 86
    if-nez p1, :cond_3

    .line 93
    :goto_2
    return-void

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;->this$0:Lcom/google/android/finsky/activities/ScreenshotsActivity;

    #getter for: Lcom/google/android/finsky/activities/ScreenshotsActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/finsky/activities/ScreenshotsActivity;->access$000(Lcom/google/android/finsky/activities/ScreenshotsActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    iget-object v0, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;->this$0:Lcom/google/android/finsky/activities/ScreenshotsActivity;

    #calls: Lcom/google/android/finsky/activities/ScreenshotsActivity;->rotateActivityForVisibleImage()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/ScreenshotsActivity;->access$300(Lcom/google/android/finsky/activities/ScreenshotsActivity;)V

    goto :goto_2
.end method


# virtual methods
.method public getView()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public load()V
    .registers 7

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;->mCurrentContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    if-eqz v0, :cond_9

    .line 53
    iget-object v0, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;->mCurrentContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->cancelRequest()V

    .line 55
    :cond_9
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;->mUrl:Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry$1;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry$1;-><init>(Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;)V

    iget-object v4, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;->this$0:Lcom/google/android/finsky/activities/ScreenshotsActivity;

    #getter for: Lcom/google/android/finsky/activities/ScreenshotsActivity;->mMaxImageSize:I
    invoke-static {v4}, Lcom/google/android/finsky/activities/ScreenshotsActivity;->access$200(Lcom/google/android/finsky/activities/ScreenshotsActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;->this$0:Lcom/google/android/finsky/activities/ScreenshotsActivity;

    #getter for: Lcom/google/android/finsky/activities/ScreenshotsActivity;->mMaxImageSize:I
    invoke-static {v5}, Lcom/google/android/finsky/activities/ScreenshotsActivity;->access$200(Lcom/google/android/finsky/activities/ScreenshotsActivity;)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;->mCurrentContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 66
    iget-object v0, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;->mCurrentContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 67
    return-void
.end method

.method public unload()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 74
    iget-object v0, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;->mCurrentContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    if-eqz v0, :cond_c

    .line 75
    iget-object v0, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;->mCurrentContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->cancelRequest()V

    .line 76
    iput-object v1, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;->mCurrentContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 78
    :cond_c
    iget-object v0, p0, Lcom/google/android/finsky/activities/ScreenshotsActivity$ImageEntry;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    return-void
.end method
