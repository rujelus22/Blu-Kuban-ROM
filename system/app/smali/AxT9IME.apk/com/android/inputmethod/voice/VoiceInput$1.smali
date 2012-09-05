.class Lcom/android/inputmethod/voice/VoiceInput$1;
.super Landroid/os/Handler;
.source "VoiceInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/voice/VoiceInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/voice/VoiceInput;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/voice/VoiceInput;)V
    .registers 2
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/inputmethod/voice/VoiceInput$1;->this$0:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 110
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    .line 111
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput$1;->this$0:Lcom/android/inputmethod/voice/VoiceInput;

    const/4 v1, 0x0

    #setter for: Lcom/android/inputmethod/voice/VoiceInput;->mState:I
    invoke-static {v0, v1}, Lcom/android/inputmethod/voice/VoiceInput;->access$002(Lcom/android/inputmethod/voice/VoiceInput;I)I

    .line 112
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput$1;->this$0:Lcom/android/inputmethod/voice/VoiceInput;

    #getter for: Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/voice/RecognitionView;
    invoke-static {v0}, Lcom/android/inputmethod/voice/VoiceInput;->access$100(Lcom/android/inputmethod/voice/VoiceInput;)Lcom/android/inputmethod/voice/RecognitionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/RecognitionView;->finish()V

    .line 113
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput$1;->this$0:Lcom/android/inputmethod/voice/VoiceInput;

    #getter for: Lcom/android/inputmethod/voice/VoiceInput;->mUiListener:Lcom/android/inputmethod/voice/VoiceInput$UiListener;
    invoke-static {v0}, Lcom/android/inputmethod/voice/VoiceInput;->access$200(Lcom/android/inputmethod/voice/VoiceInput;)Lcom/android/inputmethod/voice/VoiceInput$UiListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/inputmethod/voice/VoiceInput$UiListener;->onCancelVoice()V

    .line 115
    :cond_1d
    return-void
.end method
