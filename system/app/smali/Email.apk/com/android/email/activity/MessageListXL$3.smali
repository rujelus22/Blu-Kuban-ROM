.class Lcom/android/email/activity/MessageListXL$3;
.super Landroid/os/Handler;
.source "MessageListXL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListXL;)V
    .registers 2
    .parameter

    .prologue
    .line 1924
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$3;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    .line 1927
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$300()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2f

    .line 1928
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$3;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXLFragmentManager;->resetDatas()V

    .line 1929
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$3;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$300()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/email/activity/MessageListXL$3;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mMailboxId:J
    invoke-static {v3}, Lcom/android/email/activity/MessageListXL;->access$400(Lcom/android/email/activity/MessageListXL;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/email/activity/MessageListXL$3;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mMessageId:J
    invoke-static {v5}, Lcom/android/email/activity/MessageListXL;->access$500(Lcom/android/email/activity/MessageListXL;)J

    move-result-wide v5

    move v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectAccount(JJJZZ)V

    .line 1933
    :goto_2e
    return-void

    .line 1931
    :cond_2f
    const-string v0, "MessageListXL"

    const-string v1, "account is not set"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method
