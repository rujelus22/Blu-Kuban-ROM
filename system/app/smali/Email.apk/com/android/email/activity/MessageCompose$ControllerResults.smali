.class Lcom/android/email/activity/MessageCompose$ControllerResults;
.super Lcom/android/email/Controller$Result;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ControllerResults"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .registers 2
    .parameter

    .prologue
    .line 13956
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method


# virtual methods
.method public loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V
    .registers 12
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "progress"

    .prologue
    .line 14000
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mMessageId:J
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$10100(Lcom/android/email/activity/MessageCompose;)J

    move-result-wide v0

    cmp-long v0, p4, v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose;->getIsSyncedDraftMessage()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->IsEAS()Z
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$4900(Lcom/android/email/activity/MessageCompose;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 14001
    :cond_1a
    const-string v0, "Compose >>"

    const-string v1, "MessageCompose. ignore loadMoreCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14033
    :cond_21
    :goto_21
    return-void

    .line 14005
    :cond_22
    if-nez p1, :cond_57

    .line 14006
    sparse-switch p8, :sswitch_data_7a

    goto :goto_21

    .line 14009
    :sswitch_28
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDownloadSmimeAttachment:Z
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$9700(Lcom/android/email/activity/MessageCompose;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 14010
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose;->attachmentProgress(Z)V

    .line 14015
    :cond_36
    :sswitch_36
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDownloadSmimeAttachment:Z
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$9700(Lcom/android/email/activity/MessageCompose;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 14016
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0, p6, p7}, Lcom/android/email/activity/MessageCompose;->finishLoadAttachment(J)V

    goto :goto_21

    .line 14017
    :cond_44
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mEmbeddedImageDownload:Z
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$5300(Lcom/android/email/activity/MessageCompose;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 14018
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$5408(Lcom/android/email/activity/MessageCompose;)I

    .line 14019
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose;->finishLoadInlineAttachment()V

    goto :goto_21

    .line 14026
    :cond_57
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDownloadSmimeAttachment:Z
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$9700(Lcom/android/email/activity/MessageCompose;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 14027
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->finishLoadAttachment(J)V

    goto :goto_21

    .line 14028
    :cond_67
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mEmbeddedImageDownload:Z
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$5300(Lcom/android/email/activity/MessageCompose;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 14029
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$5408(Lcom/android/email/activity/MessageCompose;)I

    .line 14030
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose;->finishLoadInlineAttachment()V

    goto :goto_21

    .line 14006
    :sswitch_data_7a
    .sparse-switch
        0x0 -> :sswitch_28
        0x64 -> :sswitch_36
        0xc8 -> :sswitch_36
    .end sparse-switch
.end method

.method public loadMoreCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .registers 12
    .parameter "result"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 13959
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mMessageId:J
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$10100(Lcom/android/email/activity/MessageCompose;)J

    move-result-wide v2

    cmp-long v2, p2, v2

    if-nez v2, :cond_1c

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageCompose;->getIsSyncedDraftMessage()Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->IsEAS()Z
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$4900(Lcom/android/email/activity/MessageCompose;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 13960
    :cond_1c
    const-string v2, "Compose >>"

    const-string v3, "MessageCompose. ignore loadMoreCallback"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13995
    :goto_23
    return-void

    .line 13963
    :cond_24
    if-nez p1, :cond_5e

    .line 13964
    sparse-switch p4, :sswitch_data_88

    goto :goto_23

    .line 13966
    :sswitch_2a
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageCompose;->startLoadMore()V

    .line 13967
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v2, v6}, Lcom/android/email/activity/MessageCompose;->progressLoadMore(I)V

    goto :goto_23

    .line 13972
    :sswitch_35
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 13973
    .local v0, cv:Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 13974
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "isMimeLoaded"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 13976
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 13981
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageCompose;->finishLoadMore()V

    goto :goto_23

    .line 13988
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :cond_5e
    const-string v2, "Compose >>"

    const-string v3, "MessageCompose. Loadmore failed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13989
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$10200(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_82

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$10200(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_82

    .line 13990
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLoadMoreDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$10200(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 13993
    :cond_82
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$ControllerResults;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageCompose;->finish()V

    goto :goto_23

    .line 13964
    :sswitch_data_88
    .sparse-switch
        0x0 -> :sswitch_2a
        0x64 -> :sswitch_35
    .end sparse-switch
.end method
