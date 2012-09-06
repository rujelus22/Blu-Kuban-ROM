.class public final Lcom/google/goggles/GogglesProtos$Audio;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "GogglesProtos.java"

# interfaces
.implements Lcom/google/goggles/GogglesProtos$AudioOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Audio"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/GogglesProtos$Audio$Builder;
    }
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x1

.field public static final SAMPLE_RATE_HZ_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/goggles/GogglesProtos$Audio;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private data_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private sampleRateHz_:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2649
    new-instance v0, Lcom/google/goggles/GogglesProtos$Audio;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/GogglesProtos$Audio;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/GogglesProtos$Audio;->defaultInstance:Lcom/google/goggles/GogglesProtos$Audio;

    .line 2650
    sget-object v0, Lcom/google/goggles/GogglesProtos$Audio;->defaultInstance:Lcom/google/goggles/GogglesProtos$Audio;

    invoke-direct {v0}, Lcom/google/goggles/GogglesProtos$Audio;->initFields()V

    .line 2651
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/GogglesProtos$Audio$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2329
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2367
    iput-byte v0, p0, Lcom/google/goggles/GogglesProtos$Audio;->memoizedIsInitialized:B

    .line 2387
    iput v0, p0, Lcom/google/goggles/GogglesProtos$Audio;->memoizedSerializedSize:I

    .line 2330
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/GogglesProtos$Audio$Builder;Lcom/google/goggles/GogglesProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2324
    invoke-direct {p0, p1}, Lcom/google/goggles/GogglesProtos$Audio;-><init>(Lcom/google/goggles/GogglesProtos$Audio$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2331
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2367
    iput-byte v0, p0, Lcom/google/goggles/GogglesProtos$Audio;->memoizedIsInitialized:B

    .line 2387
    iput v0, p0, Lcom/google/goggles/GogglesProtos$Audio;->memoizedSerializedSize:I

    .line 2331
    return-void
.end method

.method static synthetic access$3602(Lcom/google/goggles/GogglesProtos$Audio;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2324
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$Audio;->data_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/google/goggles/GogglesProtos$Audio;F)F
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2324
    iput p1, p0, Lcom/google/goggles/GogglesProtos$Audio;->sampleRateHz_:F

    return p1
.end method

.method static synthetic access$3802(Lcom/google/goggles/GogglesProtos$Audio;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2324
    iput p1, p0, Lcom/google/goggles/GogglesProtos$Audio;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/GogglesProtos$Audio;
    .registers 1

    .prologue
    .line 2335
    sget-object v0, Lcom/google/goggles/GogglesProtos$Audio;->defaultInstance:Lcom/google/goggles/GogglesProtos$Audio;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 2364
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$Audio;->data_:Lcom/google/protobuf/ByteString;

    .line 2365
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/GogglesProtos$Audio;->sampleRateHz_:F

    .line 2366
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/GogglesProtos$Audio$Builder;
    .registers 1

    .prologue
    .line 2479
    #calls: Lcom/google/goggles/GogglesProtos$Audio$Builder;->create()Lcom/google/goggles/GogglesProtos$Audio$Builder;
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->access$3400()Lcom/google/goggles/GogglesProtos$Audio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/GogglesProtos$Audio;)Lcom/google/goggles/GogglesProtos$Audio$Builder;
    .registers 2
    .parameter

    .prologue
    .line 2482
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Audio;->newBuilder()Lcom/google/goggles/GogglesProtos$Audio$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->mergeFrom(Lcom/google/goggles/GogglesProtos$Audio;)Lcom/google/goggles/GogglesProtos$Audio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/GogglesProtos$Audio;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2448
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Audio;->newBuilder()Lcom/google/goggles/GogglesProtos$Audio$Builder;

    move-result-object v0

    .line 2449
    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2450
    #calls: Lcom/google/goggles/GogglesProtos$Audio$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$Audio;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->access$3300(Lcom/google/goggles/GogglesProtos$Audio$Builder;)Lcom/google/goggles/GogglesProtos$Audio;

    move-result-object v0

    .line 2452
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$Audio;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2459
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Audio;->newBuilder()Lcom/google/goggles/GogglesProtos$Audio$Builder;

    move-result-object v0

    .line 2460
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2461
    #calls: Lcom/google/goggles/GogglesProtos$Audio$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$Audio;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->access$3300(Lcom/google/goggles/GogglesProtos$Audio$Builder;)Lcom/google/goggles/GogglesProtos$Audio;

    move-result-object v0

    .line 2463
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/GogglesProtos$Audio;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2415
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Audio;->newBuilder()Lcom/google/goggles/GogglesProtos$Audio$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$Audio$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$Audio$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$Audio;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->access$3300(Lcom/google/goggles/GogglesProtos$Audio$Builder;)Lcom/google/goggles/GogglesProtos$Audio;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$Audio;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2421
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Audio;->newBuilder()Lcom/google/goggles/GogglesProtos$Audio$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$Audio$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$Audio$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$Audio;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->access$3300(Lcom/google/goggles/GogglesProtos$Audio$Builder;)Lcom/google/goggles/GogglesProtos$Audio;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/GogglesProtos$Audio;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2469
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Audio;->newBuilder()Lcom/google/goggles/GogglesProtos$Audio$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$Audio$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$Audio$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$Audio;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->access$3300(Lcom/google/goggles/GogglesProtos$Audio$Builder;)Lcom/google/goggles/GogglesProtos$Audio;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$Audio;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2475
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Audio;->newBuilder()Lcom/google/goggles/GogglesProtos$Audio$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$Audio$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/GogglesProtos$Audio$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$Audio;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->access$3300(Lcom/google/goggles/GogglesProtos$Audio$Builder;)Lcom/google/goggles/GogglesProtos$Audio;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/GogglesProtos$Audio;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2437
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Audio;->newBuilder()Lcom/google/goggles/GogglesProtos$Audio$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$Audio$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$Audio$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$Audio;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->access$3300(Lcom/google/goggles/GogglesProtos$Audio$Builder;)Lcom/google/goggles/GogglesProtos$Audio;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$Audio;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2443
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Audio;->newBuilder()Lcom/google/goggles/GogglesProtos$Audio$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$Audio$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$Audio$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$Audio;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->access$3300(Lcom/google/goggles/GogglesProtos$Audio$Builder;)Lcom/google/goggles/GogglesProtos$Audio;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/GogglesProtos$Audio;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2426
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Audio;->newBuilder()Lcom/google/goggles/GogglesProtos$Audio$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$Audio$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$Audio$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$Audio;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->access$3300(Lcom/google/goggles/GogglesProtos$Audio$Builder;)Lcom/google/goggles/GogglesProtos$Audio;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$Audio;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2432
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Audio;->newBuilder()Lcom/google/goggles/GogglesProtos$Audio$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$Audio$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$Audio$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$Audio;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$Audio$Builder;->access$3300(Lcom/google/goggles/GogglesProtos$Audio$Builder;)Lcom/google/goggles/GogglesProtos$Audio;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getData()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 2350
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$Audio;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/GogglesProtos$Audio;
    .registers 2

    .prologue
    .line 2339
    sget-object v0, Lcom/google/goggles/GogglesProtos$Audio;->defaultInstance:Lcom/google/goggles/GogglesProtos$Audio;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2324
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Audio;->getDefaultInstanceForType()Lcom/google/goggles/GogglesProtos$Audio;

    move-result-object v0

    return-object v0
.end method

.method public getSampleRateHz()F
    .registers 2

    .prologue
    .line 2360
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Audio;->sampleRateHz_:F

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 2389
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Audio;->memoizedSerializedSize:I

    .line 2390
    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 2402
    :goto_6
    return v0

    .line 2392
    :cond_7
    const/4 v0, 0x0

    .line 2393
    iget v1, p0, Lcom/google/goggles/GogglesProtos$Audio;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_15

    .line 2394
    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$Audio;->data_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2397
    :cond_15
    iget v1, p0, Lcom/google/goggles/GogglesProtos$Audio;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_24

    .line 2398
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/goggles/GogglesProtos$Audio;->sampleRateHz_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2401
    :cond_24
    iput v0, p0, Lcom/google/goggles/GogglesProtos$Audio;->memoizedSerializedSize:I

    goto :goto_6
.end method

.method public hasData()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2347
    iget v1, p0, Lcom/google/goggles/GogglesProtos$Audio;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasSampleRateHz()Z
    .registers 3

    .prologue
    .line 2357
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Audio;->bitField0_:I

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
    const/4 v0, 0x1

    .line 2369
    iget-byte v1, p0, Lcom/google/goggles/GogglesProtos$Audio;->memoizedIsInitialized:B

    .line 2370
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 2373
    :goto_8
    return v0

    .line 2370
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 2372
    :cond_b
    iput-byte v0, p0, Lcom/google/goggles/GogglesProtos$Audio;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/goggles/GogglesProtos$Audio$Builder;
    .registers 2

    .prologue
    .line 2480
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Audio;->newBuilder()Lcom/google/goggles/GogglesProtos$Audio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2324
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Audio;->newBuilderForType()Lcom/google/goggles/GogglesProtos$Audio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/GogglesProtos$Audio$Builder;
    .registers 2

    .prologue
    .line 2484
    invoke-static {p0}, Lcom/google/goggles/GogglesProtos$Audio;->newBuilder(Lcom/google/goggles/GogglesProtos$Audio;)Lcom/google/goggles/GogglesProtos$Audio$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2324
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Audio;->toBuilder()Lcom/google/goggles/GogglesProtos$Audio$Builder;

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
    .line 2409
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 2378
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Audio;->getSerializedSize()I

    .line 2379
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Audio;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_f

    .line 2380
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$Audio;->data_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2382
    :cond_f
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Audio;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    .line 2383
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/goggles/GogglesProtos$Audio;->sampleRateHz_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 2385
    :cond_1c
    return-void
.end method
