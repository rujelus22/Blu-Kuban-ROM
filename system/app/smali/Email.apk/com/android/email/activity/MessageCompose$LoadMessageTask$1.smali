.class Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;
.super Landroid/os/AsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose$LoadMessageTask;->onPostExecute([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "[",
        "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

.field final synthetic val$message:Lcom/android/emailcommon/provider/EmailContent$Message;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose$LoadMessageTask;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 3611
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iput-object p2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->val$message:Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 3611
    check-cast p1, [Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->doInBackground([Ljava/lang/Long;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Long;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .registers 5
    .parameter "messageIds"

    .prologue
    .line 3614
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 3611
    check-cast p1, [Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->onPostExecute([Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    return-void
.end method

.method protected onPostExecute([Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .registers 22
    .parameter "result"

    .prologue
    .line 3620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v2, v2, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->val$message:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v14

    .line 3622
    .local v14, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v0, v14, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 3623
    .local v19, protocolVer:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v2, v2, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v3, 0x0

    #setter for: Lcom/android/email/activity/MessageCompose;->mInlineImageCount:I
    invoke-static {v2, v3}, Lcom/android/email/activity/MessageCompose;->access$5502(Lcom/android/email/activity/MessageCompose;I)I

    .line 3624
    move-object/from16 v15, p1

    .local v15, arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    array-length v0, v15

    move/from16 v18, v0

    .local v18, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_25
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_54

    aget-object v16, v15, v17

    .line 3625
    .local v16, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v2, :cond_3a

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mIsInline:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_42

    :cond_3a
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_51

    .line 3627
    :cond_42
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-nez v2, :cond_51

    .line 3628
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v2, v2, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$5508(Lcom/android/email/activity/MessageCompose;)I

    .line 3624
    :cond_51
    add-int/lit8 v17, v17, 0x1

    goto :goto_25

    .line 3632
    .end local v16           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_54
    const-string v2, "Compose >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mInlineImageCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v4, v4, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mInlineImageCount:I
    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$5500(Lcom/android/email/activity/MessageCompose;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 3634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v2, v2, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mInlineImageCount:I
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$5500(Lcom/android/email/activity/MessageCompose;)I

    move-result v2

    if-lez v2, :cond_1c3

    if-eqz v19, :cond_1c3

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v4, 0x4004

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1c3

    .line 3637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v2, v2, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v3, 0x0

    #setter for: Lcom/android/email/activity/MessageCompose;->mInlineImageCount:I
    invoke-static {v2, v3}, Lcom/android/email/activity/MessageCompose;->access$5502(Lcom/android/email/activity/MessageCompose;I)I

    .line 3638
    move-object/from16 v15, p1

    array-length v0, v15

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_9f
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1c3

    aget-object v16, v15, v17

    .line 3639
    .restart local v16       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    const-string v2, "Compose >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 3641
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v2, :cond_d0

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mIsInline:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_d8

    :cond_d0
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1bf

    .line 3643
    :cond_d8
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-nez v2, :cond_1bf

    .line 3644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v2, v2, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mInlineImageDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$5700(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_106

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v2, v2, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mInlineImageDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$5700(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_167

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v2, v2, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mInlineImageDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$5700(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_167

    .line 3647
    :cond_106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v2, v2, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    new-instance v3, Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v4, v4, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/email/activity/MessageCompose;->mInlineImageDialog:Landroid/app/ProgressDialog;
    invoke-static {v2, v3}, Lcom/android/email/activity/MessageCompose;->access$5702(Lcom/android/email/activity/MessageCompose;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 3649
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v2, v2, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mInlineImageDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$5700(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1$1;-><init>(Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;)V

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 3668
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v2, v2, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mInlineImageDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$5700(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v3, v3, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageCompose;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800b4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v2, v2, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mInlineImageDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$5700(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 3675
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v2, v2, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mInlineImageDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$5700(Lcom/android/email/activity/MessageCompose;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 3682
    :cond_167
    const-string v2, "Compose >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content id2 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 3685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v2, v2, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$5800(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;

    move-result-object v2

    move-object/from16 v0, v16

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, v16

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->val$message:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v9, v9, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$5900(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v9

    iget-wide v9, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v11, v11, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$6000(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/ControllerResultUiThreadWrapper;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v2 .. v13}, Lcom/android/email/Controller;->loadAttachment(JJJJLcom/android/email/Controller$Result;ZZ)V

    .line 3689
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v2, v2, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$5508(Lcom/android/email/activity/MessageCompose;)I

    .line 3638
    :cond_1bf
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_9f

    .line 3694
    .end local v16           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_1c3
    return-void
.end method