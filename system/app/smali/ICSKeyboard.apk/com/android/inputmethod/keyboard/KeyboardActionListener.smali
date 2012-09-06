.class public interface abstract Lcom/android/inputmethod/keyboard/KeyboardActionListener;
.super Ljava/lang/Object;
.source "KeyboardActionListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/KeyboardActionListener$Adapter;
    }
.end annotation


# static fields
.field public static final NOT_A_TOUCH_COORDINATE:I = -0x1


# virtual methods
.method public abstract onCancelInput()V
.end method

.method public abstract onCodeInput(I[III)V
.end method

.method public abstract onCustomRequest(I)Z
.end method

.method public abstract onPress(IZ)V
.end method

.method public abstract onRelease(IZ)V
.end method

.method public abstract onTextInput(Ljava/lang/CharSequence;)V
.end method

.method public abstract swipeDown()V
.end method

.method public abstract swipeLeft()V
.end method

.method public abstract swipeRight()V
.end method

.method public abstract swipeUp()V
.end method
