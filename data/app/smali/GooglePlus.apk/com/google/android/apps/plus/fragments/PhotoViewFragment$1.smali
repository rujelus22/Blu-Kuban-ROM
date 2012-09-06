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
    .line 346
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
    .line 350
    invoke-virtual {p3}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$000(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 352
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$000(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    :cond_18
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)Z
    invoke-static {v0, p1, p3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$100(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;ILcom/google/android/apps/plus/service/ServiceResult;)Z

    .line 355
    return-void
.end method

.method public onDeletePhotoCommentsComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)Z
    invoke-static {v0, p1, p3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$100(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;ILcom/google/android/apps/plus/service/ServiceResult;)Z

    .line 361
    return-void
.end method

.method public onEditPhotoCommentComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)Z
    invoke-static {v0, p1, p3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$100(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;ILcom/google/android/apps/plus/service/ServiceResult;)Z

    .line 373
    return-void
.end method

.method public onGetPhoto(ILcom/google/android/apps/plus/content/EsAccount;JLcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 9
    .parameter "requestId"
    .parameter "account"
    .parameter "photoId"
    .parameter "result"

    .prologue
    .line 394
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOlderReqId:Ljava/lang/Integer;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOlderReqId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p1, :cond_11

    .line 404
    :cond_10
    :goto_10
    return-void

    .line 398
    :cond_11
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOlderReqId:Ljava/lang/Integer;

    .line 400
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 401
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_10

    .line 402
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->updateView(Landroid/view/View;)V
    invoke-static {v1, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$200(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;Landroid/view/View;)V

    goto :goto_10
.end method

.method public onGetPhotoSettings(ILjava/lang/String;ZLcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 7
    .parameter "requestId"
    .parameter "gaiaId"
    .parameter "downloadAllowed"
    .parameter "result"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOlderReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOlderReqId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_11

    .line 417
    :cond_10
    :goto_10
    return-void

    .line 413
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOlderReqId:Ljava/lang/Integer;

    .line 414
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #setter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mDownloadable:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$302(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 416
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->updateMenuItems()V
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$400(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)V

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

    .line 550
    invoke-static {}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getPhotoSize()Ljava/lang/Integer;

    move-result-object v1

    .line 551
    .local v1, size:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne p3, v3, :cond_11

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq p4, v3, :cond_13

    :cond_11
    move v3, v4

    .line 564
    :goto_12
    return v3

    .line 555
    :cond_13
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v3, v3, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v3, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getPhotoRef()Lcom/google/android/apps/plus/api/MediaRef;

    move-result-object v0

    .line 556
    .local v0, photoRef:Lcom/google/android/apps/plus/api/MediaRef;
    if-eqz v0, :cond_3d

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/api/MediaRef;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 557
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 558
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_3d

    .line 559
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v3, v3, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v3, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v3, p2}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->bindPhoto(Landroid/graphics/Bitmap;)V

    .line 560
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->updateView(Landroid/view/View;)V
    invoke-static {v3, v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$200(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;Landroid/view/View;)V

    .line 561
    const/4 v3, 0x1

    goto :goto_12

    .end local v2           #view:Landroid/view/View;
    :cond_3d
    move v3, v4

    .line 564
    goto :goto_12
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
    .line 471
    .local p2, mediaRefs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p1, :cond_11

    .line 480
    :cond_10
    return-void

    .line 475
    :cond_11
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)Z
    invoke-static {v2, p1, p3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$100(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;ILcom/google/android/apps/plus/service/ServiceResult;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 476
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

    .line 477
    .local v1, ref:Lcom/google/android/apps/plus/api/MediaRef;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$900(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

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
    .line 485
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_11

    .line 492
    :cond_10
    :goto_10
    return-void

    .line 489
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)Z
    invoke-static {v0, p1, p5}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$100(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;ILcom/google/android/apps/plus/service/ServiceResult;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 490
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mCallback:Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$900(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Lcom/google/android/apps/plus/fragments/PhotoViewFragment$PhotoViewCallbacks;

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
    .line 437
    .local p4, photoIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p1, :cond_11

    .line 466
    :cond_10
    :goto_10
    return-void

    .line 442
    :cond_11
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->DELETE:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    move-object/from16 v0, p3

    if-ne v2, v0, :cond_92

    .line 443
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/plus/phone/PhotoViewActivity;

    .line 444
    .local v8, activity:Lcom/google/android/apps/plus/phone/PhotoViewActivity;
    if-eqz p5, :cond_27

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 445
    :cond_27
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->hideProgressDialog()V
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$500(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)V

    .line 447
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 448
    .local v11, res:Landroid/content/res/Resources;
    const v2, 0x7f0801ad

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 449
    .local v12, toastText:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    invoke-static {v8, v12, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_10

    .line 452
    .end local v11           #res:Landroid/content/res/Resources;
    .end local v12           #toastText:Ljava/lang/CharSequence;
    :cond_42
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$600(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_87

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$600(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 453
    .local v9, photoUri:Landroid/net/Uri;
    :goto_54
    invoke-static {v9}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_89

    move-object v6, v9

    .line 455
    .local v6, localUri:Landroid/net/Uri;
    :goto_5b
    if-eqz v6, :cond_8b

    const/4 v5, 0x0

    .line 456
    .local v5, remoteUrl:Ljava/lang/String;
    :goto_5e
    new-instance v1, Lcom/google/android/apps/plus/api/MediaRef;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$700(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoId:J
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$800(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)J

    move-result-wide v3

    sget-object v7, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    invoke-direct/range {v1 .. v7}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    .line 458
    .local v1, mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    new-instance v10, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 459
    .local v10, refList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-static {v8, v10}, Lcom/google/android/apps/plus/service/EsService;->deleteLocalPhotos(Landroid/content/Context;Ljava/util/ArrayList;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    goto :goto_10

    .line 452
    .end local v1           #mediaRef:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v5           #remoteUrl:Ljava/lang/String;
    .end local v6           #localUri:Landroid/net/Uri;
    .end local v9           #photoUri:Landroid/net/Uri;
    .end local v10           #refList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    :cond_87
    const/4 v9, 0x0

    goto :goto_54

    .line 453
    .restart local v9       #photoUri:Landroid/net/Uri;
    :cond_89
    const/4 v6, 0x0

    goto :goto_5b

    .line 455
    .restart local v6       #localUri:Landroid/net/Uri;
    :cond_8b
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mPhotoUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$600(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Ljava/lang/String;

    move-result-object v5

    goto :goto_5e

    .line 463
    .end local v6           #localUri:Landroid/net/Uri;
    .end local v8           #activity:Lcom/google/android/apps/plus/phone/PhotoViewActivity;
    .end local v9           #photoUri:Landroid/net/Uri;
    :cond_92
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->REPORT_SPAM:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    move-object/from16 v0, p3

    if-ne v2, v0, :cond_10

    .line 464
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    move-object/from16 v0, p5

    #calls: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)Z
    invoke-static {v2, p1, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$100(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;ILcom/google/android/apps/plus/service/ServiceResult;)Z

    goto/16 :goto_10
.end method

.method public onPhotoImageLoaded(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .registers 8
    .parameter "ref"
    .parameter "bitmap"
    .parameter "type"
    .parameter "cropType"

    .prologue
    .line 537
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v2, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getPhotoRef()Lcom/google/android/apps/plus/api/MediaRef;

    move-result-object v0

    .line 538
    .local v0, photoRef:Lcom/google/android/apps/plus/api/MediaRef;
    if-eqz v0, :cond_28

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/api/MediaRef;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 539
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 540
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_28

    .line 541
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v2, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v2, p2}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->bindPhoto(Landroid/graphics/Bitmap;)V

    .line 542
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->updateView(Landroid/view/View;)V
    invoke-static {v2, v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$200(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;Landroid/view/View;)V

    .line 545
    .end local v1           #view:Landroid/view/View;
    :cond_28
    return-void
.end method

.method public onPhotoPlusOneComplete(ILcom/google/android/apps/plus/content/EsAccount;ZLcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 8
    .parameter "requestId"
    .parameter "account"
    .parameter "plusOned"
    .parameter "result"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_11

    .line 432
    :cond_10
    :goto_10
    return-void

    .line 427
    :cond_11
    if-eqz p4, :cond_10

    invoke-virtual {p4}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 428
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz p3, :cond_2d

    const v0, 0x7f0801a7

    :goto_24
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_10

    :cond_2d
    const v0, 0x7f0801a8

    goto :goto_24
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
    .line 378
    if-eqz p6, :cond_1b

    invoke-virtual {p6}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 379
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz p5, :cond_1c

    const v0, 0x7f0801a7

    :goto_13
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 383
    :cond_1b
    return-void

    .line 379
    :cond_1c
    const v0, 0x7f0801a8

    goto :goto_13
.end method

.method public onReportPhotoCommentsComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)Z
    invoke-static {v0, p1, p3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$100(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;ILcom/google/android/apps/plus/service/ServiceResult;)Z

    .line 367
    return-void
.end method

.method public onSavePhoto(ILjava/io/File;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 14
    .parameter "requestId"
    .parameter "saveToFile"
    .parameter "isFullRes"
    .parameter "description"
    .parameter "mimeType"
    .parameter "result"

    .prologue
    .line 498
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v4, v4, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v4, v4, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, p1, :cond_11

    .line 533
    :cond_10
    :goto_10
    return-void

    .line 502
    :cond_11
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 504
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->hideProgressDialog()V
    invoke-static {v4}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$500(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)V

    .line 506
    invoke-virtual {p6}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v4

    if-nez v4, :cond_4a

    .line 507
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 508
    .local v0, activity:Landroid/app/Activity;
    if-eqz p2, :cond_34

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 509
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->addDownloadToSystem(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v0, p2, p4, p5}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$1000(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :cond_34
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800b0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 513
    .local v3, toastText:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_10

    .line 515
    .end local v0           #activity:Landroid/app/Activity;
    .end local v3           #toastText:Ljava/lang/String;
    :cond_4a
    invoke-virtual {p6}, Lcom/google/android/apps/plus/service/ServiceResult;->getException()Ljava/lang/Exception;

    move-result-object v4

    if-eqz v4, :cond_7a

    .line 516
    const-string v4, "PhotoViewFragment"

    const-string v5, "Could not download image"

    invoke-virtual {p6}, Lcom/google/android/apps/plus/service/ServiceResult;->getException()Ljava/lang/Exception;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 523
    :goto_5b
    if-eqz p3, :cond_97

    .line 524
    const v2, 0x7f090030

    .line 529
    .local v2, dialogId:I
    :goto_60
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 530
    .local v1, args:Landroid/os/Bundle;
    const-string v4, "tag"

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Landroid/support/v4/app/FragmentActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_10

    .line 518
    .end local v1           #args:Landroid/os/Bundle;
    .end local v2           #dialogId:I
    :cond_7a
    const-string v4, "PhotoViewFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not download image: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p6}, Lcom/google/android/apps/plus/service/ServiceResult;->getErrorCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 526
    :cond_97
    const v2, 0x7f09002f

    .restart local v2       #dialogId:I
    goto :goto_60
.end method

.method public onSetProfilePhotoComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)Z
    invoke-static {v0, p1, p3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$100(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;ILcom/google/android/apps/plus/service/ServiceResult;)Z

    .line 389
    return-void
.end method
