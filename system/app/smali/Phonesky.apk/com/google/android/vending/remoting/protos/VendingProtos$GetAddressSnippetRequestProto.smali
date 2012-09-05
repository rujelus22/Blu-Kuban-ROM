.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetAddressSnippetRequestProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private encryptedSubscriberInfo_:Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;

.field private hasEncryptedSubscriberInfo:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20749
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 20754
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;->encryptedSubscriberInfo_:Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;

    .line 20789
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;->cachedSize:I

    .line 20749
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 20791
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 20793
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;->getSerializedSize()I

    .line 20795
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;->cachedSize:I

    return v0
.end method

.method public getEncryptedSubscriberInfo()Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;
    .registers 2

    .prologue
    .line 20756
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;->encryptedSubscriberInfo_:Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 20799
    const/4 v0, 0x0

    .line 20800
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;->hasEncryptedSubscriberInfo()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 20801
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;->getEncryptedSubscriberInfo()Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20804
    :cond_11
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;->cachedSize:I

    .line 20805
    return v0
.end method

.method public hasEncryptedSubscriberInfo()Z
    .registers 2

    .prologue
    .line 20755
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;->hasEncryptedSubscriberInfo:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20812
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 20813
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1a

    .line 20817
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 20818
    :sswitch_d
    return-object p0

    .line 20823
    :sswitch_e
    new-instance v1, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;-><init>()V

    .line 20824
    .local v1, value:Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 20825
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;->setEncryptedSubscriberInfo(Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;

    goto :goto_0

    .line 20813
    :sswitch_data_1a
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
    .line 20747
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public setEncryptedSubscriberInfo(Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 20758
    if-nez p1, :cond_8

    .line 20759
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20761
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;->hasEncryptedSubscriberInfo:Z

    .line 20762
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;->encryptedSubscriberInfo_:Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;

    .line 20763
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
    .line 20784
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;->hasEncryptedSubscriberInfo()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 20785
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetRequestProto;->getEncryptedSubscriberInfo()Lcom/google/android/vending/remoting/protos/EncryptedSubscriberInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 20787
    :cond_e
    return-void
.end method
