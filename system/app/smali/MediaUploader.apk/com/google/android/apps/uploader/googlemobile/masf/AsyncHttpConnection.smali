.class public Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;
.super Lcom/google/android/apps/uploader/googlemobile/common/util/Observable;

# interfaces
.implements Lcom/google/android/apps/uploader/googlemobile/common/io/GoogleHttpConnection;
.implements Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request$Listener;


# static fields
.field public static final STATE_CLOSED:I = 0x3

.field public static final STATE_COMPLETED:I = 0x2

.field public static final STATE_INIT:I = 0x0

.field public static final STATE_SUBMITTED:I = 0x1


# instance fields
.field private httpOutputStream:Ljava/io/ByteArrayOutputStream;

.field private httpRequest:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;

.field private responseCode:I

.field private responseException:Ljava/lang/Exception;

.field private responseHeaderKeys:[Ljava/lang/String;

.field private responseHeaderValues:[Ljava/lang/String;

.field private responseInputStream:Ljava/io/DataInputStream;

.field private responseLength:I

.field private state:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/common/util/Observable;-><init>()V

    iput v2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->state:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncHttpConnection("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->httpRequest:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->httpRequest:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;->setListener(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request$Listener;)V

    if-eqz p2, :cond_48

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->httpRequest:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;->setMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->httpRequest:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;->setRetryCount(I)V

    :goto_47
    return-void

    :cond_48
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->httpRequest:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;->setMethod(Ljava/lang/String;)V

    goto :goto_47
.end method

.method private assertStateCompleted()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "AsyncHttpConnection.assertStateCompleted()"

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    new-instance v0, Ljava/io/IOException;

    const-string v1, "connection closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    return-void
.end method

.method private assertStateInit()V
    .registers 2

    const-string v0, "AsyncHttpConnection.assertStateInit()"

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    return-void
.end method

.method private checkException()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->responseException:Ljava/lang/Exception;

    if-nez v0, :cond_5

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->responseException:Ljava/lang/Exception;

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->responseException:Ljava/lang/Exception;

    check-cast p0, Ljava/io/IOException;

    throw p0

    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->responseException:Ljava/lang/Exception;

    instance-of v0, v0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->responseException:Ljava/lang/Exception;

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method

.method private static debug(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method private setState(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncHttpConnection.setState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    iput p1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->state:I

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->notifyObservers()V

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string v0, "AsyncHttpConnection.close()"

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->httpOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->closeOutputStream(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->httpOutputStream:Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->httpRequest:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->responseInputStream:Ljava/io/DataInputStream;

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->closeInputStream(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->responseInputStream:Ljava/io/DataInputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->responseHeaderKeys:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->responseHeaderValues:[Ljava/lang/String;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->setState(I)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    monitor-exit p0

    return-void

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getContentType()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "AsyncHttpConnection.getContentType()"

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->assertStateCompleted()V

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->checkException()V

    const-string v0, "content-type"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_14

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHeaderField(I)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncHttpConnection.getHeaderField("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->assertStateCompleted()V

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->checkException()V

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->responseHeaderValues:[Ljava/lang/String;

    if-eqz v0, :cond_34

    if-ltz p1, :cond_34

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->responseHeaderValues:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_34

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->responseHeaderValues:[Ljava/lang/String;

    aget-object v0, v0, p1
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_36

    :goto_32
    monitor-exit p0

    return-object v0

    :cond_34
    const/4 v0, 0x0

    goto :goto_32

    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncHttpConnection.getHeaderField(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->assertStateCompleted()V

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->checkException()V

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->responseHeaderKeys:[Ljava/lang/String;

    if-eqz v0, :cond_48

    const/4 v0, 0x0

    :goto_28
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->responseHeaderKeys:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_48

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->responseHeaderKeys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->responseHeaderValues:[Ljava/lang/String;

    aget-object v0, v1, v0
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_4a

    :goto_43
    monitor-exit p0

    return-object v0

    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_48
    const/4 v0, 0x0

    goto :goto_43

    :catchall_4a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHeaderFieldKey(I)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncHttpConnection.getHeaderFieldKey("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->assertStateCompleted()V

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->checkException()V

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->responseHeaderKeys:[Ljava/lang/String;

    if-eqz v0, :cond_34

    if-ltz p1, :cond_34

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->responseHeaderKeys:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_34

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->responseHeaderKeys:[Ljava/lang/String;

    aget-object v0, v0, p1
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_36

    :goto_32
    monitor-exit p0

    return-object v0

    :cond_34
    const/4 v0, 0x0

    goto :goto_32

    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLength()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "AsyncHttpConnection.getLength()"

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->assertStateCompleted()V

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->checkException()V

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->responseLength:I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProtocolName()Ljava/lang/String;
    .registers 2

    const-string v0, "AsyncHttpConnection.getProtocolName()"

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    const-string v0, "http"

    return-object v0
.end method

.method public declared-synchronized getResponseCode()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "AsyncHttpConnection.getResponseCode()"

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->assertStateCompleted()V

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->checkException()V

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->responseCode:I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponseMessage()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "AsyncHttpConnection.getResponseMessage()"

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->assertStateCompleted()V

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->checkException()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getState()I
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string v0, "AsyncHttpConnection.getState()"

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->state:I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isClosed()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "AsyncHttpConnection.isClosed()"

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->state:I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_10

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit p0

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCompleted()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "AsyncHttpConnection.isCompleted()"

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->state:I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_10

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit p0

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEndToEndSecure()Z
    .registers 2

    const-string v0, "AsyncHttpConnection.isEndToEndSecure()"

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->getSingleton()Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->isEndToEndSecure()Z

    move-result v0

    return v0
.end method

.method public isHttps()Z
    .registers 2

    const-string v0, "AsyncHttpConnection.isHttps()"

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->getSingleton()Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->isHttps()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isInit()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string v0, "AsyncHttpConnection.isInit()"

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->state:I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_f

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized openDataInputStream()Ljava/io/DataInputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "AsyncHttpConnection.openDataInputStream()"

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->assertStateCompleted()V

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->checkException()V

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->responseInputStream:Ljava/io/DataInputStream;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->responseInputStream:Ljava/io/DataInputStream;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_16

    :goto_12
    monitor-exit p0

    return-object v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_12

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized openDataOutputStream()Ljava/io/DataOutputStream;
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "AsyncHttpConnection.openDataOutputStream()"

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->assertStateInit()V

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->httpOutputStream:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_14

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->httpOutputStream:Ljava/io/ByteArrayOutputStream;

    :cond_14
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->httpOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-object v0

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestCompleted(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "AsyncHttpConnection.requestComplete(request, response)"

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->state:I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_3c

    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    :try_start_b
    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;

    invoke-direct {v0, p2}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;-><init>(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;)V

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->getResponseCode()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->responseCode:I

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->getHeaderKeys()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->responseHeaderKeys:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->getHeaderValues()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->responseHeaderValues:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->getStreamLength()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->responseLength:I

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpResponse;->getDataInputStream()Ljava/io/DataInputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->responseInputStream:Ljava/io/DataInputStream;
    :try_end_2e
    .catchall {:try_start_b .. :try_end_2e} :catchall_47
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_2e} :catch_34
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_2e} :catch_3f

    const/4 v0, 0x2

    :try_start_2f
    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->setState(I)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3c

    :cond_32
    :goto_32
    monitor-exit p0

    return-void

    :catch_34
    move-exception v0

    :try_start_35
    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->responseException:Ljava/lang/Exception;
    :try_end_37
    .catchall {:try_start_35 .. :try_end_37} :catchall_47

    const/4 v0, 0x2

    :try_start_38
    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->setState(I)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_32

    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_3f
    move-exception v0

    :try_start_40
    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->responseException:Ljava/lang/Exception;
    :try_end_42
    .catchall {:try_start_40 .. :try_end_42} :catchall_47

    const/4 v0, 0x2

    :try_start_43
    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->setState(I)V

    goto :goto_32

    :catchall_47
    move-exception v0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->setState(I)V

    throw v0
    :try_end_4d
    .catchall {:try_start_43 .. :try_end_4d} :catchall_3c
.end method

.method public declared-synchronized requestFailed(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;Ljava/lang/Exception;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iput-object p2, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->responseException:Ljava/lang/Exception;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->setState(I)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "AsyncHttpConnection.setConnectionProperty()"

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->assertStateInit()V

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->httpRequest:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;->setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized submitRequest()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->submitRequest(Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized submitRequest(Z)V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "AsyncHttpConnection.submitRequest()"

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->debug(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->state:I

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->httpOutputStream:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->httpRequest:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->httpOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;->setPayload([B)V

    :cond_19
    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->getSingleton()Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->httpRequest:Lcom/google/android/apps/uploader/googlemobile/masf/protocol/HttpRequest;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->submitRequest(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/masf/AsyncHttpConnection;->setState(I)V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    :cond_26
    monitor-exit p0

    return-void

    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method
