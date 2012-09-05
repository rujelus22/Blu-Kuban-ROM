.class public Lcom/sec/android/socialhub/dialog/SocialHubReplaceDialog;
.super Landroid/app/AlertDialog$Builder;
.source "SocialHubReplaceDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 13
    const v0, 0x7f0800c7

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/dialog/SocialHubReplaceDialog;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 14
    const v0, 0x1080027

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/dialog/SocialHubReplaceDialog;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 15
    const v0, 0x7f0800c6

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/dialog/SocialHubReplaceDialog;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 16
    return-void
.end method
