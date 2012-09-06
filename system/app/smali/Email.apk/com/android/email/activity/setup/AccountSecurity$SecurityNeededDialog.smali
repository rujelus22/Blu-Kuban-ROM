.class public Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;
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
    name = "SecurityNeededDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 299
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;
    .registers 4
    .parameter "accountName"

    .prologue
    .line 307
    new-instance v1, Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;

    invoke-direct {v1}, Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;-><init>()V

    .line 308
    .local v1, dialog:Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 309
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "account_name"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;->setArguments(Landroid/os/Bundle;)V

    .line 311
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;->dismiss()V

    .line 335
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AccountSecurity;

    .line 336
    .local v0, activity:Lcom/android/email/activity/setup/AccountSecurity;
    #getter for: Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSecurity;->access$000(Lcom/android/email/activity/setup/AccountSecurity;)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    if-nez v1, :cond_13

    .line 338
    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    .line 357
    :goto_12
    return-void

    .line 341
    :cond_13
    packed-switch p2, :pswitch_data_44

    goto :goto_12

    .line 349
    :pswitch_17
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_22

    .line 350
    const-string v1, "Email/AccountSecurity"

    const-string v2, "User declines; repost notification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_22
    #getter for: Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSecurity;->access$000(Lcom/android/email/activity/setup/AccountSecurity;)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    invoke-static {v0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v2

    #calls: Lcom/android/email/activity/setup/AccountSecurity;->repostNotification(Lcom/android/emailcommon/provider/Account;Lcom/android/email/SecurityPolicy;)V
    invoke-static {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSecurity;->access$200(Lcom/android/email/activity/setup/AccountSecurity;Lcom/android/emailcommon/provider/Account;Lcom/android/email/SecurityPolicy;)V

    .line 354
    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_12

    .line 343
    :pswitch_31
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_3c

    .line 344
    const-string v1, "Email/AccountSecurity"

    const-string v2, "User accepts; advance to next step"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_3c
    #getter for: Lcom/android/email/activity/setup/AccountSecurity;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSecurity;->access$000(Lcom/android/email/activity/setup/AccountSecurity;)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    #calls: Lcom/android/email/activity/setup/AccountSecurity;->tryAdvanceSecurity(Lcom/android/emailcommon/provider/Account;)V
    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSecurity;->access$100(Lcom/android/email/activity/setup/AccountSecurity;Lcom/android/emailcommon/provider/Account;)V

    goto :goto_12

    .line 341
    :pswitch_data_44
    .packed-switch -0x2
        :pswitch_17
        :pswitch_31
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "account_name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, accountName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 319
    .local v2, context:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 320
    .local v3, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 321
    .local v1, b:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f08011e

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 322
    const v4, 0x1010355

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 323
    const v4, 0x7f08011f

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 324
    const v4, 0x7f080009

    invoke-virtual {v1, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 325
    const v4, 0x7f08000a

    invoke-virtual {v1, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 326
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_4a

    .line 327
    const-string v4, "Email/AccountSecurity"

    const-string v5, "Posting security needed dialog"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_4a
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method
