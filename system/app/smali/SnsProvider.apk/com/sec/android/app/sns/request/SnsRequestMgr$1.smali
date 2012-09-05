.class Lcom/sec/android/app/sns/request/SnsRequestMgr$1;
.super Ljava/util/TimerTask;
.source "SnsRequestMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sns/request/SnsRequestMgr;->countRequestTimeout(Lcom/sec/android/app/sns/request/data/SnsRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sns/request/SnsRequestMgr;

.field final synthetic val$targetAppID:I

.field final synthetic val$targetReqID:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/sns/request/SnsRequestMgr;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1201
    iput-object p1, p0, Lcom/sec/android/app/sns/request/SnsRequestMgr$1;->this$0:Lcom/sec/android/app/sns/request/SnsRequestMgr;

    iput p2, p0, Lcom/sec/android/app/sns/request/SnsRequestMgr$1;->val$targetReqID:I

    iput p3, p0, Lcom/sec/android/app/sns/request/SnsRequestMgr$1;->val$targetAppID:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1204
    const-string v3, "SNS_REQUESTMGR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "countRequestTimeout() : reqID = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/sns/request/SnsRequestMgr$1;->val$targetReqID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] TIMEOUT!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    iget-object v3, p0, Lcom/sec/android/app/sns/request/SnsRequestMgr$1;->this$0:Lcom/sec/android/app/sns/request/SnsRequestMgr;

    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 1209
    .local v1, handler:Landroid/os/Handler;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1210
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "appID"

    iget v4, p0, Lcom/sec/android/app/sns/request/SnsRequestMgr$1;->val$targetAppID:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1211
    const-string v3, "reqID"

    iget v4, p0, Lcom/sec/android/app/sns/request/SnsRequestMgr$1;->val$targetReqID:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1213
    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1214
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1215
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1216
    return-void
.end method
