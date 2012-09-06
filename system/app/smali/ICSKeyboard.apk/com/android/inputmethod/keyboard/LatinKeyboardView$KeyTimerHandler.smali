.class Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;
.super Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;
.source "LatinKeyboardView.java"

# interfaces
.implements Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/LatinKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyTimerHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper",
        "<",
        "Lcom/android/inputmethod/keyboard/LatinKeyboardView;",
        ">;",
        "Lcom/android/inputmethod/keyboard/PointerTracker$TimerProxy;"
    }
.end annotation


# static fields
.field private static final MSG_IGNORE_DOUBLE_TAP:I = 0x3

.field private static final MSG_LONGPRESS_KEY:I = 0x2

.field private static final MSG_REPEAT_KEY:I = 0x1


# instance fields
.field private mInKeyRepeat:Z


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/keyboard/LatinKeyboardView;)V
    .registers 2
    .parameter "outerInstance"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;-><init>(Ljava/lang/Object;)V

    .line 100
    return-void
.end method


# virtual methods
.method public cancelAllMessages()V
    .registers 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->cancelKeyTimers()V

    .line 161
    return-void
.end method

.method public cancelKeyRepeatTimer()V
    .registers 2

    .prologue
    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->mInKeyRepeat:Z

    .line 125
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->removeMessages(I)V

    .line 126
    return-void
.end method

.method public cancelKeyTimers()V
    .registers 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->cancelKeyRepeatTimer()V

    .line 146
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->cancelLongPressTimer()V

    .line 147
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->removeMessages(I)V

    .line 148
    return-void
.end method

.method public cancelLongPressTimer()V
    .registers 2

    .prologue
    .line 140
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->removeMessages(I)V

    .line 141
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    .line 105
    .local v0, keyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/inputmethod/keyboard/PointerTracker;

    .line 106
    .local v1, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_26

    .line 115
    :goto_f
    return-void

    .line 108
    :pswitch_10
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/keyboard/PointerTracker;->onRepeatKey(I)V

    .line 109
    #getter for: Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyRepeatInterval:I
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->access$0(Lcom/android/inputmethod/keyboard/LatinKeyboardView;)I

    move-result v2

    int-to-long v2, v2

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->startKeyRepeatTimer(JILcom/android/inputmethod/keyboard/PointerTracker;)V

    goto :goto_f

    .line 112
    :pswitch_20
    iget v2, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/inputmethod/keyboard/LatinKeyboardView;->openMiniKeyboardIfRequired(ILcom/android/inputmethod/keyboard/PointerTracker;)Z
    invoke-static {v0, v2, v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->access$1(Lcom/android/inputmethod/keyboard/LatinKeyboardView;ILcom/android/inputmethod/keyboard/PointerTracker;)Z

    goto :goto_f

    .line 106
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_10
        :pswitch_20
    .end packed-switch
.end method

.method public isIgnoringDoubleTap()Z
    .registers 2

    .prologue
    .line 156
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public isInKeyRepeat()Z
    .registers 2

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->mInKeyRepeat:Z

    return v0
.end method

.method public startIgnoringDoubleTap()V
    .registers 4

    .prologue
    .line 151
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 152
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v1

    int-to-long v1, v1

    .line 151
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 153
    return-void
.end method

.method public startKeyRepeatTimer(JILcom/android/inputmethod/keyboard/PointerTracker;)V
    .registers 7
    .parameter "delay"
    .parameter "keyIndex"
    .parameter "tracker"

    .prologue
    const/4 v1, 0x1

    .line 119
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->mInKeyRepeat:Z

    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p3, v0, p4}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 121
    return-void
.end method

.method public startLongPressTimer(JILcom/android/inputmethod/keyboard/PointerTracker;)V
    .registers 7
    .parameter "delay"
    .parameter "keyIndex"
    .parameter "tracker"

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->cancelLongPressTimer()V

    .line 135
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, v1, p4}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 136
    return-void
.end method
