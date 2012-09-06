.class public final Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Common.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RentalTerms"
.end annotation


# instance fields
.field private activatePeriodSeconds_:I

.field private cachedSize:I

.field private grantPeriodSeconds_:I

.field private hasActivatePeriodSeconds:Z

.field private hasGrantPeriodSeconds:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1395
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1400
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->grantPeriodSeconds_:I

    .line 1417
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->activatePeriodSeconds_:I

    .line 1453
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->cachedSize:I

    .line 1395
    return-void
.end method


# virtual methods
.method public getActivatePeriodSeconds()I
    .registers 2

    .prologue
    .line 1418
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->activatePeriodSeconds_:I

    return v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 1456
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->cachedSize:I

    if-gez v0, :cond_7

    .line 1458
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->getSerializedSize()I

    .line 1460
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->cachedSize:I

    return v0
.end method

.method public getGrantPeriodSeconds()I
    .registers 2

    .prologue
    .line 1401
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->grantPeriodSeconds_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 1465
    const/4 v0, 0x0

    .line 1466
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->hasGrantPeriodSeconds()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1467
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->getGrantPeriodSeconds()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1470
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->hasActivatePeriodSeconds()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1471
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->getActivatePeriodSeconds()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1474
    :cond_21
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->cachedSize:I

    .line 1475
    return v0
.end method

.method public hasActivatePeriodSeconds()Z
    .registers 2

    .prologue
    .line 1419
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->hasActivatePeriodSeconds:Z

    return v0
.end method

.method public hasGrantPeriodSeconds()Z
    .registers 2

    .prologue
    .line 1402
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->hasGrantPeriodSeconds:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1483
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1484
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1e

    .line 1488
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1489
    :sswitch_d
    return-object p0

    .line 1494
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->setGrantPeriodSeconds(I)Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;

    goto :goto_0

    .line 1498
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->setActivatePeriodSeconds(I)Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;

    goto :goto_0

    .line 1484
    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_16
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
    .line 1392
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;

    move-result-object v0

    return-object v0
.end method

.method public setActivatePeriodSeconds(I)Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;
    .registers 3
    .parameter "value"

    .prologue
    .line 1421
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->hasActivatePeriodSeconds:Z

    .line 1422
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->activatePeriodSeconds_:I

    .line 1423
    return-object p0
.end method

.method public setGrantPeriodSeconds(I)Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;
    .registers 3
    .parameter "value"

    .prologue
    .line 1404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->hasGrantPeriodSeconds:Z

    .line 1405
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->grantPeriodSeconds_:I

    .line 1406
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
    .line 1445
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->hasGrantPeriodSeconds()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1446
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->getGrantPeriodSeconds()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1448
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->hasActivatePeriodSeconds()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1449
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Common$RentalTerms;->getActivatePeriodSeconds()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1451
    :cond_1c
    return-void
.end method
