.class public final Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecordPeopleSuggestionRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;,
        Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;,
        Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

.field private static final serialVersionUID:J


# instance fields
.field private actionType_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

.field private bitField0_:I

.field private circleId_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private uiLocation_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 12104
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    .line 12105
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->initFields()V

    .line 12106
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 11493
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 11697
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->memoizedIsInitialized:B

    .line 11723
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->memoizedSerializedSize:I

    .line 11494
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11488
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;-><init>(Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 11495
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 11697
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->memoizedIsInitialized:B

    .line 11723
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->memoizedSerializedSize:I

    .line 11495
    return-void
.end method

.method static synthetic access$15802(Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;)Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11488
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->actionType_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    return-object p1
.end method

.method static synthetic access$15902(Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11488
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$16002(Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;)Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11488
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->uiLocation_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    return-object p1
.end method

.method static synthetic access$16102(Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11488
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->circleId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$16202(Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11488
    iput p1, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->bitField0_:I

    return p1
.end method

.method private getCircleIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 11680
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->circleId_:Ljava/lang/Object;

    .line 11681
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 11682
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11684
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->circleId_:Ljava/lang/Object;

    .line 11687
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

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;
    .registers 1

    .prologue
    .line 11499
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    return-object v0
.end method

.method private getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 11638
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->id_:Ljava/lang/Object;

    .line 11639
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 11640
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11642
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->id_:Ljava/lang/Object;

    .line 11645
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

.method private initFields()V
    .registers 2

    .prologue
    .line 11692
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;->CIRCLE_MEMBER_ACCEPT:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->actionType_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    .line 11693
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->id_:Ljava/lang/Object;

    .line 11694
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;->MOBILEWEB_CIRCLE_MEMBERS:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->uiLocation_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    .line 11695
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->circleId_:Ljava/lang/Object;

    .line 11696
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;
    .registers 1

    .prologue
    .line 11823
    #calls: Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->access$15600()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;)Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 11826
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->newBuilder()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;)Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActionType()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;
    .registers 2

    .prologue
    .line 11614
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->actionType_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    return-object v0
.end method

.method public getCircleId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 11666
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->circleId_:Ljava/lang/Object;

    .line 11667
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 11668
    check-cast v1, Ljava/lang/String;

    .line 11676
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 11670
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11672
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 11673
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 11674
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->circleId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 11676
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 11488
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;
    .registers 2

    .prologue
    .line 11503
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 11624
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->id_:Ljava/lang/Object;

    .line 11625
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 11626
    check-cast v1, Ljava/lang/String;

    .line 11634
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 11628
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11630
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 11631
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 11632
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->id_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 11634
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 11725
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->memoizedSerializedSize:I

    .line 11726
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 11746
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 11728
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 11729
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 11730
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->actionType_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 11733
    :cond_1c
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2b

    .line 11734
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 11737
    :cond_2b
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3d

    .line 11738
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->uiLocation_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    invoke-virtual {v3}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 11741
    :cond_3d
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4e

    .line 11742
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->getCircleIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 11745
    :cond_4e
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 11746
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getUiLocation()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;
    .registers 2

    .prologue
    .line 11656
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->uiLocation_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    return-object v0
.end method

.method public hasActionType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 11611
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasCircleId()Z
    .registers 3

    .prologue
    .line 11663
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    .line 11621
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->bitField0_:I

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

.method public hasUiLocation()Z
    .registers 3

    .prologue
    .line 11653
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 11699
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->memoizedIsInitialized:B

    .line 11700
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 11703
    :goto_8
    return v1

    .line 11700
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 11702
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 11488
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->newBuilderForType()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;
    .registers 2

    .prologue
    .line 11824
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->newBuilder()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 11488
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->toBuilder()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;
    .registers 2

    .prologue
    .line 11828
    invoke-static {p0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->newBuilder(Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;)Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 11753
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 11708
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->getSerializedSize()I

    .line 11709
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 11710
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->actionType_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$ActionType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 11712
    :cond_15
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 11713
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11715
    :cond_22
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_32

    .line 11716
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->uiLocation_:Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;

    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest$UILocation;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 11718
    :cond_32
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_41

    .line 11719
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$RecordPeopleSuggestionRequest;->getCircleIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11721
    :cond_41
    return-void
.end method
