.class public Ljackpal/androidterm/TermView;
.super Ljackpal/androidterm/emulatorview/EmulatorView;
.source "TermView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljackpal/androidterm/emulatorview/TermSession;Landroid/util/DisplayMetrics;)V
    .registers 4
    .parameter "context"
    .parameter "session"
    .parameter "metrics"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Ljackpal/androidterm/emulatorview/EmulatorView;-><init>(Landroid/content/Context;Ljackpal/androidterm/emulatorview/TermSession;Landroid/util/DisplayMetrics;)V

    .line 31
    return-void
.end method


# virtual methods
.method public updatePrefs(Ljackpal/androidterm/util/TermSettings;)V
    .registers 3
    .parameter "settings"

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljackpal/androidterm/TermView;->updatePrefs(Ljackpal/androidterm/util/TermSettings;Ljackpal/androidterm/emulatorview/ColorScheme;)V

    .line 49
    return-void
.end method

.method public updatePrefs(Ljackpal/androidterm/util/TermSettings;Ljackpal/androidterm/emulatorview/ColorScheme;)V
    .registers 5
    .parameter "settings"
    .parameter "scheme"

    .prologue
    .line 34
    if-nez p2, :cond_b

    .line 35
    new-instance p2, Ljackpal/androidterm/emulatorview/ColorScheme;

    .end local p2
    invoke-virtual {p1}, Ljackpal/androidterm/util/TermSettings;->getColorScheme()[I

    move-result-object v0

    invoke-direct {p2, v0}, Ljackpal/androidterm/emulatorview/ColorScheme;-><init>([I)V

    .line 38
    .restart local p2
    :cond_b
    invoke-virtual {p1}, Ljackpal/androidterm/util/TermSettings;->getFontSize()I

    move-result v0

    invoke-virtual {p0, v0}, Ljackpal/androidterm/TermView;->setTextSize(I)V

    .line 39
    invoke-virtual {p1}, Ljackpal/androidterm/util/TermSettings;->getCursorStyle()I

    move-result v0

    invoke-virtual {p1}, Ljackpal/androidterm/util/TermSettings;->getCursorBlink()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljackpal/androidterm/TermView;->setCursorStyle(II)V

    .line 40
    invoke-virtual {p1}, Ljackpal/androidterm/util/TermSettings;->useCookedIME()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljackpal/androidterm/TermView;->setUseCookedIME(Z)V

    .line 41
    invoke-virtual {p0, p2}, Ljackpal/androidterm/TermView;->setColorScheme(Ljackpal/androidterm/emulatorview/ColorScheme;)V

    .line 42
    invoke-virtual {p1}, Ljackpal/androidterm/util/TermSettings;->getBackKeyCharacter()I

    move-result v0

    invoke-virtual {p0, v0}, Ljackpal/androidterm/TermView;->setBackKeyCharacter(I)V

    .line 43
    invoke-virtual {p1}, Ljackpal/androidterm/util/TermSettings;->getControlKeyCode()I

    move-result v0

    invoke-virtual {p0, v0}, Ljackpal/androidterm/TermView;->setControlKeyCode(I)V

    .line 44
    invoke-virtual {p1}, Ljackpal/androidterm/util/TermSettings;->getFnKeyCode()I

    move-result v0

    invoke-virtual {p0, v0}, Ljackpal/androidterm/TermView;->setFnKeyCode(I)V

    .line 45
    return-void
.end method
