.class Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment$2;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 3319
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 3321
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 3322
    .local v0, f:Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;

    if-eqz v1, :cond_f

    .line 3323
    check-cast v0, Lcom/android/email/activity/setup/AccountSettingsFragment;

    .end local v0           #f:Landroid/app/Fragment;
    #calls: Lcom/android/email/activity/setup/AccountSettingsFragment;->finishDeleteAccount()V
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$5200(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    .line 3325
    :cond_f
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;->dismiss()V

    .line 3326
    return-void
.end method
