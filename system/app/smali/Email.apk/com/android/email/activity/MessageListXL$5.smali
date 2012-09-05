.class Lcom/android/email/activity/MessageListXL$5;
.super Landroid/os/AsyncTask;
.source "MessageListXL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListXL;->showErrorMessage(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;

.field final synthetic val$accountId:J

.field final synthetic val$rawMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListXL;JLjava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2195
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$5;->this$0:Lcom/android/email/activity/MessageListXL;

    iput-wide p2, p0, Lcom/android/email/activity/MessageListXL$5;->val$accountId:J

    iput-object p4, p0, Lcom/android/email/activity/MessageListXL$5;->val$rawMessage:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 2195
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageListXL$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 6
    .parameter "params"

    .prologue
    .line 2198
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$5;->this$0:Lcom/android/email/activity/MessageListXL;

    iget-wide v2, p0, Lcom/android/email/activity/MessageListXL$5;->val$accountId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 2199
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    :goto_b
    return-object v1

    :cond_c
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    goto :goto_b
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 2195
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageListXL$5;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 6
    .parameter "accountName"

    .prologue
    .line 2204
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$5;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mIsCreated:Z
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$3800(Lcom/android/email/activity/MessageListXL;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 2221
    :goto_8
    return-void

    .line 2208
    :cond_9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 2209
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$5;->val$rawMessage:Ljava/lang/String;

    .line 2219
    .local v0, message:Ljava/lang/String;
    :goto_11
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$5;->this$0:Lcom/android/email/activity/MessageListXL;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2220
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$5;->this$0:Lcom/android/email/activity/MessageListXL;

    iget-wide v2, p0, Lcom/android/email/activity/MessageListXL$5;->val$accountId:J

    #setter for: Lcom/android/email/activity/MessageListXL;->mLastErrorAccountId:J
    invoke-static {v1, v2, v3}, Lcom/android/email/activity/MessageListXL;->access$3902(Lcom/android/email/activity/MessageListXL;J)J

    goto :goto_8

    .line 2214
    .end local v0           #message:Ljava/lang/String;
    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$5;->val$rawMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #message:Ljava/lang/String;
    goto :goto_11
.end method
