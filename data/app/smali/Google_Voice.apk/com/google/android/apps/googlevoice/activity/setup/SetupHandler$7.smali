.class Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$7;
.super Ljava/lang/Object;
.source "SetupHandler.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity$OnDialogPageCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->handleMessage(Landroid/os/Message;)V
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
    .line 1579
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$7;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogPageCanceled()V
    .registers 3

    .prologue
    .line 1582
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$7;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->confirmVerifiedViaSmsRpc:Lcom/google/android/apps/googlevoice/net/ConfirmVerifiedViaSmsRpc;

    .line 1583
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$7;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    const/16 v1, 0x443

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->removeMessages(I)V

    .line 1584
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$7;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    #calls: Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dismissInlineProgress()V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->access$000(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    .line 1585
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$7;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget-object v0, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->createAccount:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1586
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$7;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$7;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget v1, v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPage:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->removeMessages(I)V

    .line 1587
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$7;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->goBack()V

    .line 1591
    :goto_29
    return-void

    .line 1589
    :cond_2a
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$7;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$7;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget v1, v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPage:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->goToPage(I)V

    goto :goto_29
.end method
