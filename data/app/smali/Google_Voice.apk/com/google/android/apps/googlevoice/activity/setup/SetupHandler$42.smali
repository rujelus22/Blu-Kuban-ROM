.class Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$42;
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
    .line 2737
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$42;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 2740
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2741
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$42;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    const/16 v1, 0x5f0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->sendEmptyMessage(I)Z

    .line 2742
    return-void
.end method
