.class public Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;
.super Landroid/app/DialogFragment;
.source "AccountSecurity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSecurity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PasswordExpirationDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 364
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Z)Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;
    .registers 5
    .parameter "accountName"
    .parameter "expired"

    .prologue
    .line 373
    new-instance v1, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;

    invoke-direct {v1}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;-><init>()V

    .line 374
    .local v1, dialog:Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 375
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "account_name"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v2, "expired"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 377
    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->setArguments(Landroid/os/Bundle;)V

    .line 378
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->dismiss()V

    .line 409
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AccountSecurity;

    .line 410
    .local v0, activity:Lcom/android/email/activity/setup/AccountSecurity;
    const/4 v2, -0x1

    if-ne p2, v2, :cond_16

    .line 411
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSecurity;->startActivity(Landroid/content/Intent;)V

    .line 414
    .end local v1           #intent:Landroid/content/Intent;
    :cond_16
    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    .line 415
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "account_name"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, accountName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "expired"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 388
    .local v4, expired:Z
    if-eqz v4, :cond_52

    const v6, 0x7f08012b

    .line 391
    .local v6, titleId:I
    :goto_19
    if-eqz v4, :cond_56

    const v2, 0x7f08012c

    .line 395
    .local v2, contentId:I
    :goto_1e
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 396
    .local v3, context:Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 397
    .local v5, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 398
    .local v1, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 399
    const v7, 0x1010355

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 400
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {v5, v2, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 401
    const v7, 0x7f080009

    invoke-virtual {v1, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 402
    const v7, 0x7f08000a

    invoke-virtual {v1, v7, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 403
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    return-object v7

    .line 388
    .end local v1           #b:Landroid/app/AlertDialog$Builder;
    .end local v2           #contentId:I
    .end local v3           #context:Landroid/content/Context;
    .end local v5           #res:Landroid/content/res/Resources;
    .end local v6           #titleId:I
    :cond_52
    const v6, 0x7f080129

    goto :goto_19

    .line 391
    .restart local v6       #titleId:I
    :cond_56
    const v2, 0x7f08012a

    goto :goto_1e
.end method
