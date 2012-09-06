.class Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$27;
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
    .line 2559
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$27;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 2562
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2564
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$27;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    const/4 v1, 0x0

    #calls: Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->setResult(I)V
    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->access$100(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;I)V

    .line 2565
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$27;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    #calls: Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->finish()V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->access$200(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    .line 2566
    return-void
.end method
