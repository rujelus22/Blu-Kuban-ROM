.class Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;
.super Lcom/google/android/apps/plus/service/EsServiceListener;
.source "SendMessageGeneralOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;)V
    .registers 2
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;->this$0:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;

    invoke-direct {p0}, Lcom/google/android/apps/plus/service/EsServiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageThumbnailUploaded(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;Lcom/google/android/apps/plus/service/ServiceResult;)V
    .registers 14
    .parameter "requestId"
    .parameter "account"
    .parameter "response"
    .parameter "result"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;->this$0:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;

    #getter for: Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mRequestId:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->access$000(Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_3a

    .line 53
    invoke-virtual {p4}, Lcom/google/android/apps/plus/service/ServiceResult;->hasError()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 55
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;->this$0:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;

    iget-object v0, v0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;->this$0:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;

    iget-object v1, v1, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;->this$0:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;

    #getter for: Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mConversationRowId:J
    invoke-static {v2}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->access$100(Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;->this$0:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;

    #getter for: Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mMessageRowId:Ljava/lang/Long;
    invoke-static {v4}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->access$200(Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->setMessageFailed(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJ)I

    .line 63
    :goto_2d
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    .line 64
    .local v7, handler:Landroid/os/Handler;
    new-instance v0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener$1;-><init>(Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    .end local v7           #handler:Landroid/os/Handler;
    :cond_3a
    return-void

    .line 59
    :cond_3b
    invoke-virtual {p3}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->getPhoto()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v8

    .line 60
    .local v8, photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;->this$0:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;

    iget-object v0, v0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;->this$0:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;

    iget-object v1, v1, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;->this$0:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;

    #getter for: Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mConversationRowId:J
    invoke-static {v2}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->access$100(Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation$ServiceListener;->this$0:Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;

    #getter for: Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->mMessageRowId:Ljava/lang/Long;
    invoke-static {v4}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;->access$200(Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sendRemotePhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJLjava/lang/String;)I

    goto :goto_2d
.end method
