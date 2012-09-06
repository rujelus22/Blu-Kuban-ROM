.class public Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;
.super Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrawingHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper",
        "<",
        "Lcom/android/inputmethod/keyboard/KeyboardView;",
        ">;"
    }
.end annotation


# static fields
.field private static final MSG_DISMISS_KEY_PREVIEW:I = 0x2

.field private static final MSG_SHOW_KEY_PREVIEW:I = 0x1


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/keyboard/KeyboardView;)V
    .registers 2
    .parameter "outerInstance"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;-><init>(Ljava/lang/Object;)V

    .line 146
    return-void
.end method


# virtual methods
.method public cancelAllDismissKeyPreviews()V
    .registers 2

    .prologue
    .line 193
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->removeMessages(I)V

    .line 194
    return-void
.end method

.method public cancelAllMessages()V
    .registers 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->cancelAllShowKeyPreviews()V

    .line 198
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->cancelAllDismissKeyPreviews()V

    .line 199
    return-void
.end method

.method public cancelAllShowKeyPreviews()V
    .registers 2

    .prologue
    .line 181
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->removeMessages(I)V

    .line 182
    return-void
.end method

.method public cancelDismissKeyPreview(Lcom/android/inputmethod/keyboard/PointerTracker;)V
    .registers 3
    .parameter "tracker"

    .prologue
    .line 189
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->removeMessages(ILjava/lang/Object;)V

    .line 190
    return-void
.end method

.method public cancelShowKeyPreview(Lcom/android/inputmethod/keyboard/PointerTracker;)V
    .registers 3
    .parameter "tracker"

    .prologue
    .line 177
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->removeMessages(ILjava/lang/Object;)V

    .line 178
    return-void
.end method

.method public dismissKeyPreview(JLcom/android/inputmethod/keyboard/PointerTracker;)V
    .registers 5
    .parameter "delay"
    .parameter "tracker"

    .prologue
    .line 185
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p3}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 186
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/keyboard/KeyboardView;

    .line 151
    .local v0, keyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;
    if-nez v0, :cond_9

    .line 161
    :goto_8
    return-void

    .line 152
    :cond_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/inputmethod/keyboard/PointerTracker;

    .line 153
    .local v1, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_22

    goto :goto_8

    .line 155
    :pswitch_13
    iget v2, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/inputmethod/keyboard/KeyboardView;->showKey(ILcom/android/inputmethod/keyboard/PointerTracker;)V
    invoke-static {v0, v2, v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$0(Lcom/android/inputmethod/keyboard/KeyboardView;ILcom/android/inputmethod/keyboard/PointerTracker;)V

    goto :goto_8

    .line 158
    :pswitch_19
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKeyPreviewText()Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    .line 153
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_13
        :pswitch_19
    .end packed-switch
.end method

.method public showKeyPreview(JILcom/android/inputmethod/keyboard/PointerTracker;)V
    .registers 9
    .parameter "delay"
    .parameter "keyIndex"
    .parameter "tracker"

    .prologue
    const/4 v3, 0x1

    .line 164
    invoke-virtual {p0, v3}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->removeMessages(I)V

    .line 165
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/keyboard/KeyboardView;

    .line 166
    .local v0, keyboardView:Lcom/android/inputmethod/keyboard/KeyboardView;
    if-nez v0, :cond_d

    .line 174
    :goto_c
    return-void

    .line 167
    :cond_d
    invoke-virtual {p4}, Lcom/android/inputmethod/keyboard/PointerTracker;->getKeyPreviewText()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1d

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_21

    .line 169
    :cond_1d
    #calls: Lcom/android/inputmethod/keyboard/KeyboardView;->showKey(ILcom/android/inputmethod/keyboard/PointerTracker;)V
    invoke-static {v0, p3, p4}, Lcom/android/inputmethod/keyboard/KeyboardView;->access$0(Lcom/android/inputmethod/keyboard/KeyboardView;ILcom/android/inputmethod/keyboard/PointerTracker;)V

    goto :goto_c

    .line 172
    :cond_21
    const/4 v1, 0x0

    invoke-virtual {p0, v3, p3, v1, p4}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 171
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardView$DrawingHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_c
.end method
