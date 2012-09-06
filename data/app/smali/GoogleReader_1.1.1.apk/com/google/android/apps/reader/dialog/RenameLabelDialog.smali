.class public final Lcom/google/android/apps/reader/dialog/RenameLabelDialog;
.super Lcom/google/android/apps/reader/dialog/RenameDialog;
.source "RenameLabelDialog.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/apps/reader/dialog/RenameDialog;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/CharSequence;Z)V
    .registers 6
    .parameter "uri"
    .parameter "initial"
    .parameter "isFolder"

    .prologue
    .line 38
    if-eqz p3, :cond_e

    const v0, 0x7f0d000c

    :goto_5
    if-eqz p3, :cond_12

    const v1, 0x7f0d0047

    :goto_a
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/apps/reader/dialog/RenameDialog;-><init>(Landroid/net/Uri;IILjava/lang/CharSequence;)V

    .line 40
    return-void

    .line 38
    :cond_e
    const v0, 0x7f0d000d

    goto :goto_5

    :cond_12
    const v1, 0x7f0d0046

    goto :goto_a
.end method


# virtual methods
.method public bridge synthetic onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/reader/dialog/RenameDialog;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public bridge synthetic onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 3
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/dialog/RenameDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onDismiss(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/dialog/RenameDialog;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public bridge synthetic setResult(I)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/dialog/RenameDialog;->setResult(I)V

    return-void
.end method
