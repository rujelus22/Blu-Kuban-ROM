.class public final Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SuggestionsRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private count_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private participantId_:Lcom/google/protobuf/LazyStringList;

.field private stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 40270
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    .line 40271
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->initFields()V

    .line 40272
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 39821
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 39874
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->memoizedIsInitialized:B

    .line 39897
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->memoizedSerializedSize:I

    .line 39822
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39816
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 39823
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 39874
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->memoizedIsInitialized:B

    .line 39897
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->memoizedSerializedSize:I

    .line 39823
    return-void
.end method

.method static synthetic access$55500(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39816
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->participantId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$55502(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39816
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->participantId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$55602(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39816
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->count_:I

    return p1
.end method

.method static synthetic access$55702(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39816
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object p1
.end method

.method static synthetic access$55802(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39816
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;
    .registers 1

    .prologue
    .line 39827
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 39870
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->participantId_:Lcom/google/protobuf/LazyStringList;

    .line 39871
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->count_:I

    .line 39872
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .line 39873
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    .registers 1

    .prologue
    .line 39998
    #calls: Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->access$55300()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 40001
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 39856
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->count_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 39816
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;
    .registers 2

    .prologue
    .line 39831
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;

    return-object v0
.end method

.method public getParticipantId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 39846
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getParticipantIdCount()I
    .registers 2

    .prologue
    .line 39843
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getParticipantIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39840
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->participantId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    .line 39899
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->memoizedSerializedSize:I

    .line 39900
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    move v3, v2

    .line 39921
    .end local v2           #size:I
    .local v3, size:I
    :goto_7
    return v3

    .line 39902
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_8
    const/4 v2, 0x0

    .line 39904
    const/4 v0, 0x0

    .line 39905
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_21

    .line 39906
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 39905
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 39909
    :cond_21
    add-int/2addr v2, v0

    .line 39910
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->getParticipantIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 39912
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v5, :cond_3a

    .line 39913
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 39916
    :cond_3a
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_49

    .line 39917
    const/4 v4, 0x3

    iget v5, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->count_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 39920
    :cond_49
    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->memoizedSerializedSize:I

    move v3, v2

    .line 39921
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_7
.end method

.method public getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 39866
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    return-object v0
.end method

.method public hasCount()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 39853
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasStubbyInfo()Z
    .registers 3

    .prologue
    .line 39863
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 39876
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->memoizedIsInitialized:B

    .line 39877
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 39880
    :goto_8
    return v1

    .line 39877
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 39879
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 39928
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
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 39885
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->getSerializedSize()I

    .line 39886
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 39887
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->participantId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 39886
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 39889
    :cond_1a
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_25

    .line 39890
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->stubbyInfo_:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 39892
    :cond_25
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_31

    .line 39893
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsRequest;->count_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 39895
    :cond_31
    return-void
.end method
