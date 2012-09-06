.class public final Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NativeClientLoggingProtos.java"

# interfaces
.implements Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/NativeClientLoggingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NativeClientLogEventResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2765
    new-instance v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;->defaultInstance:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;

    .line 2766
    sget-object v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;->defaultInstance:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;

    invoke-direct {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;->initFields()V

    .line 2767
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2559
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2574
    iput-byte v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;->memoizedIsInitialized:B

    .line 2588
    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;->memoizedSerializedSize:I

    .line 2560
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;Lcom/google/goggles/NativeClientLoggingProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2554
    invoke-direct {p0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;-><init>(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2561
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2574
    iput-byte v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;->memoizedIsInitialized:B

    .line 2588
    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;->memoizedSerializedSize:I

    .line 2561
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;
    .registers 1

    .prologue
    .line 2565
    sget-object v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;->defaultInstance:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 2573
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;
    .registers 1

    .prologue
    .line 2672
    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->create()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->access$3400()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;
    .registers 2
    .parameter

    .prologue
    .line 2675
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->mergeFrom(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2641
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

    move-result-object v0

    .line 2642
    invoke-virtual {v0, p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2643
    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->access$3300(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;

    move-result-object v0

    .line 2645
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2652
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

    move-result-object v0

    .line 2653
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2654
    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->access$3300(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;

    move-result-object v0

    .line 2656
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2608
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->access$3300(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2614
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->access$3300(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2662
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->access$3300(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2668
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->access$3300(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2630
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->access$3300(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2636
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->access$3300(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2619
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->access$3300(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2625
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;->access$3300(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;
    .registers 2

    .prologue
    .line 2569
    sget-object v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;->defaultInstance:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2554
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;->getDefaultInstanceForType()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 3

    .prologue
    .line 2590
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;->memoizedSerializedSize:I

    .line 2591
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 2595
    :goto_5
    return v0

    .line 2593
    :cond_6
    const/4 v0, 0x0

    .line 2594
    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;->memoizedSerializedSize:I

    goto :goto_5
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 2576
    iget-byte v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;->memoizedIsInitialized:B

    .line 2577
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 2580
    :goto_8
    return v0

    .line 2577
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 2579
    :cond_b
    iput-byte v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;
    .registers 2

    .prologue
    .line 2673
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2554
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;->newBuilderForType()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;
    .registers 2

    .prologue
    .line 2677
    invoke-static {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;->newBuilder(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2554
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;->toBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse$Builder;

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
    .line 2602
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
    .line 2585
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;->getSerializedSize()I

    .line 2586
    return-void
.end method
