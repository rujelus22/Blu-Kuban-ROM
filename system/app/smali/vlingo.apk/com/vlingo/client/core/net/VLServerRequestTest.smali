.class public Lcom/vlingo/client/core/net/VLServerRequestTest;
.super Lcom/vlingo/client/core/net/ConnectionTest;
.source "VLServerRequestTest.java"


# instance fields
.field request:Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;

.field response:Lcom/vlingo/client/core/http/HttpResponse;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;)V
    .registers 3
    .parameter "request"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/vlingo/client/core/net/ConnectionTest;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/net/VLServerRequestTest;->response:Lcom/vlingo/client/core/http/HttpResponse;

    .line 23
    iput-object p1, p0, Lcom/vlingo/client/core/net/VLServerRequestTest;->request:Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;

    .line 24
    return-void
.end method


# virtual methods
.method public executeTest(Lcom/vlingo/client/core/net/ConnectionProvider;)Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;
    .registers 4
    .parameter "connectionProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    iget-object v1, p0, Lcom/vlingo/client/core/net/VLServerRequestTest;->request:Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;

    invoke-virtual {v1}, Lcom/vlingo/client/core/vlservice/VLHttpServiceRequest;->fetchResponse()Lcom/vlingo/client/core/http/HttpResponse;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/core/net/VLServerRequestTest;->response:Lcom/vlingo/client/core/http/HttpResponse;

    .line 29
    iget-object v1, p0, Lcom/vlingo/client/core/net/VLServerRequestTest;->response:Lcom/vlingo/client/core/http/HttpResponse;

    invoke-virtual {v1}, Lcom/vlingo/client/core/http/HttpResponse;->getDataAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;->createFromXml(Ljava/lang/String;)Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;

    move-result-object v0

    .line 30
    .local v0, serviceResponse:Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;
    return-object v0
.end method
