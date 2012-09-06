.class public final Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMappingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;",
        "Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMappingOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private destinationNumber_:Ljava/lang/Object;

.field private shadowNumber_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 4989
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 5087
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->destinationNumber_:Ljava/lang/Object;

    .line 5140
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->shadowNumber_:Ljava/lang/Object;

    .line 4990
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->maybeForceBuilderInitialization()V

    .line 4991
    return-void
.end method

.method static synthetic access$5500()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;
    .registers 1

    .prologue
    .line 4984
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;
    .registers 1

    .prologue
    .line 4996
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 4994
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;
    .registers 3

    .prologue
    .line 5017
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    move-result-object v0

    .line 5018
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 5019
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 5021
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4984
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;
    .registers 6

    .prologue
    .line 5025
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 5026
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->bitField0_:I

    .line 5027
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 5028
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 5029
    or-int/lit8 v2, v2, 0x1

    .line 5031
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->destinationNumber_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->destinationNumber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->access$5702(Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5032
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 5033
    or-int/lit8 v2, v2, 0x2

    .line 5035
    :cond_1c
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->shadowNumber_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->shadowNumber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->access$5802(Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5036
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->access$5902(Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;I)I

    .line 5037
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4984
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;
    .registers 2

    .prologue
    .line 5000
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 5001
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->destinationNumber_:Ljava/lang/Object;

    .line 5002
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->bitField0_:I

    .line 5003
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->shadowNumber_:Ljava/lang/Object;

    .line 5004
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->bitField0_:I

    .line 5005
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4984
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4984
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDestinationNumber()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;
    .registers 2

    .prologue
    .line 5123
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->bitField0_:I

    .line 5124
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->getDestinationNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->destinationNumber_:Ljava/lang/Object;

    .line 5126
    return-object p0
.end method

.method public clearShadowNumber()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;
    .registers 2

    .prologue
    .line 5176
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->bitField0_:I

    .line 5177
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->getShadowNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->shadowNumber_:Ljava/lang/Object;

    .line 5179
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;
    .registers 3

    .prologue
    .line 5009
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;)Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 4984
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4984
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4984
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;

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
    .line 4984
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;
    .registers 2

    .prologue
    .line 5013
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 4984
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4984
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    move-result-object v0

    return-object v0
.end method

.method public getDestinationNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 5092
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->destinationNumber_:Ljava/lang/Object;

    .line 5093
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 5094
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5095
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->destinationNumber_:Ljava/lang/Object;

    .line 5098
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

.method public getDestinationNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 5103
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->destinationNumber_:Ljava/lang/Object;

    .line 5104
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 5105
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5107
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->destinationNumber_:Ljava/lang/Object;

    .line 5110
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getShadowNumber()Ljava/lang/String;
    .registers 4

    .prologue
    .line 5145
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->shadowNumber_:Ljava/lang/Object;

    .line 5146
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 5147
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5148
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->shadowNumber_:Ljava/lang/Object;

    .line 5151
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

.method public getShadowNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 5156
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->shadowNumber_:Ljava/lang/Object;

    .line 5157
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 5158
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5160
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->shadowNumber_:Ljava/lang/Object;

    .line 5163
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public hasDestinationNumber()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 5089
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasShadowNumber()Z
    .registers 3

    .prologue
    .line 5142
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->bitField0_:I

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
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 5056
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->hasDestinationNumber()Z

    move-result v1

    if-nez v1, :cond_8

    .line 5064
    :cond_7
    :goto_7
    return v0

    .line 5060
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->hasShadowNumber()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5064
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;)Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 5041
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 5052
    :cond_6
    :goto_6
    return-object p0

    .line 5042
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->hasDestinationNumber()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 5043
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->bitField0_:I

    .line 5044
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->destinationNumber_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->access$5700(Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->destinationNumber_:Ljava/lang/Object;

    .line 5047
    :cond_19
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->hasShadowNumber()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5048
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->bitField0_:I

    .line 5049
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->shadowNumber_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->access$5800(Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->shadowNumber_:Ljava/lang/Object;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5071
    const/4 v2, 0x0

    .line 5073
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 5078
    if-eqz v2, :cond_10

    .line 5079
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;)Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;

    .line 5082
    :cond_10
    return-object p0

    .line 5074
    :catch_11
    move-exception v1

    .line 5075
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    move-object v2, v0

    .line 5076
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 5078
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 5079
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;)Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;

    :cond_21
    throw v3
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
    .line 4984
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 4984
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;)Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;

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
    .line 4984
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDestinationNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5114
    if-nez p1, :cond_8

    .line 5115
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5117
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->bitField0_:I

    .line 5118
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->destinationNumber_:Ljava/lang/Object;

    .line 5120
    return-object p0
.end method

.method public setDestinationNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5130
    if-nez p1, :cond_8

    .line 5131
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5133
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->bitField0_:I

    .line 5134
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->destinationNumber_:Ljava/lang/Object;

    .line 5136
    return-object p0
.end method

.method public setShadowNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5167
    if-nez p1, :cond_8

    .line 5168
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5170
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->bitField0_:I

    .line 5171
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->shadowNumber_:Ljava/lang/Object;

    .line 5173
    return-object p0
.end method

.method public setShadowNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 5183
    if-nez p1, :cond_8

    .line 5184
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5186
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->bitField0_:I

    .line 5187
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping$Builder;->shadowNumber_:Ljava/lang/Object;

    .line 5189
    return-object p0
.end method
