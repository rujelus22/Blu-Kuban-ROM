.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetAddressSnippetResponseProto"
.end annotation


# instance fields
.field private addressSnippet_:Ljava/lang/String;

.field private cachedSize:I

.field private hasAddressSnippet:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20847
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 20852
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;->addressSnippet_:Ljava/lang/String;

    .line 20883
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;->cachedSize:I

    .line 20847
    return-void
.end method


# virtual methods
.method public getAddressSnippet()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20853
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;->addressSnippet_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 20885
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 20887
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;->getSerializedSize()I

    .line 20889
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 20893
    const/4 v0, 0x0

    .line 20894
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;->hasAddressSnippet()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 20895
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;->getAddressSnippet()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20898
    :cond_11
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;->cachedSize:I

    .line 20899
    return v0
.end method

.method public hasAddressSnippet()Z
    .registers 2

    .prologue
    .line 20854
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;->hasAddressSnippet:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20906
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 20907
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_16

    .line 20911
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 20912
    :sswitch_d
    return-object p0

    .line 20917
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;->setAddressSnippet(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;

    goto :goto_0

    .line 20907
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
    .line 20845
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setAddressSnippet(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 20856
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;->hasAddressSnippet:Z

    .line 20857
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;->addressSnippet_:Ljava/lang/String;

    .line 20858
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
    .line 20878
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;->hasAddressSnippet()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 20879
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetAddressSnippetResponseProto;->getAddressSnippet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 20881
    :cond_e
    return-void
.end method
