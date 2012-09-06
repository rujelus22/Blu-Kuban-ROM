.class Lcom/google/tts/MakeBagel$2;
.super Ljava/lang/Object;
.source "MakeBagel.java"

# interfaces
.implements Lcom/google/tts/TTS$InitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/tts/MakeBagel;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tts/MakeBagel;


# direct methods
.method constructor <init>(Lcom/google/tts/MakeBagel;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/tts/MakeBagel$2;->this$0:Lcom/google/tts/MakeBagel;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .registers 6
    .parameter "status"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/tts/MakeBagel$2;->this$0:Lcom/google/tts/MakeBagel;

    #getter for: Lcom/google/tts/MakeBagel;->mTts:Lcom/google/tts/TTS;
    invoke-static {v0}, Lcom/google/tts/MakeBagel;->access$0(Lcom/google/tts/MakeBagel;)Lcom/google/tts/TTS;

    move-result-object v0

    iget-object v1, p0, Lcom/google/tts/MakeBagel$2;->this$0:Lcom/google/tts/MakeBagel;

    iget-object v1, v1, Lcom/google/tts/MakeBagel;->completionListener:Lcom/google/tts/TTS$SpeechCompletedListener;

    invoke-virtual {v0, v1}, Lcom/google/tts/TTS;->setOnSpeechCompletedListener(Lcom/google/tts/TTS$SpeechCompletedListener;)V

    .line 50
    iget-object v0, p0, Lcom/google/tts/MakeBagel$2;->this$0:Lcom/google/tts/MakeBagel;

    #getter for: Lcom/google/tts/MakeBagel;->langRegionString:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/tts/MakeBagel;->access$2(Lcom/google/tts/MakeBagel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_28

    .line 51
    iget-object v0, p0, Lcom/google/tts/MakeBagel$2;->this$0:Lcom/google/tts/MakeBagel;

    #getter for: Lcom/google/tts/MakeBagel;->mTts:Lcom/google/tts/TTS;
    invoke-static {v0}, Lcom/google/tts/MakeBagel;->access$0(Lcom/google/tts/MakeBagel;)Lcom/google/tts/TTS;

    move-result-object v0

    iget-object v1, p0, Lcom/google/tts/MakeBagel$2;->this$0:Lcom/google/tts/MakeBagel;

    #getter for: Lcom/google/tts/MakeBagel;->langRegionString:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/tts/MakeBagel;->access$2(Lcom/google/tts/MakeBagel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/tts/TTS;->setLanguage(Ljava/lang/String;)V

    .line 53
    :cond_28
    iget-object v0, p0, Lcom/google/tts/MakeBagel$2;->this$0:Lcom/google/tts/MakeBagel;

    #getter for: Lcom/google/tts/MakeBagel;->mTts:Lcom/google/tts/TTS;
    invoke-static {v0}, Lcom/google/tts/MakeBagel;->access$0(Lcom/google/tts/MakeBagel;)Lcom/google/tts/TTS;

    move-result-object v0

    iget-object v1, p0, Lcom/google/tts/MakeBagel$2;->this$0:Lcom/google/tts/MakeBagel;

    #getter for: Lcom/google/tts/MakeBagel;->message:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/tts/MakeBagel;->access$3(Lcom/google/tts/MakeBagel;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/tts/TTS;->speak(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 54
    return-void
.end method
