.class Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$54;
.super Ljava/lang/Object;
.source "SetupHandler.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getPinWatcher()Landroid/text/TextWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 3363
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$54;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 5
    .parameter "s"

    .prologue
    .line 3366
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$54;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget-object v1, v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPageActivity:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->isInputComplete()Z

    move-result v0

    .line 3367
    .local v0, inputComplete:Z
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$54;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget-object v1, v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPageActivity:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->setRightButtonEnabled(Z)V

    .line 3368
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$54;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    if-eqz p1, :cond_15

    if-nez v0, :cond_1a

    :cond_15
    const/4 v1, 0x0

    :goto_16
    invoke-virtual {v2, v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setPin(Ljava/lang/String;)V

    .line 3369
    return-void

    .line 3368
    :cond_1a
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_16
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 3373
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 3377
    return-void
.end method
