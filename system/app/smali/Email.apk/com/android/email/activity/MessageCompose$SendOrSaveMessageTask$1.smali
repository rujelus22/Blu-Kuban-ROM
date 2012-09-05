.class Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask$1;
.super Landroid/os/AsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
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
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;)V
    .registers 2
    .parameter

    .prologue
    .line 5147
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask$1;->this$1:Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 5147
    check-cast p1, [Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask$1;->doInBackground([Ljava/lang/Long;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Long;)Ljava/lang/Void;
    .registers 5
    .parameter "attachmentIds"

    .prologue
    .line 5150
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask$1;->this$1:Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$5800(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->deleteAttachment(J)V

    .line 5151
    const/4 v0, 0x0

    return-object v0
.end method
