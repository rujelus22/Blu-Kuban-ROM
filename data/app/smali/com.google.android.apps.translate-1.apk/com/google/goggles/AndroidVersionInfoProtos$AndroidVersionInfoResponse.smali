.class public final Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AndroidVersionInfoProtos.java"

# interfaces
.implements Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/AndroidVersionInfoProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AndroidVersionInfoResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;
    }
.end annotation


# static fields
.field public static final LATEST_VERSION_CODE_FIELD_NUMBER:I = 0x1

.field public static final SHOULD_UPGRADE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private latestVersionCode_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private shouldUpgrade_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 627
    new-instance v0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->defaultInstance:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    .line 628
    sget-object v0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->defaultInstance:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    invoke-direct {v0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->initFields()V

    .line 629
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 310
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 348
    iput-byte v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->memoizedIsInitialized:B

    .line 368
    iput v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->memoizedSerializedSize:I

    .line 311
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;Lcom/google/goggles/AndroidVersionInfoProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;-><init>(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 312
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 348
    iput-byte v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->memoizedIsInitialized:B

    .line 368
    iput v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->memoizedSerializedSize:I

    .line 312
    return-void
.end method

.method static synthetic access$1002(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 305
    iput p1, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->bitField0_:I

    return p1
.end method

.method static synthetic access$802(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 305
    iput p1, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->latestVersionCode_:I

    return p1
.end method

.method static synthetic access$902(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 305
    iput-boolean p1, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->shouldUpgrade_:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;
    .registers 1

    .prologue
    .line 316
    sget-object v0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->defaultInstance:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 345
    iput v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->latestVersionCode_:I

    .line 346
    iput-boolean v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->shouldUpgrade_:Z

    .line 347
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;
    .registers 1

    .prologue
    .line 460
    #calls: Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->create()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->access$600()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;
    .registers 2
    .parameter

    .prologue
    .line 463
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->newBuilder()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->mergeFrom(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 429
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->newBuilder()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    move-result-object v0

    .line 430
    invoke-virtual {v0, p0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 431
    #calls: Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->buildParsed()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;
    invoke-static {v0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->access$500(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    move-result-object v0

    .line 433
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 440
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->newBuilder()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    move-result-object v0

    .line 441
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 442
    #calls: Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->buildParsed()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;
    invoke-static {v0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->access$500(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    move-result-object v0

    .line 444
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 396
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->newBuilder()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    #calls: Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->buildParsed()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;
    invoke-static {v0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->access$500(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 402
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->newBuilder()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    #calls: Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->buildParsed()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;
    invoke-static {v0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->access$500(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 450
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->newBuilder()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    #calls: Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->buildParsed()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;
    invoke-static {v0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->access$500(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 456
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->newBuilder()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->buildParsed()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;
    invoke-static {v0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->access$500(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 418
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->newBuilder()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    #calls: Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->buildParsed()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;
    invoke-static {v0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->access$500(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 424
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->newBuilder()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    #calls: Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->buildParsed()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;
    invoke-static {v0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->access$500(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 407
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->newBuilder()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    #calls: Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->buildParsed()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;
    invoke-static {v0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->access$500(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 413
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->newBuilder()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    #calls: Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->buildParsed()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;
    invoke-static {v0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;->access$500(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;
    .registers 2

    .prologue
    .line 320
    sget-object v0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->defaultInstance:Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->getDefaultInstanceForType()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public getLatestVersionCode()I
    .registers 2

    .prologue
    .line 331
    iget v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->latestVersionCode_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 370
    iget v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->memoizedSerializedSize:I

    .line 371
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 383
    :goto_7
    return v0

    .line 373
    :cond_8
    const/4 v0, 0x0

    .line 374
    iget v1, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_16

    .line 375
    iget v1, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->latestVersionCode_:I

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 378
    :cond_16
    iget v1, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_23

    .line 379
    iget-boolean v1, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->shouldUpgrade_:Z

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 382
    :cond_23
    iput v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->memoizedSerializedSize:I

    goto :goto_7
.end method

.method public getShouldUpgrade()Z
    .registers 2

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->shouldUpgrade_:Z

    return v0
.end method

.method public hasLatestVersionCode()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 328
    iget v1, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasShouldUpgrade()Z
    .registers 3

    .prologue
    .line 338
    iget v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->bitField0_:I

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

    .line 350
    iget-byte v1, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->memoizedIsInitialized:B

    .line 351
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 354
    :goto_8
    return v0

    .line 351
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 353
    :cond_b
    iput-byte v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;
    .registers 2

    .prologue
    .line 461
    invoke-static {}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->newBuilder()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->newBuilderForType()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;
    .registers 2

    .prologue
    .line 465
    invoke-static {p0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->newBuilder(Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;)Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->toBuilder()Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse$Builder;

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
    .line 390
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 359
    invoke-virtual {p0}, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->getSerializedSize()I

    .line 360
    iget v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 361
    iget v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->latestVersionCode_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 363
    :cond_10
    iget v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1b

    .line 364
    iget-boolean v0, p0, Lcom/google/goggles/AndroidVersionInfoProtos$AndroidVersionInfoResponse;->shouldUpgrade_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 366
    :cond_1b
    return-void
.end method
