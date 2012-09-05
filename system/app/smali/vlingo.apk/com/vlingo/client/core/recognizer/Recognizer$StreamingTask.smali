.class Lcom/vlingo/client/core/recognizer/Recognizer$StreamingTask;
.super Ljava/util/TimerTask;
.source "Recognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/recognizer/Recognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StreamingTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/core/recognizer/Recognizer;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/core/recognizer/Recognizer;)V
    .registers 2
    .parameter

    .prologue
    .line 820
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/Recognizer$StreamingTask;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/core/recognizer/Recognizer;Lcom/vlingo/client/core/recognizer/Recognizer$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 820
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/recognizer/Recognizer$StreamingTask;-><init>(Lcom/vlingo/client/core/recognizer/Recognizer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 822
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$StreamingTask;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    #getter for: Lcom/vlingo/client/core/recognizer/Recognizer;->recorder:Lcom/vlingo/client/core/recognizer/Recorder;
    invoke-static {v0}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$2600(Lcom/vlingo/client/core/recognizer/Recognizer;)Lcom/vlingo/client/core/recognizer/Recorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/recognizer/Recorder;->streamAudioData()V

    .line 823
    return-void
.end method
