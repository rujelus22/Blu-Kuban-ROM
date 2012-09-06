.class Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy$AccessibilityHandler;
.super Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;
.source "AccessibleInputMethodServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessibilityHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper",
        "<",
        "Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;",
        ">;"
    }
.end annotation


# static fields
.field private static final MSG_NO_HOVER_SELECTION:I


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;Landroid/os/Looper;)V
    .registers 3
    .parameter "outerInstance"
    .parameter "looper"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;-><init>(Ljava/lang/Object;Landroid/os/Looper;)V

    .line 64
    return-void
.end method


# virtual methods
.method public cancelNoHoverSelection()V
    .registers 2

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy$AccessibilityHandler;->removeMessages(I)V

    .line 82
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 68
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    .line 73
    :goto_5
    return-void

    .line 70
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy$AccessibilityHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;

    #calls: Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;->notifyNoHoverSelection()V
    invoke-static {v0}, Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;->access$0(Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy;)V

    goto :goto_5

    .line 68
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

.method public postNoHoverSelection()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-virtual {p0, v2}, Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy$AccessibilityHandler;->removeMessages(I)V

    .line 77
    const-wide/16 v0, 0xfa

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/inputmethod/accessibility/AccessibleInputMethodServiceProxy$AccessibilityHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 78
    return-void
.end method
