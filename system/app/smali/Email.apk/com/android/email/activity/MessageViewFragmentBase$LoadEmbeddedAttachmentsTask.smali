.class Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadEmbeddedAttachmentsTask"
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
    .line 5076
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 5077
    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    invoke-static {p1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2300(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    .line 5078
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 5074
    check-cast p1, [Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->doInBackground([Ljava/lang/Long;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Long;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .registers 5
    .parameter "arg0"

    .prologue
    .line 5082
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

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
    .line 5074
    check-cast p1, [Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->onSuccess([Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    return-void
.end method

.method protected onSuccess([Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .registers 21
    .parameter "result"

    .prologue
    .line 5089
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v4, 0x0

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageDownloadCnt:I
    invoke-static {v3, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5302(Lcom/android/email/activity/MessageViewFragmentBase;I)I

    move-result v3

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageCnt:I
    invoke-static {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5202(Lcom/android/email/activity/MessageViewFragmentBase;I)I

    .line 5090
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v0, p1

    array-length v3, v0

    new-array v3, v3, [J

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageAttachmentId:[J
    invoke-static {v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5402(Lcom/android/email/activity/MessageViewFragmentBase;[J)[J

    .line 5091
    move-object/from16 v14, p1

    .local v14, arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    array-length v0, v14

    move/from16 v18, v0

    .local v18, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_23
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_167

    aget-object v15, v14, v17

    .line 5094
    .local v15, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :try_start_2b
    iget-wide v2, v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    invoke-static {v2, v3}, Lcom/android/email/adapter/ProtocolAdapter;->isSevenAccount(J)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_43

    .line 5095
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mHtmlTextRaw:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4400(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->rearrangeEmbeddedAttachment(Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    invoke-static {v2, v3, v15}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4500(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_43} :catch_168

    .line 5101
    :cond_43
    :goto_43
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v2

    if-eqz v2, :cond_c7

    .line 5106
    iget-object v2, v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v2, :cond_c3

    iget v2, v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mIsInline:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c3

    .line 5108
    iget-object v2, v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-nez v2, :cond_c3

    .line 5112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mEmbeddedImageDownload:Z

    .line 5129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-wide v3, v15, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->findAttachmentInfo(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    invoke-static {v2, v3, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5500(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v16

    .line 5131
    .local v16, attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    if-eqz v16, :cond_77

    .line 5132
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->enableSave:Z

    .line 5133
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->enableView:Z

    .line 5136
    :cond_77
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/Controller;

    move-result-object v2

    iget-wide v3, v15, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static {v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1700(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v7}, Lcom/android/email/activity/MessageViewFragmentBase;->access$500(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v7

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J
    invoke-static {v9}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1800(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mControllerCallback:Lcom/android/email/ControllerResultUiThreadWrapper;
    invoke-static {v11}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5600(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/ControllerResultUiThreadWrapper;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v2 .. v13}, Lcom/android/email/Controller;->loadAttachment(JJJJLcom/android/email/Controller$Result;ZZ)V

    .line 5139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageAttachmentId:[J
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5400(Lcom/android/email/activity/MessageViewFragmentBase;)[J

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageCnt:I
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5200(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v3

    iget-wide v4, v15, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    aput-wide v4, v2, v3

    .line 5140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5208(Lcom/android/email/activity/MessageViewFragmentBase;)I

    .line 5091
    .end local v16           #attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    :cond_c3
    :goto_c3
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_23

    .line 5143
    :cond_c7
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseInlineTag()Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 5144
    iget v2, v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_c3

    iget-object v2, v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-nez v2, :cond_c3

    .line 5146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mEmbeddedImageDownload:Z

    .line 5157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-wide v3, v15, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->findAttachmentInfo(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    invoke-static {v2, v3, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5500(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v16

    .line 5159
    .restart local v16       #attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    if-eqz v16, :cond_f4

    .line 5160
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->enableSave:Z

    .line 5161
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->enableView:Z

    .line 5168
    :cond_f4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, v16

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->onLoadAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;ZZ)V
    invoke-static {v2, v0, v3, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5700(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;ZZ)V

    .line 5170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageAttachmentId:[J
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5400(Lcom/android/email/activity/MessageViewFragmentBase;)[J

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageCnt:I
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5200(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v3

    iget-wide v4, v15, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    aput-wide v4, v2, v3

    .line 5171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5208(Lcom/android/email/activity/MessageViewFragmentBase;)I

    goto :goto_c3

    .line 5174
    .end local v16           #attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    :cond_11b
    iget-object v2, v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v2, :cond_c3

    iget-object v2, v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-nez v2, :cond_c3

    .line 5178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mEmbeddedImageDownload:Z

    .line 5188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-wide v3, v15, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->findAttachmentInfo(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    invoke-static {v2, v3, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5500(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v16

    .line 5190
    .restart local v16       #attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    if-eqz v16, :cond_140

    .line 5191
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->enableSave:Z

    .line 5192
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->enableView:Z

    .line 5199
    :cond_140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v3, 0x1

    move-object/from16 v0, v16

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->onLoadAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)V
    invoke-static {v2, v0, v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5800(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;Z)V

    .line 5201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageAttachmentId:[J
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5400(Lcom/android/email/activity/MessageViewFragmentBase;)[J

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mBodyImageCnt:I
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5200(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v3

    iget-wide v4, v15, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    aput-wide v4, v2, v3

    .line 5202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$LoadEmbeddedAttachmentsTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$5208(Lcom/android/email/activity/MessageViewFragmentBase;)I

    goto/16 :goto_c3

    .line 5207
    .end local v15           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v16           #attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    :cond_167
    return-void

    .line 5096
    .restart local v15       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :catch_168
    move-exception v2

    goto/16 :goto_43
.end method
