.class public Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$DeleteCircleConfirmationDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "HostedPeopleFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteCircleConfirmationDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1067
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1094
    packed-switch p2, :pswitch_data_12

    .line 1104
    :goto_3
    return-void

    .line 1096
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$DeleteCircleConfirmationDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment;->doDeleteCircle()V

    goto :goto_3

    .line 1100
    :pswitch_e
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_3

    .line 1094
    :pswitch_data_12
    .packed-switch -0x2
        :pswitch_e
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1075
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$DeleteCircleConfirmationDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1076
    .local v2, resources:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedPeopleFragment$DeleteCircleConfirmationDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1077
    .local v0, activity:Landroid/support/v4/app/FragmentActivity;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1078
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0e001b

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1080
    const v3, 0x7f0e001c

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1083
    const v3, 0x104000a

    invoke-virtual {v1, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1084
    const/high16 v3, 0x104

    invoke-virtual {v1, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1085
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1086
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
