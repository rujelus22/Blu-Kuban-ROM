.class Lcom/google/android/apps/plus/fragments/HostedEventFragment$2;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "HostedEventFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/HostedEventFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/HostedEventFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateComment(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 7
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "commentId"
    .parameter "serviceResult"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedEventFragment;->handleCreateCommentComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V
    invoke-static {v0, p1, p5}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->access$600(Lcom/google/android/apps/plus/fragments/HostedEventFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 326
    return-void
.end method

.method public onDeleteEventComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedEventFragment;->handleDeleteCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V
    invoke-static {v0, p1, p2}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->access$900(Lcom/google/android/apps/plus/fragments/HostedEventFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 343
    return-void
.end method

.method public onEventInviteComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 4
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedEventFragment;->handleInviteMoreComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V
    invoke-static {v0, p1, p2}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->access$800(Lcom/google/android/apps/plus/fragments/HostedEventFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 338
    return-void
.end method

.method public onInsertCameraPhotoComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "serviceResult"

    .prologue
    .line 331
    invoke-static {}, Lcom/google/android/apps/plus/service/EsService;->getLastCameraMediaLocation()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, photoLocation:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedEventFragment;->handleNewPhotoComplete(ILcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/String;)V
    invoke-static {v1, p1, p3, v0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->access$700(Lcom/google/android/apps/plus/fragments/HostedEventFragment;ILcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method public onReadEventComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "result"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mNeedsRefresh:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->access$302(Lcom/google/android/apps/plus/fragments/HostedEventFragment;Z)Z

    .line 316
    if-eqz p2, :cond_14

    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-nez v0, :cond_14

    .line 317
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/fragments/HostedEventFragment;->mInvitationToken:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->access$402(Lcom/google/android/apps/plus/fragments/HostedEventFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 319
    :cond_14
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedEventFragment;->handleGetEventUpdatesComplete(ILcom/google/android/apps/plus/service/ServiceResult;)V
    invoke-static {v0, p1, p2}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->access$500(Lcom/google/android/apps/plus/fragments/HostedEventFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 320
    return-void
.end method

.method public onReportActivity(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "activityId"
    .parameter "result"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    invoke-virtual {v0, p1, p4}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->handleReportEventCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 349
    return-void
.end method
