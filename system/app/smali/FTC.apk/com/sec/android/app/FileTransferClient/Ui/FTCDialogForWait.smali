.class public Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;
.super Landroid/app/Activity;
.source "FTCDialogForWait.java"


# static fields
.field private static WAITING_POPUP:I


# instance fields
.field private bRegister:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const/16 v0, 0xbb8

    sput v0, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;->WAITING_POPUP:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;->bRegister:Z

    .line 66
    new-instance v0, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait$1;-><init>(Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;)V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;->requestWindowFeature(I)Z

    .line 31
    return-void
.end method

.method protected bridge synthetic onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter "x0"

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;->onCreateDialog(I)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateDialog(I)Landroid/app/ProgressDialog;
    .registers 9
    .parameter "id"

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, dialog:Landroid/app/ProgressDialog;
    sget v4, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;->WAITING_POPUP:I

    if-ne p1, v4, :cond_4c

    .line 95
    :try_start_5
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_4d

    .line 96
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    .local v1, dialog:Landroid/app/ProgressDialog;
    const/4 v4, 0x1

    :try_start_b
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 97
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 98
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 99
    const v4, 0x7f060001

    invoke-virtual {p0, v4}, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 100
    const v4, 0x7f060047

    invoke-virtual {p0, v4}, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 101
    const v4, 0x7f060007

    invoke-virtual {p0, v4}, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait$2;

    invoke-direct {v5, p0}, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait$2;-><init>(Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 110
    new-instance v4, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait$3;

    invoke-direct {v4, p0}, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait$3;-><init>(Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;)V

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 118
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.FileTransferClient.FTC_WAIT_CREATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v3, intentBroadcast:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_4b} :catch_67

    move-object v0, v1

    .line 127
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    .end local v3           #intentBroadcast:Landroid/content/Intent;
    .restart local v0       #dialog:Landroid/app/ProgressDialog;
    :cond_4c
    :goto_4c
    return-object v0

    .line 122
    :catch_4d
    move-exception v2

    .line 124
    .local v2, e:Ljava/lang/Exception;
    :goto_4e
    const-string v4, "[FT]-Client"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTCDialogForWait :Exception on create popup"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 122
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #dialog:Landroid/app/ProgressDialog;
    :catch_67
    move-exception v2

    move-object v0, v1

    .end local v1           #dialog:Landroid/app/ProgressDialog;
    .restart local v0       #dialog:Landroid/app/ProgressDialog;
    goto :goto_4e
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 150
    :try_start_3
    iget-boolean v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;->bRegister:Z

    if-eqz v1, :cond_f

    .line 152
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 153
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;->bRegister:Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_10

    .line 160
    :cond_f
    :goto_f
    return-void

    .line 156
    :catch_10
    move-exception v0

    .line 158
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCDialogForWait :Exception on destroy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 57
    const/16 v0, 0x54

    if-eq p1, v0, :cond_8

    const/16 v0, 0x52

    if-ne p1, v0, :cond_14

    .line 59
    :cond_8
    const-string v0, "[FT]-Client"

    const-string v1, "FTCDialogForWait :onKeyDown"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;->popupDestroy()V

    .line 61
    const/4 v0, 0x1

    .line 63
    :goto_13
    return v0

    :cond_14
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_13
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 36
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 39
    :try_start_3
    iget-boolean v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;->bRegister:Z

    if-nez v1, :cond_22

    .line 41
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sec.android.app.FileTransferClient.REMOVE_WAIT_POPUP"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 42
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.FTC_SERVICE_FINISHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 43
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;->bRegister:Z

    .line 46
    :cond_22
    sget v1, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;->WAITING_POPUP:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;->showDialog(I)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_27} :catch_28

    .line 52
    :goto_27
    return-void

    .line 48
    :catch_28
    move-exception v0

    .line 50
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCDialogForWait :Exception on Resume"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method

.method protected popupDestroy()V
    .registers 5

    .prologue
    .line 134
    :try_start_0
    const-string v1, "[FT]-Client"

    const-string v2, "FTCDialogForWait :popupDestroy "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sget v1, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;->WAITING_POPUP:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;->removeDialog(I)V

    .line 136
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;->finish()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 142
    :goto_f
    return-void

    .line 138
    :catch_10
    move-exception v0

    .line 140
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCDialogForWait :Exception on popup destroy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method
