.class public Lcom/google/android/apps/plus/fragments/StreamListFragment$ServiceListener;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "StreamListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/StreamListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;


# direct methods
.method protected constructor <init>(Lcom/google/android/apps/plus/fragments/StreamListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePostPlusOne(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 8
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    .line 302
    if-eqz p4, :cond_19

    invoke-virtual {p4}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 303
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f070112

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 305
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
    .line 293
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    invoke-virtual {v0, p1, p4}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 294
    return-void
.end method

.method public onDeletePostPlusOne(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 8
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    .line 313
    if-eqz p4, :cond_19

    invoke-virtual {p4}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 314
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f070113

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 317
    :cond_19
    return-void
.end method

.method public onGetActivities(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Long;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Lcom/google/wireless/tacotruck/proto/Data$Location;ZILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 15
    .parameter "requestId"
    .parameter "account"
    .parameter "userId"
    .parameter "circleId"
    .parameter "view"
    .parameter "location"
    .parameter "newer"
    .parameter "streamLength"
    .parameter "result"

    .prologue
    const v4, 0x7f0d0065

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 233
    if-eqz p7, :cond_6a

    .line 234
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 267
    :cond_1b
    :goto_1b
    return-void

    .line 239
    :cond_1c
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iput-object v2, v0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 249
    :goto_20
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/StreamListFragment;->mStreamLength:I
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->access$000(Lcom/google/android/apps/plus/fragments/StreamListFragment;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_39

    .line 252
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/StreamListFragment;->mStreamLength:I
    invoke-static {v0, p8}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->access$002(Lcom/google/android/apps/plus/fragments/StreamListFragment;I)I

    .line 253
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    invoke-virtual {v0, v3, v2, v1}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 256
    :cond_39
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->updateSpinner(Landroid/widget/ProgressBar;)V

    .line 262
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mNewerReqId:Ljava/lang/Integer;

    if-nez v0, :cond_83

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mOlderReqId:Ljava/lang/Integer;

    if-nez v0, :cond_83

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-virtual {p9}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 263
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1b

    .line 241
    :cond_6a
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mOlderReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mOlderReqId:Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 246
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iput-object v2, v0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mOlderReqId:Ljava/lang/Integer;

    goto :goto_20

    .line 265
    :cond_83
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1b
.end method

.method public onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 5
    .parameter "url"
    .parameter "thumbnail"
    .parameter "type"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/StreamListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/phone/StreamAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/plus/phone/StreamAdapter;->onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public onMuteActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    invoke-virtual {v0, p1, p4}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 285
    return-void
.end method

.method public onReshareActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/StreamListFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/StreamListFragment;

    invoke-virtual {v0, p1, p4}, Lcom/google/android/apps/plus/fragments/StreamListFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 276
    return-void
.end method
