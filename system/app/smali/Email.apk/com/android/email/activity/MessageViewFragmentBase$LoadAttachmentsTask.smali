.class Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAttachmentsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/emailcommon/utility/EmailAsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "[",
        "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .registers 3
    .parameter

    .prologue
    .line 1192
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 1193
    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1100(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    .line 1194
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1191
    check-cast p1, [Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->doInBackground([Ljava/lang/Long;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Long;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .registers 5
    .parameter "messageIds"

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1191
    check-cast p1, [Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->onSuccess([Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    return-void
.end method

.method protected onSuccess([Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .registers 14
    .parameter "attachments"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1204
    if-nez p1, :cond_a

    .line 1231
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->showContent(ZZ)V
    invoke-static {v8, v11, v10}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2300(Lcom/android/email/activity/MessageViewFragmentBase;ZZ)V

    .line 1233
    :goto_9
    return-void

    .line 1207
    :cond_a
    const/4 v3, 0x0

    .line 1208
    .local v3, htmlChanged:Z
    const/4 v6, 0x0

    .line 1209
    .local v6, numDisplayedAttachments:I
    move-object v0, p1

    .local v0, arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :try_start_d
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_f
    if-ge v4, v5, :cond_74

    aget-object v1, v0, v4

    .line 1210
    .local v1, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1800(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6c

    iget-object v8, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v8, :cond_6c

    iget-object v8, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v8, :cond_6c

    .line 1214
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\\s+(?i)src=\"cid(?-i):\\Q"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\\E\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1216
    .local v2, contentIdRe:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " src=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1217
    .local v7, srcContentUri:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v9, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1800(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1802(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;

    .line 1218
    const/4 v3, 0x1

    .line 1209
    .end local v2           #contentIdRe:Ljava/lang/String;
    .end local v7           #srcContentUri:Ljava/lang/String;
    :goto_69
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 1220
    :cond_6c
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    invoke-static {v8, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1900(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 1221
    add-int/lit8 v6, v6, 0x1

    goto :goto_69

    .line 1224
    .end local v1           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_74
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->setAttachmentCount(I)V
    invoke-static {v8, v6}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2000(Lcom/android/email/activity/MessageViewFragmentBase;I)V

    .line 1225
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v9, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1800(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2102(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;

    .line 1226
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v9, 0x0

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1802(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)Ljava/lang/String;

    .line 1227
    if-eqz v3, :cond_97

    .line 1228
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v9, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextWebView:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2100(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->setMessageHtml(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2200(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)V
    :try_end_97
    .catchall {:try_start_d .. :try_end_97} :catchall_9e

    .line 1231
    :cond_97
    iget-object v8, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->showContent(ZZ)V
    invoke-static {v8, v11, v10}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2300(Lcom/android/email/activity/MessageViewFragmentBase;ZZ)V

    goto/16 :goto_9

    .end local v4           #i$:I
    .end local v5           #len$:I
    :catchall_9e
    move-exception v8

    iget-object v9, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->showContent(ZZ)V
    invoke-static {v9, v11, v10}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2300(Lcom/android/email/activity/MessageViewFragmentBase;ZZ)V

    throw v8
.end method
