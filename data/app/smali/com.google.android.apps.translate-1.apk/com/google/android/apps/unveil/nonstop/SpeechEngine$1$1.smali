.class Lcom/google/android/apps/unveil/nonstop/SpeechEngine$1$1;
.super Ljava/lang/Object;
.source "SpeechEngine.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/nonstop/SpeechEngine$1;->onInit(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/unveil/nonstop/SpeechEngine$1;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/nonstop/SpeechEngine$1;)V
    .registers 2
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine$1$1;->this$1:Lcom/google/android/apps/unveil/nonstop/SpeechEngine$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUtteranceCompleted(Ljava/lang/String;)V
    .registers 6
    .parameter "utteranceId"

    .prologue
    .line 97
    invoke-static {}, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "onUtteranceCompleted(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine$1$1;->this$1:Lcom/google/android/apps/unveil/nonstop/SpeechEngine$1;

    iget-object v0, v0, Lcom/google/android/apps/unveil/nonstop/SpeechEngine$1;->this$0:Lcom/google/android/apps/unveil/nonstop/SpeechEngine;

    #calls: Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->speakNextItem()V
    invoke-static {v0}, Lcom/google/android/apps/unveil/nonstop/SpeechEngine;->access$200(Lcom/google/android/apps/unveil/nonstop/SpeechEngine;)V

    .line 99
    return-void
.end method
