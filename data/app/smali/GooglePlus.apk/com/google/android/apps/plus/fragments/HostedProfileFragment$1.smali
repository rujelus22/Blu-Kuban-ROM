.class Lcom/google/android/apps/plus/fragments/HostedProfileFragment$1;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "HostedProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/HostedProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateProfilePlusOneRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->handlePlusOneCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 207
    return-void
.end method

.method public onDeleteProfilePlusOneRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->handlePlusOneCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 216
    return-void
.end method

.method public onGetProfileAndContactComplete(ILcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 8
    .parameter "requestId"
    .parameter "account"
    .parameter "personId"
    .parameter "result"

    .prologue
    .line 185
    const-string v0, "HostedProfileFragment"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 186
    const-string v0, "HostedProfileFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetProfileAndContactComplete(); requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_21
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    invoke-virtual {v0, p1, p4}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->handleProfileServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 189
    return-void
.end method

.method public onInsertCameraPhotoComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 7
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 250
    const-string v0, "HostedProfileFragment"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 251
    const-string v0, "HostedProfileFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInsertCameraPhotoComplete(); requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_21
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->handlerInsertCameraPhoto(ILcom/google/android/apps/plus/service/ServiceResult;)V
    invoke-static {v0, p1, p3}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->access$200(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 254
    return-void
.end method

.method public onReportAbuseRequestComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 5
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->handleReportAbuseCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 198
    return-void
.end method

.method public onSetCircleMemebershipComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 7
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 224
    const-string v0, "HostedProfileFragment"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 225
    const-string v0, "HostedProfileFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetCircleMemebershipComplete(); requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_21
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->handleProfileServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 228
    return-void
.end method

.method public onSetProfilePhotoComplete(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 9
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 236
    const-string v0, "HostedProfileFragment"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 237
    const-string v0, "HostedProfileFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetProfilePhotoComplete(); requestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_21
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->handleProfileServiceCallback(ILcom/google/android/apps/plus/service/ServiceResult;)V

    .line 242
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mPersonId:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->access$100(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/service/EsService;->getProfileAndContact(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Ljava/lang/Integer;

    move-result-object v1

    #setter for: Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfilePendingRequestId:Ljava/lang/Integer;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->access$002(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 244
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->updateSpinner()V

    .line 245
    return-void
.end method
