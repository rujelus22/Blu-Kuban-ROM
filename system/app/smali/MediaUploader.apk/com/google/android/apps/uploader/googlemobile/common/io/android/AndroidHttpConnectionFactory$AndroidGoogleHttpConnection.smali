.class Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AndroidGoogleHttpConnection"
.end annotation


# instance fields
.field private baos:Ljava/io/ByteArrayOutputStream;

.field private closed:Z

.field private final request:Lorg/apache/http/client/methods/HttpUriRequest;

.field private response:Lorg/apache/http/HttpResponse;

.field final synthetic this$0:Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory;Ljava/lang/String;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->this$0:Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->baos:Ljava/io/ByteArrayOutputStream;

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->response:Lorg/apache/http/HttpResponse;

    if-eqz p3, :cond_26

    :try_start_c
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    const-string v1, "Connection"

    const-string v2, "close"

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_1c} :catch_3f

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_21
    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory;->access$208()I

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_66

    return-void

    :cond_26
    :try_start_26
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GET not supported:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3f
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_3f} :catch_3f

    :catch_3f
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URISyntaxException in HttpUriRequest, post="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2

    :catchall_66
    move-exception v1

    :try_start_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v1
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory;Ljava/lang/String;ZLcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory$1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;-><init>(Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory;Ljava/lang/String;Z)V

    return-void
.end method

.method private getResponse()Lorg/apache/http/HttpResponse;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->response:Lorg/apache/http/HttpResponse;

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->baos:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->this$0:Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory;

    #getter for: Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory;->client:Lcom/google/android/apps/uploader/googlemobile/common/io/android/GoogleHttpClient;
    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory;->access$300(Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory;)Lcom/google/android/apps/uploader/googlemobile/common/io/android/GoogleHttpClient;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/android/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->response:Lorg/apache/http/HttpResponse;
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_28} :catch_2b

    :cond_28
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->response:Lorg/apache/http/HttpResponse;

    return-object v0

    :catch_2b
    move-exception v0

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    iget-boolean v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->closed:Z

    if-eqz v1, :cond_b

    monitor-exit v0

    :goto_a
    return-void

    :cond_b
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->closed:Z

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory;->access$210()I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection closed.  # of open connections="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory;->access$200()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    monitor-exit v0

    goto :goto_a

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    if-nez v0, :cond_11

    const-string v0, ""

    :goto_10
    return-object v0

    :cond_11
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLength()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProtocolName()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getResponseCode()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isEndToEndSecure()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isHttps()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public openDataInputStream()Ljava/io/DataInputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public openDataOutputStream()Ljava/io/DataOutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    instance-of v0, v0, Lorg/apache/http/client/methods/HttpPost;

    if-nez v0, :cond_25

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t open output stream on a GET to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->baos:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Content-Length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "Transfer-Encoding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpConnectionFactory$AndroidGoogleHttpConnection;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method
