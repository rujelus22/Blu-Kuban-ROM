.class public final Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "GogglesReplayProtos.java"

# interfaces
.implements Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/GogglesReplayProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GogglesReplayRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;
    }
.end annotation


# static fields
.field public static final GOGGLES_CONFIG_FIELD_NUMBER:I = 0x3

.field public static final MS_SINCE_EPOCH_FIELD_NUMBER:I = 0x4

.field public static final QUERY_ID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private gogglesConfig_:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private msSinceEpoch_:J

.field private queryId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 476
    new-instance v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->defaultInstance:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    .line 477
    sget-object v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->defaultInstance:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    invoke-direct {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->initFields()V

    .line 478
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 31
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 102
    iput-byte v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->memoizedIsInitialized:B

    .line 131
    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->memoizedSerializedSize:I

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;Lcom/google/goggles/GogglesReplayProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;-><init>(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 33
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 102
    iput-byte v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->memoizedIsInitialized:B

    .line 131
    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->memoizedSerializedSize:I

    .line 33
    return-void
.end method

.method static synthetic access$302(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->queryId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;)Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->gogglesConfig_:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;J)J
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->msSinceEpoch_:J

    return-wide p1
.end method

.method static synthetic access$602(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 26
    iput p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->defaultInstance:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    return-object v0
.end method

.method private getQueryIdBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->queryId_:Ljava/lang/Object;

    .line 67
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 68
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->queryId_:Ljava/lang/Object;

    .line 73
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->queryId_:Ljava/lang/Object;

    .line 99
    invoke-static {}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->getDefaultInstance()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->gogglesConfig_:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    .line 100
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->msSinceEpoch_:J

    .line 101
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;
    .registers 1

    .prologue
    .line 227
    #calls: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->create()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->access$100()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;
    .registers 2
    .parameter

    .prologue
    .line 230
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->mergeFrom(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    move-result-object v0

    .line 197
    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 198
    #calls: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->buildParsed()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;
    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->access$000(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    move-result-object v0

    .line 200
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    move-result-object v0

    .line 208
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 209
    #calls: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->buildParsed()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;
    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->access$000(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    move-result-object v0

    .line 211
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    #calls: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->buildParsed()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;
    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->access$000(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    #calls: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->buildParsed()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;
    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->access$000(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    #calls: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->buildParsed()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;
    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->access$000(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->buildParsed()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;
    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->access$000(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    #calls: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->buildParsed()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;
    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->access$000(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    #calls: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->buildParsed()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;
    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->access$000(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    #calls: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->buildParsed()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;
    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->access$000(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    #calls: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->buildParsed()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;
    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;->access$000(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;
    .registers 2

    .prologue
    .line 41
    sget-object v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->defaultInstance:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->getDefaultInstanceForType()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;

    move-result-object v0

    return-object v0
.end method

.method public getGogglesConfig()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->gogglesConfig_:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    return-object v0
.end method

.method public getMsSinceEpoch()J
    .registers 3

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->msSinceEpoch_:J

    return-wide v0
.end method

.method public getQueryId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->queryId_:Ljava/lang/Object;

    .line 53
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 54
    check-cast v0, Ljava/lang/String;

    .line 62
    :goto_8
    return-object v0

    .line 56
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 58
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 60
    iput-object v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->queryId_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 62
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 133
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->memoizedSerializedSize:I

    .line 134
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 150
    :goto_7
    return v0

    .line 136
    :cond_8
    const/4 v0, 0x0

    .line 137
    iget v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_18

    .line 138
    invoke-direct {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->getQueryIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 141
    :cond_18
    iget v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_27

    .line 142
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->gogglesConfig_:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 145
    :cond_27
    iget v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v3, :cond_34

    .line 146
    iget-wide v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->msSinceEpoch_:J

    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 149
    :cond_34
    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->memoizedSerializedSize:I

    goto :goto_7
.end method

.method public hasGogglesConfig()Z
    .registers 3

    .prologue
    .line 81
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->bitField0_:I

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

.method public hasMsSinceEpoch()Z
    .registers 3

    .prologue
    .line 91
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->bitField0_:I

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

.method public hasQueryId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 49
    iget v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->bitField0_:I

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

    .line 104
    iget-byte v2, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->memoizedIsInitialized:B

    .line 105
    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    if-ne v2, v0, :cond_a

    .line 114
    :goto_9
    return v0

    :cond_a
    move v0, v1

    .line 105
    goto :goto_9

    .line 107
    :cond_c
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->hasGogglesConfig()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 108
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->getGogglesConfig()Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_20

    .line 109
    iput-byte v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->memoizedIsInitialized:B

    move v0, v1

    .line 110
    goto :goto_9

    .line 113
    :cond_20
    iput-byte v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;
    .registers 2

    .prologue
    .line 228
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->newBuilderForType()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;
    .registers 2

    .prologue
    .line 232
    invoke-static {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->newBuilder(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->toBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest$Builder;

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
    .line 157
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
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 119
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->getSerializedSize()I

    .line 120
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 121
    invoke-direct {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->getQueryIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 123
    :cond_12
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f

    .line 124
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->gogglesConfig_:Lcom/google/goggles/GogglesConfigProtos$GogglesConfig;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 126
    :cond_1f
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v2, :cond_2a

    .line 127
    iget-wide v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayRequest;->msSinceEpoch_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 129
    :cond_2a
    return-void
.end method
