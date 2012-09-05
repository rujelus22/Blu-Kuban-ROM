.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PurchasePostResponseProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private deprecatedResultCode_:I

.field private hasDeprecatedResultCode:Z

.field private hasPurchaseInfo:Z

.field private hasPurchaseResult:Z

.field private hasTermsOfServiceCheckboxText:Z

.field private hasTermsOfServiceHeaderText:Z

.field private hasTermsOfServiceName:Z

.field private hasTermsOfServiceText:Z

.field private hasTermsOfServiceUrl:Z

.field private purchaseInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

.field private purchaseResult_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

.field private termsOfServiceCheckboxText_:Ljava/lang/String;

.field private termsOfServiceHeaderText_:Ljava/lang/String;

.field private termsOfServiceName_:Ljava/lang/String;

.field private termsOfServiceText_:Ljava/lang/String;

.field private termsOfServiceUrl_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 7886
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 7891
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->deprecatedResultCode_:I

    .line 7908
    iput-object v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->purchaseInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    .line 7928
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->termsOfServiceUrl_:Ljava/lang/String;

    .line 7945
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->termsOfServiceText_:Ljava/lang/String;

    .line 7962
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->termsOfServiceName_:Ljava/lang/String;

    .line 7979
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->termsOfServiceCheckboxText_:Ljava/lang/String;

    .line 7996
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->termsOfServiceHeaderText_:Ljava/lang/String;

    .line 8013
    iput-object v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->purchaseResult_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    .line 8078
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->cachedSize:I

    .line 7886
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 8080
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 8082
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->getSerializedSize()I

    .line 8084
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->cachedSize:I

    return v0
.end method

.method public getDeprecatedResultCode()I
    .registers 2

    .prologue
    .line 7893
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->deprecatedResultCode_:I

    return v0
.end method

.method public getPurchaseInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;
    .registers 2

    .prologue
    .line 7910
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->purchaseInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    return-object v0
.end method

.method public getPurchaseResult()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;
    .registers 2

    .prologue
    .line 8015
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->purchaseResult_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 8088
    const/4 v0, 0x0

    .line 8089
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasDeprecatedResultCode()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 8090
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->getDeprecatedResultCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8093
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasPurchaseInfo()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 8094
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->getPurchaseInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8097
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceUrl()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 8098
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->getTermsOfServiceUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8101
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceText()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 8102
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->getTermsOfServiceText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8105
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceName()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 8106
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->getTermsOfServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8109
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceCheckboxText()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 8110
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->getTermsOfServiceCheckboxText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8113
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceHeaderText()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 8114
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->getTermsOfServiceHeaderText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8117
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasPurchaseResult()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 8118
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->getPurchaseResult()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8121
    :cond_82
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->cachedSize:I

    .line 8122
    return v0
.end method

.method public getTermsOfServiceCheckboxText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7980
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->termsOfServiceCheckboxText_:Ljava/lang/String;

    return-object v0
.end method

.method public getTermsOfServiceHeaderText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7997
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->termsOfServiceHeaderText_:Ljava/lang/String;

    return-object v0
.end method

.method public getTermsOfServiceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7963
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->termsOfServiceName_:Ljava/lang/String;

    return-object v0
.end method

.method public getTermsOfServiceText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7946
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->termsOfServiceText_:Ljava/lang/String;

    return-object v0
.end method

.method public getTermsOfServiceUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7929
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->termsOfServiceUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDeprecatedResultCode()Z
    .registers 2

    .prologue
    .line 7892
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasDeprecatedResultCode:Z

    return v0
.end method

.method public hasPurchaseInfo()Z
    .registers 2

    .prologue
    .line 7909
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasPurchaseInfo:Z

    return v0
.end method

.method public hasPurchaseResult()Z
    .registers 2

    .prologue
    .line 8014
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasPurchaseResult:Z

    return v0
.end method

.method public hasTermsOfServiceCheckboxText()Z
    .registers 2

    .prologue
    .line 7981
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceCheckboxText:Z

    return v0
.end method

.method public hasTermsOfServiceHeaderText()Z
    .registers 2

    .prologue
    .line 7998
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceHeaderText:Z

    return v0
.end method

.method public hasTermsOfServiceName()Z
    .registers 2

    .prologue
    .line 7964
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceName:Z

    return v0
.end method

.method public hasTermsOfServiceText()Z
    .registers 2

    .prologue
    .line 7947
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceText:Z

    return v0
.end method

.method public hasTermsOfServiceUrl()Z
    .registers 2

    .prologue
    .line 7930
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8129
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 8130
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_56

    .line 8134
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8135
    :sswitch_d
    return-object p0

    .line 8140
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->setDeprecatedResultCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    goto :goto_0

    .line 8144
    :sswitch_16
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;-><init>()V

    .line 8145
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 8146
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->setPurchaseInfo(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    goto :goto_0

    .line 8150
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;
    :sswitch_22
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->setTermsOfServiceUrl(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    goto :goto_0

    .line 8154
    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->setTermsOfServiceText(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    goto :goto_0

    .line 8158
    :sswitch_32
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->setTermsOfServiceName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    goto :goto_0

    .line 8162
    :sswitch_3a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->setTermsOfServiceCheckboxText(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    goto :goto_0

    .line 8166
    :sswitch_42
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->setTermsOfServiceHeaderText(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    goto :goto_0

    .line 8170
    :sswitch_4a
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;-><init>()V

    .line 8171
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 8172
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->setPurchaseResult(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    goto :goto_0

    .line 8130
    :sswitch_data_56
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_22
        0x22 -> :sswitch_2a
        0x2a -> :sswitch_32
        0x32 -> :sswitch_3a
        0x3a -> :sswitch_42
        0x42 -> :sswitch_4a
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
    .line 7884
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setDeprecatedResultCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 7895
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasDeprecatedResultCode:Z

    .line 7896
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->deprecatedResultCode_:I

    .line 7897
    return-object p0
.end method

.method public setPurchaseInfo(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 7912
    if-nez p1, :cond_8

    .line 7913
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7915
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasPurchaseInfo:Z

    .line 7916
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->purchaseInfo_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    .line 7917
    return-object p0
.end method

.method public setPurchaseResult(Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 8017
    if-nez p1, :cond_8

    .line 8018
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8020
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasPurchaseResult:Z

    .line 8021
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->purchaseResult_:Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    .line 8022
    return-object p0
.end method

.method public setTermsOfServiceCheckboxText(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 7983
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceCheckboxText:Z

    .line 7984
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->termsOfServiceCheckboxText_:Ljava/lang/String;

    .line 7985
    return-object p0
.end method

.method public setTermsOfServiceHeaderText(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 8000
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceHeaderText:Z

    .line 8001
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->termsOfServiceHeaderText_:Ljava/lang/String;

    .line 8002
    return-object p0
.end method

.method public setTermsOfServiceName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 7966
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceName:Z

    .line 7967
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->termsOfServiceName_:Ljava/lang/String;

    .line 7968
    return-object p0
.end method

.method public setTermsOfServiceText(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 7949
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceText:Z

    .line 7950
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->termsOfServiceText_:Ljava/lang/String;

    .line 7951
    return-object p0
.end method

.method public setTermsOfServiceUrl(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 7932
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceUrl:Z

    .line 7933
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->termsOfServiceUrl_:Ljava/lang/String;

    .line 7934
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
    .line 8052
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasDeprecatedResultCode()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 8053
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->getDeprecatedResultCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 8055
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasPurchaseInfo()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 8056
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->getPurchaseInfo()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseInfoProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 8058
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceUrl()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 8059
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->getTermsOfServiceUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8061
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceText()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 8062
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->getTermsOfServiceText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8064
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceName()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 8065
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->getTermsOfServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8067
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceCheckboxText()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 8068
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->getTermsOfServiceCheckboxText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8070
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasTermsOfServiceHeaderText()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 8071
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->getTermsOfServiceHeaderText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8073
    :cond_62
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->hasPurchaseResult()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 8074
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$PurchasePostResponseProto;->getPurchaseResult()Lcom/google/android/vending/remoting/protos/VendingProtos$PurchaseResultProto;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 8076
    :cond_71
    return-void
.end method
