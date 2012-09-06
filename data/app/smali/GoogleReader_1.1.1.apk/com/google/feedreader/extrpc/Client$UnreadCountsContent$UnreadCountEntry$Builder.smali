.class public final Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;",
        "Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;",
        ">;",
        "Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntryOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private count_:I

.field private id_:Ljava/lang/Object;

.field private lastReadItemTimestampUsec_:J

.field private newestItemTimestampUsec_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 9897
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 10043
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->id_:Ljava/lang/Object;

    .line 9898
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->maybeForceBuilderInitialization()V

    .line 9899
    return-void
.end method

.method static synthetic access$11700(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9892
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11800()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;
    .registers 1

    .prologue
    .line 9892
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->create()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9938
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

    move-result-object v0

    .line 9939
    .local v0, result:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 9940
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 9943
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;
    .registers 1

    .prologue
    .line 9904
    new-instance v0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 9902
    return-void
.end method


# virtual methods
.method public build()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;
    .registers 3

    .prologue
    .line 9929
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

    move-result-object v0

    .line 9930
    .local v0, result:Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;
    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 9931
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 9933
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9892
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->build()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;
    .registers 6

    .prologue
    .line 9947
    new-instance v0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;-><init>(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;Lcom/google/feedreader/extrpc/Client$1;)V

    .line 9948
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

    .line 9949
    const/4 v2, 0x0

    .line 9950
    and-int/lit8 v3, v1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 9951
    or-int/lit8 v2, v2, 0x1

    .line 9953
    :cond_10
    iget-object v3, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->id_:Ljava/lang/Object;
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->access$12002(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9954
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 9955
    or-int/lit8 v2, v2, 0x2

    .line 9957
    :cond_1c
    iget v3, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->count_:I

    #setter for: Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->count_:I
    invoke-static {v0, v3}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->access$12102(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;I)I

    .line 9958
    and-int/lit8 v3, v1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 9959
    or-int/lit8 v2, v2, 0x4

    .line 9961
    :cond_28
    iget-wide v3, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->newestItemTimestampUsec_:J

    #setter for: Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->newestItemTimestampUsec_:J
    invoke-static {v0, v3, v4}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->access$12202(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;J)J

    .line 9962
    and-int/lit8 v1, v1, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3e

    .line 9963
    or-int/lit8 v1, v2, 0x8

    .line 9965
    :goto_35
    iget-wide v2, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->lastReadItemTimestampUsec_:J

    #setter for: Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->lastReadItemTimestampUsec_:J
    invoke-static {v0, v2, v3}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->access$12302(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;J)J

    .line 9966
    #setter for: Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->bitField0_:I
    invoke-static {v0, v1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->access$12402(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;I)I

    .line 9967
    return-object v0

    :cond_3e
    move v1, v2

    goto :goto_35
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9892
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 9908
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 9909
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->id_:Ljava/lang/Object;

    .line 9910
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

    .line 9911
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->count_:I

    .line 9912
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

    .line 9913
    iput-wide v1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->newestItemTimestampUsec_:J

    .line 9914
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

    .line 9915
    iput-wide v1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->lastReadItemTimestampUsec_:J

    .line 9916
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

    .line 9917
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 9892
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->clear()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9892
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->clear()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCount()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;
    .registers 2

    .prologue
    .line 10093
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

    .line 10094
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->count_:I

    .line 10096
    return-object p0
.end method

.method public clearId()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;
    .registers 2

    .prologue
    .line 10067
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

    .line 10068
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->id_:Ljava/lang/Object;

    .line 10070
    return-object p0
.end method

.method public clearLastReadItemTimestampUsec()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;
    .registers 3

    .prologue
    .line 10135
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

    .line 10136
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->lastReadItemTimestampUsec_:J

    .line 10138
    return-object p0
.end method

.method public clearNewestItemTimestampUsec()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;
    .registers 3

    .prologue
    .line 10114
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

    .line 10115
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->newestItemTimestampUsec_:J

    .line 10117
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;
    .registers 3

    .prologue
    .line 9921
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->create()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->buildPartial()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 9892
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->clone()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 9892
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->clone()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9892
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->clone()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

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
    .line 9892
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->clone()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 10084
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->count_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;
    .registers 2

    .prologue
    .line 9925
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 9892
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9892
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 10048
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->id_:Ljava/lang/Object;

    .line 10049
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_10

    .line 10050
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 10051
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->id_:Ljava/lang/Object;

    move-object v2, v1

    .line 10054
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

.method public getLastReadItemTimestampUsec()J
    .registers 3

    .prologue
    .line 10126
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->lastReadItemTimestampUsec_:J

    return-wide v0
.end method

.method public getNewestItemTimestampUsec()J
    .registers 3

    .prologue
    .line 10105
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->newestItemTimestampUsec_:J

    return-wide v0
.end method

.method public hasCount()Z
    .registers 3

    .prologue
    .line 10081
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 10045
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasLastReadItemTimestampUsec()Z
    .registers 3

    .prologue
    .line 10123
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

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

.method public hasNewestItemTimestampUsec()Z
    .registers 3

    .prologue
    .line 10102
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

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
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 9988
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->hasId()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 9996
    :goto_8
    return v0

    .line 9992
    :cond_9
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->hasCount()Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    .line 9994
    goto :goto_8

    .line 9996
    :cond_11
    const/4 v0, 0x1

    goto :goto_8
.end method

.method public mergeFrom(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;
    .registers 4
    .parameter

    .prologue
    .line 9971
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->getDefaultInstance()Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 9984
    :goto_7
    return-object v0

    .line 9972
    :cond_8
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->hasId()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 9973
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->setId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    .line 9975
    :cond_15
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->hasCount()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 9976
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->setCount(I)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    .line 9978
    :cond_22
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->hasNewestItemTimestampUsec()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 9979
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->getNewestItemTimestampUsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->setNewestItemTimestampUsec(J)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    .line 9981
    :cond_2f
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->hasLastReadItemTimestampUsec()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 9982
    invoke-virtual {p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;->getLastReadItemTimestampUsec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->setLastReadItemTimestampUsec(J)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    :cond_3c
    move-object v0, p0

    .line 9984
    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10004
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 10005
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_42

    .line 10010
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10012
    :sswitch_d
    return-object p0

    .line 10017
    :sswitch_e
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

    .line 10018
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->id_:Ljava/lang/Object;

    goto :goto_0

    .line 10022
    :sswitch_1b
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

    .line 10023
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->count_:I

    goto :goto_0

    .line 10027
    :sswitch_28
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

    .line 10028
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->newestItemTimestampUsec_:J

    goto :goto_0

    .line 10032
    :sswitch_35
    iget v1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

    .line 10033
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->lastReadItemTimestampUsec_:J

    goto :goto_0

    .line 10005
    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x20 -> :sswitch_35
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
    .line 9892
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 9892
    check-cast p1, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

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
    .line 9892
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCount(I)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 10087
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

    .line 10088
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->count_:I

    .line 10090
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 10058
    if-nez p1, :cond_8

    .line 10059
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10061
    :cond_8
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

    .line 10062
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->id_:Ljava/lang/Object;

    .line 10064
    return-object p0
.end method

.method setId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 10073
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

    .line 10074
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->id_:Ljava/lang/Object;

    .line 10076
    return-void
.end method

.method public setLastReadItemTimestampUsec(J)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 10129
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

    .line 10130
    iput-wide p1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->lastReadItemTimestampUsec_:J

    .line 10132
    return-object p0
.end method

.method public setNewestItemTimestampUsec(J)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 10108
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->bitField0_:I

    .line 10109
    iput-wide p1, p0, Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry$Builder;->newestItemTimestampUsec_:J

    .line 10111
    return-object p0
.end method
