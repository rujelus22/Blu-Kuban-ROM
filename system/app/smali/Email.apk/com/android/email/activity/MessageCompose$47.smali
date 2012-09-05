.class Lcom/android/email/activity/MessageCompose$47;
.super Landroid/os/AsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->addAttachment(Landroid/net/Uri;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field mDialog:Landroid/app/ProgressDialog;

.field result:I

.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .registers 3
    .parameter

    .prologue
    .line 12590
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$47;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 12591
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageCompose$47;->result:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/lang/Integer;
    .registers 15
    .parameter "uri"

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 12599
    new-instance v3, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$47;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {v3, v9, v10}, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V

    .line 12601
    .local v3, info:Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;
    iput-object v10, v3, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 12602
    iput-boolean v12, v3, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->checkBitmap:Z

    .line 12604
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$47;->this$0:Lcom/android/email/activity/MessageCompose;

    aget-object v10, p1, v12

    #calls: Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-static {v9, v10}, Lcom/android/email/activity/MessageCompose;->access$7400(Lcom/android/email/activity/MessageCompose;Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v9

    iput-object v9, v3, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 12608
    const/4 v5, 0x0

    .line 12610
    .local v5, orgImage:Landroid/graphics/Bitmap;
    :try_start_18
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$47;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v9}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, v3, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v10, v10, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 12612
    if-eqz v5, :cond_4a

    .line 12615
    const/16 v8, 0x27

    .line 12616
    .local v8, width:I
    const/16 v1, 0x27

    .line 12617
    .local v1, height:I
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 12619
    .local v7, originalWidth:I
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 12623
    .local v6, originalHeight:I
    if-le v8, v7, :cond_3f

    .line 12626
    move v8, v7

    .line 12629
    :cond_3f
    if-le v1, v6, :cond_42

    .line 12632
    move v1, v6

    .line 12636
    :cond_42
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$47;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->createPreviewBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    invoke-static {v9, v5, v8, v1}, Lcom/android/email/activity/MessageCompose;->access$6500(Lcom/android/email/activity/MessageCompose;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, v3, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->bitmap:Landroid/graphics/Bitmap;
    :try_end_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_4a} :catch_59
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18 .. :try_end_4a} :catch_7b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_4a} :catch_99

    .line 12655
    .end local v1           #height:I
    .end local v6           #originalHeight:I
    .end local v7           #originalWidth:I
    .end local v8           #width:I
    :cond_4a
    :goto_4a
    const/4 v9, 0x1

    new-array v9, v9, [Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;

    aput-object v3, v9, v12

    invoke-virtual {p0, v9}, Lcom/android/email/activity/MessageCompose$47;->publishProgress([Ljava/lang/Object;)V

    .line 12657
    iget v9, p0, Lcom/android/email/activity/MessageCompose$47;->result:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    return-object v9

    .line 12639
    :catch_59
    move-exception v0

    .line 12640
    .local v0, fnfe:Ljava/io/FileNotFoundException;
    const-string v9, "Compose >>"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception: doInBackground(),File not found \n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 12642
    const/16 v9, 0x8

    iput v9, p0, Lcom/android/email/activity/MessageCompose$47;->result:I

    goto :goto_4a

    .line 12643
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_7b
    move-exception v4

    .line 12644
    .local v4, oe:Ljava/lang/OutOfMemoryError;
    const-string v9, "Compose >>"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception: doInBackground().Thumnail Out of Memory \n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    .line 12647
    .end local v4           #oe:Ljava/lang/OutOfMemoryError;
    :catch_99
    move-exception v2

    .line 12648
    .local v2, iae:Ljava/lang/IllegalArgumentException;
    const-string v9, "Compose >>"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception: doInBackground().Illegal Argument \n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 12590
    check-cast p1, [Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$47;->doInBackground([Landroid/net/Uri;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 4
    .parameter "arg1"

    .prologue
    .line 12681
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$47;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_9

    .line 12682
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$47;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 12685
    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$47;->this$0:Lcom/android/email/activity/MessageCompose;

    iget v1, p0, Lcom/android/email/activity/MessageCompose$47;->result:I

    #calls: Lcom/android/email/activity/MessageCompose;->showResultToast(I)V
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$6700(Lcom/android/email/activity/MessageCompose;I)V

    .line 12686
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 12590
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$47;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 4

    .prologue
    .line 12662
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$47;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose$47;->mDialog:Landroid/app/ProgressDialog;

    .line 12663
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$47;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$47;->this$0:Lcom/android/email/activity/MessageCompose;

    const v2, 0x7f080524

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 12664
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$47;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 12665
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$47;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 12667
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$47;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 12668
    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;)V
    .registers 9
    .parameter "info"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 12672
    iget v0, p0, Lcom/android/email/activity/MessageCompose$47;->result:I

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$47;->this$0:Lcom/android/email/activity/MessageCompose;

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

    iput v0, p0, Lcom/android/email/activity/MessageCompose$47;->result:I

    .line 12675
    aget-object v0, p1, v5

    iput-object v6, v0, Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;->attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 12676
    aput-object v6, p1, v5

    .line 12677
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 12590
    check-cast p1, [Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$47;->onProgressUpdate([Lcom/android/email/activity/MessageCompose$LoadAttachmentTaskReportInfo;)V

    return-void
.end method
