.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarrierBillingCredentialsProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private credentialsTimeout_:J

.field private credentials_:Ljava/lang/String;

.field private hasCredentials:Z

.field private hasCredentialsTimeout:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 6916
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 6921
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;->credentials_:Ljava/lang/String;

    .line 6938
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;->credentialsTimeout_:J

    .line 6976
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;->cachedSize:I

    .line 6916
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 6979
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 6981
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;->getSerializedSize()I

    .line 6983
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;->cachedSize:I

    return v0
.end method

.method public getCredentials()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6922
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;->credentials_:Ljava/lang/String;

    return-object v0
.end method

.method public getCredentialsTimeout()J
    .registers 3

    .prologue
    .line 6939
    iget-wide v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;->credentialsTimeout_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 6988
    const/4 v0, 0x0

    .line 6989
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;->hasCredentials()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 6990
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;->getCredentials()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6993
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;->hasCredentialsTimeout()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 6994
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;->getCredentialsTimeout()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6997
    :cond_21
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;->cachedSize:I

    .line 6998
    return v0
.end method

.method public hasCredentials()Z
    .registers 2

    .prologue
    .line 6923
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;->hasCredentials:Z

    return v0
.end method

.method public hasCredentialsTimeout()Z
    .registers 2

    .prologue
    .line 6940
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;->hasCredentialsTimeout:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7006
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 7007
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1e

    .line 7011
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7012
    :sswitch_d
    return-object p0

    .line 7017
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;->setCredentials(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;

    goto :goto_0

    .line 7021
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;->setCredentialsTimeout(J)Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;

    goto :goto_0

    .line 7007
    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
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
    .line 6914
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;

    move-result-object v0

    return-object v0
.end method

.method public setCredentials(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 6925
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;->hasCredentials:Z

    .line 6926
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;->credentials_:Ljava/lang/String;

    .line 6927
    return-object p0
.end method

.method public setCredentialsTimeout(J)Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;
    .registers 4
    .parameter "value"

    .prologue
    .line 6942
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;->hasCredentialsTimeout:Z

    .line 6943
    iput-wide p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;->credentialsTimeout_:J

    .line 6944
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6968
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;->hasCredentials()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 6969
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;->getCredentials()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6971
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;->hasCredentialsTimeout()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 6972
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$CarrierBillingCredentialsProto;->getCredentialsTimeout()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 6974
    :cond_1c
    return-void
.end method
