.class Lcom/vlingo/client/core/asr/RecognitionManager$AudioCallbackImpl;
.super Ljava/lang/Object;
.source "RecognitionManager.java"

# interfaces
.implements Lcom/vlingo/client/core/audio/AudioCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/asr/RecognitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/core/asr/RecognitionManager;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/core/asr/RecognitionManager;)V
    .registers 2
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lcom/vlingo/client/core/asr/RecognitionManager$AudioCallbackImpl;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/core/asr/RecognitionManager;Lcom/vlingo/client/core/asr/RecognitionManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 529
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/asr/RecognitionManager$AudioCallbackImpl;-><init>(Lcom/vlingo/client/core/asr/RecognitionManager;)V

    return-void
.end method


# virtual methods
.method public audioDone(Z)V
    .registers 3
    .parameter "audioPlayed"

    .prologue
    .line 537
    iget-object v0, p0, Lcom/vlingo/client/core/asr/RecognitionManager$AudioCallbackImpl;->this$0:Lcom/vlingo/client/core/asr/RecognitionManager;

    #calls: Lcom/vlingo/client/core/asr/RecognitionManager;->processAudioDone(Z)V
    invoke-static {v0, p1}, Lcom/vlingo/client/core/asr/RecognitionManager;->access$500(Lcom/vlingo/client/core/asr/RecognitionManager;Z)V

    .line 538
    return-void
.end method

.method public audioStart(Z)V
    .registers 2
    .parameter "audioPlayed"

    .prologue
    .line 532
    return-void
.end method
