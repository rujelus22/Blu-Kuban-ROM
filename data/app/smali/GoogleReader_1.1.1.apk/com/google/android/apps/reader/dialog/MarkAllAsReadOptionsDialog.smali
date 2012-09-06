.class public Lcom/google/android/apps/reader/dialog/MarkAllAsReadOptionsDialog;
.super Lcom/google/android/apps/reader/dialog/MarkAllAsReadDialog;
.source "MarkAllAsReadOptionsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mMarkAllAsReadOffsets:[I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/apps/reader/dialog/MarkAllAsReadDialog;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .registers 4
    .parameter "data"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/apps/reader/dialog/MarkAllAsReadDialog;-><init>()V

    .line 43
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "reader:data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 45
    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/dialog/MarkAllAsReadOptionsDialog;->setArguments(Landroid/os/Bundle;)V

    .line 46
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 67
    iget-object v2, p0, Lcom/google/android/apps/reader/dialog/MarkAllAsReadOptionsDialog;->mMarkAllAsReadOffsets:[I

    aget v2, v2, p2

    int-to-long v0, v2

    .line 68
    .local v0, offset:J
    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/reader/dialog/MarkAllAsReadOptionsDialog;->markAllAsRead(J)V

    .line 69
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 70
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/google/android/apps/reader/dialog/MarkAllAsReadDialog;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/google/android/apps/reader/dialog/MarkAllAsReadOptionsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 53
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f070009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/reader/dialog/MarkAllAsReadOptionsDialog;->mMarkAllAsReadOffsets:[I

    .line 54
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4
    .parameter

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/android/apps/reader/dialog/MarkAllAsReadOptionsDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 59
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 60
    const v0, 0x7f0d00f8

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 61
    const v0, 0x7f070008

    invoke-virtual {v1, v0, p0}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 62
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
