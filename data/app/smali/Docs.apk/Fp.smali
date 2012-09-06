.class public LFp;
.super Ljava/lang/Object;
.source "KeyUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/KeyEvent;)Z
    .registers 2
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_c
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p0}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p0}, Landroid/view/KeyEvent;->isFunctionPressed()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p0}, Landroid/view/KeyEvent;->isSymPressed()Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method
