.class Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$35;
.super Ljava/lang/Object;
.source "SetupHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 2671
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$35;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2674
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2675
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$35;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->createAccount:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2678
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$35;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPageActivity:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->setRightButtonEnabled(Z)V

    .line 2680
    :cond_15
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$35;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    const/16 v1, 0x45b

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    .line 2681
    return-void
.end method
