.class Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$1;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "PhotosFromPhoneFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStreamPhotosComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 9
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 242
    const-string v0, "PfpFragment"

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 243
    const-string v0, "PfpFragment"

    const-string v1, "onGetStreamPhotosComplete reqId=%s result=%s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    iget-object v3, v3, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mNewerReqId:Ljava/lang/Integer;

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_20
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/service/EsServiceListener;->onGetStreamPhotosComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V

    .line 247
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_48

    .line 248
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 249
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mIsRefreshing:Z
    invoke-static {v0, v4}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->access$602(Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;Z)Z

    .line 250
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getView()Landroid/view/View;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->updateViewFromMode(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->access$700(Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;Landroid/view/View;)V

    .line 252
    :cond_48
    return-void
.end method

.method public onLocalImageLoaded(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;II)Z
    .registers 6
    .parameter "mediaRef"
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 229
    if-eq p3, p4, :cond_4

    .line 230
    const/4 v0, 0x0

    .line 233
    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->setThumbnail(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;)Z

    move-result v0

    goto :goto_3
.end method

.method public onLocalPhotoDelete(ILjava/util/ArrayList;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 8
    .parameter "requestId"
    .parameter
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            ">;",
            "Lcom/google/android/apps/plus/service/ServiceResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 282
    .local p2, mediaRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p1, :cond_11

    .line 294
    :cond_10
    :goto_10
    return-void

    .line 285
    :cond_11
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 287
    if-eqz p3, :cond_39

    invoke-virtual {p3}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 288
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 289
    .local v0, res:Landroid/content/res/Resources;
    const v2, 0x7f070118

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, toastText:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 293
    .end local v0           #res:Landroid/content/res/Resources;
    .end local v1           #toastText:Ljava/lang/CharSequence;
    :cond_39
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->restoreViewModeAndRefresh()V
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->access$800(Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;)V

    goto :goto_10
.end method

.method public onPhotoActionComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;Ljava/util/ArrayList;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 12
    .parameter "requestId"
    .parameter "account"
    .parameter "action"
    .parameter
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/apps/plus/service/ServiceResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 260
    .local p4, photoIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p1, :cond_11

    .line 274
    :cond_10
    :goto_10
    return-void

    .line 263
    :cond_11
    if-eqz p5, :cond_3f

    invoke-virtual {p5}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 264
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 265
    .local v0, res:Landroid/content/res/Resources;
    const v2, 0x7f070118

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, toastText:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 267
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->restoreViewModeAndRefresh()V
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->access$800(Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;)V

    .line 269
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mNewerReqId:Ljava/lang/Integer;

    goto :goto_10

    .line 271
    .end local v0           #res:Landroid/content/res/Resources;
    .end local v1           #toastText:Ljava/lang/CharSequence;
    :cond_3f
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mSelectedMediaRefs:Ljava/util/HashSet;
    invoke-static {v5}, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->access$100(Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;)Ljava/util/HashSet;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/service/EsService;->deleteLocalPhotos(Landroid/content/Context;Ljava/util/ArrayList;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mNewerReqId:Ljava/lang/Integer;

    goto :goto_10
.end method

.method public onPhotoImageLoaded(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .registers 6
    .parameter "mediaRef"
    .parameter "bitmap"
    .parameter "type"
    .parameter "cropType"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PhotosFromPhoneFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/plus/phone/PhotosFromPhoneAdapter;->setThumbnail(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;)Z

    .line 221
    return-void
.end method
