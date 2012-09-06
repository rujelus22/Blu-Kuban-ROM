.class public Lcom/google/android/apps/plus/fragments/HostedStreamFragment$ServiceListener;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "HostedStreamFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/HostedStreamFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;


# direct methods
.method protected constructor <init>(Lcom/google/android/apps/plus/fragments/HostedStreamFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

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
    .line 356
    if-eqz p4, :cond_19

    invoke-virtual {p4}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 357
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0801a7

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 359
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
    .line 350
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    invoke-virtual {v0, p1, p4}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 351
    return-void
.end method

.method public onDeletePostPlusOne(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 8
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    .line 364
    if-eqz p4, :cond_19

    invoke-virtual {p4}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 365
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0801a8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 368
    :cond_19
    return-void
.end method

.method public onGetActivities(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesParams$View;Lcom/google/wireless/tacotruck/proto/Data$Location;ZILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 16
    .parameter "requestId"
    .parameter "account"
    .parameter "gaiaId"
    .parameter "circleId"
    .parameter "view"
    .parameter "location"
    .parameter "newer"
    .parameter "streamLength"
    .parameter "result"

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 291
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    if-eqz p9, :cond_4b

    invoke-virtual {p9}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-eqz v0, :cond_4b

    const/4 v0, 0x1

    :goto_e
    iput-boolean v0, v2, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mError:Z

    .line 292
    const-string v0, "HostedStreamFrag"

    invoke-static {v0, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 293
    const-string v0, "HostedStreamFrag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetActivities - mError="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    iget-boolean v3, v3, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mError:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_34
    if-eqz p7, :cond_82

    .line 297
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mNewerReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mNewerReqId:Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 330
    :cond_4a
    :goto_4a
    return-void

    :cond_4b
    move v0, v1

    .line 291
    goto :goto_e

    .line 302
    :cond_4d
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    iput-object v4, v0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mNewerReqId:Ljava/lang/Integer;

    .line 319
    :cond_51
    :goto_51
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mStreamLength:I
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->access$000(Lcom/google/android/apps/plus/fragments/HostedStreamFragment;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_60

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    iget-boolean v0, v0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mError:Z

    if-eqz v0, :cond_77

    .line 320
    :cond_60
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    iget-boolean v0, v0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mError:Z

    if-nez v0, :cond_6b

    .line 323
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mStreamLength:I
    invoke-static {v0, p8}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->access$002(Lcom/google/android/apps/plus/fragments/HostedStreamFragment;I)I

    .line 325
    :cond_6b
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    invoke-virtual {v0, v1, v4, v2}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 328
    :cond_77
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->updateSpinner()V

    .line 329
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->updateServerErrorView()V
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->access$100(Lcom/google/android/apps/plus/fragments/HostedStreamFragment;)V

    goto :goto_4a

    .line 304
    :cond_82
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mOlderReqId:Ljava/lang/Integer;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mOlderReqId:Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 309
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    iput-object v4, v0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mOlderReqId:Ljava/lang/Integer;

    .line 311
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    iget-boolean v0, v0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mError:Z

    if-eqz v0, :cond_51

    .line 312
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    iput-boolean v1, v0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->mPreloadRequested:Z

    .line 313
    const-string v0, "HostedStreamFrag"

    invoke-static {v0, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 314
    const-string v0, "HostedStreamFrag"

    const-string v1, "onGetActivities - mPreloadRequested=false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51
.end method

.method public onMuteActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    invoke-virtual {v0, p1, p4}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 345
    return-void
.end method

.method public onReshareActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedStreamFragment$ServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedStreamFragment;

    invoke-virtual {v0, p1, p4}, Lcom/google/android/apps/plus/fragments/HostedStreamFragment;->handleServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 339
    return-void
.end method
