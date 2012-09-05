.class Lcom/sec/android/socialhub/view/PhotoUploadView$1;
.super Ljava/lang/Object;
.source "PhotoUploadView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/view/PhotoUploadView;->onLoadCompleted(Lcom/sec/android/socialhub/image/RemoteImageInfo;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/view/PhotoUploadView;

.field final synthetic val$t_bSuccess:Z

.field final synthetic val$t_errorResource:I

.field final synthetic val$t_info:Lcom/sec/android/socialhub/image/RemoteImageInfo;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/view/PhotoUploadView;ZILcom/sec/android/socialhub/image/RemoteImageInfo;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 565
    iput-object p1, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$1;->this$0:Lcom/sec/android/socialhub/view/PhotoUploadView;

    iput-boolean p2, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$1;->val$t_bSuccess:Z

    iput p3, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$1;->val$t_errorResource:I

    iput-object p4, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$1;->val$t_info:Lcom/sec/android/socialhub/image/RemoteImageInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 568
    iget-boolean v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$1;->val$t_bSuccess:Z

    if-nez v0, :cond_25

    .line 570
    iget-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$1;->this$0:Lcom/sec/android/socialhub/view/PhotoUploadView;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/socialhub/view/PhotoUploadView;->bIsSelectedImage:Z
    invoke-static {v0, v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->access$102(Lcom/sec/android/socialhub/view/PhotoUploadView;Z)Z

    .line 571
    iget-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$1;->this$0:Lcom/sec/android/socialhub/view/PhotoUploadView;

    iget-object v1, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$1;->this$0:Lcom/sec/android/socialhub/view/PhotoUploadView;

    #getter for: Lcom/sec/android/socialhub/view/PhotoUploadView;->bIsSelectedImage:Z
    invoke-static {v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->access$100(Lcom/sec/android/socialhub/view/PhotoUploadView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->onChangeViewMode(Z)V

    .line 572
    iget-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$1;->this$0:Lcom/sec/android/socialhub/view/PhotoUploadView;

    #getter for: Lcom/sec/android/socialhub/view/PhotoUploadView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/socialhub/view/PhotoUploadView;->access$200(Lcom/sec/android/socialhub/view/PhotoUploadView;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$1;->val$t_errorResource:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 575
    :cond_25
    iget-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$1;->val$t_info:Lcom/sec/android/socialhub/image/RemoteImageInfo;

    if-eqz v0, :cond_34

    .line 577
    iget-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$1;->this$0:Lcom/sec/android/socialhub/view/PhotoUploadView;

    iget-object v0, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mViewWrapper:Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;

    iget-object v1, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$1;->val$t_info:Lcom/sec/android/socialhub/image/RemoteImageInfo;

    iget-object v1, v1, Lcom/sec/android/socialhub/image/RemoteImageInfo;->previewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->setLoadingComplete(Landroid/graphics/Bitmap;)V

    .line 580
    :cond_34
    iget-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$1;->this$0:Lcom/sec/android/socialhub/view/PhotoUploadView;

    #getter for: Lcom/sec/android/socialhub/view/PhotoUploadView;->mImageLoadListener:Lcom/sec/android/socialhub/image/RemoteImageLoadTask$ILoadCompleteListener;
    invoke-static {v0}, Lcom/sec/android/socialhub/view/PhotoUploadView;->access$300(Lcom/sec/android/socialhub/view/PhotoUploadView;)Lcom/sec/android/socialhub/image/RemoteImageLoadTask$ILoadCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 582
    iget-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$1;->this$0:Lcom/sec/android/socialhub/view/PhotoUploadView;

    #getter for: Lcom/sec/android/socialhub/view/PhotoUploadView;->mImageLoadListener:Lcom/sec/android/socialhub/image/RemoteImageLoadTask$ILoadCompleteListener;
    invoke-static {v0}, Lcom/sec/android/socialhub/view/PhotoUploadView;->access$300(Lcom/sec/android/socialhub/view/PhotoUploadView;)Lcom/sec/android/socialhub/image/RemoteImageLoadTask$ILoadCompleteListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$1;->val$t_info:Lcom/sec/android/socialhub/image/RemoteImageInfo;

    iget-boolean v2, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$1;->val$t_bSuccess:Z

    iget v3, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$1;->val$t_errorResource:I

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/socialhub/image/RemoteImageLoadTask$ILoadCompleteListener;->onLoadCompleted(Lcom/sec/android/socialhub/image/RemoteImageInfo;ZI)V

    .line 584
    :cond_4b
    return-void
.end method
