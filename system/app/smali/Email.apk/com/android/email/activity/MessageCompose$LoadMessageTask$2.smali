.class Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;
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
        "Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;",
        "[",
        "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
        ">;"
    }
.end annotation


# instance fields
.field attachments_cnt:I

.field mDialog:Landroid/app/ProgressDialog;

.field result:I

.field final synthetic this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

.field final synthetic val$draft:Z

.field final synthetic val$message:Lcom/android/emailcommon/provider/EmailContent$Message;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose$LoadMessageTask;ZLcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3705
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iput-boolean p2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->val$draft:Z

    iput-object p3, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->val$message:Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3706
    iput v0, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->result:I

    .line 3707
    iput v0, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->attachments_cnt:I

    .line 3708
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->mDialog:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 3705
    check-cast p1, [Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->doInBackground([Ljava/lang/Long;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Long;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .registers 24
    .parameter "messageIds"

    .prologue
    .line 3750
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->val$draft:Z

    move/from16 v18, v0

    if-nez v18, :cond_3d

    .line 3762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->val$message:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide/from16 v19, v0

    invoke-static/range {v18 .. v20}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v11

    .line 3764
    .local v11, mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-boolean v0, v11, Lcom/android/emailcommon/provider/EmailContent$Account;->mForwardWithFiles:Z

    move/from16 v18, v0

    if-nez v18, :cond_3d

    .line 3765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/email/activity/MessageCompose;->SetOriginMsgEdited(Z)Z

    .line 3766
    const/4 v4, 0x0

    .line 3866
    .end local v11           #mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_3c
    return-object v4

    .line 3770
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v19, p1, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    invoke-static/range {v18 .. v20}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v4

    .line 3774
    .local v4, attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v4, :cond_3c

    .line 3775
    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->attachments_cnt:I

    .line 3778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v18, v0

    #calls: Lcom/android/email/activity/MessageCompose;->getMaxAttachmentUploadSize()I
    invoke-static/range {v18 .. v18}, Lcom/android/email/activity/MessageCompose;->access$6300(Lcom/android/email/activity/MessageCompose;)I

    move-result v12

    .line 3780
    .local v12, maxSize:I
    move-object v2, v4

    .local v2, arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    array-length v10, v2

    .local v10, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_73
    if-ge v7, v10, :cond_3c

    aget-object v3, v2, v7

    .line 3781
    .local v3, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget v0, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x10

    move/from16 v0, v18

    iput v0, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 3783
    iget-object v0, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d2

    .line 3784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->val$message:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_ae

    .line 3785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->val$message:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_d2

    .line 3780
    :cond_ab
    :goto_ab
    add-int/lit8 v7, v7, 0x1

    goto :goto_73

    .line 3787
    :cond_ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->val$message:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d2

    .line 3788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->val$message:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_ab

    .line 3793
    :cond_d2
    new-instance v9, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v9, v0, v1}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    .line 3795
    .local v9, info:Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;
    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v9, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 3796
    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v9, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 3797
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v9, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->checkBitmap:Z

    .line 3799
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->attachments_cnt:I

    move/from16 v18, v0

    if-lez v18, :cond_1df

    .line 3800
    iget-wide v0, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    move-wide/from16 v18, v0

    int-to-long v0, v12

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gtz v18, :cond_166

    iget-object v0, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_166

    .line 3802
    const/4 v14, 0x0

    .line 3804
    .local v14, orgImage:Landroid/graphics/Bitmap;
    :try_start_115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    iget-object v0, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 3808
    if-eqz v14, :cond_166

    .line 3811
    const/16 v17, 0x27

    .line 3812
    .local v17, width:I
    const/16 v6, 0x27

    .line 3813
    .local v6, height:I
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 3815
    .local v16, originalWidth:I
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 3819
    .local v15, originalHeight:I
    move/from16 v0, v17

    move/from16 v1, v16

    if-le v0, v1, :cond_14b

    .line 3823
    move/from16 v17, v16

    .line 3827
    :cond_14b
    if-le v6, v15, :cond_14e

    .line 3831
    move v6, v15

    .line 3836
    :cond_14e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    #calls: Lcom/android/email/activity/MessageCompose;->createPreviewBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    invoke-static {v0, v14, v1, v6}, Lcom/android/email/activity/MessageCompose;->access$6500(Lcom/android/email/activity/MessageCompose;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v9, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;
    :try_end_166
    .catch Ljava/io/FileNotFoundException; {:try_start_115 .. :try_end_166} :catch_17d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_115 .. :try_end_166} :catch_1a3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_115 .. :try_end_166} :catch_1c1

    .line 3860
    .end local v6           #height:I
    .end local v14           #orgImage:Landroid/graphics/Bitmap;
    .end local v15           #originalHeight:I
    .end local v16           #originalWidth:I
    .end local v17           #width:I
    :cond_166
    :goto_166
    iput-object v3, v9, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 3862
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v9, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_ab

    .line 3840
    .restart local v14       #orgImage:Landroid/graphics/Bitmap;
    :catch_17d
    move-exception v5

    .line 3841
    .local v5, fnfe:Ljava/io/FileNotFoundException;
    const-string v18, "Compose >>"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception: doInBackground(),File not found \n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 3844
    const/16 v18, 0x8

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->result:I

    goto :goto_166

    .line 3845
    .end local v5           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1a3
    move-exception v13

    .line 3846
    .local v13, oe:Ljava/lang/OutOfMemoryError;
    const-string v18, "Compose >>"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception: doInBackground().Thumnail Out of Memory \n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v13}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_166

    .line 3849
    .end local v13           #oe:Ljava/lang/OutOfMemoryError;
    :catch_1c1
    move-exception v8

    .line 3850
    .local v8, iae:Ljava/lang/IllegalArgumentException;
    const-string v18, "Compose >>"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception: doInBackground().Illegal Argument \n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_166

    .line 3857
    .end local v8           #iae:Ljava/lang/IllegalArgumentException;
    .end local v14           #orgImage:Landroid/graphics/Bitmap;
    :cond_1df
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v9, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->checkBitmap:Z

    goto :goto_166
.end method

.method protected onCancelled()V
    .registers 3

    .prologue
    .line 3882
    const-string v0, "Email"

    const-string v1, "mLoadAttachmentsTask is cancelled!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3884
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_13

    .line 3885
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3886
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->mDialog:Landroid/app/ProgressDialog;

    .line 3888
    :cond_13
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 3705
    check-cast p1, [Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->onPostExecute([Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    return-void
.end method

.method protected onPostExecute([Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .registers 4
    .parameter "attachments"

    .prologue
    .line 3892
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    .line 3893
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3894
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->mDialog:Landroid/app/ProgressDialog;

    .line 3910
    :cond_c
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget v1, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->result:I

    #calls: Lcom/android/email/activity/MessageCompose;->showResultToast(I)V
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$6700(Lcom/android/email/activity/MessageCompose;I)V

    .line 3911
    return-void
.end method

.method protected onPreExecute()V
    .registers 5

    .prologue
    .line 3712
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v1, v1, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageCompose;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3713
    const-string v1, "Email"

    const-string v2, "Activity is now finishing!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3726
    :goto_11
    return-void

    .line 3717
    :cond_12
    :try_start_12
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v2, v2, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->mDialog:Landroid/app/ProgressDialog;

    .line 3718
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->mDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v2, v2, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v3, 0x7f080193

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3719
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->mDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 3720
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->mDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 3721
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V
    :try_end_3e
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_12 .. :try_end_3e} :catch_3f

    goto :goto_11

    .line 3722
    :catch_3f
    move-exception v0

    .line 3723
    .local v0, badex:Landroid/view/WindowManager$BadTokenException;
    const-string v1, "Email"

    const-string v2, "BadTokenException!!!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3724
    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_11
.end method

.method protected varargs onProgressUpdate([Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;)V
    .registers 8
    .parameter "info"

    .prologue
    const/4 v5, 0x0

    .line 3873
    iget v0, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->result:I

    if-nez v0, :cond_1e

    .line 3874
    iget v0, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->result:I

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->this$1:Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    iget-object v1, v1, Lcom/android/email/activity/MessageCompose$LoadMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    aget-object v2, p1, v5

    iget-object v2, v2, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    aget-object v3, p1, v5

    iget-object v3, v3, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    aget-object v4, p1, v5

    iget-boolean v4, v4, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->checkBitmap:Z

    #calls: Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;ZLandroid/graphics/Bitmap;Z)I
    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/email/activity/MessageCompose;->access$6600(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Attachment;ZLandroid/graphics/Bitmap;Z)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->result:I

    .line 3877
    :cond_1e
    const/4 v0, 0x0

    aput-object v0, p1, v5

    .line 3878
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 3705
    check-cast p1, [Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadMessageTask$2;->onProgressUpdate([Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;)V

    return-void
.end method
