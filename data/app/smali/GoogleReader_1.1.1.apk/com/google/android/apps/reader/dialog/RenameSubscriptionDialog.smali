.class public final Lcom/google/android/apps/reader/dialog/RenameSubscriptionDialog;
.super Lcom/google/android/apps/reader/dialog/RenameDialog;
.source "RenameSubscriptionDialog.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/android/apps/reader/dialog/RenameDialog;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "uri"
    .parameter "initialValue"

    .prologue
    .line 36
    const v0, 0x7f0d000b

    const v1, 0x7f0d0045

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/apps/reader/dialog/RenameDialog;-><init>(Landroid/net/Uri;IILjava/lang/CharSequence;)V

    .line 38
    return-void
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
