.class Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "PostCommentsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/PostCommentsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;Lcom/google/android/apps/plus/fragments/PostCommentsFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;-><init>(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateComment(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 8
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "commentId"
    .parameter "result"

    .prologue
    .line 287
    invoke-virtual {p5}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-nez v0, :cond_18

    .line 288
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$900(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 290
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mCommentText:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$900(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    :cond_18
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    invoke-static {v0, p1, p5}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$1000(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 295
    return-void
.end method

.method public onCreatePostPlusOne(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 8
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    .line 379
    if-eqz p4, :cond_19

    invoke-virtual {p4}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 380
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f070112

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 382
    :cond_19
    return-void
.end method

.method public onDeleteActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    invoke-static {v0, p1, p4}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$1000(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 322
    return-void
.end method

.method public onDeleteComments(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 7
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "commentIds"
    .parameter "result"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    invoke-static {v0, p1, p5}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$1000(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 349
    return-void
.end method

.method public onDeletePostPlusOne(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 8
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    .line 390
    if-eqz p4, :cond_19

    invoke-virtual {p4}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 391
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f070113

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 394
    :cond_19
    return-void
.end method

.method public onEditComment(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 7
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "commentId"
    .parameter "result"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    invoke-static {v0, p1, p5}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$1000(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 304
    return-void
.end method

.method public onGetActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 12
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    const/4 v6, 0x0

    .line 247
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityId:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$300(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 279
    :cond_d
    :goto_d
    return-void

    .line 251
    :cond_e
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mRefreshReqId:Ljava/lang/Integer;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$600(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_32

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mRefreshReqId:Ljava/lang/Integer;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$600(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne p1, v3, :cond_32

    .line 252
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mRefreshReqId:Ljava/lang/Integer;
    invoke-static {v3, v6}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$602(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 253
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mProgressView:Landroid/widget/ProgressBar;
    invoke-static {v4}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$700(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Landroid/widget/ProgressBar;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    .line 256
    :cond_32
    invoke-virtual {p4}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v3

    if-nez v3, :cond_45

    .line 257
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    invoke-virtual {v3, v4, v6, v5}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_d

    .line 260
    :cond_45
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "notif_type"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, notifType:Ljava/lang/String;
    if-eqz v1, :cond_8a

    .line 264
    invoke-static {v1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    move-result-object v2

    .line 269
    .local v2, type:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    :goto_5b
    if-eqz v2, :cond_8c

    sget-object v3, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->HANGOUT:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    if-ne v2, v3, :cond_8c

    .line 270
    const v0, 0x7f070148

    .line 274
    .local v0, msgId:I
    :goto_64
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    invoke-virtual {v4, v0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 275
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mFinishOnError:Z
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$800(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 276
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_d

    .line 266
    .end local v0           #msgId:I
    .end local v2           #type:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    :cond_8a
    const/4 v2, 0x0

    .restart local v2       #type:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    goto :goto_5b

    .line 272
    :cond_8c
    const v0, 0x7f070147

    .restart local v0       #msgId:I
    goto :goto_64
.end method

.method public onGetActivityAudience(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/api/AudienceData;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 7
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "audienceData"
    .parameter "result"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    invoke-static {v0, p1, p5}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$1000(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 403
    if-eqz p4, :cond_11

    .line 404
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAudienceData:Lcom/google/android/apps/plus/api/AudienceData;
    invoke-static {v0, p4}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$102(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;Lcom/google/android/apps/plus/api/AudienceData;)Lcom/google/android/apps/plus/api/AudienceData;

    .line 405
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->showAudience(Lcom/google/android/apps/plus/api/AudienceData;)V
    invoke-static {v0, p4}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$500(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;Lcom/google/android/apps/plus/api/AudienceData;)V

    .line 407
    :cond_11
    return-void
.end method

.method public onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 5
    .parameter "url"
    .parameter "bitmap"
    .parameter "type"

    .prologue
    .line 414
    if-nez p2, :cond_3

    .line 428
    :cond_2
    :goto_2
    return-void

    .line 418
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityView:Lcom/google/android/apps/plus/views/StreamRowView;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$1100(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Lcom/google/android/apps/plus/views/StreamRowView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/StreamRowView;->hasSkyjamThumbnail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 419
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityView:Lcom/google/android/apps/plus/views/StreamRowView;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$1100(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Lcom/google/android/apps/plus/views/StreamRowView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/views/StreamRowView;->setSkyjamThumbnail(Landroid/graphics/Bitmap;)V

    .line 420
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityView:Lcom/google/android/apps/plus/views/StreamRowView;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$1100(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Lcom/google/android/apps/plus/views/StreamRowView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/StreamRowView;->invalidate()V

    goto :goto_2

    .line 421
    :cond_22
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityView:Lcom/google/android/apps/plus/views/StreamRowView;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$1100(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Lcom/google/android/apps/plus/views/StreamRowView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/StreamRowView;->hasImage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 422
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityView:Lcom/google/android/apps/plus/views/StreamRowView;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$1100(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Lcom/google/android/apps/plus/views/StreamRowView;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/plus/views/StreamRowView;->updateImage(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityView:Lcom/google/android/apps/plus/views/StreamRowView;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$1100(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Lcom/google/android/apps/plus/views/StreamRowView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/StreamRowView;->invalidate()V

    goto :goto_2

    .line 424
    :cond_41
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityView:Lcom/google/android/apps/plus/views/StreamRowView;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$1100(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Lcom/google/android/apps/plus/views/StreamRowView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/StreamRowView;->hasTitleImage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 425
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityView:Lcom/google/android/apps/plus/views/StreamRowView;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$1100(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Lcom/google/android/apps/plus/views/StreamRowView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/plus/views/StreamRowView;->setTitleImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 426
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityView:Lcom/google/android/apps/plus/views/StreamRowView;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$1100(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Lcom/google/android/apps/plus/views/StreamRowView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/StreamRowView;->invalidate()V

    goto :goto_2
.end method

.method public onModerateComments(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 7
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "commentIds"
    .parameter "result"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    invoke-static {v0, p1, p5}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$1000(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 358
    return-void
.end method

.method public onMuteActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    invoke-static {v0, p1, p4}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$1000(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 331
    return-void
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
    .line 366
    if-eqz p6, :cond_1b

    invoke-virtual {p6}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 367
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz p5, :cond_1c

    const v0, 0x7f070112

    :goto_13
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 371
    :cond_1b
    return-void

    .line 367
    :cond_1c
    const v0, 0x7f070113

    goto :goto_13
.end method

.method public onReportActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    invoke-static {v0, p1, p4}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$1000(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 340
    return-void
.end method

.method public onReshareActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #calls: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    invoke-static {v0, p1, p4}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$1000(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 313
    return-void
.end method
