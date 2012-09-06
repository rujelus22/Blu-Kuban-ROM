.class public final Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$Item$OriginOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$Item$Origin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$Item$Origin;",
        "Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$Item$OriginOrBuilder;"
    }
.end annotation


# instance fields
.field private authorBroadcastStreamId_:Ljava/lang/Object;

.field private bitField0_:I

.field private streamHtmlUrl_:Ljava/lang/Object;

.field private streamId_:Ljava/lang/Object;

.field private streamTitle_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 3853
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3995
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->streamId_:Ljava/lang/Object;

    .line 4031
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->authorBroadcastStreamId_:Ljava/lang/Object;

    .line 4067
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->streamTitle_:Ljava/lang/Object;

    .line 4103
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->streamHtmlUrl_:Ljava/lang/Object;

    .line 3854
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->maybeForceBuilderInitialization()V

    .line 3855
    return-void
.end method

.method static synthetic access$4400(Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;)Lcom/google/feedreader/extrpc/Client$Item$Origin;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3848
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$Item$Origin;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500()Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;
    .registers 1

    .prologue
    .line 3848
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->create()Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$Item$Origin;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3894
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Item$Origin;

    move-result-object v0

    .line 3895
    .local v0, result:Lcom/google/feedreader/extrpc/Client$Item$Origin;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 3896
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 3899
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;
    .registers 1

    .prologue
    .line 3860
    new-instance v0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 3858
    return-void
.end method


# virtual methods
.method public build()Lcom/google/feedreader/extrpc/Client$Item$Origin;
    .registers 3

    .prologue
    .line 3885
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Item$Origin;

    move-result-object v0

    .line 3886
    .local v0, result:Lcom/google/feedreader/extrpc/Client$Item$Origin;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3887
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3889
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3848
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->build()Lcom/google/feedreader/extrpc/Client$Item$Origin;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$Item$Origin;
    .registers 6

    .prologue
    .line 3903
    new-instance v0, Lcom/google/feedreader/extrpc/Client$Item$Origin;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$Item$Origin;-><init>(Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 3904
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    .line 3905
    const/4 v2, 0x0

    .line 3906
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 3907
    or-int/lit8 v2, v2, 0x1

    .line 3909
    :cond_10
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->streamId_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$Item$Origin;->streamId_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->access$4702(Lcom/google/feedreader/extrpc/Client$Item$Origin;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3910
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 3911
    or-int/lit8 v2, v2, 0x2

    .line 3913
    :cond_1c
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->authorBroadcastStreamId_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$Item$Origin;->authorBroadcastStreamId_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->access$4802(Lcom/google/feedreader/extrpc/Client$Item$Origin;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3914
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 3915
    or-int/lit8 v2, v2, 0x4

    .line 3917
    :cond_28
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->streamTitle_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$Item$Origin;->streamTitle_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->access$4902(Lcom/google/feedreader/extrpc/Client$Item$Origin;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3918
    and-int/lit8 v1, v1, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3e

    .line 3919
    or-int/lit8 v1, v2, 0x8

    .line 3921
    :goto_35
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->streamHtmlUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$Item$Origin;->streamHtmlUrl_:Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->access$5002(Lcom/google/feedreader/extrpc/Client$Item$Origin;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3922
    #setter for: Lcom/google/feedreader/extrpc/Client$Item$Origin;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->access$5102(Lcom/google/feedreader/extrpc/Client$Item$Origin;I)I

    .line 3923
    return-object v0

    :cond_3e
    move v1, v2

    goto :goto_35
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3848
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Item$Origin;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;
    .registers 2

    .prologue
    .line 3864
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 3865
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->streamId_:Ljava/lang/Object;

    .line 3866
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    .line 3867
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->authorBroadcastStreamId_:Ljava/lang/Object;

    .line 3868
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    .line 3869
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->streamTitle_:Ljava/lang/Object;

    .line 3870
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    .line 3871
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->streamHtmlUrl_:Ljava/lang/Object;

    .line 3872
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    .line 3873
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3848
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->clear()Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3848
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->clear()Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAuthorBroadcastStreamId()Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;
    .registers 2

    .prologue
    .line 4055
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    .line 4056
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Item$Origin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->getAuthorBroadcastStreamId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->authorBroadcastStreamId_:Ljava/lang/Object;

    .line 4058
    return-object p0
.end method

.method public clearStreamHtmlUrl()Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;
    .registers 2

    .prologue
    .line 4127
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    .line 4128
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Item$Origin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->getStreamHtmlUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->streamHtmlUrl_:Ljava/lang/Object;

    .line 4130
    return-object p0
.end method

.method public clearStreamId()Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;
    .registers 2

    .prologue
    .line 4019
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    .line 4020
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Item$Origin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->getStreamId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->streamId_:Ljava/lang/Object;

    .line 4022
    return-object p0
.end method

.method public clearStreamTitle()Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;
    .registers 2

    .prologue
    .line 4091
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    .line 4092
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Item$Origin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->getStreamTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->streamTitle_:Ljava/lang/Object;

    .line 4094
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;
    .registers 3

    .prologue
    .line 3877
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->create()Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$Item$Origin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$Item$Origin;)Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 3848
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3848
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3848
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

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
    .line 3848
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->clone()Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorBroadcastStreamId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4036
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->authorBroadcastStreamId_:Ljava/lang/Object;

    .line 4037
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 4038
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4039
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->authorBroadcastStreamId_:Ljava/lang/Object;

    move-object v2, v1

    .line 4042
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Item$Origin;
    .registers 2

    .prologue
    .line 3881
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Item$Origin;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 3848
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Item$Origin;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3848
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$Item$Origin;

    move-result-object v0

    return-object v0
.end method

.method public getStreamHtmlUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4108
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->streamHtmlUrl_:Ljava/lang/Object;

    .line 4109
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 4110
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4111
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->streamHtmlUrl_:Ljava/lang/Object;

    move-object v2, v1

    .line 4114
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public getStreamId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4000
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->streamId_:Ljava/lang/Object;

    .line 4001
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 4002
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4003
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->streamId_:Ljava/lang/Object;

    move-object v2, v1

    .line 4006
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public getStreamTitle()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4072
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->streamTitle_:Ljava/lang/Object;

    .line 4073
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 4074
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4075
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->streamTitle_:Ljava/lang/Object;

    move-object v2, v1

    .line 4078
    .end local v1           #s:Ljava/lang/String;
    :goto_f
    return-object v2

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v2, v0

    goto :goto_f
.end method

.method public hasAuthorBroadcastStreamId()Z
    .registers 3

    .prologue
    .line 4033
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

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

.method public hasStreamHtmlUrl()Z
    .registers 3

    .prologue
    .line 4105
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

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

.method public hasStreamId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 3997
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasStreamTitle()Z
    .registers 3

    .prologue
    .line 4069
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

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
    .line 3944
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->hasStreamId()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3946
    const/4 v0, 0x0

    .line 3948
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$Item$Origin;)Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;
    .registers 3
    .parameter

    .prologue
    .line 3927
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$Item$Origin;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 3940
    :goto_7
    return-object v0

    .line 3928
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->hasStreamId()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3929
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->getStreamId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->setStreamId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    .line 3931
    :cond_15
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->hasAuthorBroadcastStreamId()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3932
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->getAuthorBroadcastStreamId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->setAuthorBroadcastStreamId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    .line 3934
    :cond_22
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->hasStreamTitle()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 3935
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->getStreamTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->setStreamTitle(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    .line 3937
    :cond_2f
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->hasStreamHtmlUrl()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 3938
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$Item$Origin;->getStreamHtmlUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->setStreamHtmlUrl(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    :cond_3c
    move-object v0, p0

    .line 3940
    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3956
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 3957
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_42

    .line 3962
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3964
    :sswitch_d
    return-object p0

    .line 3969
    :sswitch_e
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    .line 3970
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->streamId_:Ljava/lang/Object;

    goto :goto_0

    .line 3974
    :sswitch_1b
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    .line 3975
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->authorBroadcastStreamId_:Ljava/lang/Object;

    goto :goto_0

    .line 3979
    :sswitch_28
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    .line 3980
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->streamTitle_:Ljava/lang/Object;

    goto :goto_0

    .line 3984
    :sswitch_35
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    .line 3985
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->streamHtmlUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 3957
    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_35
    .end sparse-switch
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
    .line 3848
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 3848
    check-cast p1, Lcom/google/feedreader/extrpc/Client$Item$Origin;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$Item$Origin;)Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

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
    .line 3848
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAuthorBroadcastStreamId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4046
    if-nez p1, :cond_8

    .line 4047
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4049
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    .line 4050
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->authorBroadcastStreamId_:Ljava/lang/Object;

    .line 4052
    return-object p0
.end method

.method setAuthorBroadcastStreamId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 4061
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    .line 4062
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->authorBroadcastStreamId_:Ljava/lang/Object;

    .line 4064
    return-void
.end method

.method public setStreamHtmlUrl(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4118
    if-nez p1, :cond_8

    .line 4119
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4121
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    .line 4122
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->streamHtmlUrl_:Ljava/lang/Object;

    .line 4124
    return-object p0
.end method

.method setStreamHtmlUrl(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 4133
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    .line 4134
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->streamHtmlUrl_:Ljava/lang/Object;

    .line 4136
    return-void
.end method

.method public setStreamId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4010
    if-nez p1, :cond_8

    .line 4011
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4013
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    .line 4014
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->streamId_:Ljava/lang/Object;

    .line 4016
    return-object p0
.end method

.method setStreamId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 4025
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    .line 4026
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->streamId_:Ljava/lang/Object;

    .line 4028
    return-void
.end method

.method public setStreamTitle(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4082
    if-nez p1, :cond_8

    .line 4083
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4085
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    .line 4086
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->streamTitle_:Ljava/lang/Object;

    .line 4088
    return-object p0
.end method

.method setStreamTitle(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 4097
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->bitField0_:I

    .line 4098
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$Item$Origin$Builder;->streamTitle_:Ljava/lang/Object;

    .line 4100
    return-void
.end method
