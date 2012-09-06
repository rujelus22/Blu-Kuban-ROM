.class public final Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CommonDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/CommonDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarrierTos"
.end annotation


# instance fields
.field private cachedSize:I

.field private dcbTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

.field private hasDcbTos:Z

.field private hasNeedsDcbTosAcceptance:Z

.field private hasNeedsPiiTosAcceptance:Z

.field private hasPiiTos:Z

.field private needsDcbTosAcceptance_:Z

.field private needsPiiTosAcceptance_:Z

.field private piiTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1964
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1969
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->dcbTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    .line 1989
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->piiTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    .line 2009
    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->needsDcbTosAcceptance_:Z

    .line 2026
    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->needsPiiTosAcceptance_:Z

    .line 2070
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->cachedSize:I

    .line 1964
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 2073
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->cachedSize:I

    if-gez v0, :cond_7

    .line 2075
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->getSerializedSize()I

    .line 2077
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->cachedSize:I

    return v0
.end method

.method public getDcbTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;
    .registers 2

    .prologue
    .line 1971
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->dcbTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    return-object v0
.end method

.method public getNeedsDcbTosAcceptance()Z
    .registers 2

    .prologue
    .line 2010
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->needsDcbTosAcceptance_:Z

    return v0
.end method

.method public getNeedsPiiTosAcceptance()Z
    .registers 2

    .prologue
    .line 2027
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->needsPiiTosAcceptance_:Z

    return v0
.end method

.method public getPiiTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;
    .registers 2

    .prologue
    .line 1991
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->piiTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 2082
    const/4 v0, 0x0

    .line 2083
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasDcbTos()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2084
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->getDcbTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2087
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasPiiTos()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2088
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->getPiiTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2091
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasNeedsDcbTosAcceptance()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 2092
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->getNeedsDcbTosAcceptance()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2095
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasNeedsPiiTosAcceptance()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 2096
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->getNeedsPiiTosAcceptance()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2099
    :cond_41
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->cachedSize:I

    .line 2100
    return v0
.end method

.method public hasDcbTos()Z
    .registers 2

    .prologue
    .line 1970
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasDcbTos:Z

    return v0
.end method

.method public hasNeedsDcbTosAcceptance()Z
    .registers 2

    .prologue
    .line 2011
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasNeedsDcbTosAcceptance:Z

    return v0
.end method

.method public hasNeedsPiiTosAcceptance()Z
    .registers 2

    .prologue
    .line 2028
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasNeedsPiiTosAcceptance:Z

    return v0
.end method

.method public hasPiiTos()Z
    .registers 2

    .prologue
    .line 1990
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasPiiTos:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2108
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2109
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 2113
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2114
    :sswitch_d
    return-object p0

    .line 2119
    :sswitch_e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;-><init>()V

    .line 2120
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2121
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->setDcbTos(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    goto :goto_0

    .line 2125
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;
    :sswitch_1a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;-><init>()V

    .line 2126
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2127
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->setPiiTos(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    goto :goto_0

    .line 2131
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->setNeedsDcbTosAcceptance(Z)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    goto :goto_0

    .line 2135
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->setNeedsPiiTosAcceptance(Z)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    goto :goto_0

    .line 2109
    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1a
        0x18 -> :sswitch_26
        0x20 -> :sswitch_2e
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
    .line 1961
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;

    move-result-object v0

    return-object v0
.end method

.method public setDcbTos(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;
    .registers 3
    .parameter "value"

    .prologue
    .line 1973
    if-nez p1, :cond_8

    .line 1974
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1976
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasDcbTos:Z

    .line 1977
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->dcbTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    .line 1978
    return-object p0
.end method

.method public setNeedsDcbTosAcceptance(Z)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;
    .registers 3
    .parameter "value"

    .prologue
    .line 2013
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasNeedsDcbTosAcceptance:Z

    .line 2014
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->needsDcbTosAcceptance_:Z

    .line 2015
    return-object p0
.end method

.method public setNeedsPiiTosAcceptance(Z)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;
    .registers 3
    .parameter "value"

    .prologue
    .line 2030
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasNeedsPiiTosAcceptance:Z

    .line 2031
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->needsPiiTosAcceptance_:Z

    .line 2032
    return-object p0
.end method

.method public setPiiTos(Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;
    .registers 3
    .parameter "value"

    .prologue
    .line 1993
    if-nez p1, :cond_8

    .line 1994
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1996
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasPiiTos:Z

    .line 1997
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->piiTos_:Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    .line 1998
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
    .line 2056
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasDcbTos()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2057
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->getDcbTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2059
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasPiiTos()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2060
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->getPiiTos()Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTosEntry;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2062
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasNeedsDcbTosAcceptance()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2063
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->getNeedsDcbTosAcceptance()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2065
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->hasNeedsPiiTosAcceptance()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 2066
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CarrierTos;->getNeedsPiiTosAcceptance()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 2068
    :cond_38
    return-void
.end method
