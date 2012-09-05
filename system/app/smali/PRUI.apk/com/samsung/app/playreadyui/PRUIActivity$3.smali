.class Lcom/samsung/app/playreadyui/PRUIActivity$3;
.super Ljava/lang/Object;
.source "PRUIActivity.java"

# interfaces
.implements Landroid/drm/DrmManagerClient$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/app/playreadyui/PRUIActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/app/playreadyui/PRUIActivity;


# direct methods
.method constructor <init>(Lcom/samsung/app/playreadyui/PRUIActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/samsung/app/playreadyui/PRUIActivity$3;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/drm/DrmManagerClient;Landroid/drm/DrmErrorEvent;)V
    .registers 7
    .parameter "client"
    .parameter "event"

    .prologue
    .line 206
    const-string v1, "PRUIActivity"

    const-string v2, "DrmManagerClient.OnErrorListener::onError() Starts"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-string v1, "drm_info_status_object"

    invoke-virtual {p2, v1}, Landroid/drm/DrmErrorEvent;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/drm/DrmInfoStatus;

    .line 210
    .local v0, status:Landroid/drm/DrmInfoStatus;
    iget-object v1, p0, Lcom/samsung/app/playreadyui/PRUIActivity$3;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    new-instance v2, Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;

    invoke-direct {v2}, Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;-><init>()V

    #setter for: Lcom/samsung/app/playreadyui/PRUIActivity;->mResponse:Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;
    invoke-static {v1, v2}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$102(Lcom/samsung/app/playreadyui/PRUIActivity;Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;)Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;

    .line 211
    iget-object v1, p0, Lcom/samsung/app/playreadyui/PRUIActivity$3;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    #getter for: Lcom/samsung/app/playreadyui/PRUIActivity;->mResponse:Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;
    invoke-static {v1}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$100(Lcom/samsung/app/playreadyui/PRUIActivity;)Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;

    move-result-object v1

    iget v2, v0, Landroid/drm/DrmInfoStatus;->infoType:I

    iput v2, v1, Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;->mInitiatorType:I

    .line 213
    iget-object v1, v0, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    if-eqz v1, :cond_ad

    iget-object v1, v0, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    invoke-virtual {v1}, Landroid/drm/ProcessedData;->getData()[B

    move-result-object v1

    if-eqz v1, :cond_ad

    .line 214
    iget-object v1, p0, Lcom/samsung/app/playreadyui/PRUIActivity$3;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    #getter for: Lcom/samsung/app/playreadyui/PRUIActivity;->mResponse:Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;
    invoke-static {v1}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$100(Lcom/samsung/app/playreadyui/PRUIActivity;)Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    invoke-virtual {v3}, Landroid/drm/ProcessedData;->getData()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v2, v1, Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;->mURL:Ljava/lang/String;

    .line 219
    :goto_42
    iget-object v1, p0, Lcom/samsung/app/playreadyui/PRUIActivity$3;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    #getter for: Lcom/samsung/app/playreadyui/PRUIActivity;->mResponse:Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;
    invoke-static {v1}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$100(Lcom/samsung/app/playreadyui/PRUIActivity;)Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;

    move-result-object v1

    iget v2, v0, Landroid/drm/DrmInfoStatus;->statusCode:I

    iput v2, v1, Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;->mErrorCode:I

    .line 221
    const-string v1, "PRUIActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DrmManagerClient.OnErrorListener::onError():InitiatorType["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/app/playreadyui/PRUIActivity$3;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    #getter for: Lcom/samsung/app/playreadyui/PRUIActivity;->mResponse:Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;
    invoke-static {v3}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$100(Lcom/samsung/app/playreadyui/PRUIActivity;)Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;

    move-result-object v3

    iget v3, v3, Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;->mInitiatorType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "URL["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/app/playreadyui/PRUIActivity$3;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    #getter for: Lcom/samsung/app/playreadyui/PRUIActivity;->mResponse:Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;
    invoke-static {v3}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$100(Lcom/samsung/app/playreadyui/PRUIActivity;)Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;->mURL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Error code["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/app/playreadyui/PRUIActivity$3;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    #getter for: Lcom/samsung/app/playreadyui/PRUIActivity;->mResponse:Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;
    invoke-static {v3}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$100(Lcom/samsung/app/playreadyui/PRUIActivity;)Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;

    move-result-object v3

    iget v3, v3, Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;->mErrorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v1, p0, Lcom/samsung/app/playreadyui/PRUIActivity$3;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    #getter for: Lcom/samsung/app/playreadyui/PRUIActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$300(Lcom/samsung/app/playreadyui/PRUIActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 226
    return-void

    .line 216
    :cond_ad
    iget-object v1, p0, Lcom/samsung/app/playreadyui/PRUIActivity$3;->this$0:Lcom/samsung/app/playreadyui/PRUIActivity;

    #getter for: Lcom/samsung/app/playreadyui/PRUIActivity;->mResponse:Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;
    invoke-static {v1}, Lcom/samsung/app/playreadyui/PRUIActivity;->access$100(Lcom/samsung/app/playreadyui/PRUIActivity;)Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/samsung/app/playreadyui/PlayReadyInitiatorResponse;->mURL:Ljava/lang/String;

    goto :goto_42
.end method
