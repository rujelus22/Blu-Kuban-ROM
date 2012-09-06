.class Lcom/google/android/apps/googlevoice/CallConnectingActivity$2;
.super Landroid/os/AsyncTask;
.source "CallConnectingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/CallConnectingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/google/android/apps/googlevoice/ContactsManipulator$ContactInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/CallConnectingActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity$2;->this$0:Lcom/google/android/apps/googlevoice/CallConnectingActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/String;)Lcom/google/android/apps/googlevoice/ContactsManipulator$ContactInfo;
    .registers 7
    .parameter "params"

    .prologue
    .line 163
    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity$2;->this$0:Lcom/google/android/apps/googlevoice/CallConnectingActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity$2;->this$0:Lcom/google/android/apps/googlevoice/CallConnectingActivity;

    #getter for: Lcom/google/android/apps/googlevoice/CallConnectingActivity;->contactApiHelper:Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->access$300(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity$2;->this$0:Lcom/google/android/apps/googlevoice/CallConnectingActivity;

    #getter for: Lcom/google/android/apps/googlevoice/CallConnectingActivity;->versionHelper:Lcom/google/android/apps/googlevoice/system/VersionHelper;
    invoke-static {v4}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->access$400(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)Lcom/google/android/apps/googlevoice/system/VersionHelper;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/googlevoice/ContactsManipulator;->fillContactInfoFromNumber(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;Lcom/google/android/apps/googlevoice/system/VersionHelper;)Lcom/google/android/apps/googlevoice/ContactsManipulator$ContactInfo;

    move-result-object v0

    .line 166
    .local v0, contactinfo:Lcom/google/android/apps/googlevoice/ContactsManipulator$ContactInfo;
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity$2;->this$0:Lcom/google/android/apps/googlevoice/CallConnectingActivity;

    #getter for: Lcom/google/android/apps/googlevoice/CallConnectingActivity;->log:Lcom/google/android/apps/common/log/GLog;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->access$100(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v1

    const-string v2, "Filling in contact info"

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 167
    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 159
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/CallConnectingActivity$2;->doInBackground([Ljava/lang/String;)Lcom/google/android/apps/googlevoice/ContactsManipulator$ContactInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/android/apps/googlevoice/ContactsManipulator$ContactInfo;)V
    .registers 4
    .parameter "contactinfo"

    .prologue
    .line 172
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 173
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity$2;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3e

    if-eqz p1, :cond_3e

    iget-object v0, p1, Lcom/google/android/apps/googlevoice/ContactsManipulator$ContactInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_3e

    iget-object v0, p1, Lcom/google/android/apps/googlevoice/ContactsManipulator$ContactInfo;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 175
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity$2;->this$0:Lcom/google/android/apps/googlevoice/CallConnectingActivity;

    #getter for: Lcom/google/android/apps/googlevoice/CallConnectingActivity;->nameText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->access$500(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/apps/googlevoice/ContactsManipulator$ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity$2;->this$0:Lcom/google/android/apps/googlevoice/CallConnectingActivity;

    #getter for: Lcom/google/android/apps/googlevoice/CallConnectingActivity;->labelText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->access$600(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/apps/googlevoice/ContactsManipulator$ContactInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity$2;->this$0:Lcom/google/android/apps/googlevoice/CallConnectingActivity;

    #getter for: Lcom/google/android/apps/googlevoice/CallConnectingActivity;->numberText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->access$800(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallConnectingActivity$2;->this$0:Lcom/google/android/apps/googlevoice/CallConnectingActivity;

    #getter for: Lcom/google/android/apps/googlevoice/CallConnectingActivity;->originalNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/CallConnectingActivity;->access$700(Lcom/google/android/apps/googlevoice/CallConnectingActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :cond_3e
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 159
    check-cast p1, Lcom/google/android/apps/googlevoice/ContactsManipulator$ContactInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/CallConnectingActivity$2;->onPostExecute(Lcom/google/android/apps/googlevoice/ContactsManipulator$ContactInfo;)V

    return-void
.end method
