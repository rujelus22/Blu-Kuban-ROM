.class Lcom/sec/android/app/sns/SnsService$3;
.super Lcom/sec/android/app/sns/ISnsDataUpdate$Stub;
.source "SnsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sns/SnsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sns/SnsService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sns/SnsService;)V
    .registers 2
    .parameter

    .prologue
    .line 2681
    iput-object p1, p0, Lcom/sec/android/app/sns/SnsService$3;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-direct {p0}, Lcom/sec/android/app/sns/ISnsDataUpdate$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public updateActivityReadFlag(JZ)V
    .registers 8
    .parameter "activityId"
    .parameter "bRead"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2691
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2692
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "_id"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2693
    const-string v2, "read"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2695
    iget-object v2, p0, Lcom/sec/android/app/sns/SnsService$3;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2696
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2697
    iget-object v2, p0, Lcom/sec/android/app/sns/SnsService$3;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2698
    return-void
.end method

.method public updateFriendLinkPhonebook(ILjava/util/Map;)V
    .registers 11
    .parameter "sp"
    .parameter "ContactIdBundle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2714
    move-object v0, p2

    .line 2720
    .local v0, FriendIdBundle:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2721
    .local v1, bundle:Landroid/os/Bundle;
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 2723
    .local v2, hmKeys:[Ljava/lang/Object;
    const-string v6, "sp"

    invoke-virtual {v1, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2725
    const/4 v3, 0x0

    .local v3, i:I
    :goto_14
    array-length v6, v2

    if-ge v3, v6, :cond_29

    .line 2726
    aget-object v6, v2, v3

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2728
    .local v4, key:Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2725
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 2731
    .end local v4           #key:Ljava/lang/String;
    :cond_29
    const-string v6, "SNS"

    const-string v7, "updateFriendLinkPhonebook : CALLED!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2733
    iget-object v6, p0, Lcom/sec/android/app/sns/SnsService$3;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v6}, Lcom/sec/android/app/sns/SnsService;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 2735
    .local v5, msg:Landroid/os/Message;
    invoke-virtual {v5, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2736
    iget-object v6, p0, Lcom/sec/android/app/sns/SnsService$3;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v6}, Lcom/sec/android/app/sns/SnsService;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2737
    return-void
.end method

.method public updateFriendLinkPhonebookLong(JJ)V
    .registers 9
    .parameter "oldContactId"
    .parameter "newContactId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2747
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2748
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "oldContactId"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2749
    const-string v2, "newContactId"

    invoke-virtual {v0, v2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2751
    iget-object v2, p0, Lcom/sec/android/app/sns/SnsService$3;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2753
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2754
    iget-object v2, p0, Lcom/sec/android/app/sns/SnsService$3;->this$0:Lcom/sec/android/app/sns/SnsService;

    invoke-virtual {v2}, Lcom/sec/android/app/sns/SnsService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2755
    return-void
.end method
