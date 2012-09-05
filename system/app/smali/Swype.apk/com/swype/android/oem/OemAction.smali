.class public abstract Lcom/swype/android/oem/OemAction;
.super Ljava/lang/Object;
.source "OemAction.java"


# static fields
.field public static final EDITOR_PROP_ACTION_NONE:I = -0x1

.field public static final EDITOR_PROP_ACTION_SHOW_ALPHA_LAYER:I = 0x1

.field public static final EDITOR_PROP_ACTION_SHOW_NUMERIC_LAYER:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IsUsingVibratorInterfaceForHaptic()Z
    .registers 2

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public getCustomKeyboard(Landroid/view/inputmethod/EditorInfo;)I
    .registers 3
    .parameter "attribute"

    .prologue
    .line 63
    const/4 v0, -0x1

    return v0
.end method

.method public abstract getOemId()Lcom/swype/android/oem/OEMBuildID;
.end method

.method public handleExtractedTextClicked()Z
    .registers 2

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public handleKeyDown(ILandroid/view/KeyEvent;Lcom/swype/android/inputmethod/SwypeInputMethod;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"
    .parameter "ime"

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public handleKeyUp(ILandroid/view/KeyEvent;Lcom/swype/android/inputmethod/SwypeInputMethod;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"
    .parameter "ime"

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public handleShowInputRequested(IZ)Z
    .registers 4
    .parameter "flags"
    .parameter "configChange"

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public onChangeInputLanguage(Ljava/lang/String;)V
    .registers 2
    .parameter "languageCode"

    .prologue
    .line 71
    return-void
.end method

.method public onCleanup()V
    .registers 1

    .prologue
    .line 54
    return-void
.end method

.method public onExtractedSelectionChanged(II)V
    .registers 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 116
    return-void
.end method

.method public onHiding()V
    .registers 1

    .prologue
    .line 38
    return-void
.end method

.method public onShowing()V
    .registers 1

    .prologue
    .line 31
    return-void
.end method

.method public updateKeyboardInfo(II)V
    .registers 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 47
    return-void
.end method
