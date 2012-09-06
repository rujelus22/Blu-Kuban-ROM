.class Lcom/google/android/apps/plus/hangout/HangoutActivity$MinorWarningDialog$1;
.super Ljava/lang/Object;
.source "HangoutActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/HangoutActivity$MinorWarningDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/plus/hangout/HangoutActivity$MinorWarningDialog;

.field final synthetic val$dontShow:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutActivity$MinorWarningDialog;Landroid/widget/CheckBox;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity$MinorWarningDialog$1;->this$1:Lcom/google/android/apps/plus/hangout/HangoutActivity$MinorWarningDialog;

    iput-object p2, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity$MinorWarningDialog$1;->val$dontShow:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 161
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity$MinorWarningDialog$1;->val$dontShow:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 162
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity$MinorWarningDialog$1;->this$1:Lcom/google/android/apps/plus/hangout/HangoutActivity$MinorWarningDialog;

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/HangoutActivity$MinorWarningDialog;->this$0:Lcom/google/android/apps/plus/hangout/HangoutActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity$MinorWarningDialog$1;->this$1:Lcom/google/android/apps/plus/hangout/HangoutActivity$MinorWarningDialog;

    iget-object v1, v1, Lcom/google/android/apps/plus/hangout/HangoutActivity$MinorWarningDialog;->this$0:Lcom/google/android/apps/plus/hangout/HangoutActivity;

    #getter for: Lcom/google/android/apps/plus/hangout/HangoutActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->access$200(Lcom/google/android/apps/plus/hangout/HangoutActivity;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/content/EsAccountsData;->saveMinorHangoutWarningDialogSeenPreference(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V

    .line 168
    :cond_18
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutActivity$MinorWarningDialog$1;->this$1:Lcom/google/android/apps/plus/hangout/HangoutActivity$MinorWarningDialog;

    iget-object v0, v0, Lcom/google/android/apps/plus/hangout/HangoutActivity$MinorWarningDialog;->this$0:Lcom/google/android/apps/plus/hangout/HangoutActivity;

    #setter for: Lcom/google/android/apps/plus/hangout/HangoutActivity;->mSkipMinorWarning:Z
    invoke-static {v0, v2}, Lcom/google/android/apps/plus/hangout/HangoutActivity;->access$302(Lcom/google/android/apps/plus/hangout/HangoutActivity;Z)Z

    .line 169
    return-void
.end method
