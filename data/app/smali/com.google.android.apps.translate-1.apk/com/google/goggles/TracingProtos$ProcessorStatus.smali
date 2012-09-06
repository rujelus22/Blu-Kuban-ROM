.class public final Lcom/google/goggles/TracingProtos$ProcessorStatus;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "TracingProtos.java"

# interfaces
.implements Lcom/google/goggles/TracingProtos$ProcessorStatusOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/TracingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessorStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;,
        Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;
    }
.end annotation


# static fields
.field public static final CUMULATIVE_PROCESS_TIME_MS_FIELD_NUMBER:I = 0x2

.field public static final DUTY_PERIOD_FIELD_NUMBER:I = 0x4

.field public static final NUM_FRAMES_FIELD_NUMBER:I = 0x3

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/goggles/TracingProtos$ProcessorStatus;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private cumulativeProcessTimeMs_:I

.field private dutyPeriod_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private numFrames_:I

.field private type_:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2527
    new-instance v0, Lcom/google/goggles/TracingProtos$ProcessorStatus;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/TracingProtos$ProcessorStatus;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->defaultInstance:Lcom/google/goggles/TracingProtos$ProcessorStatus;

    .line 2528
    sget-object v0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->defaultInstance:Lcom/google/goggles/TracingProtos$ProcessorStatus;

    invoke-direct {v0}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->initFields()V

    .line 2529
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2042
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2149
    iput-byte v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->memoizedIsInitialized:B

    .line 2179
    iput v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->memoizedSerializedSize:I

    .line 2043
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;Lcom/google/goggles/TracingProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2037
    invoke-direct {p0, p1}, Lcom/google/goggles/TracingProtos$ProcessorStatus;-><init>(Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2044
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2149
    iput-byte v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->memoizedIsInitialized:B

    .line 2179
    iput v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->memoizedSerializedSize:I

    .line 2044
    return-void
.end method

.method static synthetic access$2902(Lcom/google/goggles/TracingProtos$ProcessorStatus;Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;)Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2037
    iput-object p1, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->type_:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/google/goggles/TracingProtos$ProcessorStatus;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2037
    iput p1, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->cumulativeProcessTimeMs_:I

    return p1
.end method

.method static synthetic access$3102(Lcom/google/goggles/TracingProtos$ProcessorStatus;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2037
    iput p1, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->numFrames_:I

    return p1
.end method

.method static synthetic access$3202(Lcom/google/goggles/TracingProtos$ProcessorStatus;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2037
    iput p1, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->dutyPeriod_:I

    return p1
.end method

.method static synthetic access$3302(Lcom/google/goggles/TracingProtos$ProcessorStatus;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 2037
    iput p1, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/TracingProtos$ProcessorStatus;
    .registers 1

    .prologue
    .line 2048
    sget-object v0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->defaultInstance:Lcom/google/goggles/TracingProtos$ProcessorStatus;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2144
    sget-object v0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;->BARCODE_SCANNER:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    iput-object v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->type_:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    .line 2145
    iput v1, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->cumulativeProcessTimeMs_:I

    .line 2146
    iput v1, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->numFrames_:I

    .line 2147
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->dutyPeriod_:I

    .line 2148
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;
    .registers 1

    .prologue
    .line 2279
    #calls: Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->create()Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;
    invoke-static {}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->access$2700()Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/TracingProtos$ProcessorStatus;)Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;
    .registers 2
    .parameter

    .prologue
    .line 2282
    invoke-static {}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->newBuilder()Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->mergeFrom(Lcom/google/goggles/TracingProtos$ProcessorStatus;)Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/TracingProtos$ProcessorStatus;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2248
    invoke-static {}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->newBuilder()Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    move-result-object v0

    .line 2249
    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2250
    #calls: Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$ProcessorStatus;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->access$2600(Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;)Lcom/google/goggles/TracingProtos$ProcessorStatus;

    move-result-object v0

    .line 2252
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$ProcessorStatus;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2259
    invoke-static {}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->newBuilder()Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    move-result-object v0

    .line 2260
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2261
    #calls: Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$ProcessorStatus;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->access$2600(Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;)Lcom/google/goggles/TracingProtos$ProcessorStatus;

    move-result-object v0

    .line 2263
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/TracingProtos$ProcessorStatus;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2215
    invoke-static {}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->newBuilder()Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    #calls: Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$ProcessorStatus;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->access$2600(Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;)Lcom/google/goggles/TracingProtos$ProcessorStatus;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$ProcessorStatus;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2221
    invoke-static {}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->newBuilder()Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    #calls: Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$ProcessorStatus;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->access$2600(Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;)Lcom/google/goggles/TracingProtos$ProcessorStatus;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/TracingProtos$ProcessorStatus;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2269
    invoke-static {}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->newBuilder()Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    #calls: Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$ProcessorStatus;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->access$2600(Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;)Lcom/google/goggles/TracingProtos$ProcessorStatus;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$ProcessorStatus;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2275
    invoke-static {}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->newBuilder()Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$ProcessorStatus;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->access$2600(Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;)Lcom/google/goggles/TracingProtos$ProcessorStatus;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/TracingProtos$ProcessorStatus;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2237
    invoke-static {}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->newBuilder()Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    #calls: Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$ProcessorStatus;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->access$2600(Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;)Lcom/google/goggles/TracingProtos$ProcessorStatus;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$ProcessorStatus;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2243
    invoke-static {}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->newBuilder()Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    #calls: Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$ProcessorStatus;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->access$2600(Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;)Lcom/google/goggles/TracingProtos$ProcessorStatus;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/TracingProtos$ProcessorStatus;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2226
    invoke-static {}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->newBuilder()Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    #calls: Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$ProcessorStatus;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->access$2600(Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;)Lcom/google/goggles/TracingProtos$ProcessorStatus;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/TracingProtos$ProcessorStatus;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2232
    invoke-static {}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->newBuilder()Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    #calls: Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->buildParsed()Lcom/google/goggles/TracingProtos$ProcessorStatus;
    invoke-static {v0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->access$2600(Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;)Lcom/google/goggles/TracingProtos$ProcessorStatus;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCumulativeProcessTimeMs()I
    .registers 2

    .prologue
    .line 2120
    iget v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->cumulativeProcessTimeMs_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/TracingProtos$ProcessorStatus;
    .registers 2

    .prologue
    .line 2052
    sget-object v0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->defaultInstance:Lcom/google/goggles/TracingProtos$ProcessorStatus;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2037
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->getDefaultInstanceForType()Lcom/google/goggles/TracingProtos$ProcessorStatus;

    move-result-object v0

    return-object v0
.end method

.method public getDutyPeriod()I
    .registers 2

    .prologue
    .line 2140
    iget v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->dutyPeriod_:I

    return v0
.end method

.method public getNumFrames()I
    .registers 2

    .prologue
    .line 2130
    iget v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->numFrames_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2181
    iget v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->memoizedSerializedSize:I

    .line 2182
    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 2202
    :goto_8
    return v0

    .line 2184
    :cond_9
    const/4 v0, 0x0

    .line 2185
    iget v1, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1b

    .line 2186
    iget-object v1, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->type_:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    invoke-virtual {v1}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2189
    :cond_1b
    iget v1, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_28

    .line 2190
    iget v1, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->cumulativeProcessTimeMs_:I

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2193
    :cond_28
    iget v1, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_36

    .line 2194
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->numFrames_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2197
    :cond_36
    iget v1, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_45

    .line 2198
    iget v1, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->dutyPeriod_:I

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2201
    :cond_45
    iput v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->memoizedSerializedSize:I

    goto :goto_8
.end method

.method public getType()Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;
    .registers 2

    .prologue
    .line 2110
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->type_:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    return-object v0
.end method

.method public hasCumulativeProcessTimeMs()Z
    .registers 3

    .prologue
    .line 2117
    iget v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->bitField0_:I

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

.method public hasDutyPeriod()Z
    .registers 3

    .prologue
    .line 2137
    iget v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->bitField0_:I

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

.method public hasNumFrames()Z
    .registers 3

    .prologue
    .line 2127
    iget v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2107
    iget v1, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2151
    iget-byte v2, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->memoizedIsInitialized:B

    .line 2152
    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    if-ne v2, v0, :cond_a

    .line 2159
    :goto_9
    return v0

    :cond_a
    move v0, v1

    .line 2152
    goto :goto_9

    .line 2154
    :cond_c
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->hasType()Z

    move-result v2

    if-nez v2, :cond_16

    .line 2155
    iput-byte v1, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->memoizedIsInitialized:B

    move v0, v1

    .line 2156
    goto :goto_9

    .line 2158
    :cond_16
    iput-byte v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;
    .registers 2

    .prologue
    .line 2280
    invoke-static {}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->newBuilder()Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2037
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->newBuilderForType()Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;
    .registers 2

    .prologue
    .line 2284
    invoke-static {p0}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->newBuilder(Lcom/google/goggles/TracingProtos$ProcessorStatus;)Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2037
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->toBuilder()Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

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
    .line 2209
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2164
    invoke-virtual {p0}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->getSerializedSize()I

    .line 2165
    iget v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 2166
    iget-object v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->type_:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    invoke-virtual {v0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2168
    :cond_15
    iget v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 2169
    iget v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->cumulativeProcessTimeMs_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2171
    :cond_20
    iget v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2c

    .line 2172
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->numFrames_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2174
    :cond_2c
    iget v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_39

    .line 2175
    iget v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus;->dutyPeriod_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2177
    :cond_39
    return-void
.end method
