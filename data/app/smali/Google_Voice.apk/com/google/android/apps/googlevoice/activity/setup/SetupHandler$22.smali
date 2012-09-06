.class Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$22;
.super Ljava/lang/Object;
.source "SetupHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 2501
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$22;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 2504
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2505
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$22;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->createAccount:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2507
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$22;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->goBack()V

    .line 2512
    :goto_12
    return-void

    .line 2510
    :cond_13
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$22;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$22;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget v1, v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPage:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->goToPage(I)V

    goto :goto_12
.end method
