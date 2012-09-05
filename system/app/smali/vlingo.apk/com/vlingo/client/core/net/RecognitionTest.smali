.class public Lcom/vlingo/client/core/net/RecognitionTest;
.super Lcom/vlingo/client/core/net/ConnectionTest;
.source "RecognitionTest.java"


# static fields
.field public static final TEST_UTTERANCE_PATH:Ljava/lang/String; = "/res/sounds/connection_test_utt.amr"


# instance fields
.field recognizer:Lcom/vlingo/client/core/recognizer/Recognizer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/vlingo/client/core/net/ConnectionTest;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/net/RecognitionTest;->recognizer:Lcom/vlingo/client/core/recognizer/Recognizer;

    .line 32
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vlingo/client/core/net/RecognitionTest;->recognizer:Lcom/vlingo/client/core/recognizer/Recognizer;

    if-eqz v0, :cond_9

    .line 48
    iget-object v0, p0, Lcom/vlingo/client/core/net/RecognitionTest;->recognizer:Lcom/vlingo/client/core/recognizer/Recognizer;

    invoke-virtual {v0}, Lcom/vlingo/client/core/recognizer/Recognizer;->destroy()V

    .line 50
    :cond_9
    return-void
.end method

.method public executeTest(Lcom/vlingo/client/core/net/ConnectionProvider;)Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;
    .registers 7
    .parameter "connectionProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getInstance()Lcom/vlingo/client/core/common/ApplicationAdaptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getConnectionTestServerDetails()Lcom/vlingo/client/core/recognizer/SRServerDetails;

    move-result-object v1

    .line 38
    .local v1, serverDetails:Lcom/vlingo/client/core/recognizer/SRServerDetails;
    new-instance v2, Lcom/vlingo/client/core/recognizer/Recognizer;

    new-instance v3, Lcom/vlingo/client/core/recognizer/TimingRepository;

    invoke-direct {v3}, Lcom/vlingo/client/core/recognizer/TimingRepository;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v2, v3, p1, v4}, Lcom/vlingo/client/core/recognizer/Recognizer;-><init>(Lcom/vlingo/client/core/recognizer/TimingRepository;Lcom/vlingo/client/core/net/ConnectionProvider;Lcom/vlingo/client/core/recognizer/Recognizer$RecognizerController;)V

    iput-object v2, p0, Lcom/vlingo/client/core/net/RecognitionTest;->recognizer:Lcom/vlingo/client/core/recognizer/Recognizer;

    .line 39
    iget-object v2, p0, Lcom/vlingo/client/core/net/RecognitionTest;->recognizer:Lcom/vlingo/client/core/recognizer/Recognizer;

    invoke-static {}, Lcom/vlingo/client/core/recognizer/ClientMeta;->getInstance()Lcom/vlingo/client/core/recognizer/ClientMeta;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vlingo/client/core/net/RecognitionTest;->getSoftwareMeta()Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/vlingo/client/core/recognizer/Recognizer;->init(Lcom/vlingo/client/core/recognizer/SRServerDetails;Lcom/vlingo/client/core/recognizer/ClientMeta;Lcom/vlingo/client/core/recognizer/SoftwareMeta;)V

    .line 40
    iget-object v2, p0, Lcom/vlingo/client/core/net/RecognitionTest;->recognizer:Lcom/vlingo/client/core/recognizer/Recognizer;

    const-string v3, "/res/sounds/connection_test_utt.amr"

    invoke-static {}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getInstance()Lcom/vlingo/client/core/common/ApplicationAdaptor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getConnectionTestFieldID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/vlingo/client/core/recognizer/Recognizer;->recognize(Ljava/lang/String;Ljava/lang/String;)Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    move-result-object v0

    .line 43
    .local v0, results:Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;
    return-object v0
.end method

.method public validateResponse(Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;)Z
    .registers 4
    .parameter "response"

    .prologue
    .line 53
    move-object v0, p1

    check-cast v0, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    .line 54
    .local v0, srResponse:Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;
    invoke-super {p0, p1}, Lcom/vlingo/client/core/net/ConnectionTest;->validateResponse(Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->getResults()Lcom/vlingo/client/core/recognizer/results/TaggedResults;

    move-result-object v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method
