.class Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;
.super Ljava/lang/Object;
.source "PhotoUploadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/view/PhotoUploadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotoUploadViewWrapper"
.end annotation


# instance fields
.field private bIsLoading:Z

.field public mEditText:Landroid/widget/EditText;

.field public mImage:Landroid/widget/ImageView;

.field public mImageFrame:Landroid/widget/LinearLayout;

.field public mProgresLayout:Landroid/widget/LinearLayout;

.field private mThumbnail:Landroid/graphics/Bitmap;

.field public mVideoFrame:Landroid/widget/LinearLayout;

.field public mVideoIcon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/sec/android/socialhub/view/PhotoUploadView;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/view/PhotoUploadView;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter "view"

    .prologue
    .line 497
    iput-object p1, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->this$0:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 492
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->bIsLoading:Z

    .line 494
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->mThumbnail:Landroid/graphics/Bitmap;

    .line 498
    const v0, 0x7f0b00fb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->mImage:Landroid/widget/ImageView;

    .line 499
    const v0, 0x7f0b00fd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->mEditText:Landroid/widget/EditText;

    .line 500
    const v0, 0x7f0b00fc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->mVideoIcon:Landroid/widget/ImageView;

    .line 501
    const v0, 0x7f0b00fa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->mVideoFrame:Landroid/widget/LinearLayout;

    .line 502
    const v0, 0x7f0b00f9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->mImageFrame:Landroid/widget/LinearLayout;

    .line 503
    const v0, 0x7f0b00d9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->mProgresLayout:Landroid/widget/LinearLayout;

    .line 504
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 483
    iget-boolean v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->bIsLoading:Z

    return v0
.end method


# virtual methods
.method public getThumbnailImage()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->mThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setImageMode()V
    .registers 3

    .prologue
    .line 515
    iget-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->mVideoIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->mVideoFrame:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 517
    return-void
.end method

.method public setLoadingComplete(Landroid/graphics/Bitmap;)V
    .registers 6
    .parameter "bm"

    .prologue
    const/4 v2, 0x0

    .line 525
    iget-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->mProgresLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->mImageFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 528
    iput-object p1, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->mThumbnail:Landroid/graphics/Bitmap;

    .line 529
    iput-boolean v2, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->bIsLoading:Z

    .line 531
    const-string v0, "PhotoUploadView"

    const-string v1, "setLoadingComplete()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loading - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->bIsLoading:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    return-void
.end method

.method public setLoadingStart()V
    .registers 5

    .prologue
    .line 536
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->bIsLoading:Z

    .line 537
    iget-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->mImageFrame:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 538
    iget-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->mProgresLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 540
    const-string v0, "PhotoUploadView"

    const-string v1, "setLoadingStart()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loading - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->bIsLoading:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    return-void
.end method

.method public setVideoMode()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 508
    iget-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->mVideoIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->mImageFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 510
    iget-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->mVideoFrame:Landroid/widget/LinearLayout;

    const v1, 0x7f02009f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 511
    return-void
.end method
