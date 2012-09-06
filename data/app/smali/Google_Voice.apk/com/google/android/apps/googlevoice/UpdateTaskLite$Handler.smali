.class Lcom/google/android/apps/googlevoice/UpdateTaskLite$Handler;
.super Landroid/os/Handler;
.source "UpdateTaskLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/UpdateTaskLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/UpdateTaskLite;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/googlevoice/UpdateTaskLite;)V
    .registers 2
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/UpdateTaskLite$Handler;->this$0:Lcom/google/android/apps/googlevoice/UpdateTaskLite;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/googlevoice/UpdateTaskLite;Lcom/google/android/apps/googlevoice/UpdateTaskLite$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/UpdateTaskLite$Handler;-><init>(Lcom/google/android/apps/googlevoice/UpdateTaskLite;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "message"

    .prologue
    .line 89
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_13

    .line 90
    const-string v1, "UpdateTaskLite.Handler.handleMessage(message=\'%s\')"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 92
    :cond_13
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_56

    .line 110
    const-string v1, "UTL: Unknown message"

    #calls: Lcom/google/android/apps/googlevoice/UpdateTaskLite;->logCheckinMessage(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/UpdateTaskLite;->access$400(Ljava/lang/String;)V

    .line 111
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 113
    :goto_20
    return-void

    .line 94
    :pswitch_21
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

    .line 95
    .local v0, listConversationRequest:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;->isCompletedOrException()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 96
    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;->hasException()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 97
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateTaskLite$Handler;->this$0:Lcom/google/android/apps/googlevoice/UpdateTaskLite;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;->getException()Ljava/lang/Exception;

    move-result-object v2

    #calls: Lcom/google/android/apps/googlevoice/UpdateTaskLite;->notifyOnFailure(Ljava/lang/Exception;)V
    invoke-static {v1, v2}, Lcom/google/android/apps/googlevoice/UpdateTaskLite;->access$100(Lcom/google/android/apps/googlevoice/UpdateTaskLite;Ljava/lang/Exception;)V

    goto :goto_20

    .line 100
    :cond_3b
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateTaskLite$Handler;->this$0:Lcom/google/android/apps/googlevoice/UpdateTaskLite;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;->getConversations()[Lcom/google/android/apps/googlevoice/core/Conversation;

    move-result-object v2

    #calls: Lcom/google/android/apps/googlevoice/UpdateTaskLite;->updateModel([Lcom/google/android/apps/googlevoice/core/Conversation;)V
    invoke-static {v1, v2}, Lcom/google/android/apps/googlevoice/UpdateTaskLite;->access$200(Lcom/google/android/apps/googlevoice/UpdateTaskLite;[Lcom/google/android/apps/googlevoice/core/Conversation;)V

    .line 101
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/UpdateTaskLite$Handler;->this$0:Lcom/google/android/apps/googlevoice/UpdateTaskLite;

    #calls: Lcom/google/android/apps/googlevoice/UpdateTaskLite;->notifyOnSuccess()V
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/UpdateTaskLite;->access$300(Lcom/google/android/apps/googlevoice/UpdateTaskLite;)V

    goto :goto_20

    .line 105
    :cond_4a
    const-string v1, "UTL: Unexpected request state."

    #calls: Lcom/google/android/apps/googlevoice/UpdateTaskLite;->logCheckinMessage(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/UpdateTaskLite;->access$400(Ljava/lang/String;)V

    .line 106
    const-string v1, "UpdateTaskLite handler invoked in unexpected state."

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V

    goto :goto_20

    .line 92
    nop

    :pswitch_data_56
    .packed-switch 0x64
        :pswitch_21
    .end packed-switch
.end method
