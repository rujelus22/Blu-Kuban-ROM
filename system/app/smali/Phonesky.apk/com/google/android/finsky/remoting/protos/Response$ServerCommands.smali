.class public final Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServerCommands"
.end annotation


# instance fields
.field private cachedSize:I

.field private clearCache_:Z

.field private displayErrorMessage_:Ljava/lang/String;

.field private hasClearCache:Z

.field private hasDisplayErrorMessage:Z

.field private hasLogErrorStacktrace:Z

.field private logErrorStacktrace_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1283
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->clearCache_:Z

    .line 1305
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->displayErrorMessage_:Ljava/lang/String;

    .line 1322
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->logErrorStacktrace_:Ljava/lang/String;

    .line 1362
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->cachedSize:I

    .line 1283
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 1365
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->cachedSize:I

    if-gez v0, :cond_7

    .line 1367
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->getSerializedSize()I

    .line 1369
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->cachedSize:I

    return v0
.end method

.method public getClearCache()Z
    .registers 2

    .prologue
    .line 1289
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->clearCache_:Z

    return v0
.end method

.method public getDisplayErrorMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->displayErrorMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getLogErrorStacktrace()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->logErrorStacktrace_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 1374
    const/4 v0, 0x0

    .line 1375
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->hasClearCache()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1376
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->getClearCache()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1379
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->hasDisplayErrorMessage()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1380
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->getDisplayErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1383
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->hasLogErrorStacktrace()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1384
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->getLogErrorStacktrace()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1387
    :cond_31
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->cachedSize:I

    .line 1388
    return v0
.end method

.method public hasClearCache()Z
    .registers 2

    .prologue
    .line 1290
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->hasClearCache:Z

    return v0
.end method

.method public hasDisplayErrorMessage()Z
    .registers 2

    .prologue
    .line 1307
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->hasDisplayErrorMessage:Z

    return v0
.end method

.method public hasLogErrorStacktrace()Z
    .registers 2

    .prologue
    .line 1324
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->hasLogErrorStacktrace:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1396
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1397
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_26

    .line 1401
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1402
    :sswitch_d
    return-object p0

    .line 1407
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->setClearCache(Z)Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;

    goto :goto_0

    .line 1411
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->setDisplayErrorMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;

    goto :goto_0

    .line 1415
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->setLogErrorStacktrace(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;

    goto :goto_0

    .line 1397
    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1280
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;

    move-result-object v0

    return-object v0
.end method

.method public setClearCache(Z)Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;
    .registers 3
    .parameter "value"

    .prologue
    .line 1292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->hasClearCache:Z

    .line 1293
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->clearCache_:Z

    .line 1294
    return-object p0
.end method

.method public setDisplayErrorMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;
    .registers 3
    .parameter "value"

    .prologue
    .line 1309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->hasDisplayErrorMessage:Z

    .line 1310
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->displayErrorMessage_:Ljava/lang/String;

    .line 1311
    return-object p0
.end method

.method public setLogErrorStacktrace(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;
    .registers 3
    .parameter "value"

    .prologue
    .line 1326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->hasLogErrorStacktrace:Z

    .line 1327
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->logErrorStacktrace_:Ljava/lang/String;

    .line 1328
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1351
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->hasClearCache()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1352
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->getClearCache()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1354
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->hasDisplayErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1355
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->getDisplayErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1357
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->hasLogErrorStacktrace()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1358
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->getLogErrorStacktrace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1360
    :cond_2a
    return-void
.end method
