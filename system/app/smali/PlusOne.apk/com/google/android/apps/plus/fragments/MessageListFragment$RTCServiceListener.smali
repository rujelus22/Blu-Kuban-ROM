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
    .line 204
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/fragments/MessageListFragment;Lcom/google/android/apps/plus/fragments/MessageListFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 204
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
    .line 211
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRequestId:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$700(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRequestId:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$700(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_20

    .line 212
    invoke-virtual {p3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getErrorCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 213
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->messageLoadSucceeded()V

    .line 221
    :cond_20
    :goto_20
    return-void

    .line 215
    :cond_21
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->messageLoadFailed()V

    .line 216
    const-string v0, "MessageListFragment"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 217
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
    .line 228
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRequestId:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$700(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mRequestId:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$700(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_29

    .line 229
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->messageLoadFailed()V

    .line 230
    const-string v0, "MessageListFragment"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 231
    const-string v0, "MessageListFragment"

    const-string v1, "message load timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_29
    return-void
.end method

.method public onUserTypingStatusChanged(JLjava/lang/String;Ljava/lang/String;Z)V
    .registers 10
    .parameter "conversationRowId"
    .parameter "userId"
    .parameter "userName"
    .parameter "isTyping"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mConversationRowId:J
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$800(Lcom/google/android/apps/plus/fragments/MessageListFragment;)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_76

    .line 243
    if-eqz p5, :cond_77

    .line 244
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingParticipants:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$900(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/plus/fragments/MessageListFragment$UserTypingInfo;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    invoke-direct {v1, v2, p4}, Lcom/google/android/apps/plus/fragments/MessageListFragment$UserTypingInfo;-><init>(Lcom/google/android/apps/plus/fragments/MessageListFragment;Ljava/lang/String;)V

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :goto_1c
    const-string v0, "MessageListFragment"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 249
    const-string v0, "MessageListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Typing status for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_47
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$1100(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mCheckExpiredTypingRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$1000(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 253
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$1100(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mCheckExpiredTypingRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$1000(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 254
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$1100(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mCheckExpiredTypingRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$1000(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7918

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 256
    :cond_76
    return-void

    .line 246
    :cond_77
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$RTCServiceListener;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/MessageListFragment;->mTypingParticipants:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->access$900(Lcom/google/android/apps/plus/fragments/MessageListFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c
.end method
