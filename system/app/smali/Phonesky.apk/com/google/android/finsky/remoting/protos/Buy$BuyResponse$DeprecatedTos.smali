.class public final Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Buy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeprecatedTos"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasTosCheckboxText:Z

.field private hasTosHeaderText:Z

.field private hasTosName:Z

.field private hasTosUrl:Z

.field private tosCheckboxText_:Ljava/lang/String;

.field private tosHeaderText_:Ljava/lang/String;

.field private tosName_:Ljava/lang/String;

.field private tosUrl_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1364
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1369
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->tosName_:Ljava/lang/String;

    .line 1386
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->tosHeaderText_:Ljava/lang/String;

    .line 1403
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->tosUrl_:Ljava/lang/String;

    .line 1420
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->tosCheckboxText_:Ljava/lang/String;

    .line 1463
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->cachedSize:I

    .line 1364
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 1465
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->cachedSize:I

    if-gez v0, :cond_7

    .line 1467
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->getSerializedSize()I

    .line 1469
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 1473
    const/4 v0, 0x0

    .line 1474
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->hasTosName()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1475
    const/16 v1, 0x19

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->getTosName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1478
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->hasTosHeaderText()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1479
    const/16 v1, 0x1a

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->getTosHeaderText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1482
    :cond_23
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->hasTosUrl()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1483
    const/16 v1, 0x1b

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->getTosUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1486
    :cond_34
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->hasTosCheckboxText()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 1487
    const/16 v1, 0x1c

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->getTosCheckboxText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1490
    :cond_45
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->cachedSize:I

    .line 1491
    return v0
.end method

.method public getTosCheckboxText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->tosCheckboxText_:Ljava/lang/String;

    return-object v0
.end method

.method public getTosHeaderText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->tosHeaderText_:Ljava/lang/String;

    return-object v0
.end method

.method public getTosName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->tosName_:Ljava/lang/String;

    return-object v0
.end method

.method public getTosUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->tosUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public hasTosCheckboxText()Z
    .registers 2

    .prologue
    .line 1422
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->hasTosCheckboxText:Z

    return v0
.end method

.method public hasTosHeaderText()Z
    .registers 2

    .prologue
    .line 1388
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->hasTosHeaderText:Z

    return v0
.end method

.method public hasTosName()Z
    .registers 2

    .prologue
    .line 1371
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->hasTosName:Z

    return v0
.end method

.method public hasTosUrl()Z
    .registers 2

    .prologue
    .line 1405
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->hasTosUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1498
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1499
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_2e

    .line 1503
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1504
    :sswitch_d
    return-object p0

    .line 1509
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->setTosName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;

    goto :goto_0

    .line 1513
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->setTosHeaderText(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;

    goto :goto_0

    .line 1517
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->setTosUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;

    goto :goto_0

    .line 1521
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->setTosCheckboxText(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;

    goto :goto_0

    .line 1499
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0xca -> :sswitch_e
        0xd2 -> :sswitch_16
        0xda -> :sswitch_1e
        0xe2 -> :sswitch_26
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
    .line 1362
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;

    move-result-object v0

    return-object v0
.end method

.method public setTosCheckboxText(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;
    .registers 3
    .parameter "value"

    .prologue
    .line 1424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->hasTosCheckboxText:Z

    .line 1425
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->tosCheckboxText_:Ljava/lang/String;

    .line 1426
    return-object p0
.end method

.method public setTosHeaderText(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;
    .registers 3
    .parameter "value"

    .prologue
    .line 1390
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->hasTosHeaderText:Z

    .line 1391
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->tosHeaderText_:Ljava/lang/String;

    .line 1392
    return-object p0
.end method

.method public setTosName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;
    .registers 3
    .parameter "value"

    .prologue
    .line 1373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->hasTosName:Z

    .line 1374
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->tosName_:Ljava/lang/String;

    .line 1375
    return-object p0
.end method

.method public setTosUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;
    .registers 3
    .parameter "value"

    .prologue
    .line 1407
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->hasTosUrl:Z

    .line 1408
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->tosUrl_:Ljava/lang/String;

    .line 1409
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
    .line 1449
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->hasTosName()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1450
    const/16 v0, 0x19

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->getTosName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1452
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->hasTosHeaderText()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1453
    const/16 v0, 0x1a

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->getTosHeaderText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1455
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->hasTosUrl()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1456
    const/16 v0, 0x1b

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->getTosUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1458
    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->hasTosCheckboxText()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1459
    const/16 v0, 0x1c

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$DeprecatedTos;->getTosCheckboxText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1461
    :cond_3c
    return-void
.end method
