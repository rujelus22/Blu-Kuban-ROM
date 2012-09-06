.class public final Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Buzz.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayloadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;",
        "Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayloadOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private channel_:Ljava/lang/Object;

.field private from_:Ljava/lang/Object;

.field private payload_:Lcom/google/protobuf/ByteString;

.field private sendOnDisconnect_:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 4715
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4865
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->channel_:Ljava/lang/Object;

    .line 4901
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->from_:Ljava/lang/Object;

    .line 4937
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->payload_:Lcom/google/protobuf/ByteString;

    .line 4716
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->maybeForceBuilderInitialization()V

    .line 4717
    return-void
.end method

.method static synthetic access$6200()Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;
    .registers 1

    .prologue
    .line 4710
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->create()Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;
    .registers 1

    .prologue
    .line 4722
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 4720
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4710
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->build()Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;
    .registers 3

    .prologue
    .line 4747
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;

    move-result-object v0

    .line 4748
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 4749
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 4751
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4710
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;
    .registers 6

    .prologue
    .line 4765
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;-><init>(Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;Lcom/google/wireless/realtimechat/proto/Buzz$1;)V

    .line 4766
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->bitField0_:I

    .line 4767
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 4768
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 4769
    or-int/lit8 v2, v2, 0x1

    .line 4771
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->channel_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->channel_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->access$6402(Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4772
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 4773
    or-int/lit8 v2, v2, 0x2

    .line 4775
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->from_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->from_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->access$6502(Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4776
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 4777
    or-int/lit8 v2, v2, 0x4

    .line 4779
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->payload_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->payload_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->access$6602(Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 4780
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 4781
    or-int/lit8 v2, v2, 0x8

    .line 4783
    :cond_35
    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->sendOnDisconnect_:Z

    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->sendOnDisconnect_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->access$6702(Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;Z)Z

    .line 4784
    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->access$6802(Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;I)I

    .line 4785
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4710
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4710
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;
    .registers 2

    .prologue
    .line 4726
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4727
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->channel_:Ljava/lang/Object;

    .line 4728
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->bitField0_:I

    .line 4729
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->from_:Ljava/lang/Object;

    .line 4730
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->bitField0_:I

    .line 4731
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->payload_:Lcom/google/protobuf/ByteString;

    .line 4732
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->bitField0_:I

    .line 4733
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->sendOnDisconnect_:Z

    .line 4734
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->bitField0_:I

    .line 4735
    return-object p0
.end method

.method public clearChannel()Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;
    .registers 2

    .prologue
    .line 4889
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->bitField0_:I

    .line 4890
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->getChannel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->channel_:Ljava/lang/Object;

    .line 4892
    return-object p0
.end method

.method public clearFrom()Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;
    .registers 2

    .prologue
    .line 4925
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->bitField0_:I

    .line 4926
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->getFrom()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->from_:Ljava/lang/Object;

    .line 4928
    return-object p0
.end method

.method public clearPayload()Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;
    .registers 2

    .prologue
    .line 4954
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->bitField0_:I

    .line 4955
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->payload_:Lcom/google/protobuf/ByteString;

    .line 4957
    return-object p0
.end method

.method public clearSendOnDisconnect()Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;
    .registers 2

    .prologue
    .line 4975
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->bitField0_:I

    .line 4976
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->sendOnDisconnect_:Z

    .line 4978
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 4710
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4710
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;
    .registers 3

    .prologue
    .line 4739
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->create()Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;)Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;

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
    .line 4710
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4870
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->channel_:Ljava/lang/Object;

    .line 4871
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 4872
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4873
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->channel_:Ljava/lang/Object;

    .line 4876
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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 4710
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4710
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;
    .registers 2

    .prologue
    .line 4743
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;

    move-result-object v0

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4906
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->from_:Ljava/lang/Object;

    .line 4907
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 4908
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4909
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->from_:Ljava/lang/Object;

    .line 4912
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

.method public getPayload()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 4942
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->payload_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSendOnDisconnect()Z
    .registers 2

    .prologue
    .line 4966
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->sendOnDisconnect_:Z

    return v0
.end method

.method public hasChannel()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 4867
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasFrom()Z
    .registers 3

    .prologue
    .line 4903
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->bitField0_:I

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

.method public hasPayload()Z
    .registers 3

    .prologue
    .line 4939
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->bitField0_:I

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

.method public hasSendOnDisconnect()Z
    .registers 3

    .prologue
    .line 4963
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 4806
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->hasChannel()Z

    move-result v1

    if-nez v1, :cond_8

    .line 4818
    :cond_7
    :goto_7
    return v0

    .line 4810
    :cond_8
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->hasFrom()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4814
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->hasPayload()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4818
    const/4 v0, 0x1

    goto :goto_7
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
    .line 4710
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 4710
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;)Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;

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
    .line 4710
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4826
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 4827
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_42

    .line 4832
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4834
    :sswitch_d
    return-object p0

    .line 4839
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->bitField0_:I

    .line 4840
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->channel_:Ljava/lang/Object;

    goto :goto_0

    .line 4844
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->bitField0_:I

    .line 4845
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->from_:Ljava/lang/Object;

    goto :goto_0

    .line 4849
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->bitField0_:I

    .line 4850
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->payload_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 4854
    :sswitch_35
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->bitField0_:I

    .line 4855
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->sendOnDisconnect_:Z

    goto :goto_0

    .line 4827
    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x20 -> :sswitch_35
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;)Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 4789
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 4802
    :cond_6
    :goto_6
    return-object p0

    .line 4790
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->hasChannel()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4791
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->setChannel(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;

    .line 4793
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->hasFrom()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4794
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->setFrom(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;

    .line 4796
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->hasPayload()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 4797
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->setPayload(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;

    .line 4799
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->hasSendOnDisconnect()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4800
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload;->getSendOnDisconnect()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->setSendOnDisconnect(Z)Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;

    goto :goto_6
.end method

.method public setChannel(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4880
    if-nez p1, :cond_8

    .line 4881
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4883
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->bitField0_:I

    .line 4884
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->channel_:Ljava/lang/Object;

    .line 4886
    return-object p0
.end method

.method public setFrom(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4916
    if-nez p1, :cond_8

    .line 4917
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4919
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->bitField0_:I

    .line 4920
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->from_:Ljava/lang/Object;

    .line 4922
    return-object p0
.end method

.method public setPayload(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4945
    if-nez p1, :cond_8

    .line 4946
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4948
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->bitField0_:I

    .line 4949
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->payload_:Lcom/google/protobuf/ByteString;

    .line 4951
    return-object p0
.end method

.method public setSendOnDisconnect(Z)Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4969
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->bitField0_:I

    .line 4970
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$PushMessagePayload$Builder;->sendOnDisconnect_:Z

    .line 4972
    return-object p0
.end method
