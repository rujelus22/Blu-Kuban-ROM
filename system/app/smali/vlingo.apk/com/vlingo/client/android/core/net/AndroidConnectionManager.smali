.class public Lcom/vlingo/client/android/core/net/AndroidConnectionManager;
.super Lcom/vlingo/client/core/net/ConnectionManager;
.source "AndroidConnectionManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/vlingo/client/core/net/ConnectionManager;-><init>()V

    return-void
.end method


# virtual methods
.method public buildConnectionUrl(ILjava/lang/String;ZZ)Lcom/vlingo/client/core/net/ConnectionResult;
    .registers 7
    .parameter "connectionType"
    .parameter "url"
    .parameter "useWiFi"
    .parameter "useApn"

    .prologue
    .line 27
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConnectionWithDetails(Ljava/lang/String;IZIZ)Lcom/vlingo/client/core/net/ConnectionResult;
    .registers 9
    .parameter "urlStr"
    .parameter "mode"
    .parameter "timeouts"
    .parameter "retryThresholdTime"
    .parameter "ignoreDirectTCP"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-static {p1}, Lcom/vlingo/client/android/core/http/custom/AndroidVConnectionFactory;->createConnection(Ljava/lang/String;)Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;

    move-result-object v0

    .line 40
    .local v0, c:Lcom/vlingo/client/android/core/http/custom/AndroidVStreamConnection;
    new-instance v1, Lcom/vlingo/client/core/net/ConnectionResult;

    invoke-direct {v1}, Lcom/vlingo/client/core/net/ConnectionResult;-><init>()V

    .line 43
    .local v1, result:Lcom/vlingo/client/core/net/ConnectionResult;
    iput-object v0, v1, Lcom/vlingo/client/core/net/ConnectionResult;->connection:Ljavax/microedition/io/Connection;

    .line 44
    const/4 v2, 0x0

    iput v2, v1, Lcom/vlingo/client/core/net/ConnectionResult;->connectionType:I

    .line 46
    return-object v1
.end method

.method public isConnectionTestRequired()Z
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method protected onInstanceObtained()V
    .registers 1

    .prologue
    .line 58
    return-void
.end method

.method public resetConnectionTest()V
    .registers 1

    .prologue
    .line 63
    return-void
.end method

.method public runConnectionTests(Lcom/vlingo/client/core/net/ConnectionTest;Lcom/vlingo/client/core/net/ConnectionTestListener;)V
    .registers 5
    .parameter "test"
    .parameter "listener"

    .prologue
    .line 69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
