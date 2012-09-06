.class Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$1;
.super Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;
.source "MessengerSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$1;->this$0:Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;

    invoke-direct {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponseReceived(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;)V
    .registers 8
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    const/4 v3, 0x1

    .line 101
    iget-object v0, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$1;->this$0:Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;

    #getter for: Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mRequestId:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->access$200(Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$1;->this$0:Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;

    #getter for: Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->mRequestId:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->access$200(Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_24

    .line 102
    invoke-virtual {p3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getErrorCode()I

    move-result v0

    if-ne v0, v3, :cond_25

    .line 103
    iget-object v0, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$1;->this$0:Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;

    invoke-virtual {p3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getCommand()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->processSetAclResult(Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->access$400(Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;)V

    .line 112
    :cond_24
    :goto_24
    return-void

    .line 105
    :cond_25
    const-string v0, "MessengerSettings"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 106
    const-string v0, "MessengerSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error setting acl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_4a
    iget-object v0, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$1;->this$0:Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->dismissDialog(I)V

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity$1;->this$0:Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/settings/MessengerSettingsActivity;->showDialog(I)V

    goto :goto_24
.end method
