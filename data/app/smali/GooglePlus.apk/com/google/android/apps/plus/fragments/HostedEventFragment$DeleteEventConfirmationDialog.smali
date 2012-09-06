.class public Lcom/google/android/apps/plus/fragments/HostedEventFragment$DeleteEventConfirmationDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "HostedEventFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/HostedEventFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteEventConfirmationDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1287
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1309
    packed-switch p2, :pswitch_data_1a

    .line 1322
    :cond_3
    :goto_3
    return-void

    .line 1311
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$DeleteEventConfirmationDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1312
    .local v0, fragment:Landroid/support/v4/app/Fragment;
    instance-of v1, v0, Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    if-eqz v1, :cond_3

    .line 1313
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$DeleteEventConfirmationDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedEventFragment;->doDeleteEvent()V
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->access$1600(Lcom/google/android/apps/plus/fragments/HostedEventFragment;)V

    goto :goto_3

    .line 1318
    .end local v0           #fragment:Landroid/support/v4/app/Fragment;
    :pswitch_16
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_3

    .line 1309
    :pswitch_data_1a
    .packed-switch -0x2
        :pswitch_16
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 1296
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedEventFragment$DeleteEventConfirmationDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1297
    .local v0, activity:Landroid/support/v4/app/FragmentActivity;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1298
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f080415

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1301
    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1302
    const/high16 v2, 0x104

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1303
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1304
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
