.class Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;
.super Landroid/os/AsyncTask;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadAttachmentAllTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;",
        "Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;",
        "[",
        "Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;",
        ">;"
    }
.end annotation


# instance fields
.field bActiveNetwork:Z

.field checkDownloadState:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

.field numProcessed:I

.field numPublished:I

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Z)V
    .registers 4
    .parameter
    .parameter "bActive"

    .prologue
    const/4 v0, 0x0

    .line 3328
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 3329
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3322
    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->numPublished:I

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->numProcessed:I

    .line 3324
    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->bActiveNetwork:Z

    .line 3326
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->NO_ERROR:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->checkDownloadState:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    .line 3330
    iput-boolean p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->bActiveNetwork:Z

    .line 3331
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 3319
    check-cast p1, [Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->doInBackground([Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;)[Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;)[Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .registers 14
    .parameter "params"

    .prologue
    .line 3355
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 3356
    const-string v0, "DownloadAttachmentAllTask"

    const-string v1, "DownloadAttachmentAllTask - doInBackground : start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3360
    :cond_b
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->bActiveNetwork:Z

    if-nez v0, :cond_28

    .line 3361
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080110

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/app/Activity;I)V

    .line 3362
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 3363
    const-string v0, "DownloadAttachmentAllTask"

    const-string v1, "DownloadAttachmentAllTask - doInBackground : ActiveNetwork return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3366
    :cond_26
    const/4 v0, 0x0

    .line 3444
    :goto_27
    return-object v0

    .line 3369
    :cond_28
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1400(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v11

    .line 3371
    .local v11, nAttachmentCount:I
    const/4 v0, 0x0

    aget-object v0, p1, v0

    new-array v1, v11, [Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    iput-object v1, v0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;->attachments:[Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .line 3373
    const/4 v10, 0x0

    .local v10, i:I
    :goto_3a
    if-ge v10, v11, :cond_bf

    .line 3374
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 3375
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_4d

    .line 3376
    const-string v0, "DownloadAttachmentAllTask"

    const-string v1, "DownloadAttachmentAllTask - doInBackground : cancel return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3379
    :cond_4d
    const/4 v0, 0x0

    goto :goto_27

    .line 3382
    :cond_4f
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1400(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .line 3384
    .local v8, attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0, v8}, Lcom/android/email/activity/MessageViewFragmentBase;->checkDPM_Attachments(Lcom/android/email/AttachmentInfo;)Z

    move-result v0

    if-nez v0, :cond_6f

    .line 3385
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->showDownloadITPolicyToast()V

    .line 3373
    :cond_6c
    :goto_6c
    add-int/lit8 v10, v10, 0x1

    goto :goto_3a

    .line 3386
    :cond_6f
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->checkITPolicy_AllowPOPIMAP()Z

    move-result v0

    if-nez v0, :cond_7d

    .line 3387
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->showPop3ImapITPolicyToast()V

    goto :goto_6c

    .line 3389
    :cond_7d
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->checkBeforeViewAttachmentDownloadAll(Lcom/android/email/AttachmentInfo;)Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;
    invoke-static {v0, v8}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1500(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/AttachmentInfo;)Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->checkDownloadState:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    .line 3390
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->checkDownloadState:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->NO_ERROR:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    if-eq v0, v1, :cond_8d

    .line 3391
    const/4 v0, 0x0

    goto :goto_27

    .line 3394
    :cond_8d
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;->attachments:[Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->numPublished:I

    aput-object v8, v0, v1

    .line 3396
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->publishProgress([Ljava/lang/Object;)V

    .line 3398
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->numPublished:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->numPublished:I

    .line 3399
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->numPublished:I

    iput v1, v0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;->attachmentCount:I

    .line 3401
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->numPublished:I

    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->numProcessed:I

    add-int/lit8 v1, v1, 0x5

    if-le v0, v1, :cond_6c

    .line 3403
    const-wide/16 v0, 0x64

    :try_start_b6
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b9
    .catch Ljava/lang/InterruptedException; {:try_start_b6 .. :try_end_b9} :catch_ba

    goto :goto_6c

    .line 3404
    :catch_ba
    move-exception v9

    .line 3405
    .local v9, e:Ljava/lang/InterruptedException;
    invoke-virtual {v9}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6c

    .line 3411
    .end local v8           #attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    .end local v9           #e:Ljava/lang/InterruptedException;
    :cond_bf
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 3412
    const/4 v0, 0x0

    goto/16 :goto_27

    .line 3415
    :cond_c8
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->numPublished:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 3418
    const/4 v10, 0x0

    :goto_d4
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->numPublished:I

    if-ge v10, v0, :cond_125

    .line 3419
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 3420
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_e9

    .line 3421
    const-string v0, "DownloadAttachmentAllTask"

    const-string v1, "DownloadAttachmentAllTask - doInBackground : cancel2 return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3424
    :cond_e9
    const/4 v0, 0x0

    goto/16 :goto_27

    .line 3426
    :cond_ec
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;->attachments:[Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    aget-object v8, v0, v10

    .line 3427
    .restart local v8       #attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    if-eqz v8, :cond_ff

    .line 3428
    iget-boolean v0, v8, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_102

    .line 3429
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->onSaveAttachmentFromSaveAll(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z
    invoke-static {v0, v8}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1600(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z

    .line 3418
    :cond_ff
    :goto_ff
    add-int/lit8 v10, v10, 0x1

    goto :goto_d4

    .line 3431
    :cond_102
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->bDownloadCompleted:Z

    .line 3432
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->isSave:Z

    .line 3433
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->isCancel:Z

    .line 3434
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/Controller;

    move-result-object v0

    iget-wide v1, v8, Lcom/android/email/AttachmentInfo;->mId:J

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J
    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1700(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAccountId:J
    invoke-static {v5}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1800(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v5

    const/16 v7, 0x20

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/Controller;->loadAttachment(JJJI)V

    goto :goto_ff

    .line 3440
    .end local v8           #attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    :cond_125
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_130

    .line 3441
    const-string v0, "DownloadAttachmentAllTask"

    const-string v1, "DownloadAttachmentAllTask - doInBackground : end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3444
    :cond_130
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;->attachments:[Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    goto/16 :goto_27
.end method

.method protected onCancelled()V
    .registers 3

    .prologue
    .line 3511
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 3512
    const-string v0, "DownloadAttachmentAllTask"

    const-string v1, "DownloadAttachmentAllTask - onCancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3514
    :cond_b
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mBtnAllDownload:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 3515
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mBtnAllDownload:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3517
    :cond_1d
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 3319
    check-cast p1, [Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->onPostExecute([Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    return-void
.end method

.method protected onPostExecute([Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .registers 4
    .parameter "attachments"

    .prologue
    .line 3486
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 3487
    const-string v0, "DownloadAttachmentAllTask"

    const-string v1, "DownloadAttachmentAllTask - onPostExecute : start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3490
    :cond_b
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mBtnAllDownload:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 3491
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mBtnAllDownload:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3494
    :cond_1d
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_25

    if-nez p1, :cond_3a

    .line 3495
    :cond_25
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->checkDownloadState:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;->NO_ERROR:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    if-eq v0, v1, :cond_32

    .line 3496
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->checkDownloadState:Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->showToast_checkBeforeViewAttachmentDownloadAll(Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;)V
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1900(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$CHECK_DOWNLOADALL;)V

    .line 3498
    :cond_32
    const-string v0, "DownloadAttachmentAllTask"

    const-string v1, "DownloadAttachmentAllTask - onPostExecute : return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3507
    :cond_39
    :goto_39
    return-void

    .line 3503
    :cond_3a
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_39

    .line 3504
    const-string v0, "DownloadAttachmentAllTask"

    const-string v1, "DownloadAttachmentAllTask - onPostExecute : end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method

.method protected onPreExecute()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3335
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->bActiveNetwork:Z

    if-eqz v0, :cond_20

    .line 3336
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mBtnAllDownload:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3338
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 3339
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 3342
    :cond_20
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAlreadySaveList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1300(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 3343
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAlreadySaveList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1300(Lcom/android/email/activity/MessageViewFragmentBase;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3347
    :goto_31
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseNewDownloadProgress()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/Controller;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 3348
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/Controller;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/email/Controller;->SetAttachdownstop(Z)V

    .line 3350
    :cond_48
    return-void

    .line 3345
    :cond_49
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAlreadySaveList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1302(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_31
.end method

.method protected varargs onProgressUpdate([Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .registers 8
    .parameter "downloadall_info"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 3449
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_d

    .line 3450
    const-string v2, "DownloadAttachmentAllTask"

    const-string v3, "DownloadAttachmentAllTask - onProgressUpdate : start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3454
    :cond_d
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 3455
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_1e

    .line 3456
    const-string v2, "DownloadAttachmentAllTask"

    const-string v3, "DownloadAttachmentAllTask - onProgressUpdate : return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3482
    :cond_1e
    :goto_1e
    return-void

    .line 3462
    :cond_1f
    aget-object v0, p1, v4

    .line 3463
    .local v0, attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    iget v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->numProcessed:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->numProcessed:I

    .line 3465
    :try_start_27
    iget-boolean v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z

    if-nez v2, :cond_42

    .line 3466
    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3467
    iget-object v2, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->saveButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3469
    iget-object v1, v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->progressView:Landroid/widget/ProgressBar;

    .line 3470
    .local v1, bar:Landroid/widget/ProgressBar;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3471
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V
    :try_end_42
    .catchall {:try_start_27 .. :try_end_42} :catchall_51

    .line 3474
    .end local v1           #bar:Landroid/widget/ProgressBar;
    :cond_42
    const/4 v0, 0x0

    .line 3475
    aput-object v5, p1, v4

    .line 3478
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_1e

    .line 3479
    const-string v2, "DownloadAttachmentAllTask"

    const-string v3, "DownloadAttachmentAllTask - onProgressUpdate : end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 3474
    :catchall_51
    move-exception v2

    const/4 v0, 0x0

    .line 3475
    aput-object v5, p1, v4

    .line 3474
    throw v2
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 3319
    check-cast p1, [Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTask;->onProgressUpdate([Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    return-void
.end method
