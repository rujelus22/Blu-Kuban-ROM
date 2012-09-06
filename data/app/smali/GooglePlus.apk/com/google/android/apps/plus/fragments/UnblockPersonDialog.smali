.class public Lcom/google/android/apps/plus/fragments/UnblockPersonDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "UnblockPersonDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/UnblockPersonDialog$PersonUnblocker;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 5
    .parameter "personId"
    .parameter "plusPage"

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "person_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v1, "plus_page"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 36
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/UnblockPersonDialog;->setArguments(Landroid/os/Bundle;)V

    .line 37
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 65
    packed-switch p2, :pswitch_data_2e

    .line 80
    :goto_3
    return-void

    .line 67
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/UnblockPersonDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "person_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, personId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/UnblockPersonDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/apps/plus/fragments/UnblockPersonDialog$PersonUnblocker;

    if-eqz v1, :cond_20

    .line 69
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/UnblockPersonDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/fragments/UnblockPersonDialog$PersonUnblocker;

    invoke-interface {v1, v0}, Lcom/google/android/apps/plus/fragments/UnblockPersonDialog$PersonUnblocker;->unblockPerson(Ljava/lang/String;)V

    goto :goto_3

    .line 71
    :cond_20
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/UnblockPersonDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/fragments/UnblockPersonDialog$PersonUnblocker;

    invoke-interface {v1, v0}, Lcom/google/android/apps/plus/fragments/UnblockPersonDialog$PersonUnblocker;->unblockPerson(Ljava/lang/String;)V

    goto :goto_3

    .line 76
    .end local v0           #personId:Ljava/lang/String;
    :pswitch_2a
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_3

    .line 65
    :pswitch_data_2e
    .packed-switch -0x2
        :pswitch_2a
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/UnblockPersonDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 45
    .local v0, activity:Landroid/support/v4/app/FragmentActivity;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/UnblockPersonDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "plus_page"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 46
    .local v2, plusPage:Z
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 47
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    if-eqz v2, :cond_37

    const v3, 0x7f0802ba

    :goto_18
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 50
    if-eqz v2, :cond_3b

    const v3, 0x7f0802bc

    :goto_20
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 54
    const v3, 0x104000a

    invoke-virtual {v1, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 55
    const/high16 v3, 0x104

    invoke-virtual {v1, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 56
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 57
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    .line 47
    :cond_37
    const v3, 0x7f0802b9

    goto :goto_18

    .line 50
    :cond_3b
    const v3, 0x7f0802bb

    goto :goto_20
.end method
