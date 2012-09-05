.class public Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;
.super Landroid/app/Activity;
.source "FTCResultSessionList.java"


# instance fields
.field private bRegisterReceiver:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrentState:Lcom/sec/android/app/FileTransferClient/Data/ResultData;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->mCurrentState:Lcom/sec/android/app/FileTransferClient/Data/ResultData;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->bRegisterReceiver:Z

    .line 177
    new-instance v0, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList$3;-><init>(Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;)V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->removeListActivity()V

    .line 193
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 194
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 37
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->requestWindowFeature(I)Z

    .line 39
    iget-boolean v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->bRegisterReceiver:Z

    if-nez v1, :cond_1a

    .line 41
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.FTC_SERVICE_START"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 42
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->bRegisterReceiver:Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 49
    :cond_1a
    :goto_1a
    return-void

    .line 45
    :catch_1b
    move-exception v0

    .line 47
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCResultSessionList :Exception on Create"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method protected onCreateDialog(I)Landroid/app/AlertDialog;
    .registers 13
    .parameter "id"

    .prologue
    const/4 v8, 0x1

    .line 97
    const/4 v4, 0x0

    .line 98
    .local v4, networkDialog:Landroid/app/AlertDialog;
    if-nez p1, :cond_76

    .line 102
    :try_start_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 103
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    new-instance v1, Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;

    invoke-direct {v1, p0}, Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;-><init>(Landroid/content/Context;)V

    .line 104
    .local v1, dialogView:Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;
    const v7, 0x7f060001

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 105
    iget-object v7, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->mCurrentState:Lcom/sec/android/app/FileTransferClient/Data/ResultData;

    if-eqz v7, :cond_76

    .line 108
    iget-object v7, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->mCurrentState:Lcom/sec/android/app/FileTransferClient/Data/ResultData;

    iget v7, v7, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->successCheck:I

    if-ne v7, v8, :cond_77

    .line 110
    const v7, 0x7f060039

    invoke-virtual {p0, v7}, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;->setPopupTitle(Ljava/lang/String;)V

    .line 111
    const v7, 0x7f060010

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->mCurrentState:Lcom/sec/android/app/FileTransferClient/Data/ResultData;

    iget-object v10, v10, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->sendingFileNames:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 112
    .local v6, sendFile:Ljava/lang/String;
    invoke-virtual {v1, v6}, Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;->setPopupFileSuccess(Ljava/lang/String;)V

    .line 113
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;->setPopupFileFail(Ljava/lang/String;)V

    .line 114
    const v7, 0x7f060042

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->mCurrentState:Lcom/sec/android/app/FileTransferClient/Data/ResultData;

    iget-object v10, v10, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->targetDevice:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;->setPopupTarget(Ljava/lang/String;)V

    .line 115
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;->setPopupResult(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 152
    :goto_5b
    new-instance v7, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList$1;

    invoke-direct {v7, p0}, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList$1;-><init>(Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 159
    const v7, 0x7f060008

    new-instance v8, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList$2;

    invoke-direct {v8, p0}, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList$2;-><init>(Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 166
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 174
    .end local v0           #dialog:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialogView:Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;
    .end local v6           #sendFile:Ljava/lang/String;
    :cond_76
    :goto_76
    return-object v4

    .line 120
    .restart local v0       #dialog:Landroid/app/AlertDialog$Builder;
    .restart local v1       #dialogView:Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;
    :cond_77
    const v7, 0x7f060014

    invoke-virtual {p0, v7}, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;->setPopupTitle(Ljava/lang/String;)V

    .line 121
    const/4 v6, 0x0

    .line 122
    .restart local v6       #sendFile:Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->mCurrentState:Lcom/sec/android/app/FileTransferClient/Data/ResultData;

    iget-object v7, v7, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->sendingFileNames:Ljava/lang/String;

    const-string v8, ""

    if-eq v7, v8, :cond_ab

    iget-object v7, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->mCurrentState:Lcom/sec/android/app/FileTransferClient/Data/ResultData;

    iget-object v7, v7, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->sendingFileNames:Ljava/lang/String;

    if-eqz v7, :cond_ab

    iget-object v7, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->mCurrentState:Lcom/sec/android/app/FileTransferClient/Data/ResultData;

    iget-object v7, v7, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->sendingFileNames:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_ab

    .line 123
    const v7, 0x7f060041

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->mCurrentState:Lcom/sec/android/app/FileTransferClient/Data/ResultData;

    iget-object v10, v10, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->sendingFileNames:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 124
    :cond_ab
    const v7, 0x7f06000f

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->mCurrentState:Lcom/sec/android/app/FileTransferClient/Data/ResultData;

    iget-object v10, v10, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->notSendFileNames:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, failFile:Ljava/lang/String;
    invoke-virtual {v1, v6}, Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;->setPopupFileSuccess(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1, v3}, Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;->setPopupFileFail(Ljava/lang/String;)V

    .line 127
    const v7, 0x7f060042

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->mCurrentState:Lcom/sec/android/app/FileTransferClient/Data/ResultData;

    iget-object v10, v10, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->targetDevice:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;->setPopupTarget(Ljava/lang/String;)V

    .line 129
    const/4 v5, 0x0

    .line 130
    .local v5, result:Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->mCurrentState:Lcom/sec/android/app/FileTransferClient/Data/ResultData;

    iget v7, v7, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->errorType:I

    packed-switch v7, :pswitch_data_134

    .line 148
    :goto_de
    invoke-virtual {v1, v5}, Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;->setPopupResult(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e4} :catch_e6

    goto/16 :goto_5b

    .line 169
    .end local v0           #dialog:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialogView:Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;
    .end local v3           #failFile:Ljava/lang/String;
    .end local v5           #result:Ljava/lang/String;
    .end local v6           #sendFile:Ljava/lang/String;
    :catch_e6
    move-exception v2

    .line 171
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "[FT]-Client"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FTCResultSessionList :Exception on create popup"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_76

    .line 133
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #dialog:Landroid/app/AlertDialog$Builder;
    .restart local v1       #dialogView:Lcom/sec/android/app/FileTransferClient/Ui/ResultPopupView;
    .restart local v3       #failFile:Ljava/lang/String;
    .restart local v5       #result:Ljava/lang/String;
    .restart local v6       #sendFile:Ljava/lang/String;
    :pswitch_101
    const v7, 0x7f060046

    :try_start_104
    invoke-virtual {p0, v7}, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 134
    goto :goto_de

    .line 136
    :pswitch_109
    const v7, 0x7f060044

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->mCurrentState:Lcom/sec/android/app/FileTransferClient/Data/ResultData;

    iget-object v10, v10, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->targetDevice:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 137
    goto :goto_de

    .line 139
    :pswitch_11b
    const v7, 0x7f060045

    invoke-virtual {p0, v7}, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 140
    goto :goto_de

    .line 142
    :pswitch_123
    const v7, 0x7f060046

    invoke-virtual {p0, v7}, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 143
    goto :goto_de

    .line 145
    :pswitch_12b
    const v7, 0x7f060043

    invoke-virtual {p0, v7}, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->getString(I)Ljava/lang/String;
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_131} :catch_e6

    move-result-object v5

    goto :goto_de

    .line 130
    nop

    :pswitch_data_134
    .packed-switch 0x9c4
        :pswitch_101
        :pswitch_109
        :pswitch_12b
        :pswitch_11b
        :pswitch_123
    .end packed-switch
.end method

.method protected bridge synthetic onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter "x0"

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->onCreateDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    .line 207
    :try_start_0
    iget-boolean v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->bRegisterReceiver:Z

    if-eqz v1, :cond_c

    .line 209
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 210
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->bRegisterReceiver:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_10

    .line 217
    :cond_c
    :goto_c
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 218
    return-void

    .line 213
    :catch_10
    move-exception v0

    .line 215
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCResultSessionList :Exception on destroy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 85
    const/16 v0, 0x54

    if-eq p1, v0, :cond_8

    const/16 v0, 0x52

    if-ne p1, v0, :cond_14

    .line 87
    :cond_8
    const-string v0, "[FT]-Client"

    const-string v1, "FTCResultSessionList :onKeyDown"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->removeListActivity()V

    .line 89
    const/4 v0, 0x1

    .line 91
    :goto_13
    return v0

    :cond_14
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_13
.end method

.method public onResume()V
    .registers 9

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 57
    :try_start_3
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 58
    .local v2, intent:Landroid/content/Intent;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v3, resultDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/FileTransferClient/Data/ResultData;>;"
    const-string v5, "RLIST"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 60
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/FileTransferClient/Data/ResultData;

    .line 63
    .local v4, session:Lcom/sec/android/app/FileTransferClient/Data/ResultData;
    goto :goto_16

    .line 64
    .end local v4           #session:Lcom/sec/android/app/FileTransferClient/Data/ResultData;
    :cond_23
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_37

    .line 66
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/FileTransferClient/Data/ResultData;

    iput-object v5, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->mCurrentState:Lcom/sec/android/app/FileTransferClient/Data/ResultData;

    .line 67
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->showDialog(I)V

    .line 70
    :cond_37
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_40

    .line 72
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->removeListActivity()V

    .line 74
    :cond_40
    const-string v5, "[FT]-Client"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FTCResultSessionList :called on resume ResultData:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5c} :catch_5d

    .line 80
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #resultDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/FileTransferClient/Data/ResultData;>;"
    :goto_5c
    return-void

    .line 76
    :catch_5d
    move-exception v0

    .line 78
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "[FT]-Client"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FTCResultSessionList :Exception on Resume"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c
.end method

.method protected removeListActivity()V
    .registers 3

    .prologue
    .line 198
    const-string v0, "[FT]-Client"

    const-string v1, "FTCResultSessionList :removeListActivity "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/Ui/FTCResultSessionList;->finish()V

    .line 200
    return-void
.end method
