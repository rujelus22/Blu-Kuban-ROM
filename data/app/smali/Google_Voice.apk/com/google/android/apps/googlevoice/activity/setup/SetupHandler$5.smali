.class Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$5;
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
    .line 1438
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$5;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogPageCanceled()V
    .registers 3

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$5;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->prepareAccountForProvisioningRpc:Lcom/google/android/apps/googlevoice/net/PrepareAccountForProvisioningRpc;

    .line 1442
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$5;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    #calls: Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dismissInlineProgress()V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->access$000(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    .line 1443
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$5;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$5;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget v1, v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPage:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->goToPage(I)V

    .line 1444
    return-void
.end method
