.class Lcom/vlingo/client/car/CarActivity$DataObjectHandle;
.super Ljava/lang/Object;
.source "CarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/car/CarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataObjectHandle"
.end annotation


# instance fields
.field public audioManager:Landroid/media/AudioManager;

.field public carActivityRef:Lcom/vlingo/client/car/CarActivity;

.field public volatile initialized:Z

.field public volatile paused:Z

.field public phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

.field public recoResponderChain:Lcom/vlingo/client/car/asr/RecoResponderChain;

.field final synthetic this$0:Lcom/vlingo/client/car/CarActivity;

.field public ttsManager:Lcom/vlingo/client/car/tts/CarTTSManager;

.field public wakeupPhraseSpotter:Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/car/CarActivity;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 174
    iput-object p1, p0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->this$0:Lcom/vlingo/client/car/CarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    .line 181
    iput-boolean v1, p0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->paused:Z

    .line 182
    iput-boolean v1, p0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->initialized:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/car/CarActivity;Lcom/vlingo/client/car/CarActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;-><init>(Lcom/vlingo/client/car/CarActivity;)V

    return-void
.end method
