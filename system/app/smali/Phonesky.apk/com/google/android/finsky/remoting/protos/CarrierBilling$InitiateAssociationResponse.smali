.class public final Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CarrierBilling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/CarrierBilling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InitiateAssociationResponse"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasUserToken:Z

.field private userToken_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;->userToken_:Ljava/lang/String;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;->cachedSize:I

    .line 10
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;->cachedSize:I

    if-gez v0, :cond_7

    .line 52
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;->getSerializedSize()I

    .line 54
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;->hasUserToken()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 61
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;->getUserToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    :cond_11
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;->cachedSize:I

    .line 65
    return v0
.end method

.method public getUserToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;->userToken_:Ljava/lang/String;

    return-object v0
.end method

.method public hasUserToken()Z
    .registers 2

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;->hasUserToken:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 74
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_16

    .line 78
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    :sswitch_d
    return-object p0

    .line 84
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;->setUserToken(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;

    goto :goto_0

    .line 74
    :sswitch_data_16
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;

    move-result-object v0

    return-object v0
.end method

.method public setUserToken(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;
    .registers 3
    .parameter "value"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;->hasUserToken:Z

    .line 20
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;->userToken_:Ljava/lang/String;

    .line 21
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
    .line 42
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;->hasUserToken()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CarrierBilling$InitiateAssociationResponse;->getUserToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 45
    :cond_e
    return-void
.end method
