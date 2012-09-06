.class public final Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ClientAnnotationProtos.java"

# interfaces
.implements Lcom/google/goggles/ClientAnnotationProtos$ClientBarcodeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;",
        "Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;",
        ">;",
        "Lcom/google/goggles/ClientAnnotationProtos$ClientBarcodeOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private format_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

.field private type_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 840
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 976
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->ADDRESS_BOOK:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    iput-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->type_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    .line 1000
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->QR_CODE:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    iput-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->format_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    .line 1024
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->value_:Ljava/lang/Object;

    .line 841
    invoke-direct {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->maybeForceBuilderInitialization()V

    .line 842
    return-void
.end method

.method static synthetic access$700(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 835
    invoke-direct {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->buildParsed()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;
    .registers 1

    .prologue
    .line 835
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->create()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 879
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->buildPartial()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    move-result-object v0

    .line 880
    invoke-virtual {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 881
    invoke-static {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 884
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;
    .registers 1

    .prologue
    .line 847
    new-instance v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    invoke-direct {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 845
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;
    .registers 3

    .prologue
    .line 870
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->buildPartial()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    move-result-object v0

    .line 871
    invoke-virtual {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 872
    invoke-static {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 874
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 835
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->build()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 888
    new-instance v2, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;-><init>(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;Lcom/google/goggles/ClientAnnotationProtos$1;)V

    .line 889
    iget v3, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->bitField0_:I

    .line 890
    const/4 v1, 0x0

    .line 891
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2f

    .line 894
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->type_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    #setter for: Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->type_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;
    invoke-static {v2, v1}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->access$1002(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    .line 895
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 896
    or-int/lit8 v0, v0, 0x2

    .line 898
    :cond_1a
    iget-object v1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->format_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    #setter for: Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->format_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;
    invoke-static {v2, v1}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->access$1102(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    .line 899
    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_26

    .line 900
    or-int/lit8 v0, v0, 0x4

    .line 902
    :cond_26
    iget-object v1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->value_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->value_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->access$1202(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    #setter for: Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->access$1302(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;I)I

    .line 904
    return-object v2

    :cond_2f
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 835
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->buildPartial()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;
    .registers 2

    .prologue
    .line 851
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 852
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->ADDRESS_BOOK:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    iput-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->type_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    .line 853
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->bitField0_:I

    .line 854
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->QR_CODE:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    iput-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->format_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    .line 855
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->bitField0_:I

    .line 856
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->value_:Ljava/lang/Object;

    .line 857
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->bitField0_:I

    .line 858
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 835
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->clear()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 835
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->clear()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearFormat()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;
    .registers 2

    .prologue
    .line 1017
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->bitField0_:I

    .line 1018
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->QR_CODE:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    iput-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->format_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    .line 1020
    return-object p0
.end method

.method public clearType()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;
    .registers 2

    .prologue
    .line 993
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->bitField0_:I

    .line 994
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->ADDRESS_BOOK:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    iput-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->type_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    .line 996
    return-object p0
.end method

.method public clearValue()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;
    .registers 2

    .prologue
    .line 1048
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->bitField0_:I

    .line 1049
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->getDefaultInstance()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->value_:Ljava/lang/Object;

    .line 1051
    return-object p0
.end method

.method public clone()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;
    .registers 3

    .prologue
    .line 862
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->create()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->buildPartial()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->mergeFrom(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 835
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->clone()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 835
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->clone()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 835
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->clone()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

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
    .line 835
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->clone()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;
    .registers 2

    .prologue
    .line 866
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->getDefaultInstance()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 835
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->getDefaultInstanceForType()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 835
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->getDefaultInstanceForType()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;
    .registers 2

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->format_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    return-object v0
.end method

.method public getType()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;
    .registers 2

    .prologue
    .line 981
    iget-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->type_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->value_:Ljava/lang/Object;

    .line 1030
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1031
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1032
    iput-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->value_:Ljava/lang/Object;

    .line 1035
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public hasFormat()Z
    .registers 3

    .prologue
    .line 1002
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 978
    iget v1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasValue()Z
    .registers 3

    .prologue
    .line 1026
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 922
    invoke-virtual {p0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->hasValue()Z

    move-result v0

    if-nez v0, :cond_8

    .line 924
    const/4 v0, 0x0

    .line 926
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;
    .registers 3
    .parameter

    .prologue
    .line 908
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->getDefaultInstance()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 918
    :cond_6
    :goto_6
    return-object p0

    .line 909
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 910
    invoke-virtual {p1}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->getType()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->setType(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    .line 912
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->hasFormat()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 913
    invoke-virtual {p1}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->getFormat()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->setFormat(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    .line 915
    :cond_21
    invoke-virtual {p1}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 916
    invoke-virtual {p1}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->setValue(Ljava/lang/String;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 934
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 935
    sparse-switch v0, :sswitch_data_42

    .line 940
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 942
    :sswitch_d
    return-object p0

    .line 947
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 948
    invoke-static {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->valueOf(I)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    move-result-object v0

    .line 949
    if-eqz v0, :cond_0

    .line 950
    iget v1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->bitField0_:I

    .line 951
    iput-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->type_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    goto :goto_0

    .line 956
    :sswitch_21
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 957
    invoke-static {v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->valueOf(I)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    move-result-object v0

    .line 958
    if-eqz v0, :cond_0

    .line 959
    iget v1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->bitField0_:I

    .line 960
    iput-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->format_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    goto :goto_0

    .line 965
    :sswitch_34
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->bitField0_:I

    .line 966
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 935
    nop

    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_21
        0x1a -> :sswitch_34
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 835
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 835
    check-cast p1, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;

    invoke-virtual {p0, p1}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->mergeFrom(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 835
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFormat(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1008
    if-nez p1, :cond_8

    .line 1009
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1011
    :cond_8
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->bitField0_:I

    .line 1012
    iput-object p1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->format_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    .line 1014
    return-object p0
.end method

.method public setType(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;
    .registers 3
    .parameter

    .prologue
    .line 984
    if-nez p1, :cond_8

    .line 985
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 987
    :cond_8
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->bitField0_:I

    .line 988
    iput-object p1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->type_:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    .line 990
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1039
    if-nez p1, :cond_8

    .line 1040
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1042
    :cond_8
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->bitField0_:I

    .line 1043
    iput-object p1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->value_:Ljava/lang/Object;

    .line 1045
    return-object p0
.end method

.method setValue(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 1054
    iget v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->bitField0_:I

    .line 1055
    iput-object p1, p0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->value_:Ljava/lang/Object;

    .line 1057
    return-void
.end method
