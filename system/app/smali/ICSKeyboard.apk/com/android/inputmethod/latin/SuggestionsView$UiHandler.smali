.class Lcom/android/inputmethod/latin/SuggestionsView$UiHandler;
.super Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;
.source "SuggestionsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/SuggestionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UiHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper",
        "<",
        "Lcom/android/inputmethod/latin/SuggestionsView;",
        ">;"
    }
.end annotation


# static fields
.field private static final DELAY_HIDE_PREVIEW:J = 0x514L

.field private static final MSG_HIDE_PREVIEW:I


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/SuggestionsView;)V
    .registers 2
    .parameter "outerInstance"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;-><init>(Ljava/lang/Object;)V

    .line 109
    return-void
.end method


# virtual methods
.method public cancelAllMessages()V
    .registers 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestionsView$UiHandler;->cancelHidePreview()V

    .line 132
    return-void
.end method

.method public cancelHidePreview()V
    .registers 2

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/SuggestionsView$UiHandler;->removeMessages(I)V

    .line 128
    return-void
.end method

.method public dispatchMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestionsView$UiHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/SuggestionsView;

    .line 114
    .local v0, suggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_10

    .line 119
    :goto_b
    return-void

    .line 116
    :pswitch_c
    #calls: Lcom/android/inputmethod/latin/SuggestionsView;->hidePreview()V
    invoke-static {v0}, Lcom/android/inputmethod/latin/SuggestionsView;->access$4(Lcom/android/inputmethod/latin/SuggestionsView;)V

    goto :goto_b

    .line 114
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch
.end method

.method public postHidePreview()V
    .registers 4

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/SuggestionsView$UiHandler;->cancelHidePreview()V

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/SuggestionsView$UiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x514

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/inputmethod/latin/SuggestionsView$UiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 124
    return-void
.end method
