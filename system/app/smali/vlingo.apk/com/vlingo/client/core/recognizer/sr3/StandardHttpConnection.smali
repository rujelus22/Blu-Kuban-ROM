.class public Lcom/vlingo/client/core/recognizer/sr3/StandardHttpConnection;
.super Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;
.source "StandardHttpConnection.java"


# static fields
.field private static log:Lcom/vlingo/client/core/logging/Logger;


# instance fields
.field private ivCon:Ljavax/microedition/io/HttpConnection;

.field private ivDin:Ljava/io/InputStream;

.field private ivDout:Ljava/io/DataOutputStream;

.field private ivMPOut:Lcom/vlingo/client/core/http/custom/MPOutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-class v0, Lcom/vlingo/client/core/recognizer/sr3/StandardHttpConnection;

    invoke-static {v0}, Lcom/vlingo/client/core/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/vlingo/client/core/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/core/recognizer/sr3/StandardHttpConnection;->log:Lcom/vlingo/client/core/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljavax/microedition/io/HttpConnection;I)V
    .registers 3
    .parameter "con"
    .parameter "requestID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p2}, Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;-><init>(I)V

    .line 42
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/sr3/StandardHttpConnection;->ivCon:Ljavax/microedition/io/HttpConnection;

    .line 43
    return-void
.end method

.method public static newConnection(Lcom/vlingo/client/core/net/ConnectionProvider;Ljava/lang/String;Ljava/lang/String;Lcom/vlingo/client/core/recognizer/ClientMeta;Lcom/vlingo/client/core/recognizer/SoftwareMeta;Ljava/util/Hashtable;I)Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;
    .registers 16
    .parameter "connectionProvider"
    .parameter "method"
    .parameter "url"
    .parameter "client"
    .parameter "software"
    .parameter
    .parameter "clientRequestId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vlingo/client/core/net/ConnectionProvider;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vlingo/client/core/recognizer/ClientMeta;",
            "Lcom/vlingo/client/core/recognizer/SoftwareMeta;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    .local p5, cookies:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 52
    .local v5, headers:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v5, p3, p4}, Lcom/vlingo/client/core/vlservice/VLServiceUtil;->addStandardVlingoHttpHeaders(Ljava/util/Hashtable;Lcom/vlingo/client/core/recognizer/ClientMeta;Lcom/vlingo/client/core/recognizer/SoftwareMeta;)V

    .line 53
    invoke-static {p2}, Lcom/vlingo/client/core/http/HttpUtil;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/vlingo/client/core/http/HttpUtil;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p5, v0, v1}, Lcom/vlingo/client/core/vlservice/VLServiceUtil;->addVLServiceCookies(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p5

    .line 54
    const-string v0, "pref.internal.asr_keepalive"

    invoke-static {v0}, Lcom/vlingo/client/core/settings/CoreSettingsProvider;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lcom/vlingo/client/core/http/HttpUtil;->newHttpConnection(Lcom/vlingo/client/core/net/ConnectionProvider;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Hashtable;Ljava/util/Hashtable;Lcom/vlingo/client/core/recognizer/ClientMeta;Lcom/vlingo/client/core/recognizer/SoftwareMeta;)Ljavax/microedition/io/HttpConnection;

    move-result-object v8

    .line 58
    .local v8, hc:Ljavax/microedition/io/HttpConnection;
    new-instance v0, Lcom/vlingo/client/core/recognizer/sr3/StandardHttpConnection;

    invoke-direct {v0, v8, p6}, Lcom/vlingo/client/core/recognizer/sr3/StandardHttpConnection;-><init>(Ljavax/microedition/io/HttpConnection;I)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/sr3/StandardHttpConnection;->ivDin:Ljava/io/InputStream;

    if-eqz v1, :cond_9

    :try_start_4
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/sr3/StandardHttpConnection;->ivDin:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_25

    .line 111
    :cond_9
    :goto_9
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/sr3/StandardHttpConnection;->ivMPOut:Lcom/vlingo/client/core/http/custom/MPOutputStream;

    if-eqz v1, :cond_12

    :try_start_d
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/sr3/StandardHttpConnection;->ivMPOut:Lcom/vlingo/client/core/http/custom/MPOutputStream;

    invoke-virtual {v1}, Lcom/vlingo/client/core/http/custom/MPOutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_30

    .line 114
    :cond_12
    :goto_12
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/sr3/StandardHttpConnection;->ivDout:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_1b

    :try_start_16
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/sr3/StandardHttpConnection;->ivDout:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_3b

    .line 117
    :cond_1b
    :goto_1b
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/sr3/StandardHttpConnection;->ivCon:Ljavax/microedition/io/HttpConnection;

    if-eqz v1, :cond_24

    :try_start_1f
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/sr3/StandardHttpConnection;->ivCon:Ljavax/microedition/io/HttpConnection;

    invoke-interface {v1}, Ljavax/microedition/io/HttpConnection;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_24} :catch_46

    .line 120
    :cond_24
    :goto_24
    return-void

    .line 108
    :catch_25
    move-exception v0

    .line 109
    .local v0, t:Ljava/lang/Exception;
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 111
    .end local v0           #t:Ljava/lang/Exception;
    :catch_30
    move-exception v0

    .line 112
    .restart local v0       #t:Ljava/lang/Exception;
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 114
    .end local v0           #t:Ljava/lang/Exception;
    :catch_3b
    move-exception v0

    .line 115
    .restart local v0       #t:Ljava/lang/Exception;
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 117
    .end local v0           #t:Ljava/lang/Exception;
    :catch_46
    move-exception v0

    .line 118
    .restart local v0       #t:Ljava/lang/Exception;
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method public finishRequest()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    return-void
.end method

.method public finishResponse()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/vlingo/client/core/recognizer/sr3/StandardHttpConnection;->close()V

    .line 128
    return-void
.end method

.method public getConnection()Lcom/vlingo/client/core/http/custom/VHttpConnection;
    .registers 2

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIn()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/StandardHttpConnection;->ivDin:Ljava/io/InputStream;

    if-nez v0, :cond_c

    .line 99
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/StandardHttpConnection;->ivCon:Ljavax/microedition/io/HttpConnection;

    invoke-interface {v0}, Ljavax/microedition/io/HttpConnection;->openDataInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/StandardHttpConnection;->ivDin:Ljava/io/InputStream;

    .line 101
    :cond_c
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/StandardHttpConnection;->ivDin:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOut()Lcom/vlingo/client/core/http/custom/MPOutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    sget-object v0, Lcom/vlingo/client/core/recognizer/sr3/StandardHttpConnection;->log:Lcom/vlingo/client/core/logging/Logger;

    const-string v1, "In getOut"

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/StandardHttpConnection;->ivMPOut:Lcom/vlingo/client/core/http/custom/MPOutputStream;

    if-nez v0, :cond_38

    .line 87
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/StandardHttpConnection;->ivCon:Ljavax/microedition/io/HttpConnection;

    invoke-interface {v0}, Ljavax/microedition/io/HttpConnection;->openDataOutputStream()Ljava/io/DataOutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/StandardHttpConnection;->ivDout:Ljava/io/DataOutputStream;

    .line 88
    sget-object v0, Lcom/vlingo/client/core/recognizer/sr3/StandardHttpConnection;->log:Lcom/vlingo/client/core/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got ivDout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/sr3/StandardHttpConnection;->ivDout:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 89
    new-instance v0, Lcom/vlingo/client/core/http/custom/MPOutputStream;

    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/sr3/StandardHttpConnection;->ivDout:Ljava/io/DataOutputStream;

    sget-object v2, Lcom/vlingo/client/core/recognizer/sr3/StandardHttpConnection;->ivBoundary:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/core/http/custom/MPOutputStream;-><init>(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/StandardHttpConnection;->ivMPOut:Lcom/vlingo/client/core/http/custom/MPOutputStream;

    .line 91
    :cond_38
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/StandardHttpConnection;->ivMPOut:Lcom/vlingo/client/core/http/custom/MPOutputStream;

    return-object v0
.end method

.method public getRequestID()I
    .registers 2

    .prologue
    .line 73
    iget v0, p0, Lcom/vlingo/client/core/recognizer/sr3/StandardHttpConnection;->ivRequestID:I

    return v0
.end method

.method public getResponseHeaderField(I)Ljava/lang/String;
    .registers 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/StandardHttpConnection;->ivCon:Ljavax/microedition/io/HttpConnection;

    invoke-interface {v0, p1}, Ljavax/microedition/io/HttpConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseHeaderFieldKey(I)Ljava/lang/String;
    .registers 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/StandardHttpConnection;->ivCon:Ljavax/microedition/io/HttpConnection;

    invoke-interface {v0, p1}, Ljavax/microedition/io/HttpConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/StandardHttpConnection;->ivCon:Ljavax/microedition/io/HttpConnection;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/io/HttpConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method
