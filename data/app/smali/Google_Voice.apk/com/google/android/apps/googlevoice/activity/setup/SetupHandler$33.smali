.class Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$33;
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
    .line 2627
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$33;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 2630
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2631
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$33;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    #calls: Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->clearSelectedCarrierProvisioningOption()V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->access$300(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V

    .line 2632
    return-void
.end method
