.class Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$41;
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
    .line 2745
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$41;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2748
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2749
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$41;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    #getter for: Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->access$400(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getActivityManager()Lcom/google/android/apps/googlevoice/ActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$41;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget-object v1, v1, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPageActivity:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;

    const/16 v2, 0x5f0

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/googlevoice/ActivityManager;->startSyncSettingsActivityForResult(Landroid/app/Activity;I)V

    .line 2752
    return-void
.end method
