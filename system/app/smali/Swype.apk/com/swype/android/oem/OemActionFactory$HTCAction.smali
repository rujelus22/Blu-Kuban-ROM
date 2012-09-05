.class Lcom/swype/android/oem/OemActionFactory$HTCAction;
.super Lcom/swype/android/oem/OemAction;
.source "OemActionFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/oem/OemActionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HTCAction"
.end annotation


# instance fields
.field private ctx:Landroid/content/Context;

.field private keyboardHeight:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "ctx"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/swype/android/oem/OemAction;-><init>()V

    .line 190
    iput-object p1, p0, Lcom/swype/android/oem/OemActionFactory$HTCAction;->ctx:Landroid/content/Context;

    .line 191
    return-void
.end method

.method private broadcastHTCIMEState(Z)V
    .registers 5
    .parameter

    .prologue
    .line 230
    iget-object v0, p0, Lcom/swype/android/oem/OemActionFactory$HTCAction;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_1d

    .line 232
    new-instance v0, Landroid/content/Intent;

    const-string v1, "HTC_IME_CURRENT_STATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 233
    const-string v1, "SIP_VISIBLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 234
    const-string v1, "SIP_HEIGHT"

    iget v2, p0, Lcom/swype/android/oem/OemActionFactory$HTCAction;->keyboardHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 235
    iget-object v1, p0, Lcom/swype/android/oem/OemActionFactory$HTCAction;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 237
    :cond_1d
    return-void
.end method


# virtual methods
.method public getOemId()Lcom/swype/android/oem/OEMBuildID;
    .registers 2

    .prologue
    .line 197
    sget-object v0, Lcom/swype/android/oem/OEMBuildID;->HTC_SENSE_UI:Lcom/swype/android/oem/OEMBuildID;

    return-object v0
.end method

.method public handleKeyDown(ILandroid/view/KeyEvent;Lcom/swype/android/inputmethod/SwypeInputMethod;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"
    .parameter "ime"

    .prologue
    .line 248
    const/16 v0, 0x3d

    if-ne p1, v0, :cond_12

    const/4 v0, 0x7

    invoke-virtual {p3, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getEditorProperty(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 250
    const/16 v0, 0x14

    invoke-virtual {p3, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->sendDownUpKeyEvents(I)V

    .line 251
    const/4 v0, 0x1

    .line 253
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public handleKeyUp(ILandroid/view/KeyEvent;Lcom/swype/android/inputmethod/SwypeInputMethod;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"
    .parameter "ime"

    .prologue
    .line 265
    const/16 v0, 0x3d

    if-ne p1, v0, :cond_d

    const/4 v0, 0x7

    invoke-virtual {p3, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getEditorProperty(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 267
    const/4 v0, 0x1

    .line 269
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public onHiding()V
    .registers 2

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/swype/android/oem/OemActionFactory$HTCAction;->broadcastHTCIMEState(Z)V

    .line 212
    return-void
.end method

.method public onShowing()V
    .registers 2

    .prologue
    .line 204
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/swype/android/oem/OemActionFactory$HTCAction;->broadcastHTCIMEState(Z)V

    .line 205
    return-void
.end method

.method public updateKeyboardInfo(II)V
    .registers 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 220
    iput p2, p0, Lcom/swype/android/oem/OemActionFactory$HTCAction;->keyboardHeight:I

    .line 221
    return-void
.end method
