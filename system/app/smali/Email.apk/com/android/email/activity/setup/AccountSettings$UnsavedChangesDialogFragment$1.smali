.class Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment$1;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;

.field final synthetic val$activity:Lcom/android/email/activity/setup/AccountSettings;

.field final synthetic val$isBack:Z

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;ZLcom/android/email/activity/setup/AccountSettings;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 811
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;

    iput-boolean p2, p0, Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment$1;->val$isBack:Z

    iput-object p3, p0, Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment$1;->val$activity:Lcom/android/email/activity/setup/AccountSettings;

    iput p4, p0, Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 813
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment$1;->val$isBack:Z

    if-eqz v0, :cond_f

    .line 814
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment$1;->val$activity:Lcom/android/email/activity/setup/AccountSettings;

    #calls: Lcom/android/email/activity/setup/AccountSettings;->forceBack()V
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettings;->access$800(Lcom/android/email/activity/setup/AccountSettings;)V

    .line 818
    :goto_9
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment;->dismiss()V

    .line 819
    return-void

    .line 816
    :cond_f
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment$1;->val$activity:Lcom/android/email/activity/setup/AccountSettings;

    iget v1, p0, Lcom/android/email/activity/setup/AccountSettings$UnsavedChangesDialogFragment$1;->val$position:I

    #calls: Lcom/android/email/activity/setup/AccountSettings;->forceSwitchHeader(I)V
    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->access$900(Lcom/android/email/activity/setup/AccountSettings;I)V

    goto :goto_9
.end method
