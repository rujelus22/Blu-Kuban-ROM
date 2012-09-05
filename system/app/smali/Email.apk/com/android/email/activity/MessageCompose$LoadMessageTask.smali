.class Lcom/android/email/activity/MessageCompose$LoadMessageTask;
.super Landroid/os/AsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadMessageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mMessageId:J

.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageCompose;J)V
    .registers 4
    .parameter
    .parameter "messageId"

    .prologue
    .line 3430
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3431
    iput-wide p2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->mMessageId:J

    .line 3432
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 3427
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/Object;
    .registers 15
    .parameter "params"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 3436
    invoke-static {}, Lcom/android/email/activity/MessageCompose;->access$4400()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 3437
    :goto_9
    :try_start_9
    invoke-static {}, Lcom/android/email/activity/MessageCompose;->access$4500()Z
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_2b

    move-result v6

    if-eqz v6, :cond_19

    .line 3439
    :try_start_f
    invoke-static {}, Lcom/android/email/activity/MessageCompose;->access$4400()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_2b
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_16} :catch_17

    goto :goto_9

    .line 3440
    :catch_17
    move-exception v6

    goto :goto_9

    .line 3444
    :cond_19
    :try_start_19
    monitor-exit v7
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_2b

    .line 3445
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v7, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->mMessageId:J

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v5

    .line 3446
    .local v5, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v5, :cond_2e

    .line 3447
    new-array v6, v12, [Ljava/lang/Object;

    aput-object v9, v6, v10

    aput-object v9, v6, v11

    .line 3481
    :goto_2a
    return-object v6

    .line 3444
    .end local v5           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :catchall_2b
    move-exception v6

    :try_start_2c
    monitor-exit v7
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v6

    .line 3451
    .restart local v5       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_2e
    iget-wide v1, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 3452
    .local v1, accountId:J
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v6, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 3457
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :try_start_36
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 3458
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 3459
    const-string v6, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 3461
    .local v4, isEditDraft:Z
    if-eqz v4, :cond_87

    .line 3462
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreReplyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    .line 3464
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreReplyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    .line 3466
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreIntroTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    .line 3468
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodySourceKey(Landroid/content/Context;J)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J
    :try_end_80
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_80} :catch_91

    .line 3481
    :goto_80
    new-array v6, v12, [Ljava/lang/Object;

    aput-object v5, v6, v10

    aput-object v0, v6, v11

    goto :goto_2a

    .line 3471
    :cond_87
    const/4 v6, 0x0

    :try_start_88
    iput-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    .line 3472
    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    .line 3473
    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;
    :try_end_90
    .catch Ljava/lang/RuntimeException; {:try_start_88 .. :try_end_90} :catch_91

    goto :goto_80

    .line 3475
    .end local v4           #isEditDraft:Z
    :catch_91
    move-exception v3

    .line 3476
    .local v3, e:Ljava/lang/RuntimeException;
    const-string v6, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while loading message body: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3477
    new-array v6, v12, [Ljava/lang/Object;

    aput-object v9, v6, v10

    aput-object v9, v6, v11

    goto/16 :goto_2a
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 3427
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->onPostExecute([Ljava/lang/Object;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/Object;)V
    .registers 19
    .parameter "messageAndAccount"

    .prologue
    .line 3488
    if-nez p1, :cond_3

    .line 3946
    :cond_2
    :goto_2
    return-void

    .line 3492
    :cond_3
    const/4 v11, 0x0

    aget-object v9, p1, v11

    check-cast v9, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 3493
    .local v9, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    const/4 v11, 0x1

    aget-object v1, p1, v11

    check-cast v1, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 3494
    .local v1, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v9, :cond_24

    if-nez v1, :cond_24

    .line 3498
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v12, 0x7f080086

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 3500
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v11}, Lcom/android/email/activity/MessageCompose;->finish()V

    goto :goto_2

    .line 3507
    :cond_24
    const-string v11, "com.android.email.intent.action.EDIT_DRAFT"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_54

    const-string v11, "com.android.email.intent.action.FORWARD"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_54

    const-string v11, "com.android.email.intent.action.EMAIL_DOC"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3c0

    .line 3509
    :cond_54
    const-string v11, "com.android.email.intent.action.EDIT_DRAFT"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 3510
    .local v5, draft:Z
    if-eqz v5, :cond_303

    .line 3511
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11, v9}, Lcom/android/email/activity/MessageCompose;->access$1702(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 3512
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    iget v11, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit16 v11, v11, 0x400

    if-eqz v11, :cond_1c8

    const/4 v11, 0x1

    :goto_7e
    invoke-virtual {v12, v11}, Lcom/android/email/activity/MessageCompose;->SetOriginMsgEdited(Z)Z

    .line 3513
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v12

    iget v12, v12, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    #setter for: Lcom/android/email/activity/MessageCompose;->mPriority:I
    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$4602(Lcom/android/email/activity/MessageCompose;I)I

    .line 3515
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    iget v11, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit16 v11, v11, 0x800

    if-eqz v11, :cond_1cb

    const/4 v11, 0x1

    :goto_a5
    #setter for: Lcom/android/email/activity/MessageCompose;->mIsReadChecked:Z
    invoke-static {v12, v11}, Lcom/android/email/activity/MessageCompose;->access$4702(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 3516
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    iget v11, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit16 v11, v11, 0x1000

    if-eqz v11, :cond_1ce

    const/4 v11, 0x1

    :goto_bb
    #setter for: Lcom/android/email/activity/MessageCompose;->mIsDeliveryChecked:Z
    invoke-static {v12, v11}, Lcom/android/email/activity/MessageCompose;->access$4802(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 3520
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v12

    iget-object v12, v12, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateId:Ljava/lang/String;

    #setter for: Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;
    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$1102(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;

    .line 3521
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$1100(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_109

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$1100(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_109

    .line 3522
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v12

    iget-object v12, v12, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateName:Ljava/lang/String;

    #setter for: Lcom/android/email/activity/MessageCompose;->mTemplateName:Ljava/lang/String;
    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$1302(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;

    .line 3523
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v12

    iget-object v12, v12, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateDescription:Ljava/lang/String;

    #setter for: Lcom/android/email/activity/MessageCompose;->mTemplateDescription:Ljava/lang/String;
    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$1202(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;

    .line 3527
    :cond_109
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v11}, Lcom/android/email/activity/MessageCompose;->getIsSyncedDraftMessage()Z

    move-result v11

    if-eqz v11, :cond_30a

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->IsEAS()Z
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$4900(Lcom/android/email/activity/MessageCompose;)Z

    move-result v11

    if-eqz v11, :cond_30a

    .line 3528
    iget-object v11, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    if-eqz v11, :cond_12d

    iget-object v11, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    if-eqz v11, :cond_14c

    iget-object v11, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_14c

    :cond_12d
    iget-object v11, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    if-eqz v11, :cond_13d

    iget-object v11, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    if-eqz v11, :cond_14c

    iget-object v11, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_14c

    .line 3530
    :cond_13d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    iget v12, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const/high16 v13, 0x2

    or-int/2addr v12, v13

    iput v12, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 3532
    :cond_14c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/email/activity/MessageCompose;->SetOriginMsgEdited(Z)Z

    .line 3536
    iget-boolean v11, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-nez v11, :cond_15c

    iget-boolean v11, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v11, :cond_1da

    .line 3537
    :cond_15c
    const-string v11, "Compose >>"

    const-string v12, "this is an encrypted or signed draft message."

    invoke-static {v11, v12}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3538
    iget-boolean v11, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mProcessed:Z

    if-nez v11, :cond_27d

    .line 3539
    iget-boolean v11, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-nez v11, :cond_17c

    iget-boolean v11, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    if-eqz v11, :cond_1d1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    iget v11, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mIsMimeLoaded:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1d1

    .line 3541
    :cond_17c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeHandlerTask:Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$5000(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    move-result-object v11

    if-eqz v11, :cond_1a0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeHandlerTask:Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$5000(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    move-result-object v11

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeHandlerTask:Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$5000(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v11

    sget-object v12, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v11, v12, :cond_2

    .line 3544
    :cond_1a0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    new-instance v12, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v14}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    #setter for: Lcom/android/email/activity/MessageCompose;->mSmimeHandlerTask:Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;
    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$5002(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;)Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    .line 3545
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSmimeHandlerTask:Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$5000(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Void;

    invoke-virtual {v11, v12}, Lcom/android/email/activity/MessageCompose$SmimeHandlerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2

    .line 3512
    :cond_1c8
    const/4 v11, 0x0

    goto/16 :goto_7e

    .line 3515
    :cond_1cb
    const/4 v11, 0x0

    goto/16 :goto_a5

    .line 3516
    :cond_1ce
    const/4 v11, 0x0

    goto/16 :goto_bb

    .line 3548
    :cond_1d1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->onLoadMoreMessage()V
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$5100(Lcom/android/email/activity/MessageCompose;)V

    goto/16 :goto_2

    .line 3555
    :cond_1da
    iget v11, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_1ed

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v12, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget v14, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mIsMimeLoaded:I

    #calls: Lcom/android/email/activity/MessageCompose;->hasInlineDataImage(JI)Z
    invoke-static {v11, v12, v13, v14}, Lcom/android/email/activity/MessageCompose;->access$5200(Lcom/android/email/activity/MessageCompose;JI)Z

    move-result v11

    if-eqz v11, :cond_1fd

    .line 3557
    :cond_1ed
    const-string v11, "Compose >>"

    const-string v12, "mFlagTruncated == FLAG_TRUNCATED_YES"

    invoke-static {v11, v12}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3558
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->onLoadMoreMessage()V
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$5100(Lcom/android/email/activity/MessageCompose;)V

    goto/16 :goto_2

    .line 3561
    :cond_1fd
    const-string v11, "Compose >>"

    const-string v12, "mFlagTruncated == FLAG_TRUNCATED_NO"

    invoke-static {v11, v12}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3565
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v12, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v11, v12, v13}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v8

    .line 3567
    .local v8, mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v10, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    .line 3568
    .local v10, protocolVer:Ljava/lang/String;
    iget v11, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_23a

    .line 3569
    const-string v11, "Compose >>"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "message.mFlagLoaded = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Message.FLAG_LOADED_COMPLETE = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3573
    :cond_23a
    if-eqz v10, :cond_27d

    const-string v11, "2.5"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_27d

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    iget v11, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mIsMimeLoaded:I

    if-nez v11, :cond_27d

    .line 3579
    const-string v11, "Compose >>"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isEx2003 = true, Protocol Version = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Message Truncated = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 3582
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->onLoadMoreMessage()V
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$5100(Lcom/android/email/activity/MessageCompose;)V

    goto/16 :goto_2

    .line 3589
    .end local v8           #mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v10           #protocolVer:Ljava/lang/String;
    :cond_27d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v12, 0x0

    #setter for: Lcom/android/email/activity/MessageCompose;->mEmbeddedImageDownload:Z
    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$5302(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 3590
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v12, 0x0

    #setter for: Lcom/android/email/activity/MessageCompose;->mInlineImageCallbackCount:I
    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$5402(Lcom/android/email/activity/MessageCompose;I)I

    .line 3591
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v12, 0x0

    #setter for: Lcom/android/email/activity/MessageCompose;->mInlineImageCount:I
    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$5502(Lcom/android/email/activity/MessageCompose;I)I

    .line 3594
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v12, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v11, v12, v13}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v4

    .line 3596
    .local v4, attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-object v10, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    .line 3597
    .restart local v10       #protocolVer:Ljava/lang/String;
    if-eqz v10, :cond_2cf

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    const-wide/high16 v13, 0x4004

    cmpl-double v11, v11, v13

    if-ltz v11, :cond_2cf

    .line 3599
    move-object v2, v4

    .local v2, arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    array-length v7, v2

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_2b0
    if-ge v6, v7, :cond_2cf

    aget-object v3, v2, v6

    .line 3600
    .local v3, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-object v11, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v11, :cond_2bd

    iget v11, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mIsInline:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_2c3

    :cond_2bd
    iget v11, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit16 v11, v11, 0x80

    if-eqz v11, :cond_300

    .line 3602
    :cond_2c3
    iget-object v11, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-nez v11, :cond_300

    .line 3603
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v12, 0x1

    #setter for: Lcom/android/email/activity/MessageCompose;->mEmbeddedImageDownload:Z
    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$5302(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 3610
    .end local v2           #arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v3           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v6           #i$:I
    .end local v7           #len$:I
    :cond_2cf
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mEmbeddedImageDownload:Z
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$5300(Lcom/android/email/activity/MessageCompose;)Z

    move-result v11

    if-eqz v11, :cond_30a

    .line 3611
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    new-instance v12, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v9}, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;-><init>(Lcom/android/email/activity/MessageCompose$LoadMessageTask;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Long;

    const/4 v14, 0x0

    iget-wide v15, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Lcom/android/email/activity/MessageCompose$LoadMessageTask$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v12

    #setter for: Lcom/android/email/activity/MessageCompose;->mLoadEmbeddedAttachmentsTask:Landroid/os/AsyncTask;
    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$5602(Lcom/android/email/activity/MessageCompose;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 3697
    const-string v11, "Compose >>"

    const-string v12, "pending loadmessagetask to load embedded images"

    invoke-static {v11, v12}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3599
    .restart local v2       #arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v3       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    :cond_300
    add-int/lit8 v6, v6, 0x1

    goto :goto_2b0

    .line 3703
    .end local v2           #arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v3           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v4           #attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v10           #protocolVer:Ljava/lang/String;
    :cond_303
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11, v9}, Lcom/android/email/activity/MessageCompose;->access$6102(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 3705
    :cond_30a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    new-instance v12, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v5, v9}, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;-><init>(Lcom/android/email/activity/MessageCompose$LoadMessageTask;ZLcom/android/emailcommon/provider/EmailContent$Message;)V

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Long;

    const/4 v14, 0x0

    iget-wide v15, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v12

    #setter for: Lcom/android/email/activity/MessageCompose;->mLoadAttachmentsTask:Landroid/os/AsyncTask;
    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$6202(Lcom/android/email/activity/MessageCompose;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 3925
    .end local v5           #draft:Z
    :cond_328
    :goto_328
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->configureSmimeOptions(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    invoke-static {v11, v9}, Lcom/android/email/activity/MessageCompose;->access$6800(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 3927
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    invoke-static {v11, v1}, Lcom/android/email/activity/MessageCompose;->access$6900(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 3928
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->setFromAccount()V
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$7000(Lcom/android/email/activity/MessageCompose;)V

    .line 3929
    if-eqz v9, :cond_356

    .line 3930
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$5900(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v12

    invoke-virtual {v11, v9, v12}, Lcom/android/email/activity/MessageCompose;->processSourceMessageGuarded(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 3931
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v12, 0x1

    #setter for: Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z
    invoke-static {v11, v12}, Lcom/android/email/activity/MessageCompose;->access$7102(Lcom/android/email/activity/MessageCompose;Z)Z

    .line 3934
    :cond_356
    const-string v11, "com.android.email.intent.action.REPLY"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_386

    const-string v11, "com.android.email.intent.action.REPLY_ALL"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_386

    const-string v11, "com.android.email.intent.action.FORWARD"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_429

    :cond_386
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$6100(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    if-eqz v11, :cond_429

    .line 3936
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$6100(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v12

    iget-wide v12, v12, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #setter for: Lcom/android/email/activity/MessageCompose;->mOriginalMessageIdForIRM:J
    invoke-static {v11, v12, v13}, Lcom/android/email/activity/MessageCompose;->access$7202(Lcom/android/email/activity/MessageCompose;J)J

    .line 3942
    :cond_3a1
    :goto_3a1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mOriginalMessageIdForIRM:J
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$7200(Lcom/android/email/activity/MessageCompose;)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_2

    .line 3943
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mOriginalMessageIdForIRM:J
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$7200(Lcom/android/email/activity/MessageCompose;)J

    move-result-wide v12

    #calls: Lcom/android/email/activity/MessageCompose;->applyIRMresctrition(J)V
    invoke-static {v11, v12, v13}, Lcom/android/email/activity/MessageCompose;->access$7300(Lcom/android/email/activity/MessageCompose;J)V

    goto/16 :goto_2

    .line 3913
    :cond_3c0
    const-string v11, "com.android.email.intent.action.REPLY"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_420

    const-string v11, "com.android.email.intent.action.REPLY_ALL"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_420

    const-string v11, "com.android.email.intent.action.MEETING_RESPONSE"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_420

    const-string v11, "com.android.email.intent.action.PROPOSE_NEW_TIME"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_420

    const-string v11, "com.android.email.intent.action.CALENDAR_MEETING_RESPONSE"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_420

    const-string v11, "com.android.email.intent.action.CALENDAR_PROPOSE_NEW_TIME"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_328

    .line 3920
    :cond_420
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11, v9}, Lcom/android/email/activity/MessageCompose;->access$6102(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;

    goto/16 :goto_328

    .line 3937
    :cond_429
    const-string v11, "com.android.email.intent.action.EDIT_DRAFT"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3a1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    if-eqz v11, :cond_3a1

    .line 3938
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v12

    iget-wide v12, v12, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    #setter for: Lcom/android/email/activity/MessageCompose;->mOriginalMessageIdForIRM:J
    invoke-static {v11, v12, v13}, Lcom/android/email/activity/MessageCompose;->access$7202(Lcom/android/email/activity/MessageCompose;J)J

    goto/16 :goto_3a1
.end method
