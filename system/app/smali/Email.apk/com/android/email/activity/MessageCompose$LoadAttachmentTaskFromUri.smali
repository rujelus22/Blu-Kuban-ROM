.class Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;
.super Landroid/os/AsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAttachmentTaskFromUri"
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


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .registers 3
    .parameter

    .prologue
    .line 4006
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4008
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->result:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4006
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;-><init>(Lcom/android/email/activity/MessageCompose;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 4006
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .registers 25
    .parameter "attachments"

    .prologue
    .line 4015
    move-object/from16 v9, p1

    .local v9, arr$:[Ljava/lang/String;
    array-length v0, v9

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_6
    move/from16 v0, v16

    if-ge v13, v0, :cond_11d

    aget-object v21, v9, v13

    .line 4017
    .local v21, ref:Ljava/lang/String;
    new-instance v15, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v4, 0x0

    invoke-direct {v15, v3, v4}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    .line 4024
    .local v15, info:Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;
    :try_start_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    #calls: Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-static {v3, v4}, Lcom/android/email/activity/MessageCompose;->access$7400(Lcom/android/email/activity/MessageCompose;Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v3

    iput-object v3, v15, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :try_end_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_24} :catch_d1

    .line 4027
    const/16 v20, 0x0

    .line 4028
    .local v20, previewIcon:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 4030
    .local v2, orgImage:Landroid/graphics/Bitmap;
    :try_start_27
    iget-object v3, v15, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v4}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/activity/MessageCompose;->getRotatedDegree(Landroid/net/Uri;Landroid/content/Context;)I

    move-result v10

    .line 4033
    .local v10, degree:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, v15, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4035
    if-eqz v2, :cond_93

    .line 4037
    const/16 v22, 0x27

    .line 4038
    .local v22, width:I
    const/16 v12, 0x27

    .line 4040
    .local v12, height:I
    if-eqz v10, :cond_73

    .line 4041
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 4042
    .local v7, m:Landroid/graphics/Matrix;
    int-to-float v3, v10

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 4043
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4047
    .end local v7           #m:Landroid/graphics/Matrix;
    :cond_73
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    .line 4049
    .local v19, originalWidth:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    .line 4053
    .local v18, originalHeight:I
    move/from16 v0, v22

    move/from16 v1, v19

    if-le v0, v1, :cond_83

    .line 4055
    move/from16 v22, v19

    .line 4057
    :cond_83
    move/from16 v0, v18

    if-le v12, v0, :cond_89

    .line 4059
    move/from16 v12, v18

    .line 4062
    :cond_89
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->this$0:Lcom/android/email/activity/MessageCompose;

    move/from16 v0, v22

    #calls: Lcom/android/email/activity/MessageCompose;->createPreviewBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    invoke-static {v3, v2, v0, v12}, Lcom/android/email/activity/MessageCompose;->access$6500(Lcom/android/email/activity/MessageCompose;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_92
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_92} :catch_a8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_27 .. :try_end_92} :catch_d6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_92} :catch_f9

    move-result-object v20

    .line 4087
    .end local v10           #degree:I
    .end local v12           #height:I
    .end local v18           #originalHeight:I
    .end local v19           #originalWidth:I
    .end local v22           #width:I
    :cond_93
    :goto_93
    :try_start_93
    move-object/from16 v0, v20

    iput-object v0, v15, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 4089
    const/16 v20, 0x0

    .line 4094
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;

    const/4 v4, 0x0

    aput-object v15, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->publishProgress([Ljava/lang/Object;)V

    .line 4015
    .end local v2           #orgImage:Landroid/graphics/Bitmap;
    .end local v20           #previewIcon:Landroid/graphics/Bitmap;
    :goto_a4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_6

    .line 4065
    .restart local v2       #orgImage:Landroid/graphics/Bitmap;
    .restart local v20       #previewIcon:Landroid/graphics/Bitmap;
    :catch_a8
    move-exception v11

    .line 4066
    .local v11, fnfe:Ljava/io/FileNotFoundException;
    const-string v3, "Compose >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: doInBackground(),File not found \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4070
    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 4071
    const/16 v20, 0x0

    .line 4072
    const/16 v3, 0x8

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->result:I
    :try_end_d0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_93 .. :try_end_d0} :catch_d1

    goto :goto_93

    .line 4096
    .end local v2           #orgImage:Landroid/graphics/Bitmap;
    .end local v11           #fnfe:Ljava/io/FileNotFoundException;
    .end local v20           #previewIcon:Landroid/graphics/Bitmap;
    :catch_d1
    move-exception v14

    .line 4097
    .local v14, iae:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v14}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_a4

    .line 4073
    .end local v14           #iae:Ljava/lang/IllegalArgumentException;
    .restart local v2       #orgImage:Landroid/graphics/Bitmap;
    .restart local v20       #previewIcon:Landroid/graphics/Bitmap;
    :catch_d6
    move-exception v17

    .line 4074
    .local v17, oe:Ljava/lang/OutOfMemoryError;
    :try_start_d7
    const-string v3, "Compose >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: doInBackground().Thumnail Out of Memory \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4076
    invoke-virtual/range {v17 .. v17}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 4077
    const/16 v20, 0x0

    .line 4085
    goto :goto_93

    .line 4078
    .end local v17           #oe:Ljava/lang/OutOfMemoryError;
    :catch_f9
    move-exception v14

    .line 4079
    .restart local v14       #iae:Ljava/lang/IllegalArgumentException;
    const-string v3, "Compose >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: doInBackground().Illegal Argument \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 4083
    invoke-virtual {v14}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_119
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d7 .. :try_end_119} :catch_d1

    .line 4084
    const/16 v20, 0x0

    goto/16 :goto_93

    .line 4101
    .end local v2           #orgImage:Landroid/graphics/Bitmap;
    .end local v14           #iae:Ljava/lang/IllegalArgumentException;
    .end local v15           #info:Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;
    .end local v20           #previewIcon:Landroid/graphics/Bitmap;
    .end local v21           #ref:Ljava/lang/String;
    :cond_11d
    const/4 v3, 0x0

    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 4006
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 4
    .parameter "param"

    .prologue
    .line 4131
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_9

    .line 4132
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4135
    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->this$0:Lcom/android/email/activity/MessageCompose;

    iget v1, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->result:I

    #calls: Lcom/android/email/activity/MessageCompose;->showResultToast(I)V
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$6700(Lcom/android/email/activity/MessageCompose;I)V

    .line 4136
    return-void
.end method

.method protected onPreExecute()V
    .registers 4

    .prologue
    .line 4106
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->mDialog:Landroid/app/ProgressDialog;

    .line 4107
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->this$0:Lcom/android/email/activity/MessageCompose;

    const v2, 0x7f080193

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4108
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 4109
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 4116
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 4117
    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;)V
    .registers 7
    .parameter "info"

    .prologue
    const/4 v4, 0x0

    .line 4122
    iget v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->result:I

    if-nez v0, :cond_18

    .line 4123
    iget v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->result:I

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->this$0:Lcom/android/email/activity/MessageCompose;

    aget-object v2, p1, v4

    iget-object v2, v2, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    aget-object v3, p1, v4

    iget-object v3, v3, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    #calls: Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;ZLandroid/graphics/Bitmap;Z)I
    invoke-static {v1, v2, v4, v3, v4}, Lcom/android/email/activity/MessageCompose;->access$6600(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Attachment;ZLandroid/graphics/Bitmap;Z)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->result:I

    .line 4125
    :cond_18
    const/4 v0, 0x0

    aput-object v0, p1, v4

    .line 4126
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 4006
    check-cast p1, [Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskFromUri;->onProgressUpdate([Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;)V

    return-void
.end method
