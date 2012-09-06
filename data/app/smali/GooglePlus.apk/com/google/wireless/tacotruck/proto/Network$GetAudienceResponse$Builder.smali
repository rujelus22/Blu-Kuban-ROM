.class public final Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

.field private bitField0_:I

.field private description_:Ljava/lang/Object;

.field private hiddenAudienceCountText_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 20059
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 20187
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 20230
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->description_:Ljava/lang/Object;

    .line 20266
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->hiddenAudienceCountText_:Ljava/lang/Object;

    .line 20060
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->maybeForceBuilderInitialization()V

    .line 20061
    return-void
.end method

.method static synthetic access$26800(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20054
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$26900()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
    .registers 1

    .prologue
    .line 20054
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20098
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    move-result-object v0

    .line 20099
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 20100
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 20103
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
    .registers 1

    .prologue
    .line 20066
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 20064
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20054
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;
    .registers 3

    .prologue
    .line 20089
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    move-result-object v0

    .line 20090
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 20091
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 20093
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20054
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;
    .registers 6

    .prologue
    .line 20107
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 20108
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    .line 20109
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 20110
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 20111
    or-int/lit8 v2, v2, 0x1

    .line 20113
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->access$27102(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 20114
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 20115
    or-int/lit8 v2, v2, 0x2

    .line 20117
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->description_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->description_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->access$27202(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20118
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 20119
    or-int/lit8 v2, v2, 0x4

    .line 20121
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->hiddenAudienceCountText_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->hiddenAudienceCountText_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->access$27302(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20122
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->access$27402(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;I)I

    .line 20123
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 20054
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 20054
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
    .registers 2

    .prologue
    .line 20070
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 20071
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 20072
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    .line 20073
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->description_:Ljava/lang/Object;

    .line 20074
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    .line 20075
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->hiddenAudienceCountText_:Ljava/lang/Object;

    .line 20076
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    .line 20077
    return-object p0
.end method

.method public clearAudience()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
    .registers 2

    .prologue
    .line 20223
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 20225
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    .line 20226
    return-object p0
.end method

.method public clearDescription()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
    .registers 2

    .prologue
    .line 20254
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    .line 20255
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->description_:Ljava/lang/Object;

    .line 20257
    return-object p0
.end method

.method public clearHiddenAudienceCountText()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
    .registers 2

    .prologue
    .line 20290
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    .line 20291
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->getHiddenAudienceCountText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->hiddenAudienceCountText_:Ljava/lang/Object;

    .line 20293
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 20054
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 20054
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
    .registers 3

    .prologue
    .line 20081
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

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
    .line 20054
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 2

    .prologue
    .line 20192
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 20054
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20054
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;
    .registers 2

    .prologue
    .line 20085
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 4

    .prologue
    .line 20235
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->description_:Ljava/lang/Object;

    .line 20236
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 20237
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 20238
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->description_:Ljava/lang/Object;

    .line 20241
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

.method public getHiddenAudienceCountText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 20271
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->hiddenAudienceCountText_:Ljava/lang/Object;

    .line 20272
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 20273
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 20274
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->hiddenAudienceCountText_:Ljava/lang/Object;

    .line 20277
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

.method public hasAudience()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 20189
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasDescription()Z
    .registers 3

    .prologue
    .line 20232
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

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

.method public hasHiddenAudienceCountText()Z
    .registers 3

    .prologue
    .line 20268
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

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
    .line 20141
    const/4 v0, 0x1

    return v0
.end method

.method public mergeAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 20211
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 20213
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 20219
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    .line 20220
    return-object p0

    .line 20216
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    goto :goto_1f
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
    .line 20054
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 20054
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

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
    .line 20054
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20149
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 20150
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_44

    .line 20155
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 20157
    :sswitch_d
    return-object p0

    .line 20162
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    .line 20163
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->hasAudience()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 20164
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    .line 20166
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 20167
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

    goto :goto_0

    .line 20171
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    :sswitch_2a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    .line 20172
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->description_:Ljava/lang/Object;

    goto :goto_0

    .line 20176
    :sswitch_37
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    .line 20177
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->hiddenAudienceCountText_:Ljava/lang/Object;

    goto :goto_0

    .line 20150
    :sswitch_data_44
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
        0x1a -> :sswitch_37
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 20127
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 20137
    :cond_6
    :goto_6
    return-object p0

    .line 20128
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->hasAudience()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 20129
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->mergeAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

    .line 20131
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 20132
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->setDescription(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

    .line 20134
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->hasHiddenAudienceCountText()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20135
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse;->getHiddenAudienceCountText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->setHiddenAudienceCountText(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;

    goto :goto_6
.end method

.method public setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 20205
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 20207
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    .line 20208
    return-object p0
.end method

.method public setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 20195
    if-nez p1, :cond_8

    .line 20196
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20198
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->audience_:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 20200
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    .line 20201
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 20245
    if-nez p1, :cond_8

    .line 20246
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20248
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    .line 20249
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->description_:Ljava/lang/Object;

    .line 20251
    return-object p0
.end method

.method public setHiddenAudienceCountText(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 20281
    if-nez p1, :cond_8

    .line 20282
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20284
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->bitField0_:I

    .line 20285
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAudienceResponse$Builder;->hiddenAudienceCountText_:Ljava/lang/Object;

    .line 20287
    return-object p0
.end method
