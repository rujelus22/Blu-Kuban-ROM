.class public Lcom/android/phone/RoamingAlertDialog;
.super Landroid/app/Activity;
.source "RoamingAlertDialog.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public ShowRoamingAlert(Ljava/lang/String;)V
    .registers 5
    .parameter "alertMessage"

    .prologue
    .line 28
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/android/phone/RoamingAlertDialog$3;

    invoke-direct {v2, p0}, Lcom/android/phone/RoamingAlertDialog$3;-><init>(Lcom/android/phone/RoamingAlertDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/RoamingAlertDialog$2;

    invoke-direct {v1, p0}, Lcom/android/phone/RoamingAlertDialog$2;-><init>(Lcom/android/phone/RoamingAlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/phone/RoamingAlertDialog$1;

    invoke-direct {v1, p0}, Lcom/android/phone/RoamingAlertDialog$1;-><init>(Lcom/android/phone/RoamingAlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 53
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/android/phone/RoamingAlertDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 21
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 22
    .local v1, bundle:Landroid/os/Bundle;
    const-string v3, "AlertMessage"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, Message:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/phone/RoamingAlertDialog;->ShowRoamingAlert(Ljava/lang/String;)V

    .line 25
    return-void
.end method
