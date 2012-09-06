.class Lcom/google/android/apps/plus/phone/NewFeaturesFragmentDialog$1;
.super Ljava/lang/Object;
.source "NewFeaturesFragmentDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/NewFeaturesFragmentDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/NewFeaturesFragmentDialog;

.field final synthetic val$account:Lcom/google/android/apps/plus/content/EsAccount;

.field final synthetic val$context:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/NewFeaturesFragmentDialog;Landroid/support/v4/app/FragmentActivity;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/NewFeaturesFragmentDialog$1;->this$0:Lcom/google/android/apps/plus/phone/NewFeaturesFragmentDialog;

    iput-object p2, p0, Lcom/google/android/apps/plus/phone/NewFeaturesFragmentDialog$1;->val$context:Landroid/support/v4/app/FragmentActivity;

    iput-object p3, p0, Lcom/google/android/apps/plus/phone/NewFeaturesFragmentDialog$1;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 84
    packed-switch p2, :pswitch_data_16

    .line 99
    :goto_3
    return-void

    .line 86
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewFeaturesFragmentDialog$1;->val$context:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/NewFeaturesFragmentDialog$1;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/content/EsAccountsData;->saveContactsStatsSyncPreference(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V

    goto :goto_3

    .line 91
    :pswitch_d
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewFeaturesFragmentDialog$1;->val$context:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/NewFeaturesFragmentDialog$1;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/content/EsAccountsData;->saveContactsStatsSyncPreference(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V

    goto :goto_3

    .line 84
    :pswitch_data_16
    .packed-switch -0x2
        :pswitch_d
        :pswitch_4
    .end packed-switch
.end method
