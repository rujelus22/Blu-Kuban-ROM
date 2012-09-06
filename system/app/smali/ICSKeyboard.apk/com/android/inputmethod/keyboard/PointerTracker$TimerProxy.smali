.class public interface abstract Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;
.super Ljava/lang/Object;
.source "PointerTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/PointerTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TimerProxy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy$Adapter;
    }
.end annotation


# virtual methods
.method public abstract cancelKeyTimers()V
.end method

.method public abstract cancelLongPressTimer()V
.end method

.method public abstract startKeyRepeatTimer(JILcom/android/inputmethod/keyboard/PointerTracker;)V
.end method

.method public abstract startLongPressTimer(JILcom/android/inputmethod/keyboard/PointerTracker;)V
.end method
