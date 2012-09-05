.class Lcom/swype/android/oem/OemActionFactory$LGAction;
.super Lcom/swype/android/oem/OemAction;
.source "OemActionFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/oem/OemActionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LGAction"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "ctx"

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/swype/android/oem/OemAction;-><init>()V

    .line 282
    return-void
.end method


# virtual methods
.method public getOemId()Lcom/swype/android/oem/OEMBuildID;
    .registers 2

    .prologue
    .line 288
    sget-object v0, Lcom/swype/android/oem/OEMBuildID;->LG:Lcom/swype/android/oem/OEMBuildID;

    return-object v0
.end method

.method public handleKeyDown(ILandroid/view/KeyEvent;Lcom/swype/android/inputmethod/SwypeInputMethod;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"
    .parameter "ime"

    .prologue
    .line 299
    const/16 v0, 0x5e

    if-ne p1, v0, :cond_1b

    invoke-static {p2}, Lcom/swype/android/compat/LongPressHandler;->isLongPress(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p3}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p3}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isVoiceDictationAvailable()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 303
    invoke-virtual {p3}, Lcom/swype/android/inputmethod/SwypeInputMethod;->launchVoiceDictation()V

    .line 304
    const/4 v0, 0x1

    .line 306
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method
