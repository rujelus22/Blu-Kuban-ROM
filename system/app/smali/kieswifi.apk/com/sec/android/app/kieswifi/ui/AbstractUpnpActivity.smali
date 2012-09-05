.class public Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;
.super Landroid/app/Activity;
.source "AbstractUpnpActivity.java"

# interfaces
.implements Lcom/sec/android/app/kieswifi/ui/IActivityListener;


# instance fields
.field private isUsing:Z

.field mHandler:Landroid/os/Handler;

.field mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->isUsing:Z

    .line 35
    new-instance v0, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity$1;-><init>(Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->startWarningActivity()V

    return-void
.end method

.method private startWarningActivity()V
    .registers 3

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->isUsing:Z

    if-eqz v0, :cond_16

    .line 104
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 105
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 107
    :cond_16
    return-void
.end method


# virtual methods
.method public notifyActivityEvent(I)V
    .registers 5
    .parameter "code"

    .prologue
    const/4 v2, 0x1

    .line 87
    packed-switch p1, :pswitch_data_46

    .line 99
    :goto_4
    return-void

    .line 89
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : All Kill!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->finish()V

    goto :goto_4

    .line 93
    :pswitch_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : Start Warning Activity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x47d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 87
    nop

    :pswitch_data_46
    .packed-switch 0x2f1
        :pswitch_5
        :pswitch_23
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 110
    const/4 v0, -0x1

    if-ne p2, v0, :cond_11

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_11

    .line 112
    const/4 v0, 0x1

    const-string v1, "AbstractUpnpActivity : onActivityResult"

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 113
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 115
    :cond_11
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 116
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 33
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7
    .parameter "id"

    .prologue
    .line 119
    packed-switch p1, :pswitch_data_5e

    .line 138
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 140
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    new-instance v1, Lcom/sec/android/app/kieswifi/view/PopupView;

    invoke-direct {v1, p0}, Lcom/sec/android/app/kieswifi/view/PopupView;-><init>(Landroid/content/Context;)V

    .line 141
    .local v1, dialogView:Lcom/sec/android/app/kieswifi/view/PopupView;
    const v2, 0x7f070002

    invoke-virtual {p0, v2}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/kieswifi/view/PopupView;->setPopupMessage(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 143
    const v2, 0x7f070004

    new-instance v3, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity$5;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity$5;-><init>(Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;I)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 149
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .end local v0           #dialog:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialogView:Lcom/sec/android/app/kieswifi/view/PopupView;
    :goto_29
    return-object v2

    .line 122
    :pswitch_2a
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x7f07

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070005

    new-instance v4, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity$4;

    invoke-direct {v4, p0}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity$4;-><init>(Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity$3;-><init>(Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_29

    .line 119
    nop

    :pswitch_data_5e
    .packed-switch 0x47d
        :pswitch_2a
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 82
    const/4 v0, 0x1

    const-string v1, "abstractUpnp is onDestroyed"

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/kieswifi/UpnpManager;->removeActivityDestroyListener(Lcom/sec/android/app/kieswifi/ui/IActivityListener;)V

    .line 84
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->isUsing:Z

    .line 54
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 58
    iput-boolean v3, p0, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->isUsing:Z

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network state is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/kieswifi/UpnpManager;->getNetworkState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/kieswifi/UpnpManager;->getNetworkState()I

    move-result v0

    .line 63
    .local v0, netState:I
    if-eq v0, v3, :cond_43

    const/4 v1, 0x5

    if-eq v0, v1, :cond_43

    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1, v2}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 66
    :cond_43
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity$2;-><init>(Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 77
    :cond_50
    return-void
.end method
