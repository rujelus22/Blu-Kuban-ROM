.class public Lcom/google/android/apps/plus/phone/OobInstantUploadActivity;
.super Lcom/google/android/apps/plus/phone/OobDeviceActivity;
.source "OobInstantUploadActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mDialogListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/OobInstantUploadActivity;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_a

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/OobInstantUploadActivity;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 75
    :goto_9
    return-void

    .line 73
    :cond_a
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_9
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/OobDeviceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f030051

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/OobInstantUploadActivity;->setContentView(I)V

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_20

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/OobInstantUploadActivity;->showTitlebar(Z)V

    .line 35
    const v0, 0x7f020087

    const v1, 0x7f070033

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/OobInstantUploadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/phone/OobInstantUploadActivity;->setTitlebarTitle(ILjava/lang/String;)V

    .line 37
    :cond_20
    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 9
    .parameter "dialogId"
    .parameter "args"

    .prologue
    .line 48
    packed-switch p1, :pswitch_data_3c

    .line 61
    const/4 v3, 0x0

    :goto_4
    return-object v3

    .line 50
    :pswitch_5
    const v3, 0x7f070036

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/OobInstantUploadActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, syncName:Ljava/lang/String;
    const v3, 0x7f07004d

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/plus/phone/OobInstantUploadActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, message:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 54
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f07004c

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f07016a

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f07016b

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 58
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto :goto_4

    .line 48
    nop

    :pswitch_data_3c
    .packed-switch 0x7f0d0028
        :pswitch_5
    .end packed-switch
.end method

.method public setDialogOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .registers 2
    .parameter "dialogListener"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/OobInstantUploadActivity;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 41
    return-void
.end method
