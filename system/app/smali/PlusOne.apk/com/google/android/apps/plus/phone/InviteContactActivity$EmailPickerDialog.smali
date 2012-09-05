.class public Lcom/google/android/apps/plus/phone/InviteContactActivity$EmailPickerDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "InviteContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/InviteContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmailPickerDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 71
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 4
    .parameter "emails"

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "emails"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/InviteContactActivity$EmailPickerDialog;->setArguments(Landroid/os/Bundle;)V

    .line 77
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/InviteContactActivity$EmailPickerDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/phone/InviteContactActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/InviteContactActivity;->finish()V

    .line 116
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 101
    const/4 v1, -0x2

    if-ne p2, v1, :cond_d

    .line 102
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/InviteContactActivity$EmailPickerDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/phone/InviteContactActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/InviteContactActivity;->finish()V

    .line 108
    :goto_c
    return-void

    .line 104
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/InviteContactActivity$EmailPickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 105
    .local v0, args:Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/InviteContactActivity$EmailPickerDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/phone/InviteContactActivity;

    const-string v2, "emails"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/InviteContactActivity;->showCirclePicker(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    .line 84
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/InviteContactActivity$EmailPickerDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0f0001

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 85
    .local v2, context:Landroid/content/Context;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 86
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f070257

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 87
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/InviteContactActivity$EmailPickerDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x1090012

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/InviteContactActivity$EmailPickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "emails"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 90
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v1, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 91
    const/high16 v3, 0x104

    invoke-virtual {v1, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 92
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 93
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
