.class public final Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Circles.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;",
        "Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private id_:Ljava/lang/Object;

.field private name_:Ljava/lang/Object;

.field private responseCode_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;

.field private type_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1885
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2031
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;->SUCCESS:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->responseCode_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;

    .line 2055
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->id_:Ljava/lang/Object;

    .line 2091
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PERSONAL:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->type_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 2115
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->name_:Ljava/lang/Object;

    .line 1886
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->maybeForceBuilderInitialization()V

    .line 1887
    return-void
.end method

.method static synthetic access$2000(Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1880
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->buildParsed()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;
    .registers 1

    .prologue
    .line 1880
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->create()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1926
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    move-result-object v0

    .line 1927
    .local v0, result:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1928
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1931
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;
    .registers 1

    .prologue
    .line 1892
    new-instance v0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1890
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;
    .registers 3

    .prologue
    .line 1917
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    move-result-object v0

    .line 1918
    .local v0, result:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1919
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1921
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1880
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;
    .registers 6

    .prologue
    .line 1935
    new-instance v1, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;-><init>(Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;Lcom/google/wireless/contacts/proto/Circles$1;)V

    .line 1936
    .local v1, result:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->bitField0_:I

    .line 1937
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1938
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 1939
    or-int/lit8 v2, v2, 0x1

    .line 1941
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->responseCode_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;

    #setter for: Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->responseCode_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->access$2302(Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;

    .line 1942
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 1943
    or-int/lit8 v2, v2, 0x2

    .line 1945
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->access$2402(Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1946
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 1947
    or-int/lit8 v2, v2, 0x4

    .line 1949
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->type_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    #setter for: Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->type_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->access$2502(Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 1950
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 1951
    or-int/lit8 v2, v2, 0x8

    .line 1953
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->access$2602(Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1954
    #setter for: Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->access$2702(Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;I)I

    .line 1955
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1880
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->clear()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1880
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->clear()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;
    .registers 2

    .prologue
    .line 1896
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1897
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;->SUCCESS:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->responseCode_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;

    .line 1898
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->bitField0_:I

    .line 1899
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->id_:Ljava/lang/Object;

    .line 1900
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->bitField0_:I

    .line 1901
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PERSONAL:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->type_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 1902
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->bitField0_:I

    .line 1903
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->name_:Ljava/lang/Object;

    .line 1904
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->bitField0_:I

    .line 1905
    return-object p0
.end method

.method public clearId()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;
    .registers 2

    .prologue
    .line 2079
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->bitField0_:I

    .line 2080
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->id_:Ljava/lang/Object;

    .line 2082
    return-object p0
.end method

.method public clearName()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;
    .registers 2

    .prologue
    .line 2139
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->bitField0_:I

    .line 2140
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->name_:Ljava/lang/Object;

    .line 2142
    return-object p0
.end method

.method public clearResponseCode()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;
    .registers 2

    .prologue
    .line 2048
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->bitField0_:I

    .line 2049
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;->SUCCESS:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->responseCode_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;

    .line 2051
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;
    .registers 2

    .prologue
    .line 2108
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->bitField0_:I

    .line 2109
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->PERSONAL:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->type_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 2111
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1880
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->clone()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1880
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->clone()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;
    .registers 3

    .prologue
    .line 1909
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->create()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;

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
    .line 1880
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->clone()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1880
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1880
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;
    .registers 2

    .prologue
    .line 1913
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2060
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->id_:Ljava/lang/Object;

    .line 2061
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 2062
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2063
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->id_:Ljava/lang/Object;

    .line 2066
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

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2120
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->name_:Ljava/lang/Object;

    .line 2121
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 2122
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2123
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->name_:Ljava/lang/Object;

    .line 2126
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

.method public getResponseCode()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;
    .registers 2

    .prologue
    .line 2036
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->responseCode_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;

    return-object v0
.end method

.method public getType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    .registers 2

    .prologue
    .line 2096
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->type_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    return-object v0
.end method

.method public hasId()Z
    .registers 3

    .prologue
    .line 2057
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->bitField0_:I

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

.method public hasName()Z
    .registers 3

    .prologue
    .line 2117
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->bitField0_:I

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

.method public hasResponseCode()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2033
    iget v1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasType()Z
    .registers 3

    .prologue
    .line 2093
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->bitField0_:I

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
    .line 1880
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;

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
    .line 1880
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1984
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1985
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_4e

    .line 1990
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1992
    :sswitch_d
    return-object p0

    .line 1997
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 1998
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;->valueOf(I)Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;

    move-result-object v2

    .line 1999
    .local v2, value:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;
    if-eqz v2, :cond_0

    .line 2000
    iget v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->bitField0_:I

    .line 2001
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->responseCode_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;

    goto :goto_0

    .line 2006
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->bitField0_:I

    .line 2007
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 2011
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2012
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->valueOf(I)Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v2

    .line 2013
    .local v2, value:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    if-eqz v2, :cond_0

    .line 2014
    iget v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->bitField0_:I

    .line 2015
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->type_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    goto :goto_0

    .line 2020
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;
    :sswitch_41
    iget v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->bitField0_:I

    .line 2021
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 1985
    :sswitch_data_4e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x18 -> :sswitch_2e
        0x22 -> :sswitch_41
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 1959
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1972
    :cond_6
    :goto_6
    return-object p0

    .line 1960
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->hasResponseCode()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1961
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->getResponseCode()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->setResponseCode(Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;

    .line 1963
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->hasId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1964
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;

    .line 1966
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->hasType()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1967
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->getType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->setType(Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;

    .line 1969
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->hasName()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1970
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;

    goto :goto_6
.end method

.method public setId(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2070
    if-nez p1, :cond_8

    .line 2071
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2073
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->bitField0_:I

    .line 2074
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->id_:Ljava/lang/Object;

    .line 2076
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2130
    if-nez p1, :cond_8

    .line 2131
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2133
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->bitField0_:I

    .line 2134
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->name_:Ljava/lang/Object;

    .line 2136
    return-object p0
.end method

.method public setResponseCode(Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2039
    if-nez p1, :cond_8

    .line 2040
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2042
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->bitField0_:I

    .line 2043
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->responseCode_:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;

    .line 2045
    return-object p0
.end method

.method public setType(Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2099
    if-nez p1, :cond_8

    .line 2100
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2102
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->bitField0_:I

    .line 2103
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$Builder;->type_:Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    .line 2105
    return-object p0
.end method
