.class Lcom/google/android/apps/plus/fragments/VideoViewFragment$1;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "VideoViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/VideoViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/VideoViewFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/VideoViewFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/VideoViewFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetPhoto(ILcom/google/android/apps/plus/content/EsAccount;JLcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 10
    .parameter "requestId"
    .parameter "account"
    .parameter "photoId"
    .parameter "result"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/VideoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/VideoViewFragment;->mPhotoId:J
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->access$000(Lcom/google/android/apps/plus/fragments/VideoViewFragment;)J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-nez v0, :cond_17

    .line 101
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/VideoViewFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/VideoViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/VideoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/VideoViewFragment;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 103
    :cond_17
    return-void
.end method
