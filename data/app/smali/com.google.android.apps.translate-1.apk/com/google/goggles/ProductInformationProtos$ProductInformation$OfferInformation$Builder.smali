.class public final Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ProductInformationProtos.java"

# interfaces
.implements Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;",
        "Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;",
        ">;",
        "Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformationOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private id_:Ljava/lang/Object;

.field private merchant_:Ljava/lang/Object;

.field private price_:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

.field private url_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 930
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1072
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->id_:Ljava/lang/Object;

    .line 1108
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->url_:Ljava/lang/Object;

    .line 1144
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->merchant_:Ljava/lang/Object;

    .line 1180
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->getDefaultInstance()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->price_:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    .line 931
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->maybeForceBuilderInitialization()V

    .line 932
    return-void
.end method

.method static synthetic access$800(Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 925
    invoke-direct {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->buildParsed()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;
    .registers 1

    .prologue
    .line 925
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->create()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 971
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->buildPartial()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

    move-result-object v0

    .line 972
    invoke-virtual {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 973
    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 976
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;
    .registers 1

    .prologue
    .line 937
    new-instance v0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    invoke-direct {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 935
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;
    .registers 3

    .prologue
    .line 962
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->buildPartial()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

    move-result-object v0

    .line 963
    invoke-virtual {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 964
    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 966
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->build()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 980
    new-instance v2, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;-><init>(Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;Lcom/google/goggles/ProductInformationProtos$1;)V

    .line 981
    iget v3, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    .line 982
    const/4 v1, 0x0

    .line 983
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_3c

    .line 986
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->id_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->access$1102(Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 988
    or-int/lit8 v0, v0, 0x2

    .line 990
    :cond_1a
    iget-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->url_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->url_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->access$1202(Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_26

    .line 992
    or-int/lit8 v0, v0, 0x4

    .line 994
    :cond_26
    iget-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->merchant_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->merchant_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->access$1302(Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_33

    .line 996
    or-int/lit8 v0, v0, 0x8

    .line 998
    :cond_33
    iget-object v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->price_:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    #setter for: Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->price_:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
    invoke-static {v2, v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->access$1402(Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    .line 999
    #setter for: Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->access$1502(Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;I)I

    .line 1000
    return-object v2

    :cond_3c
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->buildPartial()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;
    .registers 2

    .prologue
    .line 941
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 942
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->id_:Ljava/lang/Object;

    .line 943
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    .line 944
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->url_:Ljava/lang/Object;

    .line 945
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    .line 946
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->merchant_:Ljava/lang/Object;

    .line 947
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    .line 948
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->getDefaultInstance()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->price_:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    .line 949
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    .line 950
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->clear()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->clear()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearId()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;
    .registers 2

    .prologue
    .line 1096
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    .line 1097
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->getDefaultInstance()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->id_:Ljava/lang/Object;

    .line 1099
    return-object p0
.end method

.method public clearMerchant()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;
    .registers 2

    .prologue
    .line 1168
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    .line 1169
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->getDefaultInstance()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->getMerchant()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->merchant_:Ljava/lang/Object;

    .line 1171
    return-object p0
.end method

.method public clearPrice()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;
    .registers 2

    .prologue
    .line 1216
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->getDefaultInstance()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->price_:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    .line 1218
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    .line 1219
    return-object p0
.end method

.method public clearUrl()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;
    .registers 2

    .prologue
    .line 1132
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    .line 1133
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->getDefaultInstance()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->url_:Ljava/lang/Object;

    .line 1135
    return-object p0
.end method

.method public clone()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;
    .registers 3

    .prologue
    .line 954
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->create()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->buildPartial()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->mergeFrom(Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->clone()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->clone()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->clone()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

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
    .line 925
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->clone()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;
    .registers 2

    .prologue
    .line 958
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->getDefaultInstance()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->getDefaultInstanceForType()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->getDefaultInstanceForType()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->id_:Ljava/lang/Object;

    .line 1078
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1079
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1080
    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->id_:Ljava/lang/Object;

    .line 1083
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getMerchant()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->merchant_:Ljava/lang/Object;

    .line 1150
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1151
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1152
    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->merchant_:Ljava/lang/Object;

    .line 1155
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getPrice()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;
    .registers 2

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->price_:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->url_:Ljava/lang/Object;

    .line 1114
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1115
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1116
    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->url_:Ljava/lang/Object;

    .line 1119
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1074
    iget v1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasMerchant()Z
    .registers 3

    .prologue
    .line 1146
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

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

.method public hasPrice()Z
    .registers 3

    .prologue
    .line 1182
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasUrl()Z
    .registers 3

    .prologue
    .line 1110
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 1021
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1004
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->getDefaultInstance()Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1017
    :cond_6
    :goto_6
    return-object p0

    .line 1005
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->hasId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1006
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->setId(Ljava/lang/String;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    .line 1008
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1009
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->setUrl(Ljava/lang/String;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    .line 1011
    :cond_21
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->hasMerchant()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1012
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->getMerchant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->setMerchant(Ljava/lang/String;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    .line 1014
    :cond_2e
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->hasPrice()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1015
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;->getPrice()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->mergePrice(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1029
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1030
    sparse-switch v0, :sswitch_data_52

    .line 1035
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1037
    :sswitch_d
    return-object p0

    .line 1042
    :sswitch_e
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    .line 1043
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 1047
    :sswitch_1b
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    .line 1048
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->url_:Ljava/lang/Object;

    goto :goto_0

    .line 1052
    :sswitch_28
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    .line 1053
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->merchant_:Ljava/lang/Object;

    goto :goto_0

    .line 1057
    :sswitch_35
    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->newBuilder()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    move-result-object v0

    .line 1058
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->hasPrice()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1059
    invoke-virtual {p0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->getPrice()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->mergeFrom(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    .line 1061
    :cond_46
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1062
    invoke-virtual {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->buildPartial()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->setPrice(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    goto :goto_0

    .line 1030
    nop

    :sswitch_data_52
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x2a -> :sswitch_35
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
    .line 925
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 925
    check-cast p1, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;

    invoke-virtual {p0, p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->mergeFrom(Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

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
    .line 925
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergePrice(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1204
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->price_:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    invoke-static {}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->getDefaultInstance()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1206
    iget-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->price_:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    invoke-static {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;->newBuilder(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->mergeFrom(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->buildPartial()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->price_:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    .line 1212
    :goto_20
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    .line 1213
    return-object p0

    .line 1209
    :cond_27
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->price_:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    goto :goto_20
.end method

.method public setId(Ljava/lang/String;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1087
    if-nez p1, :cond_8

    .line 1088
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1090
    :cond_8
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    .line 1091
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->id_:Ljava/lang/Object;

    .line 1093
    return-object p0
.end method

.method setId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 1102
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    .line 1103
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->id_:Ljava/lang/Object;

    .line 1105
    return-void
.end method

.method public setMerchant(Ljava/lang/String;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1159
    if-nez p1, :cond_8

    .line 1160
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1162
    :cond_8
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    .line 1163
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->merchant_:Ljava/lang/Object;

    .line 1165
    return-object p0
.end method

.method setMerchant(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 1174
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    .line 1175
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->merchant_:Ljava/lang/Object;

    .line 1177
    return-void
.end method

.method public setPrice(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1198
    invoke-virtual {p1}, Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation$Builder;->build()Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->price_:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    .line 1200
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    .line 1201
    return-object p0
.end method

.method public setPrice(Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1188
    if-nez p1, :cond_8

    .line 1189
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1191
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->price_:Lcom/google/goggles/ProductInformationProtos$ProductInformation$PriceInformation;

    .line 1193
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    .line 1194
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1123
    if-nez p1, :cond_8

    .line 1124
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1126
    :cond_8
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    .line 1127
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->url_:Ljava/lang/Object;

    .line 1129
    return-object p0
.end method

.method setUrl(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 1138
    iget v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->bitField0_:I

    .line 1139
    iput-object p1, p0, Lcom/google/goggles/ProductInformationProtos$ProductInformation$OfferInformation$Builder;->url_:Ljava/lang/Object;

    .line 1141
    return-void
.end method
