.class Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;
.super Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;
.source "MessageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RTCServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/fragments/MessageListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/fragments/MessageListFragment;Lcom/google/android/apps/plus/fragments/MessageListFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;-><init>(Lcom/google/android/apps/plus/fragments/MessageListFragment;)V

    return-void
.end method


# virtual methods
.method public onResponseReceived(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;)V
    .registers 7
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRequestId:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$400(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRequestId:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$400(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_20

    .line 195
    invoke-virtual {p3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getErrorCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 196
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->messageLoadSucceeded()V

    .line 204
    :cond_20
    :goto_20
    return-void

    .line 198
    :cond_21
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->messageLoadFailed()V

    .line 199
    const-string v0, "MessageListFragment"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 200
    const-string v0, "MessageListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message load failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method public onResponseTimeout(I)V
    .registers 4
    .parameter "requestId"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRequestId:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$400(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRequestId:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$400(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_29

    .line 212
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->messageLoadFailed()V

    .line 213
    const-string v0, "MessageListFragment"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 214
    const-string v0, "MessageListFragment"

    const-string v1, "message load timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_29
    return-void
.end method

.method public onUserTypingStatusChanged(JLjava/lang/String;Ljava/lang/String;Z)V
    .registers 11
    .parameter "conversationRowId"
    .parameter "conversationId"
    .parameter "userId"
    .parameter "isTyping"

    .prologue
    .line 225
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mConversationRowId:Ljava/lang/Long;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$500(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_a1

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mConversationRowId:Ljava/lang/Long;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$500(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_a1

    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mParticipantList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$600(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 228
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mParticipantList:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$600(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    check-cast v0, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 230
    .restart local v0       #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    :cond_2b
    if-eqz v0, :cond_ac

    .line 231
    if-eqz p5, :cond_a2

    .line 232
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingParticipants:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$700(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/plus/fragments/MessageListFragment$UserTypingInfo;

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFullName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/apps/plus/fragments/MessageListFragment$UserTypingInfo;-><init>(Lcom/google/android/apps/plus/fragments/MessageListFragment;Ljava/lang/String;)V

    invoke-virtual {v1, p4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :goto_43
    const-string v1, "MessageListFragment"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 238
    const-string v1, "MessageListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Typing status for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_72
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$900(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mCheckExpiredTypingRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$800(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 243
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$900(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mCheckExpiredTypingRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$800(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 244
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$900(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mCheckExpiredTypingRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$800(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x7918

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 252
    .end local v0           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    :cond_a1
    :goto_a1
    return-void

    .line 235
    .restart local v0       #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    :cond_a2
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingParticipants:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$700(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    .line 246
    :cond_ac
    const-string v1, "MessageListFragment"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 247
    const-string v1, "MessageListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Typing status for non existing participant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " conversation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a1
.end method
