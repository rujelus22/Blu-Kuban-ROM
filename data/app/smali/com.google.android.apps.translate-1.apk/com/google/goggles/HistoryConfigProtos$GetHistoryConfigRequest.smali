.class public final Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "HistoryConfigProtos.java"

# interfaces
.implements Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/HistoryConfigProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetHistoryConfigRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 516
    new-instance v0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->defaultInstance:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    .line 517
    sget-object v0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->defaultInstance:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    invoke-direct {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->initFields()V

    .line 518
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 310
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 325
    iput-byte v0, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->memoizedIsInitialized:B

    .line 339
    iput v0, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->memoizedSerializedSize:I

    .line 311
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;Lcom/google/goggles/HistoryConfigProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;-><init>(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 312
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 325
    iput-byte v0, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->memoizedIsInitialized:B

    .line 339
    iput v0, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->memoizedSerializedSize:I

    .line 312
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;
    .registers 1

    .prologue
    .line 316
    sget-object v0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->defaultInstance:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 324
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;
    .registers 1

    .prologue
    .line 423
    #calls: Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->create()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->access$600()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;
    .registers 2
    .parameter

    .prologue
    .line 426
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->mergeFrom(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    move-result-object v0

    .line 393
    invoke-virtual {v0, p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 394
    #calls: Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->access$500(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    move-result-object v0

    .line 396
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    move-result-object v0

    .line 404
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 405
    #calls: Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->access$500(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    move-result-object v0

    .line 407
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 359
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    #calls: Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->access$500(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 365
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    #calls: Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->access$500(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    #calls: Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->access$500(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 419
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->access$500(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    #calls: Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->access$500(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    #calls: Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->access$500(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 370
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    #calls: Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->access$500(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 376
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    #calls: Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;->access$500(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;
    .registers 2

    .prologue
    .line 320
    sget-object v0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->defaultInstance:Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->getDefaultInstanceForType()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 3

    .prologue
    .line 341
    iget v0, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->memoizedSerializedSize:I

    .line 342
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 346
    :goto_5
    return v0

    .line 344
    :cond_6
    const/4 v0, 0x0

    .line 345
    iput v0, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->memoizedSerializedSize:I

    goto :goto_5
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 327
    iget-byte v1, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->memoizedIsInitialized:B

    .line 328
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 331
    :goto_8
    return v0

    .line 328
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 330
    :cond_b
    iput-byte v0, p0, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;
    .registers 2

    .prologue
    .line 424
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->newBuilderForType()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;
    .registers 2

    .prologue
    .line 428
    invoke-static {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->newBuilder(Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;)Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->toBuilder()Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest$Builder;

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
    .line 353
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$GetHistoryConfigRequest;->getSerializedSize()I

    .line 337
    return-void
.end method
