.class Lcom/android/email/activity/MessageViewFragment$1;
.super Lcom/android/email/Controller$Result;
.source "MessageViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragment$1;->this$0:Lcom/android/email/activity/MessageViewFragment;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method


# virtual methods
.method public sendMeetingEditedResponseCallback(ZJJ)V
    .registers 14
    .parameter "success"
    .parameter "messageId"
    .parameter "draftId"

    .prologue
    .line 410
    if-eqz p1, :cond_3

    .line 455
    :cond_2
    :goto_2
    return-void

    .line 415
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$1;->this$0:Lcom/android/email/activity/MessageViewFragment;

    #getter for: Lcom/android/email/activity/MessageViewFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragment;->access$200(Lcom/android/email/activity/MessageViewFragment;)Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/android/email/activity/MessageViewFragment$1$1;

    move-object v1, p0

    move-wide v2, p4

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageViewFragment$1$1;-><init>(Lcom/android/email/activity/MessageViewFragment$1;JJ)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 446
    const/4 v6, 0x0

    .line 447
    .local v6, draft:Lcom/android/emailcommon/provider/EmailContent$Message;
    const-wide/16 v0, -0x1

    cmp-long v0, p4, v0

    if-lez v0, :cond_2

    .line 448
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$1;->this$0:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p4, p5}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    .line 449
    if-eqz v6, :cond_2

    .line 450
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$1;->this$0:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->getController()Lcom/android/email/Controller;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p4, v1, v2

    iget-wide v2, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->deleteMessage([JJ)V

    goto :goto_2
.end method
