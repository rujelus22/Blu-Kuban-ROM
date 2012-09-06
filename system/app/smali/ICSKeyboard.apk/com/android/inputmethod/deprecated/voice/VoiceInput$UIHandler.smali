.class Lcom/android/inputmethod/deprecated/voice/VoiceInput$UIHandler;
.super Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;
.source "VoiceInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/deprecated/voice/VoiceInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper",
        "<",
        "Lcom/android/inputmethod/deprecated/voice/VoiceInput;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/deprecated/voice/VoiceInput;)V
    .registers 2
    .parameter "outerInstance"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;-><init>(Ljava/lang/Object;)V

    .line 140
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 144
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    .line 145
    invoke-virtual {p0}, Lcom/android/inputmethod/deprecated/voice/VoiceInput$UIHandler;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    .line 146
    .local v0, voiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;
    const/4 v1, 0x0

    #setter for: Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mState:I
    invoke-static {v0, v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->access$0(Lcom/android/inputmethod/deprecated/voice/VoiceInput;I)V

    .line 147
    #getter for: Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/deprecated/voice/RecognitionView;
    invoke-static {v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->access$1(Lcom/android/inputmethod/deprecated/voice/VoiceInput;)Lcom/android/inputmethod/deprecated/voice/RecognitionView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->finish()V

    .line 148
    #getter for: Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mUiListener:Lcom/android/inputmethod/deprecated/voice/VoiceInput$UiListener;
    invoke-static {v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->access$2(Lcom/android/inputmethod/deprecated/voice/VoiceInput;)Lcom/android/inputmethod/deprecated/voice/VoiceInput$UiListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInput$UiListener;->onCancelVoice()V

    .line 150
    .end local v0           #voiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;
    :cond_1d
    return-void
.end method
