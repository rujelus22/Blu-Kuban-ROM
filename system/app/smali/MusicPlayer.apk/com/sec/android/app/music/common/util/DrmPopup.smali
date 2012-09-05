.class public Lcom/sec/android/app/music/common/util/DrmPopup;
.super Landroid/app/Activity;
.source "DrmPopup.java"


# instance fields
.field filePath:Ljava/lang/String;

.field private final mCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mOkListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    new-instance v0, Lcom/sec/android/app/music/common/util/DrmPopup$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/common/util/DrmPopup$1;-><init>(Lcom/sec/android/app/music/common/util/DrmPopup;)V

    iput-object v0, p0, Lcom/sec/android/app/music/common/util/DrmPopup;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    .line 57
    new-instance v0, Lcom/sec/android/app/music/common/util/DrmPopup$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/common/util/DrmPopup$2;-><init>(Lcom/sec/android/app/music/common/util/DrmPopup;)V

    iput-object v0, p0, Lcom/sec/android/app/music/common/util/DrmPopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/common/util/DrmPopup;->setVolumeControlStream(I)V

    .line 23
    invoke-virtual {p0, v3}, Lcom/sec/android/app/music/common/util/DrmPopup;->requestWindowFeature(I)Z

    .line 25
    invoke-virtual {p0}, Lcom/sec/android/app/music/common/util/DrmPopup;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FILE_PATH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/common/util/DrmPopup;->filePath:Ljava/lang/String;

    .line 26
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RightsConfirmation : FILE_PATH = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/common/util/DrmPopup;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/sec/android/app/music/common/util/DrmPopup;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->isWMdrmFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 29
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090119

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900ed

    iget-object v2, p0, Lcom/sec/android/app/music/common/util/DrmPopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 37
    :goto_55
    return-void

    .line 33
    :cond_56
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900aa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900ef

    iget-object v2, p0, Lcom/sec/android/app/music/common/util/DrmPopup;->mOkListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900f0

    iget-object v2, p0, Lcom/sec/android/app/music/common/util/DrmPopup;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_55
.end method

.method protected onCreateDialog(I)Landroid/app/AlertDialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 72
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 74
    .local v0, drmDialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0900aa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 75
    const v1, 0x7f0900ef

    new-instance v2, Lcom/sec/android/app/music/common/util/DrmPopup$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/music/common/util/DrmPopup$3;-><init>(Lcom/sec/android/app/music/common/util/DrmPopup;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 81
    const v1, 0x7f0900f0

    new-instance v2, Lcom/sec/android/app/music/common/util/DrmPopup$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/music/common/util/DrmPopup$4;-><init>(Lcom/sec/android/app/music/common/util/DrmPopup;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 87
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter "x0"

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/sec/android/app/music/common/util/DrmPopup;->onCreateDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 68
    return-void
.end method
