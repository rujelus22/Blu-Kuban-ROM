.class public final Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ExtendedGogglesProtos.java"

# interfaces
.implements Lcom/google/goggles/ExtendedGogglesProtos$TrackedResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/ExtendedGogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackedResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;
    }
.end annotation


# static fields
.field public static final BOUNDING_BOX_FIELD_NUMBER:I = 0x2

.field public static final RESULT_ID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private resultId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 421
    new-instance v0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->defaultInstance:Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    .line 422
    sget-object v0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->defaultInstance:Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    invoke-direct {v0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->initFields()V

    .line 423
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 29
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 89
    iput-byte v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->memoizedIsInitialized:B

    .line 115
    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->memoizedSerializedSize:I

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;Lcom/google/goggles/ExtendedGogglesProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;-><init>(Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 31
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 89
    iput-byte v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->memoizedIsInitialized:B

    .line 115
    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->memoizedSerializedSize:I

    .line 31
    return-void
.end method

.method static synthetic access$302(Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->resultId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 24
    iput p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->defaultInstance:Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    return-object v0
.end method

.method private getResultIdBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->resultId_:Ljava/lang/Object;

    .line 65
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 66
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->resultId_:Ljava/lang/Object;

    .line 71
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->resultId_:Ljava/lang/Object;

    .line 87
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getDefaultInstance()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 88
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;
    .registers 1

    .prologue
    .line 207
    #calls: Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->create()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->access$100()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;
    .registers 2
    .parameter

    .prologue
    .line 210
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->mergeFrom(Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    move-result-object v0

    .line 177
    invoke-virtual {v0, p0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 178
    #calls: Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->access$000(Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    move-result-object v0

    .line 180
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    move-result-object v0

    .line 188
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 189
    #calls: Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->access$000(Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    move-result-object v0

    .line 191
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    #calls: Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->access$000(Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    #calls: Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->access$000(Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    #calls: Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->access$000(Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->access$000(Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    #calls: Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->access$000(Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    #calls: Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->access$000(Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    #calls: Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->access$000(Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    #calls: Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->access$000(Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBoundingBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;
    .registers 2

    .prologue
    .line 39
    sget-object v0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->defaultInstance:Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->getDefaultInstanceForType()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    move-result-object v0

    return-object v0
.end method

.method public getResultId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->resultId_:Ljava/lang/Object;

    .line 51
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 52
    check-cast v0, Ljava/lang/String;

    .line 60
    :goto_8
    return-object v0

    .line 54
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 56
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 58
    iput-object v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->resultId_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 60
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 117
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->memoizedSerializedSize:I

    .line 118
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 130
    :goto_7
    return v0

    .line 120
    :cond_8
    const/4 v0, 0x0

    .line 121
    iget v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_18

    .line 122
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->getResultIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 125
    :cond_18
    iget v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_25

    .line 126
    iget-object v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 129
    :cond_25
    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->memoizedSerializedSize:I

    goto :goto_7
.end method

.method public hasBoundingBox()Z
    .registers 3

    .prologue
    .line 79
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->bitField0_:I

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

.method public hasResultId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 47
    iget v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->bitField0_:I

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

    .line 91
    iget-byte v2, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->memoizedIsInitialized:B

    .line 92
    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    if-ne v2, v0, :cond_a

    .line 101
    :goto_9
    return v0

    :cond_a
    move v0, v1

    .line 92
    goto :goto_9

    .line 94
    :cond_c
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->hasBoundingBox()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 95
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->getBoundingBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_20

    .line 96
    iput-byte v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->memoizedIsInitialized:B

    move v0, v1

    .line 97
    goto :goto_9

    .line 100
    :cond_20
    iput-byte v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;
    .registers 2

    .prologue
    .line 208
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->newBuilderForType()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;
    .registers 2

    .prologue
    .line 212
    invoke-static {p0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->newBuilder(Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->toBuilder()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

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
    .line 137
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

    .line 106
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->getSerializedSize()I

    .line 107
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 108
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->getResultIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 110
    :cond_12
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 111
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->boundingBox_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 113
    :cond_1d
    return-void
.end method
