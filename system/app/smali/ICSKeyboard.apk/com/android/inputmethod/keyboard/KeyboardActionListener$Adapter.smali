.class public Lcom/android/inputmethod/keyboard/KeyboardActionListener$Adapter;
.super Ljava/lang/Object;
.source "KeyboardActionListener.java"

# interfaces
.implements Lcom/android/inputmethod/keyboard/KeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/KeyboardActionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Adapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelInput()V
    .registers 1

    .prologue
    .line 94
    return-void
.end method

.method public onCodeInput(I[III)V
    .registers 5
    .parameter "primaryCode"
    .parameter "keyCodes"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 90
    return-void
.end method

.method public onCustomRequest(I)Z
    .registers 3
    .parameter "requestCode"

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public onPress(IZ)V
    .registers 3
    .parameter "primaryCode"
    .parameter "withSliding"

    .prologue
    .line 86
    return-void
.end method

.method public onRelease(IZ)V
    .registers 3
    .parameter "primaryCode"
    .parameter "withSliding"

    .prologue
    .line 88
    return-void
.end method

.method public onTextInput(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "text"

    .prologue
    .line 92
    return-void
.end method

.method public swipeDown()V
    .registers 1

    .prologue
    .line 102
    return-void
.end method

.method public swipeLeft()V
    .registers 1

    .prologue
    .line 100
    return-void
.end method

.method public swipeRight()V
    .registers 1

    .prologue
    .line 99
    return-void
.end method

.method public swipeUp()V
    .registers 1

    .prologue
    .line 101
    return-void
.end method
