.class Lcom/android/inputmethod/deprecated/voice/RecognitionView$6;
.super Ljava/lang/Object;
.source "RecognitionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/deprecated/voice/RecognitionView;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/deprecated/voice/RecognitionView;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/deprecated/voice/RecognitionView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView$6;->this$0:Lcom/android/inputmethod/deprecated/voice/RecognitionView;

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/RecognitionView$6;->this$0:Lcom/android/inputmethod/deprecated/voice/RecognitionView;

    #getter for: Lcom/android/inputmethod/deprecated/voice/RecognitionView;->mSoundIndicator:Lcom/android/inputmethod/deprecated/voice/SoundIndicator;
    invoke-static {v0}, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->access$8(Lcom/android/inputmethod/deprecated/voice/RecognitionView;)Lcom/android/inputmethod/deprecated/voice/SoundIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/voice/SoundIndicator;->stop()V

    .line 346
    return-void
.end method
