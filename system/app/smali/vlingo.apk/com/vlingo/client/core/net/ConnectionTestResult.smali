.class public Lcom/vlingo/client/core/net/ConnectionTestResult;
.super Ljava/lang/Object;
.source "ConnectionTestResult.java"


# instance fields
.field public bestConnectionType:I

.field public errorMessage:Ljava/lang/String;

.field public response:Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/core/net/ConnectionTestResult;->success:Z

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/vlingo/client/core/net/ConnectionTestResult;->bestConnectionType:I

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/vlingo/client/core/net/ConnectionTestResult;->errorMessage:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/net/ConnectionTestResult;->response:Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;

    .line 26
    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;)V
    .registers 5
    .parameter "success"
    .parameter "bestConnectionType"
    .parameter "errorMessage"
    .parameter "response"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean p1, p0, Lcom/vlingo/client/core/net/ConnectionTestResult;->success:Z

    .line 30
    iput p2, p0, Lcom/vlingo/client/core/net/ConnectionTestResult;->bestConnectionType:I

    .line 31
    iput-object p3, p0, Lcom/vlingo/client/core/net/ConnectionTestResult;->errorMessage:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/vlingo/client/core/net/ConnectionTestResult;->response:Lcom/vlingo/client/core/vlservice/response/VLServiceResponse;

    .line 33
    return-void
.end method
