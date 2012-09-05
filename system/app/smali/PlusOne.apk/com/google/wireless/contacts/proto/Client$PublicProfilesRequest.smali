.class public final Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PublicProfilesRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private count_:I

.field private key_:Ljava/lang/Object;

.field private lastUpdated_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private offset_:I

.field private search_:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 11462
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    .line 11463
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->initFields()V

    .line 11464
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 10923
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 11016
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->memoizedIsInitialized:B

    .line 11045
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->memoizedSerializedSize:I

    .line 10924
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10918
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;-><init>(Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 10925
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 11016
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->memoizedIsInitialized:B

    .line 11045
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->memoizedSerializedSize:I

    .line 10925
    return-void
.end method

.method static synthetic access$14902(Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;Lcom/google/wireless/contacts/proto/Contact$SearchQuery;)Lcom/google/wireless/contacts/proto/Contact$SearchQuery;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10918
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->search_:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    return-object p1
.end method

.method static synthetic access$15002(Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10918
    iput p1, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->offset_:I

    return p1
.end method

.method static synthetic access$15102(Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10918
    iput p1, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->count_:I

    return p1
.end method

.method static synthetic access$15202(Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10918
    iput-wide p1, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->lastUpdated_:J

    return-wide p1
.end method

.method static synthetic access$15302(Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10918
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->key_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$15402(Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10918
    iput p1, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;
    .registers 1

    .prologue
    .line 10929
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    return-object v0
.end method

.method private getKeyBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 10998
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->key_:Ljava/lang/Object;

    .line 10999
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 11000
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11002
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->key_:Ljava/lang/Object;

    .line 11005
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
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 11010
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$SearchQuery;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->search_:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    .line 11011
    iput v1, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->offset_:I

    .line 11012
    iput v1, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->count_:I

    .line 11013
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->lastUpdated_:J

    .line 11014
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->key_:Ljava/lang/Object;

    .line 11015
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;
    .registers 1

    .prologue
    .line 11149
    #calls: Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->create()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->access$14700()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;)Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 11152
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->newBuilder()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;)Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 10964
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->count_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10918
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;
    .registers 2

    .prologue
    .line 10933
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 5

    .prologue
    .line 10984
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->key_:Ljava/lang/Object;

    .line 10985
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 10986
    check-cast v1, Ljava/lang/String;

    .line 10994
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 10988
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10990
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 10991
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 10992
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->key_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 10994
    goto :goto_8
.end method

.method public getLastUpdated()J
    .registers 3

    .prologue
    .line 10974
    iget-wide v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->lastUpdated_:J

    return-wide v0
.end method

.method public getOffset()I
    .registers 2

    .prologue
    .line 10954
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->offset_:I

    return v0
.end method

.method public getSearch()Lcom/google/wireless/contacts/proto/Contact$SearchQuery;
    .registers 2

    .prologue
    .line 10944
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->search_:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 11047
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->memoizedSerializedSize:I

    .line 11048
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 11072
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 11050
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 11051
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 11052
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->search_:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 11055
    :cond_18
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_25

    .line 11056
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->offset_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 11059
    :cond_25
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_33

    .line 11060
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->count_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 11063
    :cond_33
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_42

    .line 11064
    iget-wide v2, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->lastUpdated_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 11067
    :cond_42
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_54

    .line 11068
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->getKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 11071
    :cond_54
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 11072
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public hasCount()Z
    .registers 3

    .prologue
    .line 10961
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->bitField0_:I

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

.method public hasKey()Z
    .registers 3

    .prologue
    .line 10981
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->bitField0_:I

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

.method public hasLastUpdated()Z
    .registers 3

    .prologue
    .line 10971
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->bitField0_:I

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

.method public hasOffset()Z
    .registers 3

    .prologue
    .line 10951
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->bitField0_:I

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

.method public hasSearch()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 10941
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 11018
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->memoizedIsInitialized:B

    .line 11019
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 11022
    :goto_8
    return v1

    .line 11019
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 11021
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->memoizedIsInitialized:B

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
    .line 11079
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

    .line 11027
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->getSerializedSize()I

    .line 11028
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 11029
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->search_:Lcom/google/wireless/contacts/proto/Contact$SearchQuery;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 11031
    :cond_11
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1c

    .line 11032
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->offset_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 11034
    :cond_1c
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_28

    .line 11035
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->count_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 11037
    :cond_28
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_35

    .line 11038
    iget-wide v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->lastUpdated_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 11040
    :cond_35
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_45

    .line 11041
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$PublicProfilesRequest;->getKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11043
    :cond_45
    return-void
.end method
