.class public final Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private byUser_:Z

.field private eventId_:Ljava/lang/Object;

.field private maxClusterSize_:J

.field private maxInterval_:J

.field private maxPhotos_:I

.field private minTimestamp_:J


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 54664
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 54830
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->eventId_:Ljava/lang/Object;

    .line 54887
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->maxClusterSize_:J

    .line 54929
    const-wide/16 v0, 0x708

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->maxInterval_:J

    .line 54665
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->maybeForceBuilderInitialization()V

    .line 54666
    return-void
.end method

.method static synthetic access$77000()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;
    .registers 1

    .prologue
    .line 54659
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;
    .registers 1

    .prologue
    .line 54671
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 54669
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 54659
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;
    .registers 3

    .prologue
    .line 54700
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;

    move-result-object v0

    .line 54701
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 54702
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 54704
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 54659
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;
    .registers 6

    .prologue
    .line 54718
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 54719
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    .line 54720
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 54721
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 54722
    or-int/lit8 v2, v2, 0x1

    .line 54724
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->eventId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->eventId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->access$77202(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54725
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 54726
    or-int/lit8 v2, v2, 0x2

    .line 54728
    :cond_1c
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->maxPhotos_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->maxPhotos_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->access$77302(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;I)I

    .line 54729
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 54730
    or-int/lit8 v2, v2, 0x4

    .line 54732
    :cond_28
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->maxClusterSize_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->maxClusterSize_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->access$77402(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;J)J

    .line 54733
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 54734
    or-int/lit8 v2, v2, 0x8

    .line 54736
    :cond_35
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->byUser_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->byUser_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->access$77502(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;Z)Z

    .line 54737
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 54738
    or-int/lit8 v2, v2, 0x10

    .line 54740
    :cond_42
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->maxInterval_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->maxInterval_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->access$77602(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;J)J

    .line 54741
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 54742
    or-int/lit8 v2, v2, 0x20

    .line 54744
    :cond_4f
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->minTimestamp_:J

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->minTimestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->access$77702(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;J)J

    .line 54745
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->access$77802(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;I)I

    .line 54746
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 54659
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 54659
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 54675
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 54676
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->eventId_:Ljava/lang/Object;

    .line 54677
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    .line 54678
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->maxPhotos_:I

    .line 54679
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    .line 54680
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->maxClusterSize_:J

    .line 54681
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    .line 54682
    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->byUser_:Z

    .line 54683
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    .line 54684
    const-wide/16 v0, 0x708

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->maxInterval_:J

    .line 54685
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    .line 54686
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->minTimestamp_:J

    .line 54687
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    .line 54688
    return-object p0
.end method

.method public clearByUser()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;
    .registers 2

    .prologue
    .line 54922
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    .line 54923
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->byUser_:Z

    .line 54925
    return-object p0
.end method

.method public clearEventId()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;
    .registers 2

    .prologue
    .line 54854
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    .line 54855
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->getEventId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->eventId_:Ljava/lang/Object;

    .line 54857
    return-object p0
.end method

.method public clearMaxClusterSize()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;
    .registers 3

    .prologue
    .line 54901
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    .line 54902
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->maxClusterSize_:J

    .line 54904
    return-object p0
.end method

.method public clearMaxInterval()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;
    .registers 3

    .prologue
    .line 54943
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    .line 54944
    const-wide/16 v0, 0x708

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->maxInterval_:J

    .line 54946
    return-object p0
.end method

.method public clearMaxPhotos()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;
    .registers 2

    .prologue
    .line 54880
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    .line 54881
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->maxPhotos_:I

    .line 54883
    return-object p0
.end method

.method public clearMinTimestamp()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;
    .registers 3

    .prologue
    .line 54964
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    .line 54965
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->minTimestamp_:J

    .line 54967
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 54659
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 54659
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;
    .registers 3

    .prologue
    .line 54692
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;

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
    .line 54659
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getByUser()Z
    .registers 2

    .prologue
    .line 54913
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->byUser_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 54659
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 54659
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;
    .registers 2

    .prologue
    .line 54696
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;

    move-result-object v0

    return-object v0
.end method

.method public getEventId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 54835
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->eventId_:Ljava/lang/Object;

    .line 54836
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 54837
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 54838
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->eventId_:Ljava/lang/Object;

    .line 54841
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

.method public getMaxClusterSize()J
    .registers 3

    .prologue
    .line 54892
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->maxClusterSize_:J

    return-wide v0
.end method

.method public getMaxInterval()J
    .registers 3

    .prologue
    .line 54934
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->maxInterval_:J

    return-wide v0
.end method

.method public getMaxPhotos()I
    .registers 2

    .prologue
    .line 54871
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->maxPhotos_:I

    return v0
.end method

.method public getMinTimestamp()J
    .registers 3

    .prologue
    .line 54955
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->minTimestamp_:J

    return-wide v0
.end method

.method public hasByUser()Z
    .registers 3

    .prologue
    .line 54910
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

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

.method public hasEventId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 54832
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasMaxClusterSize()Z
    .registers 3

    .prologue
    .line 54889
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

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

.method public hasMaxInterval()Z
    .registers 3

    .prologue
    .line 54931
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

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

.method public hasMaxPhotos()Z
    .registers 3

    .prologue
    .line 54868
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

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

.method public hasMinTimestamp()Z
    .registers 3

    .prologue
    .line 54952
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 54773
    const/4 v0, 0x1

    return v0
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
    .line 54659
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 54659
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;

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
    .line 54659
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54781
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 54782
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_5c

    .line 54787
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54789
    :sswitch_d
    return-object p0

    .line 54794
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    .line 54795
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->eventId_:Ljava/lang/Object;

    goto :goto_0

    .line 54799
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    .line 54800
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->maxPhotos_:I

    goto :goto_0

    .line 54804
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    .line 54805
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->maxClusterSize_:J

    goto :goto_0

    .line 54809
    :sswitch_35
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    .line 54810
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->byUser_:Z

    goto :goto_0

    .line 54814
    :sswitch_42
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    .line 54815
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->maxInterval_:J

    goto :goto_0

    .line 54819
    :sswitch_4f
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    .line 54820
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->minTimestamp_:J

    goto :goto_0

    .line 54782
    :sswitch_data_5c
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x20 -> :sswitch_35
        0x28 -> :sswitch_42
        0x30 -> :sswitch_4f
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 54750
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 54769
    :cond_6
    :goto_6
    return-object p0

    .line 54751
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->hasEventId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 54752
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->getEventId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->setEventId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;

    .line 54754
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->hasMaxPhotos()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 54755
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->getMaxPhotos()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->setMaxPhotos(I)Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;

    .line 54757
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->hasMaxClusterSize()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 54758
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->getMaxClusterSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->setMaxClusterSize(J)Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;

    .line 54760
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->hasByUser()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 54761
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->getByUser()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->setByUser(Z)Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;

    .line 54763
    :cond_3b
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->hasMaxInterval()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 54764
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->getMaxInterval()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->setMaxInterval(J)Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;

    .line 54766
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->hasMinTimestamp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 54767
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest;->getMinTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->setMinTimestamp(J)Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;

    goto :goto_6
.end method

.method public setByUser(Z)Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 54916
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    .line 54917
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->byUser_:Z

    .line 54919
    return-object p0
.end method

.method public setEventId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 54845
    if-nez p1, :cond_8

    .line 54846
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54848
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    .line 54849
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->eventId_:Ljava/lang/Object;

    .line 54851
    return-object p0
.end method

.method public setMaxClusterSize(J)Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 54895
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    .line 54896
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->maxClusterSize_:J

    .line 54898
    return-object p0
.end method

.method public setMaxInterval(J)Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 54937
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    .line 54938
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->maxInterval_:J

    .line 54940
    return-object p0
.end method

.method public setMaxPhotos(I)Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 54874
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    .line 54875
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->maxPhotos_:I

    .line 54877
    return-object p0
.end method

.method public setMinTimestamp(J)Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 54958
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->bitField0_:I

    .line 54959
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosRequest$Builder;->minTimestamp_:J

    .line 54961
    return-object p0
.end method
