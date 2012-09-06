.class public final Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Circles.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Circles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeleteCirclesResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;,
        Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private failedCircleId_:Lcom/google/protobuf/LazyStringList;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private responseCode_:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2599
    new-instance v0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;

    .line 2600
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->initFields()V

    .line 2601
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 2178
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2264
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->memoizedIsInitialized:B

    .line 2284
    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->memoizedSerializedSize:I

    .line 2179
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;Lcom/google/wireless/contacts/proto/Circles$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2173
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;-><init>(Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 2180
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2264
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->memoizedIsInitialized:B

    .line 2284
    iput v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->memoizedSerializedSize:I

    .line 2180
    return-void
.end method

.method static synthetic access$3102(Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;)Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2173
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->responseCode_:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2173
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->failedCircleId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2173
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->failedCircleId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2173
    iput p1, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;
    .registers 1

    .prologue
    .line 2184
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 2261
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;->SUCCESS:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->responseCode_:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    .line 2262
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->failedCircleId_:Lcom/google/protobuf/LazyStringList;

    .line 2263
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;
    .registers 1

    .prologue
    .line 2381
    #calls: Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->create()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->access$2900()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;)Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 2384
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->newBuilder()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;)Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2173
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;
    .registers 2

    .prologue
    .line 2188
    sget-object v0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;

    return-object v0
.end method

.method public getFailedCircleId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 2257
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->failedCircleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFailedCircleIdCount()I
    .registers 2

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->failedCircleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getFailedCircleIdList()Ljava/util/List;
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
    .line 2251
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->failedCircleId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getResponseCode()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;
    .registers 2

    .prologue
    .line 2243
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->responseCode_:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 2286
    iget v2, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->memoizedSerializedSize:I

    .line 2287
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    move v3, v2

    .line 2304
    .end local v2           #size:I
    .local v3, size:I
    :goto_7
    return v3

    .line 2289
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_8
    const/4 v2, 0x0

    .line 2290
    iget v4, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1a

    .line 2291
    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->responseCode_:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    invoke-virtual {v4}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;->getNumber()I

    move-result v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 2295
    :cond_1a
    const/4 v0, 0x0

    .line 2296
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1c
    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->failedCircleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_32

    .line 2297
    iget-object v4, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->failedCircleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 2296
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 2300
    :cond_32
    add-int/2addr v2, v0

    .line 2301
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->getFailedCircleIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 2303
    iput v2, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->memoizedSerializedSize:I

    move v3, v2

    .line 2304
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_7
.end method

.method public hasResponseCode()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2240
    iget v1, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->bitField0_:I

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

    .line 2266
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->memoizedIsInitialized:B

    .line 2267
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 2270
    :goto_8
    return v1

    .line 2267
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 2269
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2173
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->newBuilderForType()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;
    .registers 2

    .prologue
    .line 2382
    invoke-static {}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->newBuilder()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2173
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->toBuilder()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;
    .registers 2

    .prologue
    .line 2386
    invoke-static {p0}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->newBuilder(Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;)Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$Builder;

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
    .line 2311
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 2275
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->getSerializedSize()I

    .line 2276
    iget v1, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_13

    .line 2277
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->responseCode_:Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;

    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse$ResponseCode;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2279
    :cond_13
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    iget-object v1, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->failedCircleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 2280
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Circles$DeleteCirclesResponse;->failedCircleId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2279
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 2282
    :cond_29
    return-void
.end method
