.class Lcom/vlingo/client/core/recognizer/Recognizer$CannedRecognitionRequestListener;
.super Ljava/lang/Object;
.source "Recognizer.java"

# interfaces
.implements Lcom/vlingo/client/core/recognizer/SRRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/recognizer/Recognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CannedRecognitionRequestListener"
.end annotation


# instance fields
.field private volatile response:Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

.field final synthetic this$0:Lcom/vlingo/client/core/recognizer/Recognizer;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/core/recognizer/Recognizer;)V
    .registers 3
    .parameter

    .prologue
    .line 919
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/Recognizer$CannedRecognitionRequestListener;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 921
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$CannedRecognitionRequestListener;->response:Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/core/recognizer/Recognizer;Lcom/vlingo/client/core/recognizer/Recognizer$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 919
    invoke-direct {p0, p1}, Lcom/vlingo/client/core/recognizer/Recognizer$CannedRecognitionRequestListener;-><init>(Lcom/vlingo/client/core/recognizer/Recognizer;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/vlingo/client/core/recognizer/Recognizer$CannedRecognitionRequestListener;)Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;
    .registers 2
    .parameter "x0"

    .prologue
    .line 919
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/Recognizer$CannedRecognitionRequestListener;->response:Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    return-object v0
.end method


# virtual methods
.method public requestFailed(I)V
    .registers 4
    .parameter "state"

    .prologue
    .line 928
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recognizer$CannedRecognitionRequestListener;->response:Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    if-nez v1, :cond_b

    .line 929
    new-instance v1, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    invoke-direct {v1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;-><init>()V

    iput-object v1, p0, Lcom/vlingo/client/core/recognizer/Recognizer$CannedRecognitionRequestListener;->response:Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    .line 930
    :cond_b
    new-instance v0, Lcom/vlingo/client/core/vlservice/response/ServerMessage;

    invoke-direct {v0}, Lcom/vlingo/client/core/vlservice/response/ServerMessage;-><init>()V

    .line 931
    .local v0, errorMsg:Lcom/vlingo/client/core/vlservice/response/ServerMessage;
    const-string v1, "Can\'t connect to server"

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/vlservice/response/ServerMessage;->setMessage(Ljava/lang/String;)V

    .line 932
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/vlservice/response/ServerMessage;->setType(I)V

    .line 933
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/Recognizer$CannedRecognitionRequestListener;->response:Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    invoke-virtual {v1, v0}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->addMessage(Lcom/vlingo/client/core/vlservice/response/ServerMessage;)V

    .line 934
    return-void
.end method

.method public resultReceived(Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)V
    .registers 2
    .parameter "recResponse"

    .prologue
    .line 924
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/Recognizer$CannedRecognitionRequestListener;->response:Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    .line 925
    return-void
.end method

.method public stateChanged(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 938
    return-void
.end method
