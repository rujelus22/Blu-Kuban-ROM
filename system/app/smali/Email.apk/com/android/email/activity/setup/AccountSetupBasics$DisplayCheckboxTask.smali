.class Lcom/android/email/activity/setup/AccountSetupBasics$DisplayCheckboxTask;
.super Landroid/os/AsyncTask;
.source "AccountSetupBasics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupBasics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayCheckboxTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupBasics;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V
    .registers 2
    .parameter

    .prologue
    .line 677
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DisplayCheckboxTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/AccountSetupBasics;Lcom/android/email/activity/setup/AccountSetupBasics$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 677
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics$DisplayCheckboxTask;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 4
    .parameter "params"

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DisplayCheckboxTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 677
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics$DisplayCheckboxTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 5
    .parameter "numAccounts"

    .prologue
    const/4 v2, 0x0

    .line 686
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_1e

    .line 687
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DisplayCheckboxTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    .line 688
    .local v0, a:Landroid/app/Activity;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$DisplayCheckboxTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$300(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;I)V

    .line 689
    const v1, 0x7f0e0015

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/app/Activity;II)V

    .line 690
    const v1, 0x7f0e0016

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/app/Activity;II)V

    .line 692
    .end local v0           #a:Landroid/app/Activity;
    :cond_1e
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 677
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics$DisplayCheckboxTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
