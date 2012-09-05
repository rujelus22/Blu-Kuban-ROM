.class public final Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PostResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$PostResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$PostResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$PostResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private activityId_:Ljava/lang/Object;

.field private albumId_:J

.field private bitField0_:I

.field private commentId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 13407
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 13531
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->activityId_:Ljava/lang/Object;

    .line 13588
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->commentId_:Ljava/lang/Object;

    .line 13408
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->maybeForceBuilderInitialization()V

    .line 13409
    return-void
.end method

.method static synthetic access$17100(Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PostResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13402
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$PostResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$17200()Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;
    .registers 1

    .prologue
    .line 13402
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$PostResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13446
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PostResponse;

    move-result-object v0

    .line 13447
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$PostResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 13448
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 13451
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;
    .registers 1

    .prologue
    .line 13414
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 13412
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13402
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PostResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PostResponse;
    .registers 6

    .prologue
    .line 13455
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 13456
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$PostResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->bitField0_:I

    .line 13457
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 13458
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 13459
    or-int/lit8 v2, v2, 0x1

    .line 13461
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->activityId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->activityId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->access$17402(Lcom/google/wireless/tacotruck/proto/Network$PostResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13462
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 13463
    or-int/lit8 v2, v2, 0x2

    .line 13465
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->albumId_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->albumId_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->access$17502(Lcom/google/wireless/tacotruck/proto/Network$PostResponse;J)J

    .line 13466
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 13467
    or-int/lit8 v2, v2, 0x4

    .line 13469
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->commentId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->commentId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->access$17602(Lcom/google/wireless/tacotruck/proto/Network$PostResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13470
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->access$17702(Lcom/google/wireless/tacotruck/proto/Network$PostResponse;I)I

    .line 13471
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 13402
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 13402
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;
    .registers 3

    .prologue
    .line 13418
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 13419
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->activityId_:Ljava/lang/Object;

    .line 13420
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->bitField0_:I

    .line 13421
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->albumId_:J

    .line 13422
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->bitField0_:I

    .line 13423
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->commentId_:Ljava/lang/Object;

    .line 13424
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->bitField0_:I

    .line 13425
    return-object p0
.end method

.method public clearActivityId()Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;
    .registers 2

    .prologue
    .line 13555
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->bitField0_:I

    .line 13556
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PostResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->getActivityId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->activityId_:Ljava/lang/Object;

    .line 13558
    return-object p0
.end method

.method public clearAlbumId()Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;
    .registers 3

    .prologue
    .line 13581
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->bitField0_:I

    .line 13582
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->albumId_:J

    .line 13584
    return-object p0
.end method

.method public clearCommentId()Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;
    .registers 2

    .prologue
    .line 13612
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->bitField0_:I

    .line 13613
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PostResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->getCommentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->commentId_:Ljava/lang/Object;

    .line 13615
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 13402
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 13402
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;
    .registers 3

    .prologue
    .line 13429
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PostResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PostResponse;)Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;

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
    .line 13402
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getActivityId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 13536
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->activityId_:Ljava/lang/Object;

    .line 13537
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 13538
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 13539
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->activityId_:Ljava/lang/Object;

    .line 13542
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

.method public getAlbumId()J
    .registers 3

    .prologue
    .line 13572
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->albumId_:J

    return-wide v0
.end method

.method public getCommentId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 13593
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->commentId_:Ljava/lang/Object;

    .line 13594
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 13595
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 13596
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->commentId_:Ljava/lang/Object;

    .line 13599
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
    .line 13402
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PostResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13402
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PostResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PostResponse;
    .registers 2

    .prologue
    .line 13433
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PostResponse;

    move-result-object v0

    return-object v0
.end method

.method public hasActivityId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 13533
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasAlbumId()Z
    .registers 3

    .prologue
    .line 13569
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->bitField0_:I

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

.method public hasCommentId()Z
    .registers 3

    .prologue
    .line 13590
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->bitField0_:I

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
    .line 13402
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;

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
    .line 13402
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13497
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 13498
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 13503
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 13505
    :sswitch_d
    return-object p0

    .line 13510
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->bitField0_:I

    .line 13511
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->activityId_:Ljava/lang/Object;

    goto :goto_0

    .line 13515
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->bitField0_:I

    .line 13516
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->albumId_:J

    goto :goto_0

    .line 13520
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->bitField0_:I

    .line 13521
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->commentId_:Ljava/lang/Object;

    goto :goto_0

    .line 13498
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x1a -> :sswitch_28
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PostResponse;)Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 13475
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PostResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 13485
    :cond_6
    :goto_6
    return-object p0

    .line 13476
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->hasActivityId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 13477
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->getActivityId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;

    .line 13479
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->hasAlbumId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 13480
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->getAlbumId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->setAlbumId(J)Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;

    .line 13482
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->hasCommentId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13483
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->getCommentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->setCommentId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;

    goto :goto_6
.end method

.method public setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13546
    if-nez p1, :cond_8

    .line 13547
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13549
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->bitField0_:I

    .line 13550
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->activityId_:Ljava/lang/Object;

    .line 13552
    return-object p0
.end method

.method public setAlbumId(J)Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 13575
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->bitField0_:I

    .line 13576
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->albumId_:J

    .line 13578
    return-object p0
.end method

.method public setCommentId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 13603
    if-nez p1, :cond_8

    .line 13604
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13606
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->bitField0_:I

    .line 13607
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->commentId_:Ljava/lang/Object;

    .line 13609
    return-object p0
.end method
