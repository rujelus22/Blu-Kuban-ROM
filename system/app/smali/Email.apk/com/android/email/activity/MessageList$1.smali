.class Lcom/android/email/activity/MessageList$1;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "MessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/emailcommon/utility/EmailAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageList;

.field final synthetic val$me:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageList;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;Landroid/app/Activity;)V
    .registers 4
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/email/activity/MessageList$1;->this$0:Lcom/android/email/activity/MessageList;

    iput-object p3, p0, Lcom/android/email/activity/MessageList$1;->val$me:Landroid/app/Activity;

    invoke-direct {p0, p2}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .registers 4
    .parameter "params"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/email/activity/MessageList$1;->val$me:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/email/activity/MessageList$1;->this$0:Lcom/android/email/activity/MessageList;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageList;->getAccountFromIntent(Landroid/content/Context;Landroid/content/Intent;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 45
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageList$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onSuccess(Ljava/lang/Long;)V
    .registers 6
    .parameter "accountId"

    .prologue
    .line 53
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1f

    .line 55
    :cond_c
    iget-object v0, p0, Lcom/android/email/activity/MessageList$1;->val$me:Landroid/app/Activity;

    const v1, 0x7f080160

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 56
    iget-object v0, p0, Lcom/android/email/activity/MessageList$1;->val$me:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    .line 60
    :goto_19
    iget-object v0, p0, Lcom/android/email/activity/MessageList$1;->this$0:Lcom/android/email/activity/MessageList;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList;->finish()V

    .line 61
    return-void

    .line 58
    :cond_1f
    iget-object v0, p0, Lcom/android/email/activity/MessageList$1;->val$me:Landroid/app/Activity;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/Welcome;->actionOpenAccountInbox(Landroid/app/Activity;J)V

    goto :goto_19
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageList$1;->onSuccess(Ljava/lang/Long;)V

    return-void
.end method
