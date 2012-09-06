.class Lcom/google/android/apps/translate/VoiceInput$1;
.super Landroid/os/Handler;
.source "VoiceInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/VoiceInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/VoiceInput;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/VoiceInput;)V
    .registers 2
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/android/apps/translate/VoiceInput$1;->this$0:Lcom/google/android/apps/translate/VoiceInput;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 80
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 81
    iget-object v0, p0, Lcom/google/android/apps/translate/VoiceInput$1;->this$0:Lcom/google/android/apps/translate/VoiceInput;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/translate/VoiceInput;->mState:I
    invoke-static {v0, v1}, Lcom/google/android/apps/translate/VoiceInput;->access$002(Lcom/google/android/apps/translate/VoiceInput;I)I

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/translate/VoiceInput$1;->this$0:Lcom/google/android/apps/translate/VoiceInput;

    #getter for: Lcom/google/android/apps/translate/VoiceInput;->mRecognitionView:Lcom/google/android/apps/translate/RecognitionView;
    invoke-static {v0}, Lcom/google/android/apps/translate/VoiceInput;->access$100(Lcom/google/android/apps/translate/VoiceInput;)Lcom/google/android/apps/translate/RecognitionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/translate/RecognitionView;->finish()V

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/translate/VoiceInput$1;->this$0:Lcom/google/android/apps/translate/VoiceInput;

    #calls: Lcom/google/android/apps/translate/VoiceInput;->onCancelVoice()V
    invoke-static {v0}, Lcom/google/android/apps/translate/VoiceInput;->access$200(Lcom/google/android/apps/translate/VoiceInput;)V

    .line 85
    :cond_19
    return-void
.end method
