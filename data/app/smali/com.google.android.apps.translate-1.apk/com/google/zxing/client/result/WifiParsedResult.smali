.class public final Lcom/google/zxing/client/result/WifiParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "WifiParsedResult.java"


# instance fields
.field private final networkEncryption:Ljava/lang/String;

.field private final password:Ljava/lang/String;

.field private final ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "networkEncryption"
    .parameter "ssid"
    .parameter "password"

    .prologue
    .line 28
    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->WIFI:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 29
    iput-object p2, p0, Lcom/google/zxing/client/result/WifiParsedResult;->ssid:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/google/zxing/client/result/WifiParsedResult;->networkEncryption:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/google/zxing/client/result/WifiParsedResult;->password:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getDisplayResult()Ljava/lang/String;
    .registers 3

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 48
    .local v0, result:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/google/zxing/client/result/WifiParsedResult;->ssid:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/WifiParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 49
    iget-object v1, p0, Lcom/google/zxing/client/result/WifiParsedResult;->networkEncryption:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/WifiParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 50
    iget-object v1, p0, Lcom/google/zxing/client/result/WifiParsedResult;->password:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/WifiParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNetworkEncryption()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/zxing/client/result/WifiParsedResult;->networkEncryption:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/zxing/client/result/WifiParsedResult;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/zxing/client/result/WifiParsedResult;->ssid:Ljava/lang/String;

    return-object v0
.end method
