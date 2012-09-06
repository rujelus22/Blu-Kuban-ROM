.class public final Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

.field private query_:Ljava/lang/Object;

.field private searchRadius_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 27020
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 27154
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 27197
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->query_:Ljava/lang/Object;

    .line 27021
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->maybeForceBuilderInitialization()V

    .line 27022
    return-void
.end method

.method static synthetic access$37100()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
    .registers 1

    .prologue
    .line 27015
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
    .registers 1

    .prologue
    .line 27027
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 27025
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27015
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;
    .registers 3

    .prologue
    .line 27050
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;

    move-result-object v0

    .line 27051
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 27052
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 27054
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27015
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;
    .registers 6

    .prologue
    .line 27068
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 27069
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    .line 27070
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 27071
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 27072
    or-int/lit8 v2, v2, 0x1

    .line 27074
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->access$37302(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 27075
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 27076
    or-int/lit8 v2, v2, 0x2

    .line 27078
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->query_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->query_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->access$37402(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27079
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 27080
    or-int/lit8 v2, v2, 0x4

    .line 27082
    :cond_28
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->searchRadius_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->searchRadius_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->access$37502(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;I)I

    .line 27083
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->access$37602(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;I)I

    .line 27084
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 27015
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 27015
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
    .registers 2

    .prologue
    .line 27031
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 27032
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 27033
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    .line 27034
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->query_:Ljava/lang/Object;

    .line 27035
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    .line 27036
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->searchRadius_:I

    .line 27037
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    .line 27038
    return-object p0
.end method

.method public clearPosition()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
    .registers 2

    .prologue
    .line 27190
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 27192
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    .line 27193
    return-object p0
.end method

.method public clearQuery()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
    .registers 2

    .prologue
    .line 27221
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    .line 27222
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->getQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->query_:Ljava/lang/Object;

    .line 27224
    return-object p0
.end method

.method public clearSearchRadius()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
    .registers 2

    .prologue
    .line 27247
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    .line 27248
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->searchRadius_:I

    .line 27250
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 27015
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 27015
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
    .registers 3

    .prologue
    .line 27042
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

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
    .line 27015
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 27015
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27015
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;
    .registers 2

    .prologue
    .line 27046
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;
    .registers 2

    .prologue
    .line 27159
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 4

    .prologue
    .line 27202
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->query_:Ljava/lang/Object;

    .line 27203
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 27204
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 27205
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->query_:Ljava/lang/Object;

    .line 27208
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

.method public getSearchRadius()I
    .registers 2

    .prologue
    .line 27238
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->searchRadius_:I

    return v0
.end method

.method public hasPosition()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 27156
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasQuery()Z
    .registers 3

    .prologue
    .line 27199
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

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

.method public hasSearchRadius()Z
    .registers 3

    .prologue
    .line 27235
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

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
    .line 27102
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->hasPosition()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 27103
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Point;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 27105
    const/4 v0, 0x0

    .line 27108
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
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
    .line 27015
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 27015
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

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
    .line 27015
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27116
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 27117
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_44

    .line 27122
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 27124
    :sswitch_d
    return-object p0

    .line 27129
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    .line 27130
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->hasPosition()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 27131
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    .line 27133
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 27134
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->setPosition(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

    goto :goto_0

    .line 27138
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;
    :sswitch_2a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    .line 27139
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->query_:Ljava/lang/Object;

    goto :goto_0

    .line 27143
    :sswitch_37
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    .line 27144
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->searchRadius_:I

    goto :goto_0

    .line 27117
    :sswitch_data_44
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
        0x18 -> :sswitch_37
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 27088
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 27098
    :cond_6
    :goto_6
    return-object p0

    .line 27089
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->hasPosition()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 27090
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->mergePosition(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

    .line 27092
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->hasQuery()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 27093
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->setQuery(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

    .line 27095
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->hasSearchRadius()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 27096
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest;->getSearchRadius()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->setSearchRadius(I)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;

    goto :goto_6
.end method

.method public mergePosition(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 27178
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 27180
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Point;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 27186
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    .line 27187
    return-object p0

    .line 27183
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    goto :goto_1f
.end method

.method public setPosition(Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 27172
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Point$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 27174
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    .line 27175
    return-object p0
.end method

.method public setPosition(Lcom/google/wireless/tacotruck/proto/Data$Point;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 27162
    if-nez p1, :cond_8

    .line 27163
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27165
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->position_:Lcom/google/wireless/tacotruck/proto/Data$Point;

    .line 27167
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    .line 27168
    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 27212
    if-nez p1, :cond_8

    .line 27213
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 27215
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    .line 27216
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->query_:Ljava/lang/Object;

    .line 27218
    return-object p0
.end method

.method public setSearchRadius(I)Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 27241
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->bitField0_:I

    .line 27242
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequest$Builder;->searchRadius_:I

    .line 27244
    return-object p0
.end method
