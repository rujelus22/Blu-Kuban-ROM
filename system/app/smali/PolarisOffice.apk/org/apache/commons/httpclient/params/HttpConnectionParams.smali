.class public Lorg/apache/commons/httpclient/params/HttpConnectionParams;
.super Lorg/apache/commons/httpclient/params/DefaultHttpParams;
.source "HttpConnectionParams.java"


# static fields
.field public static final CONNECTION_TIMEOUT:Ljava/lang/String; = "http.connection.timeout"

.field public static final SO_LINGER:Ljava/lang/String; = "http.socket.linger"

.field public static final SO_RCVBUF:Ljava/lang/String; = "http.socket.receivebuffer"

.field public static final SO_SNDBUF:Ljava/lang/String; = "http.socket.sendbuffer"

.field public static final SO_TIMEOUT:Ljava/lang/String; = "http.socket.timeout"

.field public static final STALE_CONNECTION_CHECK:Ljava/lang/String; = "http.connection.stalecheck"

.field public static final TCP_NODELAY:Ljava/lang/String; = "http.tcp.nodelay"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 138
    invoke-direct {p0}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;-><init>()V

    .line 139
    return-void
.end method


# virtual methods
.method public getConnectionTimeout()I
    .registers 3

    .prologue
    .line 268
    const-string v0, "http.connection.timeout"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLinger()I
    .registers 3

    .prologue
    .line 244
    const-string v0, "http.socket.linger"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getReceiveBufferSize()I
    .registers 3

    .prologue
    .line 222
    const-string v0, "http.socket.receivebuffer"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSendBufferSize()I
    .registers 3

    .prologue
    .line 198
    const-string v0, "http.socket.sendbuffer"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSoTimeout()I
    .registers 3

    .prologue
    .line 150
    const-string v0, "http.socket.timeout"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTcpNoDelay()Z
    .registers 3

    .prologue
    .line 186
    const-string v0, "http.tcp.nodelay"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isStaleCheckingEnabled()Z
    .registers 3

    .prologue
    .line 291
    const-string v0, "http.connection.stalecheck"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setConnectionTimeout(I)V
    .registers 3
    .parameter "timeout"

    .prologue
    .line 278
    const-string v0, "http.connection.timeout"

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->setIntParameter(Ljava/lang/String;I)V

    .line 279
    return-void
.end method

.method public setLinger(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 258
    const-string v0, "http.socket.linger"

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->setIntParameter(Ljava/lang/String;I)V

    .line 259
    return-void
.end method

.method public setReceiveBufferSize(I)V
    .registers 3
    .parameter "size"

    .prologue
    .line 234
    const-string v0, "http.socket.receivebuffer"

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->setIntParameter(Ljava/lang/String;I)V

    .line 235
    return-void
.end method

.method public setSendBufferSize(I)V
    .registers 3
    .parameter "size"

    .prologue
    .line 210
    const-string v0, "http.socket.sendbuffer"

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->setIntParameter(Ljava/lang/String;I)V

    .line 211
    return-void
.end method

.method public setSoTimeout(I)V
    .registers 3
    .parameter "timeout"

    .prologue
    .line 162
    const-string v0, "http.socket.timeout"

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->setIntParameter(Ljava/lang/String;I)V

    .line 163
    return-void
.end method

.method public setStaleCheckingEnabled(Z)V
    .registers 3
    .parameter "value"

    .prologue
    .line 304
    const-string v0, "http.connection.stalecheck"

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->setBooleanParameter(Ljava/lang/String;Z)V

    .line 305
    return-void
.end method

.method public setTcpNoDelay(Z)V
    .registers 3
    .parameter "value"

    .prologue
    .line 176
    const-string v0, "http.tcp.nodelay"

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->setBooleanParameter(Ljava/lang/String;Z)V

    .line 177
    return-void
.end method
