.class Lcom/android/email/activity/MessageViewFragmentBase$1;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragmentBase;->onLoadAttachment(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;

.field final synthetic val$attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .registers 4
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 862
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$1;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iput-object p3, p0, Lcom/android/email/activity/MessageViewFragmentBase$1;->val$attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    invoke-direct {p0, p2}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 862
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4
    .parameter "params"

    .prologue
    .line 866
    const-wide/16 v0, 0x3e8

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_7

    .line 868
    :goto_5
    const/4 v0, 0x0

    return-object v0

    .line 867
    :catch_7
    move-exception v0

    goto :goto_5
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 862
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$1;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/Void;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 873
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$1;->val$attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$1000(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 874
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$1;->val$attachment:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->access$900(Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 876
    :cond_12
    return-void
.end method
