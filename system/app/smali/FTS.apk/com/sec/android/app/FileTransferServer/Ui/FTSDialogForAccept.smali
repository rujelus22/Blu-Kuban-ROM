.class public Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;
.super Landroid/app/Activity;
.source "FTSDialogForAccept.java"


# static fields
.field private static ACCEPT_ASK_POPUP:I


# instance fields
.field private bRegisterReceiver:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCount:I

.field private mID:Ljava/lang/String;

.field private mTarget:Ljava/lang/String;

.field private mTitleName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const/16 v0, 0x7d0

    sput v0, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->ACCEPT_ASK_POPUP:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->mTitleName:Ljava/lang/String;

    .line 26
    iput v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->mCount:I

    .line 27
    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->mTarget:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->mID:Ljava/lang/String;

    .line 29
    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->bRegisterReceiver:Z

    .line 96
    new-instance v0, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept$1;-><init>(Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;)V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->mID:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->requestWindowFeature(I)Z

    .line 38
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/AlertDialog;
    .registers 11
    .parameter "id"

    .prologue
    const/4 v8, 0x1

    .line 137
    const-string v5, "[FT]-Server"

    const-string v6, "FTSDialogForAccept :onCreateDialog"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v3, 0x0

    .line 139
    .local v3, networkDialog:Landroid/app/AlertDialog;
    sget v5, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->ACCEPT_ASK_POPUP:I

    if-ne p1, v5, :cond_b5

    .line 143
    :try_start_d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 144
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const/high16 v5, 0x7f06

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 147
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 148
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "[FT]-Server"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FTSDialogForAccept :onResume"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v5, "MAIN_TITLE"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->mTitleName:Ljava/lang/String;

    .line 150
    const-string v5, "DEVICE"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->mTarget:Ljava/lang/String;

    .line 151
    const-string v5, "FILE_COUNT"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->mCount:I

    .line 152
    const-string v5, "SESSIONID"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->mID:Ljava/lang/String;

    .line 154
    const-string v5, "[FT]-Server"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FTSDialogForAccept :onCreateDialog mTitleName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->mTitleName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mTarget:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->mTarget:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mCount:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->mCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->mCount:I

    if-ne v5, v8, :cond_b6

    .line 158
    const v5, 0x7f06001f

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->mTitleName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->mTarget:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 166
    :goto_a1
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.sec.android.app.FileTransferServer.FTS_ACCEPT_OK"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v4, yesIntent:Landroid/content/Intent;
    const-string v5, "SESSIONID"

    iget-object v6, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->mID:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->popupDestroy()V

    .line 169
    invoke-virtual {p0, v4}, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->sendBroadcast(Landroid/content/Intent;)V

    .line 210
    .end local v0           #dialog:Landroid/app/AlertDialog$Builder;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #yesIntent:Landroid/content/Intent;
    :cond_b5
    :goto_b5
    return-object v3

    .line 162
    .restart local v0       #dialog:Landroid/app/AlertDialog$Builder;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_b6
    const v5, 0x7f06001e

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->mCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->mTarget:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d1} :catch_d2

    goto :goto_a1

    .line 204
    .end local v0           #dialog:Landroid/app/AlertDialog$Builder;
    .end local v2           #intent:Landroid/content/Intent;
    :catch_d2
    move-exception v1

    .line 206
    .local v1, e:Ljava/lang/Exception;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.sec.android.app.FileTransferServer.FTS_ACCEPT_CANCEL"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->sendBroadcast(Landroid/content/Intent;)V

    .line 207
    const-string v5, "[FT]-Server"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FTSDialogForAccept :Exception on create popup"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b5
.end method

.method protected bridge synthetic onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter "x0"

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->onCreateDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    .line 230
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 234
    :try_start_3
    iget-boolean v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->bRegisterReceiver:Z

    if-eqz v1, :cond_f

    .line 236
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 237
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->bRegisterReceiver:Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_10

    .line 245
    :cond_f
    :goto_f
    return-void

    .line 240
    :catch_10
    move-exception v0

    .line 242
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[FT]-Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTSDialogForAccept :Exception on destroy"

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
    .line 87
    const/16 v0, 0x54

    if-eq p1, v0, :cond_8

    const/16 v0, 0x52

    if-ne p1, v0, :cond_14

    .line 89
    :cond_8
    const-string v0, "[FT]-Server"

    const-string v1, "FTSDialogForAccept :onKeyDown"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->popupDestroy()V

    .line 91
    const/4 v0, 0x1

    .line 93
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
    .line 43
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 55
    :try_start_3
    iget-boolean v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->bRegisterReceiver:Z

    if-nez v5, :cond_22

    .line 57
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.FTS_SERVICE_FINISH"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    iget-object v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "com.sec.android.app.FileTransferServer.REMOVE_ACCEPT_POPUP"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->bRegisterReceiver:Z

    .line 62
    :cond_22
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 63
    .local v3, pm:Landroid/os/PowerManager;
    const v5, 0x3000000a

    const-string v6, "[FT]-Server"

    invoke-virtual {v3, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    .line 64
    .local v4, wl:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    .line 65
    .local v2, isScreenOn:Z
    if-nez v2, :cond_3c

    .line 67
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 70
    :cond_3c
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.sec.android.app.FileTransferServer.FTS_ACCEPT_SHOW"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .local v1, in:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->sendBroadcast(Landroid/content/Intent;)V

    .line 72
    sget v5, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->ACCEPT_ASK_POPUP:I

    invoke-virtual {p0, v5}, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->showDialog(I)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_4b} :catch_4c

    .line 81
    .end local v1           #in:Landroid/content/Intent;
    .end local v2           #isScreenOn:Z
    .end local v3           #pm:Landroid/os/PowerManager;
    .end local v4           #wl:Landroid/os/PowerManager$WakeLock;
    :goto_4b
    return-void

    .line 74
    :catch_4c
    move-exception v0

    .line 77
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.sec.android.app.FileTransferServer.FTS_ACCEPT_CANCEL"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->sendBroadcast(Landroid/content/Intent;)V

    .line 78
    const-string v5, "[FT]-Server"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FTSDialogForAccept :Exception on resume"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b
.end method

.method protected popupDestroy()V
    .registers 5

    .prologue
    .line 217
    :try_start_0
    const-string v1, "[FT]-Server"

    const-string v2, "FTSDialogForAccept :popupDestroy "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    sget v1, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->ACCEPT_ASK_POPUP:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->removeDialog(I)V

    .line 219
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;->finish()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 225
    :goto_f
    return-void

    .line 221
    :catch_10
    move-exception v0

    .line 223
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[FT]-Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTSDialogForAccept :Exception on popup destroy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method
