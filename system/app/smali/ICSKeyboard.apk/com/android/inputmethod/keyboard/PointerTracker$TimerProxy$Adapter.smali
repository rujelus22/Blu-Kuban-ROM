.class public Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy$Adapter;
.super Ljava/lang/Object;
.source "PointerTracker.java"

# interfaces
.implements Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Adapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelKeyTimers()V
    .registers 1

    .prologue
    .line 89
    return-void
.end method

.method public cancelLongPressTimer()V
    .registers 1

    .prologue
    .line 87
    return-void
.end method

.method public startKeyRepeatTimer(JILcom/android/inputmethod/keyboard/PointerTracker;)V
    .registers 5
    .parameter "delay"
    .parameter "keyIndex"
    .parameter "tracker"

    .prologue
    .line 83
    return-void
.end method

.method public startLongPressTimer(JILcom/android/inputmethod/keyboard/PointerTracker;)V
    .registers 5
    .parameter "delay"
    .parameter "keyIndex"
    .parameter "tracker"

    .prologue
    .line 85
    return-void
.end method
