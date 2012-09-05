.class public Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForFail;
.super Landroid/app/Activity;
.source "FTSDialogForFail.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private resultDialog(Lcom/sec/android/app/FileTransferServer/Data/FileInfo;)V
    .registers 9
    .parameter "fi"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 66
    const-string v0, ""

    .line 67
    .local v0, text:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f060013

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForFail;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f060010

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->sessionTitle:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForFail;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f060018

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->from:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForFail;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;->reason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x7f06

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForFail;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060008

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForFail;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForFail$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForFail$2;-><init>(Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForFail;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForFail$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForFail$1;-><init>(Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForFail;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 82
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForFail;->requestWindowFeature(I)Z

    .line 28
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 62
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 49
    const/16 v0, 0x54

    if-eq p1, v0, :cond_8

    const/16 v0, 0x52

    if-ne p1, v0, :cond_14

    .line 51
    :cond_8
    const-string v0, "[FT]-Server"

    const-string v1, "FTSDialogForFail :onKeyDown"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForFail;->finish()V

    .line 53
    const/4 v0, 0x1

    .line 55
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
    .line 33
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 36
    :try_start_3
    sget-object v1, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mFailList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;

    invoke-direct {p0, v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForFail;->resultDialog(Lcom/sec/android/app/FileTransferServer/Data/FileInfo;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_10

    .line 43
    :goto_f
    return-void

    .line 38
    :catch_10
    move-exception v0

    .line 40
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[FT]-Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTSDialogForFail :Exception on Resume"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForFail;->finish()V

    goto :goto_f
.end method
