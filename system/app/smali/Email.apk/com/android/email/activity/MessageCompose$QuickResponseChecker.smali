.class Lcom/android/email/activity/MessageCompose$QuickResponseChecker;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuickResponseChecker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/emailcommon/utility/EmailAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V
    .registers 3
    .parameter
    .parameter "tracker"

    .prologue
    .line 467
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$QuickResponseChecker;->this$0:Lcom/android/email/activity/MessageCompose;

    .line 468
    invoke-direct {p0, p2}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    .line 469
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 10
    .parameter "params"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 473
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$QuickResponseChecker;->this$0:Lcom/android/email/activity/MessageCompose;

    sget-object v3, Lcom/android/emailcommon/provider/QuickResponse;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "accountKey=?"

    new-array v5, v0, [Ljava/lang/String;

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$QuickResponseChecker;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$100(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/Account;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/emailcommon/provider/Account;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v2, v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_23

    :goto_1e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_23
    move v0, v1

    goto :goto_1e
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 466
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$QuickResponseChecker;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onSuccess(Ljava/lang/Boolean;)V
    .registers 4
    .parameter "quickResponsesAvailable"

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$QuickResponseChecker;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    #calls: Lcom/android/email/activity/MessageCompose;->setQuickResponsesAvailable(Z)V
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$200(Lcom/android/email/activity/MessageCompose;Z)V

    .line 481
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 466
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$QuickResponseChecker;->onSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
