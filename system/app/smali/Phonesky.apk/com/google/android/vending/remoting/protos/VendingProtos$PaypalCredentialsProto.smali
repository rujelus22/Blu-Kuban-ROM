.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaypalCredentialsProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasPaypalEmail:Z

.field private hasPreapprovalKey:Z

.field private paypalEmail_:Ljava/lang/String;

.field private preapprovalKey_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 6663
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 6668
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;->preapprovalKey_:Ljava/lang/String;

    .line 6685
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;->paypalEmail_:Ljava/lang/String;

    .line 6722
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;->cachedSize:I

    .line 6663
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 6724
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 6726
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;->getSerializedSize()I

    .line 6728
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;->cachedSize:I

    return v0
.end method

.method public getPaypalEmail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6686
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;->paypalEmail_:Ljava/lang/String;

    return-object v0
.end method

.method public getPreapprovalKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6669
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;->preapprovalKey_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 6732
    const/4 v0, 0x0

    .line 6733
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;->hasPreapprovalKey()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 6734
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;->getPreapprovalKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6737
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;->hasPaypalEmail()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 6738
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;->getPaypalEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6741
    :cond_21
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;->cachedSize:I

    .line 6742
    return v0
.end method

.method public hasPaypalEmail()Z
    .registers 2

    .prologue
    .line 6687
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;->hasPaypalEmail:Z

    return v0
.end method

.method public hasPreapprovalKey()Z
    .registers 2

    .prologue
    .line 6670
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;->hasPreapprovalKey:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6749
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 6750
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1e

    .line 6754
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6755
    :sswitch_d
    return-object p0

    .line 6760
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;->setPreapprovalKey(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;

    goto :goto_0

    .line 6764
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;->setPaypalEmail(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;

    goto :goto_0

    .line 6750
    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
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
    .line 6661
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;

    move-result-object v0

    return-object v0
.end method

.method public setPaypalEmail(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 6689
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;->hasPaypalEmail:Z

    .line 6690
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;->paypalEmail_:Ljava/lang/String;

    .line 6691
    return-object p0
.end method

.method public setPreapprovalKey(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 6672
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;->hasPreapprovalKey:Z

    .line 6673
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;->preapprovalKey_:Ljava/lang/String;

    .line 6674
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
    .line 6714
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;->hasPreapprovalKey()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 6715
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;->getPreapprovalKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6717
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;->hasPaypalEmail()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 6718
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PaypalCredentialsProto;->getPaypalEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6720
    :cond_1c
    return-void
.end method
