.class public final Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Buzz.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayloadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;",
        "Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayloadOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private buzzHeader_:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

.field private payloadType_:I

.field private payload_:Lcom/google/protobuf/ByteString;

.field private recipient_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;",
            ">;"
        }
    .end annotation
.end field

.field private sender_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 4016
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4207
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->recipient_:Ljava/util/List;

    .line 4296
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->sender_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    .line 4339
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->payload_:Lcom/google/protobuf/ByteString;

    .line 4384
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->buzzHeader_:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    .line 4017
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->maybeForceBuilderInitialization()V

    .line 4018
    return-void
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;
    .registers 1

    .prologue
    .line 4023
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;-><init>()V

    return-object v0
.end method

.method private ensureRecipientIsMutable()V
    .registers 3

    .prologue
    .line 4210
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 4211
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->recipient_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->recipient_:Ljava/util/List;

    .line 4212
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    .line 4214
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 4021
    return-void
.end method


# virtual methods
.method public addAllRecipient(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;"
        }
    .end annotation

    .prologue
    .line 4277
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->ensureRecipientIsMutable()V

    .line 4278
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->recipient_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4280
    return-object p0
.end method

.method public addRecipient(ILcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4270
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->ensureRecipientIsMutable()V

    .line 4271
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->recipient_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->build()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4273
    return-object p0
.end method

.method public addRecipient(ILcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4253
    if-nez p2, :cond_8

    .line 4254
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4256
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->ensureRecipientIsMutable()V

    .line 4257
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->recipient_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4259
    return-object p0
.end method

.method public addRecipient(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 4263
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->ensureRecipientIsMutable()V

    .line 4264
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->recipient_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->build()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4266
    return-object p0
.end method

.method public addRecipient(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4243
    if-nez p1, :cond_8

    .line 4244
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4246
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->ensureRecipientIsMutable()V

    .line 4247
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->recipient_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4249
    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4011
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;
    .registers 6

    .prologue
    .line 4068
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;-><init>(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;Lcom/google/wireless/realtimechat/proto/Buzz$1;)V

    .line 4069
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    .line 4070
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 4071
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 4072
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->recipient_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->recipient_:Ljava/util/List;

    .line 4073
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    .line 4075
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->recipient_:Ljava/util/List;

    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->recipient_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->access$5502(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;Ljava/util/List;)Ljava/util/List;

    .line 4076
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 4077
    or-int/lit8 v2, v2, 0x1

    .line 4079
    :cond_2a
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->sender_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->sender_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->access$5602(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    .line 4080
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 4081
    or-int/lit8 v2, v2, 0x2

    .line 4083
    :cond_36
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->payload_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->payload_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->access$5702(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 4084
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 4085
    or-int/lit8 v2, v2, 0x4

    .line 4087
    :cond_43
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->payloadType_:I

    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->payloadType_:I
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->access$5802(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;I)I

    .line 4088
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_50

    .line 4089
    or-int/lit8 v2, v2, 0x8

    .line 4091
    :cond_50
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->buzzHeader_:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->buzzHeader_:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->access$5902(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;)Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    .line 4092
    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->access$6002(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;I)I

    .line 4093
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4011
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4011
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;
    .registers 2

    .prologue
    .line 4027
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4028
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->recipient_:Ljava/util/List;

    .line 4029
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    .line 4030
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->sender_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    .line 4031
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    .line 4032
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->payload_:Lcom/google/protobuf/ByteString;

    .line 4033
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    .line 4034
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->payloadType_:I

    .line 4035
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    .line 4036
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->buzzHeader_:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    .line 4037
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    .line 4038
    return-object p0
.end method

.method public clearBuzzHeader()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;
    .registers 2

    .prologue
    .line 4420
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->buzzHeader_:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    .line 4422
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    .line 4423
    return-object p0
.end method

.method public clearPayload()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;
    .registers 2

    .prologue
    .line 4356
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    .line 4357
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->payload_:Lcom/google/protobuf/ByteString;

    .line 4359
    return-object p0
.end method

.method public clearPayloadType()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;
    .registers 2

    .prologue
    .line 4377
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    .line 4378
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->payloadType_:I

    .line 4380
    return-object p0
.end method

.method public clearRecipient()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;
    .registers 2

    .prologue
    .line 4283
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->recipient_:Ljava/util/List;

    .line 4284
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    .line 4286
    return-object p0
.end method

.method public clearSender()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;
    .registers 2

    .prologue
    .line 4332
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->sender_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    .line 4334
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    .line 4335
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 4011
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4011
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;
    .registers 3

    .prologue
    .line 4042
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->create()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;

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
    .line 4011
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBuzzHeader()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;
    .registers 2

    .prologue
    .line 4389
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->buzzHeader_:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 4011
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4011
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;
    .registers 2

    .prologue
    .line 4046
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 4344
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->payload_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPayloadType()I
    .registers 2

    .prologue
    .line 4368
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->payloadType_:I

    return v0
.end method

.method public getRecipient(I)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;
    .registers 3
    .parameter "index"

    .prologue
    .line 4223
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->recipient_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;

    return-object v0
.end method

.method public getRecipientCount()I
    .registers 2

    .prologue
    .line 4220
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->recipient_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRecipientList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4217
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->recipient_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSender()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;
    .registers 2

    .prologue
    .line 4301
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->sender_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    return-object v0
.end method

.method public hasBuzzHeader()Z
    .registers 3

    .prologue
    .line 4386
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasPayload()Z
    .registers 3

    .prologue
    .line 4341
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

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

.method public hasPayloadType()Z
    .registers 3

    .prologue
    .line 4365
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

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

.method public hasSender()Z
    .registers 3

    .prologue
    .line 4298
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

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

.method public mergeBuzzHeader(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4408
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->buzzHeader_:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 4410
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->buzzHeader_:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->newBuilder(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;)Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;)Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->buzzHeader_:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    .line 4416
    :goto_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    .line 4417
    return-object p0

    .line 4413
    :cond_27
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->buzzHeader_:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    goto :goto_20
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
    .line 4011
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;

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
    .line 4011
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4154
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 4155
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_70

    .line 4160
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4162
    :sswitch_d
    return-object p0

    .line 4167
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;->newBuilder()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;

    move-result-object v0

    .line 4168
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4169
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->addRecipient(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;

    goto :goto_0

    .line 4173
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;
    :sswitch_1d
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->newBuilder()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;

    move-result-object v0

    .line 4174
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->hasSender()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 4175
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->getSender()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;

    .line 4177
    :cond_2e
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4178
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->setSender(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;

    goto :goto_0

    .line 4182
    .end local v0           #subBuilder:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;
    :sswitch_39
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    .line 4183
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->payload_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 4187
    :sswitch_46
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    .line 4188
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->payloadType_:I

    goto :goto_0

    .line 4192
    :sswitch_53
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;->newBuilder()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;

    move-result-object v0

    .line 4193
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->hasBuzzHeader()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 4194
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->getBuzzHeader()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;)Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;

    .line 4196
    :cond_64
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 4197
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->setBuzzHeader(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;

    goto :goto_0

    .line 4155
    nop

    :sswitch_data_70
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1d
        0x1a -> :sswitch_39
        0x20 -> :sswitch_46
        0x2a -> :sswitch_53
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 4097
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 4120
    :cond_6
    :goto_6
    return-object p0

    .line 4098
    :cond_7
    #getter for: Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->recipient_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->access$5500(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 4099
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->recipient_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 4100
    #getter for: Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->recipient_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->access$5500(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->recipient_:Ljava/util/List;

    .line 4101
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    .line 4108
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->hasSender()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 4109
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->getSender()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->mergeSender(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;

    .line 4111
    :cond_32
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->hasPayload()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 4112
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->setPayload(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;

    .line 4114
    :cond_3f
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->hasPayloadType()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 4115
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->getPayloadType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->setPayloadType(I)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;

    .line 4117
    :cond_4c
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->hasBuzzHeader()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4118
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->getBuzzHeader()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->mergeBuzzHeader(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;

    goto :goto_6

    .line 4103
    :cond_5a
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->ensureRecipientIsMutable()V

    .line 4104
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->recipient_:Ljava/util/List;

    #getter for: Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->recipient_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;->access$5500(Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25
.end method

.method public mergeSender(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 4320
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->sender_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 4322
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->sender_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;->newBuilder(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->sender_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    .line 4328
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    .line 4329
    return-object p0

    .line 4325
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->sender_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    goto :goto_1f
.end method

.method public setBuzzHeader(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 4402
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader$Builder;->build()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->buzzHeader_:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    .line 4404
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    .line 4405
    return-object p0
.end method

.method public setBuzzHeader(Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4392
    if-nez p1, :cond_8

    .line 4393
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4395
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->buzzHeader_:Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;

    .line 4397
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    .line 4398
    return-object p0
.end method

.method public setPayload(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4347
    if-nez p1, :cond_8

    .line 4348
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4350
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    .line 4351
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->payload_:Lcom/google/protobuf/ByteString;

    .line 4353
    return-object p0
.end method

.method public setPayloadType(I)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4371
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    .line 4372
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->payloadType_:I

    .line 4374
    return-object p0
.end method

.method public setRecipient(ILcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4237
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->ensureRecipientIsMutable()V

    .line 4238
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->recipient_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData$Builder;->build()Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4240
    return-object p0
.end method

.method public setRecipient(ILcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4227
    if-nez p2, :cond_8

    .line 4228
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4230
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->ensureRecipientIsMutable()V

    .line 4231
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->recipient_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4233
    return-object p0
.end method

.method public setSender(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 4314
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Builder;->build()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->sender_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    .line 4316
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    .line 4317
    return-object p0
.end method

.method public setSender(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4304
    if-nez p1, :cond_8

    .line 4305
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4307
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->sender_:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;

    .line 4309
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayload$Builder;->bitField0_:I

    .line 4310
    return-object p0
.end method
