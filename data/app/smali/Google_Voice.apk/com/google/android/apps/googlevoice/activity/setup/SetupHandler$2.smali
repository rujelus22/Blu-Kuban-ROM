.class Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$2;
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
    .line 1218
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$2;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogPageCanceled()V
    .registers 2

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$2;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    #calls: Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dismissInlineProgress()V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->access$000(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    .line 1222
    return-void
.end method
