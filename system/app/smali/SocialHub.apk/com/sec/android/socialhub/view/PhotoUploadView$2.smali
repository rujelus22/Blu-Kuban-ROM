.class Lcom/sec/android/socialhub/view/PhotoUploadView$2;
.super Ljava/lang/Object;
.source "PhotoUploadView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/view/PhotoUploadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/view/PhotoUploadView;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/view/PhotoUploadView;)V
    .registers 2
    .parameter

    .prologue
    .line 606
    iput-object p1, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$2;->this$0:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 609
    iget-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$2;->this$0:Lcom/sec/android/socialhub/view/PhotoUploadView;

    iget-object v0, v0, Lcom/sec/android/socialhub/view/PhotoUploadView;->mViewWrapper:Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/PhotoUploadView$PhotoUploadViewWrapper;->setLoadingStart()V

    .line 611
    iget-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$2;->this$0:Lcom/sec/android/socialhub/view/PhotoUploadView;

    #getter for: Lcom/sec/android/socialhub/view/PhotoUploadView;->mImageLoadListener:Lcom/sec/android/socialhub/image/RemoteImageLoadTask$ILoadCompleteListener;
    invoke-static {v0}, Lcom/sec/android/socialhub/view/PhotoUploadView;->access$300(Lcom/sec/android/socialhub/view/PhotoUploadView;)Lcom/sec/android/socialhub/image/RemoteImageLoadTask$ILoadCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 613
    iget-object v0, p0, Lcom/sec/android/socialhub/view/PhotoUploadView$2;->this$0:Lcom/sec/android/socialhub/view/PhotoUploadView;

    #getter for: Lcom/sec/android/socialhub/view/PhotoUploadView;->mImageLoadListener:Lcom/sec/android/socialhub/image/RemoteImageLoadTask$ILoadCompleteListener;
    invoke-static {v0}, Lcom/sec/android/socialhub/view/PhotoUploadView;->access$300(Lcom/sec/android/socialhub/view/PhotoUploadView;)Lcom/sec/android/socialhub/image/RemoteImageLoadTask$ILoadCompleteListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/socialhub/image/RemoteImageLoadTask$ILoadCompleteListener;->onStartLoad()V

    .line 615
    :cond_18
    return-void
.end method
