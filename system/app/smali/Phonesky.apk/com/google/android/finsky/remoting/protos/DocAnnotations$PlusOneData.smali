.class public final Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocAnnotations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlusOneData"
.end annotation


# instance fields
.field private cachedSize:I

.field private circlesPeople_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;",
            ">;"
        }
    .end annotation
.end field

.field private circlesTotal_:J

.field private hasCirclesTotal:Z

.field private hasSetByUser:Z

.field private hasTotal:Z

.field private setByUser_:Z

.field private total_:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 1246
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->setByUser_:Z

    .line 1268
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->total_:J

    .line 1285
    iput-wide v1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->circlesTotal_:J

    .line 1301
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->circlesPeople_:Ljava/util/List;

    .line 1361
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->cachedSize:I

    .line 1246
    return-void
.end method


# virtual methods
.method public addCirclesPeople(Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;
    .registers 3
    .parameter "value"

    .prologue
    .line 1318
    if-nez p1, :cond_8

    .line 1319
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1321
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->circlesPeople_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->circlesPeople_:Ljava/util/List;

    .line 1324
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->circlesPeople_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1325
    return-object p0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 1363
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->cachedSize:I

    if-gez v0, :cond_7

    .line 1365
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->getSerializedSize()I

    .line 1367
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->cachedSize:I

    return v0
.end method

.method public getCirclesPeopleCount()I
    .registers 2

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->circlesPeople_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCirclesPeopleList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->circlesPeople_:Ljava/util/List;

    return-object v0
.end method

.method public getCirclesTotal()J
    .registers 3

    .prologue
    .line 1286
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->circlesTotal_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 1371
    const/4 v2, 0x0

    .line 1372
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->hasSetByUser()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1373
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->getSetByUser()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1376
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->hasTotal()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1377
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->getTotal()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1380
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->hasCirclesTotal()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1381
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->getCirclesTotal()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    .line 1384
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->getCirclesPeopleList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;

    .line 1385
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_39

    .line 1388
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;
    :cond_4c
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->cachedSize:I

    .line 1389
    return v2
.end method

.method public getSetByUser()Z
    .registers 2

    .prologue
    .line 1252
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->setByUser_:Z

    return v0
.end method

.method public getTotal()J
    .registers 3

    .prologue
    .line 1269
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->total_:J

    return-wide v0
.end method

.method public hasCirclesTotal()Z
    .registers 2

    .prologue
    .line 1287
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->hasCirclesTotal:Z

    return v0
.end method

.method public hasSetByUser()Z
    .registers 2

    .prologue
    .line 1253
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->hasSetByUser:Z

    return v0
.end method

.method public hasTotal()Z
    .registers 2

    .prologue
    .line 1270
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->hasTotal:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;
    .registers 6
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
    sparse-switch v0, :sswitch_data_32

    .line 1401
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1402
    :sswitch_d
    return-object p0

    .line 1407
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->setSetByUser(Z)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    goto :goto_0

    .line 1411
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->setTotal(J)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    goto :goto_0

    .line 1415
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->setCirclesTotal(J)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    goto :goto_0

    .line 1419
    :sswitch_26
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;-><init>()V

    .line 1420
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1421
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->addCirclesPeople(Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    goto :goto_0

    .line 1397
    :sswitch_data_32
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_16
        0x18 -> :sswitch_1e
        0x22 -> :sswitch_26
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
    .line 1244
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;

    move-result-object v0

    return-object v0
.end method

.method public setCirclesTotal(J)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;
    .registers 4
    .parameter "value"

    .prologue
    .line 1289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->hasCirclesTotal:Z

    .line 1290
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->circlesTotal_:J

    .line 1291
    return-object p0
.end method

.method public setSetByUser(Z)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;
    .registers 3
    .parameter "value"

    .prologue
    .line 1255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->hasSetByUser:Z

    .line 1256
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->setByUser_:Z

    .line 1257
    return-object p0
.end method

.method public setTotal(J)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;
    .registers 4
    .parameter "value"

    .prologue
    .line 1272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->hasTotal:Z

    .line 1273
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->total_:J

    .line 1274
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1347
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->hasSetByUser()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1348
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->getSetByUser()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1350
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->hasTotal()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1351
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->getTotal()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1353
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->hasCirclesTotal()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1354
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->getCirclesTotal()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1356
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusOneData;->getCirclesPeopleList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;

    .line 1357
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_32

    .line 1359
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusPerson;
    :cond_43
    return-void
.end method
