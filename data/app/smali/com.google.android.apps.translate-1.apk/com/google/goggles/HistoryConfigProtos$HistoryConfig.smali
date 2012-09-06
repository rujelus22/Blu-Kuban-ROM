.class public final Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "HistoryConfigProtos.java"

# interfaces
.implements Lcom/google/goggles/HistoryConfigProtos$HistoryConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/HistoryConfigProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoryConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;
    }
.end annotation


# static fields
.field public static final RECORDING_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private recording_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 295
    new-instance v0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->defaultInstance:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    .line 296
    sget-object v0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->defaultInstance:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    invoke-direct {v0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->initFields()V

    .line 297
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 23
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 50
    iput-byte v0, p0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->memoizedIsInitialized:B

    .line 71
    iput v0, p0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->memoizedSerializedSize:I

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;Lcom/google/goggles/HistoryConfigProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;-><init>(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 25
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 50
    iput-byte v0, p0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->memoizedIsInitialized:B

    .line 71
    iput v0, p0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->memoizedSerializedSize:I

    .line 25
    return-void
.end method

.method static synthetic access$302(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->recording_:Z

    return p1
.end method

.method static synthetic access$402(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 18
    iput p1, p0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->defaultInstance:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->recording_:Z

    .line 49
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;
    .registers 1

    .prologue
    .line 159
    #calls: Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->create()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->access$100()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;
    .registers 2
    .parameter

    .prologue
    .line 162
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->mergeFrom(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {v0, p0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 130
    #calls: Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->access$000(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v0

    .line 132
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    move-result-object v0

    .line 140
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 141
    #calls: Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->access$000(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v0

    .line 143
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    #calls: Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->access$000(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    #calls: Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->access$000(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    #calls: Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->access$000(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->access$000(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    #calls: Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->access$000(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    #calls: Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->access$000(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    #calls: Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->access$000(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    #calls: Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->access$000(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;
    .registers 2

    .prologue
    .line 33
    sget-object v0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->defaultInstance:Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->getDefaultInstanceForType()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v0

    return-object v0
.end method

.method public getRecording()Z
    .registers 2

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->recording_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 73
    iget v0, p0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->memoizedSerializedSize:I

    .line 74
    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 82
    :goto_6
    return v0

    .line 76
    :cond_7
    const/4 v0, 0x0

    .line 77
    iget v1, p0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_15

    .line 78
    iget-boolean v1, p0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->recording_:Z

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    :cond_15
    iput v0, p0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->memoizedSerializedSize:I

    goto :goto_6
.end method

.method public hasRecording()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 41
    iget v1, p0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->bitField0_:I

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

    .line 52
    iget-byte v2, p0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->memoizedIsInitialized:B

    .line 53
    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    if-ne v2, v0, :cond_a

    .line 60
    :goto_9
    return v0

    :cond_a
    move v0, v1

    .line 53
    goto :goto_9

    .line 55
    :cond_c
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->hasRecording()Z

    move-result v2

    if-nez v2, :cond_16

    .line 56
    iput-byte v1, p0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->memoizedIsInitialized:B

    move v0, v1

    .line 57
    goto :goto_9

    .line 59
    :cond_16
    iput-byte v0, p0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;
    .registers 2

    .prologue
    .line 160
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->newBuilder()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->newBuilderForType()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;
    .registers 2

    .prologue
    .line 164
    invoke-static {p0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->newBuilder(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->toBuilder()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

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
    .line 89
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

    .line 65
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->getSerializedSize()I

    .line 66
    iget v0, p0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_f

    .line 67
    iget-boolean v0, p0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->recording_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 69
    :cond_f
    return-void
.end method
