.class Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "PhotoViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/PhotoViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePhotoCommentComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 331
    invoke-virtual {p3}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$000(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 333
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$000(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    :cond_18
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)Z
    invoke-static {v0, p1, p3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$100(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;ILcom/google/android/apps/plus/service/ServiceResult;)Z

    .line 336
    return-void
.end method

.method public onDeletePhotoCommentsComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)Z
    invoke-static {v0, p1, p3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$100(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;ILcom/google/android/apps/plus/service/ServiceResult;)Z

    .line 342
    return-void
.end method

.method public onGetPhoto(ILcom/google/android/apps/plus/content/EsAccount;JLcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 9
    .parameter "requestId"
    .parameter "account"
    .parameter "photoId"
    .parameter "result"

    .prologue
    .line 382
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOlderReqId:Ljava/lang/Integer;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOlderReqId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p1, :cond_11

    .line 391
    :cond_10
    :goto_10
    return-void

    .line 386
    :cond_11
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOlderReqId:Ljava/lang/Integer;

    .line 387
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 388
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_10

    .line 389
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->updateView(Landroid/view/View;)V
    invoke-static {v1, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$200(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;Landroid/view/View;)V

    goto :goto_10
.end method

.method public onLocalImageLoaded(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;II)Z
    .registers 10
    .parameter "ref"
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x0

    .line 490
    invoke-static {}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getPhotoSize()Ljava/lang/Integer;

    move-result-object v1

    .line 491
    .local v1, size:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne p3, v3, :cond_19

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne p4, v3, :cond_19

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIsImageLoading:Z
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$800(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Z

    move-result v3

    if-nez v3, :cond_1b

    :cond_19
    move v3, v4

    .line 504
    :goto_1a
    return v3

    .line 494
    :cond_1b
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v3, v3, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v3, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getPhotoRef()Lcom/google/android/apps/plus/api/MediaRef;

    move-result-object v0

    .line 495
    .local v0, photoRef:Lcom/google/android/apps/plus/api/MediaRef;
    if-eqz v0, :cond_4a

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/api/MediaRef;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 496
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIsImageLoading:Z
    invoke-static {v3, v4}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$802(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;Z)Z

    .line 497
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 498
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_4a

    .line 499
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v3, v3, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v3, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v3, p2}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->bindPhotoImage(Landroid/graphics/Bitmap;)V

    .line 500
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->updateView(Landroid/view/View;)V
    invoke-static {v3, v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$200(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;Landroid/view/View;)V

    .line 501
    const/4 v3, 0x1

    goto :goto_1a

    .end local v2           #view:Landroid/view/View;
    :cond_4a
    move v3, v4

    .line 504
    goto :goto_1a
.end method

.method public onLocalPhotoDelete(ILjava/util/ArrayList;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 9
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
    .line 447
    .local p2, mediaRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p1, :cond_11

    .line 456
    :cond_10
    return-void

    .line 451
    :cond_11
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)Z
    invoke-static {v2, p1, p3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$100(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;ILcom/google/android/apps/plus/service/ServiceResult;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 452
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/api/MediaRef;

    .line 453
    .local v1, ref:Lcom/google/android/apps/plus/api/MediaRef;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$700(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/apps/plus/api/MediaRef;->getPhotoId()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->onPhotoRemoved(J)V

    goto :goto_1d
.end method

.method public onNameTagApprovalComplete(ILcom/google/android/apps/plus/content/EsAccount;JLcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 7
    .parameter "requestId"
    .parameter "account"
    .parameter "photoId"
    .parameter "result"

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_11

    .line 468
    :cond_10
    :goto_10
    return-void

    .line 465
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)Z
    invoke-static {v0, p1, p5}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$100(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;ILcom/google/android/apps/plus/service/ServiceResult;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 466
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$700(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;->onPhotoRemoved(J)V

    goto :goto_10
.end method

.method public onPhotoActionComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;Ljava/util/ArrayList;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 19
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
    .line 410
    .local p4, photoIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p1, :cond_11

    .line 442
    :cond_10
    :goto_10
    return-void

    .line 415
    :cond_11
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->DELETE:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    move-object/from16 v0, p3

    if-ne v2, v0, :cond_a3

    .line 416
    if-eqz p5, :cond_1f

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 418
    :cond_1f
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "req_pending"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/DialogFragment;

    .line 420
    .local v8, frag:Landroid/support/v4/app/DialogFragment;
    if-eqz v8, :cond_32

    .line 421
    invoke-virtual {v8}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 424
    :cond_32
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 425
    .local v11, res:Landroid/content/res/Resources;
    const v2, 0x7f070118

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 426
    .local v12, toastText:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v12, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_10

    .line 429
    .end local v8           #frag:Landroid/support/v4/app/DialogFragment;
    .end local v11           #res:Landroid/content/res/Resources;
    .end local v12           #toastText:Ljava/lang/CharSequence;
    :cond_4e
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$600(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_98

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$600(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 430
    .local v9, photoUri:Landroid/net/Uri;
    :goto_60
    invoke-static {v9}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_9a

    move-object v7, v9

    .line 432
    .local v7, localUri:Landroid/net/Uri;
    :goto_67
    if-eqz v7, :cond_9c

    const/4 v6, 0x0

    .line 433
    .local v6, remoteUrl:Ljava/lang/String;
    :goto_6a
    new-instance v1, Lcom/google/android/apps/plus/api/MediaRef;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:J
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$400(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J
    invoke-static {v4}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$500(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)J

    move-result-wide v4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(JJLjava/lang/String;Landroid/net/Uri;)V

    .line 434
    .local v1, mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    new-instance v10, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 435
    .local v10, refList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v10}, Lcom/google/android/apps/plus/service/EsService;->deleteLocalPhotos(Landroid/content/Context;Ljava/util/ArrayList;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    goto/16 :goto_10

    .line 429
    .end local v1           #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v6           #remoteUrl:Ljava/lang/String;
    .end local v7           #localUri:Landroid/net/Uri;
    .end local v9           #photoUri:Landroid/net/Uri;
    .end local v10           #refList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    :cond_98
    const/4 v9, 0x0

    goto :goto_60

    .line 430
    .restart local v9       #photoUri:Landroid/net/Uri;
    :cond_9a
    const/4 v7, 0x0

    goto :goto_67

    .line 432
    .restart local v7       #localUri:Landroid/net/Uri;
    :cond_9c
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$600(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Ljava/lang/String;

    move-result-object v6

    goto :goto_6a

    .line 439
    .end local v7           #localUri:Landroid/net/Uri;
    .end local v9           #photoUri:Landroid/net/Uri;
    :cond_a3
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->REPORT_SPAM:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    move-object/from16 v0, p3

    if-ne v2, v0, :cond_10

    .line 440
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    move-object/from16 v0, p5

    #calls: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)Z
    invoke-static {v2, p1, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$100(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;ILcom/google/android/apps/plus/service/ServiceResult;)Z

    goto/16 :goto_10
.end method

.method public onPhotoImageLoaded(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .registers 9
    .parameter "ref"
    .parameter "bitmap"
    .parameter "type"
    .parameter "cropType"

    .prologue
    .line 472
    if-eqz p4, :cond_3

    .line 485
    :cond_2
    :goto_2
    return-void

    .line 476
    :cond_3
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v2, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getPhotoRef()Lcom/google/android/apps/plus/api/MediaRef;

    move-result-object v0

    .line 477
    .local v0, photoRef:Lcom/google/android/apps/plus/api/MediaRef;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/api/MediaRef;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIsImageLoading:Z
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$800(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 478
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const/4 v3, 0x0

    #setter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mIsImageLoading:Z
    invoke-static {v2, v3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$802(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;Z)Z

    .line 479
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 480
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 481
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v2, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v2, p2}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->bindPhotoImage(Landroid/graphics/Bitmap;)V

    .line 482
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->updateView(Landroid/view/View;)V
    invoke-static {v2, v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$200(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;Landroid/view/View;)V

    goto :goto_2
.end method

.method public onPhotoPlusOneComplete(ILcom/google/android/apps/plus/content/EsAccount;ZLcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 12
    .parameter "requestId"
    .parameter "account"
    .parameter "plusOned"
    .parameter "result"

    .prologue
    .line 396
    if-eqz p4, :cond_20

    invoke-virtual {p4}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 397
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz p3, :cond_1c

    const v0, 0x7f070112

    :goto_13
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 405
    :goto_1b
    return-void

    .line 397
    :cond_1c
    const v0, 0x7f070113

    goto :goto_13

    .line 402
    :cond_20
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 403
    iget-object v6, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$300(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:J
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$400(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J
    invoke-static {v4}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$500(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->getPhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOlderReqId:Ljava/lang/Integer;

    goto :goto_1b
.end method

.method public onPlusOneComment(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 10
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "commentId"
    .parameter "plusOne"
    .parameter "result"

    .prologue
    .line 353
    if-eqz p6, :cond_1b

    invoke-virtual {p6}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 354
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz p5, :cond_1c

    const v0, 0x7f070112

    :goto_13
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 358
    :cond_1b
    return-void

    .line 354
    :cond_1c
    const v0, 0x7f070113

    goto :goto_13
.end method

.method public onReportPhotoCommentsComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)Z
    invoke-static {v0, p1, p3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$100(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;ILcom/google/android/apps/plus/service/ServiceResult;)Z

    .line 348
    return-void
.end method

.method public onSetProfilePhotoComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 7
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 363
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "req_pending"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 365
    .local v0, frag:Landroid/support/v4/app/DialogFragment;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    if-nez v1, :cond_24

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 374
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 376
    :cond_24
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)Z
    invoke-static {v1, p1, p3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$100(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;ILcom/google/android/apps/plus/service/ServiceResult;)Z

    .line 377
    return-void
.end method
