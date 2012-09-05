.class public Lcom/sec/android/socialhub/dialog/SocialHubProgressDialog;
.super Landroid/app/ProgressDialog;
.source "SocialHubProgressDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 19
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 24
    const/16 v0, 0x52

    if-ne p1, v0, :cond_9

    .line 26
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 27
    const/4 v0, 0x1

    .line 30
    :goto_8
    return v0

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/app/ProgressDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_8
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 44
    const/16 v0, 0x52

    if-ne p1, v0, :cond_6

    .line 46
    const/4 v0, 0x1

    .line 48
    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/ProgressDialog;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_5
.end method
