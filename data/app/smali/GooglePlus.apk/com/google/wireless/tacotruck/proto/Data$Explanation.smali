.class public final Lcom/google/wireless/tacotruck/proto/Data$Explanation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$ExplanationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Explanation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;,
        Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Explanation;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private displayName_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2741
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    .line 2742
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->initFields()V

    .line 2743
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 2222
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2383
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->memoizedIsInitialized:B

    .line 2406
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->memoizedSerializedSize:I

    .line 2223
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2217
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 2224
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2383
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->memoizedIsInitialized:B

    .line 2406
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->memoizedSerializedSize:I

    .line 2224
    return-void
.end method

.method static synthetic access$2902(Lcom/google/wireless/tacotruck/proto/Data$Explanation;Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;)Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2217
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->type_:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/google/wireless/tacotruck/proto/Data$Explanation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2217
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/google/wireless/tacotruck/proto/Data$Explanation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2217
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->displayName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/google/wireless/tacotruck/proto/Data$Explanation;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2217
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    .registers 1

    .prologue
    .line 2228
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    return-object v0
.end method

.method private getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2367
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->displayName_:Ljava/lang/Object;

    .line 2368
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2369
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2371
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->displayName_:Ljava/lang/Object;

    .line 2374
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

.method private getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2335
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->id_:Ljava/lang/Object;

    .line 2336
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2337
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2339
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->id_:Ljava/lang/Object;

    .line 2342
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
    .line 2379
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->POSTED_BY:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->type_:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    .line 2380
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->id_:Ljava/lang/Object;

    .line 2381
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->displayName_:Ljava/lang/Object;

    .line 2382
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
    .registers 1

    .prologue
    .line 2502
    #calls: Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->access$2700()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Explanation;)Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 2505
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Explanation;)Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2217
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    .registers 2

    .prologue
    .line 2232
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2353
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->displayName_:Ljava/lang/Object;

    .line 2354
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2355
    check-cast v1, Ljava/lang/String;

    .line 2363
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2357
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2359
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2360
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2361
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->displayName_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2363
    goto :goto_8
.end method

.method public getId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2321
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->id_:Ljava/lang/Object;

    .line 2322
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2323
    check-cast v1, Ljava/lang/String;

    .line 2331
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2325
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2327
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2328
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2329
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->id_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2331
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2408
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->memoizedSerializedSize:I

    .line 2409
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 2425
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 2411
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 2412
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1b

    .line 2413
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->type_:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2416
    :cond_1b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2a

    .line 2417
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2420
    :cond_2a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3b

    .line 2421
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2424
    :cond_3b
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->memoizedSerializedSize:I

    move v1, v0

    .line 2425
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;
    .registers 2

    .prologue
    .line 2311
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->type_:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    return-object v0
.end method

.method public hasDisplayName()Z
    .registers 3

    .prologue
    .line 2350
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    .line 2318
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2308
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->bitField0_:I

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

    .line 2385
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->memoizedIsInitialized:B

    .line 2386
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 2389
    :goto_8
    return v1

    .line 2386
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 2388
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2217
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
    .registers 2

    .prologue
    .line 2503
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2217
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;
    .registers 2

    .prologue
    .line 2507
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Explanation;)Lcom/google/wireless/tacotruck/proto/Data$Explanation$Builder;

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
    .line 2432
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
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2394
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getSerializedSize()I

    .line 2395
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 2396
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->type_:Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2398
    :cond_14
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_21

    .line 2399
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2401
    :cond_21
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_30

    .line 2402
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Explanation;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2404
    :cond_30
    return-void
.end method
