.class public final Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;",
        "Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private requestError_:Ljava/lang/Object;

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 10637
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 10751
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 10775
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 10638
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->maybeForceBuilderInitialization()V

    .line 10639
    return-void
.end method

.method static synthetic access$14300()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;
    .registers 1

    .prologue
    .line 10632
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;
    .registers 1

    .prologue
    .line 10644
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 10642
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10632
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;
    .registers 3

    .prologue
    .line 10665
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v0

    .line 10666
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 10667
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 10669
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10632
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;
    .registers 6

    .prologue
    .line 10683
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 10684
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->bitField0_:I

    .line 10685
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 10686
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 10687
    or-int/lit8 v2, v2, 0x1

    .line 10689
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->access$14502(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 10690
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 10691
    or-int/lit8 v2, v2, 0x2

    .line 10693
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->requestError_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->requestError_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->access$14602(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10694
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->access$14702(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;I)I

    .line 10695
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 10632
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 10632
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;
    .registers 2

    .prologue
    .line 10648
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 10649
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 10650
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->bitField0_:I

    .line 10651
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 10652
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->bitField0_:I

    .line 10653
    return-object p0
.end method

.method public clearRequestError()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;
    .registers 2

    .prologue
    .line 10799
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->bitField0_:I

    .line 10800
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->getRequestError()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 10802
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;
    .registers 2

    .prologue
    .line 10768
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->bitField0_:I

    .line 10769
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 10771
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 10632
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 10632
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;
    .registers 3

    .prologue
    .line 10657
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 10632
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 10632
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10632
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;
    .registers 2

    .prologue
    .line 10661
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v0

    return-object v0
.end method

.method public getRequestError()Ljava/lang/String;
    .registers 4

    .prologue
    .line 10780
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 10781
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 10782
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 10783
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 10786
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 10756
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public hasRequestError()Z
    .registers 3

    .prologue
    .line 10777
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 10753
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 10710
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10632
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 10632
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10632
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10718
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 10719
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2e

    .line 10724
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 10726
    :sswitch_d
    return-object p0

    .line 10731
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 10732
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v2

    .line 10733
    .local v2, value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    if-eqz v2, :cond_0

    .line 10734
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->bitField0_:I

    .line 10735
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_0

    .line 10740
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->bitField0_:I

    .line 10741
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->requestError_:Ljava/lang/Object;

    goto :goto_0

    .line 10719
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 10699
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 10706
    :cond_6
    :goto_6
    return-object p0

    .line 10700
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 10701
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;

    .line 10703
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->hasRequestError()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10704
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse;->getRequestError()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->setRequestError(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;

    goto :goto_6
.end method

.method public setRequestError(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 10790
    if-nez p1, :cond_8

    .line 10791
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10793
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->bitField0_:I

    .line 10794
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 10796
    return-object p0
.end method

.method public setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 10759
    if-nez p1, :cond_8

    .line 10760
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10762
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->bitField0_:I

    .line 10763
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$ReceiptResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 10765
    return-object p0
.end method
