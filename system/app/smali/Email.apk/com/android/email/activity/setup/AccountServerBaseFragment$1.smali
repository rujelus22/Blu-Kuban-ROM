.class Lcom/android/email/activity/setup/AccountServerBaseFragment$1;
.super Landroid/os/AsyncTask;
.source "AccountServerBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountServerBaseFragment;->onCheckSettingsComplete(I)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

.field final synthetic val$settingsResult:I


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountServerBaseFragment;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$1;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    iput p2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$1;->val$settingsResult:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 344
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4
    .parameter "params"

    .prologue
    .line 347
    iget v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$1;->val$settingsResult:I

    if-nez v0, :cond_10

    .line 348
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    .line 349
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$1;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->saveSettingsAfterEdit()V

    .line 354
    :cond_10
    :goto_10
    const/4 v0, 0x0

    return-object v0

    .line 351
    :cond_12
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$1;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->saveSettingsAfterSetup()V

    goto :goto_10
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 344
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 5
    .parameter "result"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$1;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCallback:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

    iget v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$1;->val$settingsResult:I

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;->onCheckSettingsComplete(II)V

    .line 361
    return-void
.end method
