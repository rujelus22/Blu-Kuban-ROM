.class Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;
.super Landroid/os/AsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAttachmentTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mDialog:Landroid/app/ProgressDialog;

.field result:I

.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 4139
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .registers 23
    .parameter "attachments"

    .prologue
    .line 4149
    const/4 v3, 0x0

    .line 4152
    .local v3, cnt:I
    move-object/from16 v2, p1

    .local v2, arr$:[Ljava/lang/String;
    array-length v9, v2

    .local v9, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_5
    if-ge v6, v9, :cond_11a

    aget-object v16, v2, v6

    .line 4153
    .local v16, ref:Ljava/lang/String;
    const-string v14, "content://com.android.contacts/contacts/as_vcard/"

    .line 4155
    .local v14, prefixstr:Ljava/lang/String;
    new-instance v8, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v8, v0, v1}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    .line 4162
    .local v8, info:Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "content://com.android.contacts/contacts/as_vcard/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    #calls: Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-static/range {v18 .. v19}, Lcom/android/email/activity/MessageCompose;->access$7400(Lcom/android/email/activity/MessageCompose;Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v8, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :try_end_45
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_45} :catch_d0

    .line 4165
    const/4 v15, 0x0

    .line 4166
    .local v15, previewIcon:Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    .line 4168
    .local v11, orgImage:Landroid/graphics/Bitmap;
    :try_start_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    iget-object v0, v8, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 4170
    if-eqz v11, :cond_8c

    .line 4172
    const/16 v17, 0x27

    .line 4173
    .local v17, width:I
    const/16 v5, 0x27

    .line 4174
    .local v5, height:I
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 4176
    .local v13, originalWidth:I
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 4180
    .local v12, originalHeight:I
    move/from16 v0, v17

    if-le v0, v13, :cond_7b

    .line 4182
    move/from16 v17, v13

    .line 4184
    :cond_7b
    if-le v5, v12, :cond_7e

    .line 4186
    move v5, v12

    .line 4189
    :cond_7e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    #calls: Lcom/android/email/activity/MessageCompose;->createPreviewBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    invoke-static {v0, v11, v1, v5}, Lcom/android/email/activity/MessageCompose;->access$6500(Lcom/android/email/activity/MessageCompose;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_8b
    .catch Ljava/io/FileNotFoundException; {:try_start_47 .. :try_end_8b} :catch_a6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_47 .. :try_end_8b} :catch_d5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_47 .. :try_end_8b} :catch_f7

    move-result-object v15

    .line 4214
    .end local v5           #height:I
    .end local v12           #originalHeight:I
    .end local v13           #originalWidth:I
    .end local v17           #width:I
    :cond_8c
    :goto_8c
    :try_start_8c
    iput-object v15, v8, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 4216
    const/4 v15, 0x0

    .line 4221
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v8, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->publishProgress([Ljava/lang/Object;)V

    .line 4152
    .end local v11           #orgImage:Landroid/graphics/Bitmap;
    .end local v15           #previewIcon:Landroid/graphics/Bitmap;
    :goto_a2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    .line 4192
    .restart local v11       #orgImage:Landroid/graphics/Bitmap;
    .restart local v15       #previewIcon:Landroid/graphics/Bitmap;
    :catch_a6
    move-exception v4

    .line 4193
    .local v4, fnfe:Ljava/io/FileNotFoundException;
    const-string v18, "Compose >>"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception: doInBackground(),File not found \n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4197
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 4198
    const/4 v15, 0x0

    .line 4199
    const/16 v18, 0x8

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->result:I
    :try_end_cf
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8c .. :try_end_cf} :catch_d0

    goto :goto_8c

    .line 4223
    .end local v4           #fnfe:Ljava/io/FileNotFoundException;
    .end local v11           #orgImage:Landroid/graphics/Bitmap;
    .end local v15           #previewIcon:Landroid/graphics/Bitmap;
    :catch_d0
    move-exception v7

    .line 4224
    .local v7, iae:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_a2

    .line 4200
    .end local v7           #iae:Ljava/lang/IllegalArgumentException;
    .restart local v11       #orgImage:Landroid/graphics/Bitmap;
    .restart local v15       #previewIcon:Landroid/graphics/Bitmap;
    :catch_d5
    move-exception v10

    .line 4201
    .local v10, oe:Ljava/lang/OutOfMemoryError;
    :try_start_d6
    const-string v18, "Compose >>"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception: doInBackground().Thumnail Out of Memory \n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4203
    invoke-virtual {v10}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 4204
    const/4 v15, 0x0

    .line 4212
    goto :goto_8c

    .line 4205
    .end local v10           #oe:Ljava/lang/OutOfMemoryError;
    :catch_f7
    move-exception v7

    .line 4206
    .restart local v7       #iae:Ljava/lang/IllegalArgumentException;
    const-string v18, "Compose >>"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception: doInBackground().Illegal Argument \n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4210
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_117
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d6 .. :try_end_117} :catch_d0

    .line 4211
    const/4 v15, 0x0

    goto/16 :goto_8c

    .line 4228
    .end local v7           #iae:Ljava/lang/IllegalArgumentException;
    .end local v8           #info:Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;
    .end local v11           #orgImage:Landroid/graphics/Bitmap;
    .end local v14           #prefixstr:Ljava/lang/String;
    .end local v15           #previewIcon:Landroid/graphics/Bitmap;
    .end local v16           #ref:Ljava/lang/String;
    :cond_11a
    const/16 v18, 0x0

    return-object v18
.end method

.method protected onCancelled()V
    .registers 2

    .prologue
    .line 4252
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_9

    .line 4253
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4255
    :cond_9
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 4139
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 4
    .parameter "param"

    .prologue
    .line 4268
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_9

    .line 4269
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4273
    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget v1, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->result:I

    #calls: Lcom/android/email/activity/MessageCompose;->showResultToast(I)V
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$6700(Lcom/android/email/activity/MessageCompose;I)V

    .line 4274
    return-void
.end method

.method protected onPreExecute()V
    .registers 4

    .prologue
    .line 4234
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->mDialog:Landroid/app/ProgressDialog;

    .line 4235
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v2, 0x7f080524

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4236
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 4237
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 4244
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 4245
    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;)V
    .registers 7
    .parameter "info"

    .prologue
    const/4 v4, 0x0

    .line 4259
    iget v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->result:I

    if-nez v0, :cond_18

    .line 4260
    iget v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->result:I

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->this$0:Lcom/android/email/activity/MessageCompose;

    aget-object v2, p1, v4

    iget-object v2, v2, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    aget-object v3, p1, v4

    iget-object v3, v3, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    #calls: Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;ZLandroid/graphics/Bitmap;Z)I
    invoke-static {v1, v2, v4, v3, v4}, Lcom/android/email/activity/MessageCompose;->access$6600(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Attachment;ZLandroid/graphics/Bitmap;Z)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->result:I

    .line 4262
    :cond_18
    const/4 v0, 0x0

    aput-object v0, p1, v4

    .line 4263
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 4139
    check-cast p1, [Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTask;->onProgressUpdate([Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;)V

    return-void
.end method
