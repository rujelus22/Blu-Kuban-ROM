.class Lcom/vlingo/client/core/recognizer/Recognizer$RequestTimeoutTask;
.super Ljava/util/TimerTask;
.source "Recognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/recognizer/Recognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestTimeoutTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/core/recognizer/Recognizer;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/core/recognizer/Recognizer;)V
    .registers 2
    .parameter

    .prologue
    .line 813
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RequestTimeoutTask;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/core/recognizer/Recognizer;Lcom/vlingo/client/core/recognizer/Recognizer$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 813
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/recognizer/Recognizer$RequestTimeoutTask;-><init>(Lcom/vlingo/client/core/recognizer/Recognizer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 815
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$RequestTimeoutTask;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    const/4 v1, -0x4

    #calls: Lcom/vlingo/client/core/recognizer/Recognizer;->handleRecognitionFailure(I)V
    invoke-static {v0, v1}, Lcom/vlingo/client/core/recognizer/Recognizer;->access$1300(Lcom/vlingo/client/core/recognizer/Recognizer;I)V

    .line 816
    return-void
.end method
