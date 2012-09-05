.class Lcom/android/email/activity/MessageCompose$28$1;
.super Landroid/os/AsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose$28;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/widget/LinearLayout;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mDialog:Landroid/app/ProgressDialog;

.field final synthetic this$1:Lcom/android/email/activity/MessageCompose$28;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose$28;)V
    .registers 2
    .parameter

    .prologue
    .line 8544
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$28$1;->this$1:Lcom/android/email/activity/MessageCompose$28;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 8544
    check-cast p1, [Landroid/widget/LinearLayout;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$28$1;->doInBackground([Landroid/widget/LinearLayout;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/widget/LinearLayout;)Ljava/lang/Void;
    .registers 9
    .parameter "mAtt"

    .prologue
    const/4 v6, 0x0

    .line 8560
    aget-object v3, p1, v6

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 8562
    .local v1, count:I
    new-array v0, v1, [Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 8564
    .local v0, attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v1, :cond_5a

    .line 8565
    aget-object v3, p1, v6

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    aput-object v3, v0, v2

    .line 8569
    const-string v3, "com.android.email.intent.action.FORWARD"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$28$1;->this$1:Lcom/android/email/activity/MessageCompose$28;

    iget-object v4, v4, Lcom/android/email/activity/MessageCompose$28;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    const-string v3, "com.android.email.intent.action.EMAIL_DOC"

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$28$1;->this$1:Lcom/android/email/activity/MessageCompose$28;

    iget-object v4, v4, Lcom/android/email/activity/MessageCompose$28;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 8571
    :cond_3a
    aget-object v3, v0, v2

    const-wide/16 v4, -0x1

    iput-wide v4, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 8576
    :cond_40
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->isSaved()Z

    move-result v3

    if-eqz v3, :cond_57

    .line 8585
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$28$1;->this$1:Lcom/android/email/activity/MessageCompose$28;

    iget-object v3, v3, Lcom/android/email/activity/MessageCompose$28;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;
    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$5800(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;

    move-result-object v3

    aget-object v4, v0, v2

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/email/Controller;->deleteAttachment(J)V

    .line 8564
    :cond_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 8588
    :cond_5a
    const/4 v3, 0x0

    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 8544
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$28$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 5
    .parameter "param"

    .prologue
    const/4 v2, 0x0

    .line 8593
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$28$1;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_a

    .line 8594
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$28$1;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 8597
    :cond_a
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$28$1;->this$1:Lcom/android/email/activity/MessageCompose$28;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$28;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAttachments:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$10600(Lcom/android/email/activity/MessageCompose;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 8598
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$28$1;->this$1:Lcom/android/email/activity/MessageCompose$28;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$28;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v1, 0x1

    #calls: Lcom/android/email/activity/MessageCompose;->setDraftNeedsSaving(Z)V
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$2700(Lcom/android/email/activity/MessageCompose;Z)V

    .line 8599
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$28$1;->this$1:Lcom/android/email/activity/MessageCompose$28;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$28;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->shrinkAttachmentLayout(Z)V
    invoke-static {v0, v2}, Lcom/android/email/activity/MessageCompose;->access$10700(Lcom/android/email/activity/MessageCompose;Z)V

    .line 8600
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$28$1;->this$1:Lcom/android/email/activity/MessageCompose$28;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$28;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mAttachmentTotalSize:I
    invoke-static {v0, v2}, Lcom/android/email/activity/MessageCompose;->access$8902(Lcom/android/email/activity/MessageCompose;I)I

    .line 8601
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$28$1;->this$1:Lcom/android/email/activity/MessageCompose$28;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$28;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mAttachmentTotalCount:I
    invoke-static {v0, v2}, Lcom/android/email/activity/MessageCompose;->access$10802(Lcom/android/email/activity/MessageCompose;I)I

    .line 8602
    return-void
.end method

.method protected onPreExecute()V
    .registers 4

    .prologue
    .line 8550
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$28$1;->this$1:Lcom/android/email/activity/MessageCompose$28;

    iget-object v1, v1, Lcom/android/email/activity/MessageCompose$28;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose$28$1;->mDialog:Landroid/app/ProgressDialog;

    .line 8551
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$28$1;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$28$1;->this$1:Lcom/android/email/activity/MessageCompose$28;

    iget-object v1, v1, Lcom/android/email/activity/MessageCompose$28;->this$0:Lcom/android/email/activity/MessageCompose;

    const v2, 0x7f08035f

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 8552
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$28$1;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 8553
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$28$1;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 8554
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$28$1;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 8555
    return-void
.end method
