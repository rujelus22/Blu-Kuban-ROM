.class Lcom/google/android/apps/plus/oob/CustomProgressFragmentDialog$1;
.super Ljava/lang/Object;
.source "CustomProgressFragmentDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/oob/CustomProgressFragmentDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/oob/CustomProgressFragmentDialog;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/oob/CustomProgressFragmentDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/android/apps/plus/oob/CustomProgressFragmentDialog$1;->this$0:Lcom/google/android/apps/plus/oob/CustomProgressFragmentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 107
    iget-object v1, p0, Lcom/google/android/apps/plus/oob/CustomProgressFragmentDialog$1;->this$0:Lcom/google/android/apps/plus/oob/CustomProgressFragmentDialog;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/oob/CustomProgressFragmentDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/oob/CustomProgressFragmentDialog$CustomProgressDialogListener;

    .line 109
    .local v0, listener:Lcom/google/android/apps/plus/oob/CustomProgressFragmentDialog$CustomProgressDialogListener;
    if-eqz v0, :cond_f

    .line 110
    iget-object v1, p0, Lcom/google/android/apps/plus/oob/CustomProgressFragmentDialog$1;->this$0:Lcom/google/android/apps/plus/oob/CustomProgressFragmentDialog;

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/oob/CustomProgressFragmentDialog$CustomProgressDialogListener;->onCustomProgressDialogCanceled(Lcom/google/android/apps/plus/oob/CustomProgressFragmentDialog;)V

    .line 112
    :cond_f
    return-void
.end method
