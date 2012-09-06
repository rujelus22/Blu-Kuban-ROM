.class public final Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DeviceInfoProtos.java"

# interfaces
.implements Lcom/google/goggles/DeviceInfoProtos$DeviceInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/DeviceInfoProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;
    }
.end annotation


# static fields
.field public static final BUILD_VERSION_FIELD_NUMBER:I = 0x2

.field public static final MODEL_FIELD_NUMBER:I = 0x4

.field public static final PLATFORM_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private buildVersion_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private model_:Ljava/lang/Object;

.field private platform_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 512
    new-instance v0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->defaultInstance:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    .line 513
    sget-object v0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->defaultInstance:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    invoke-direct {v0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->initFields()V

    .line 514
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 31
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 146
    iput-byte v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->memoizedIsInitialized:B

    .line 169
    iput v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->memoizedSerializedSize:I

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;Lcom/google/goggles/DeviceInfoProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;-><init>(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 33
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 146
    iput-byte v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->memoizedIsInitialized:B

    .line 169
    iput v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->memoizedSerializedSize:I

    .line 33
    return-void
.end method

.method static synthetic access$302(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->platform_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->buildVersion_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->model_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 26
    iput p1, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->bitField0_:I

    return p1
.end method

.method private getBuildVersionBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->buildVersion_:Ljava/lang/Object;

    .line 99
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 100
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 102
    iput-object v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->buildVersion_:Ljava/lang/Object;

    .line 105
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method public static getDefaultInstance()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->defaultInstance:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    return-object v0
.end method

.method private getModelBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->model_:Ljava/lang/Object;

    .line 131
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 132
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 134
    iput-object v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->model_:Ljava/lang/Object;

    .line 137
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getPlatformBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->platform_:Ljava/lang/Object;

    .line 67
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 68
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->platform_:Ljava/lang/Object;

    .line 73
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 142
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->platform_:Ljava/lang/Object;

    .line 143
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->buildVersion_:Ljava/lang/Object;

    .line 144
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->model_:Ljava/lang/Object;

    .line 145
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;
    .registers 1

    .prologue
    .line 265
    #calls: Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->create()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;
    invoke-static {}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->access$100()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;
    .registers 2
    .parameter

    .prologue
    .line 268
    invoke-static {}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->newBuilder()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->mergeFrom(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-static {}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->newBuilder()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    move-result-object v0

    .line 235
    invoke-virtual {v0, p0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 236
    #calls: Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->buildParsed()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
    invoke-static {v0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->access$000(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    .line 238
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-static {}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->newBuilder()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    move-result-object v0

    .line 246
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 247
    #calls: Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->buildParsed()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
    invoke-static {v0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->access$000(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    .line 249
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-static {}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->newBuilder()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    #calls: Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->buildParsed()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
    invoke-static {v0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->access$000(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-static {}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->newBuilder()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    #calls: Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->buildParsed()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
    invoke-static {v0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->access$000(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-static {}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->newBuilder()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    #calls: Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->buildParsed()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
    invoke-static {v0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->access$000(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-static {}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->newBuilder()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->buildParsed()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
    invoke-static {v0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->access$000(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-static {}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->newBuilder()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    #calls: Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->buildParsed()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
    invoke-static {v0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->access$000(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-static {}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->newBuilder()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    #calls: Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->buildParsed()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
    invoke-static {v0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->access$000(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-static {}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->newBuilder()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    #calls: Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->buildParsed()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
    invoke-static {v0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->access$000(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-static {}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->newBuilder()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    #calls: Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->buildParsed()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
    invoke-static {v0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;->access$000(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBuildVersion()Ljava/lang/String;
    .registers 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->buildVersion_:Ljava/lang/Object;

    .line 85
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 86
    check-cast v0, Ljava/lang/String;

    .line 94
    :goto_8
    return-object v0

    .line 88
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 90
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 92
    iput-object v1, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->buildVersion_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 94
    goto :goto_8
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
    .registers 2

    .prologue
    .line 41
    sget-object v0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->defaultInstance:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->getDefaultInstanceForType()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .registers 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->model_:Ljava/lang/Object;

    .line 117
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 118
    check-cast v0, Ljava/lang/String;

    .line 126
    :goto_8
    return-object v0

    .line 120
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 122
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 124
    iput-object v1, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->model_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 126
    goto :goto_8
.end method

.method public getPlatform()Ljava/lang/String;
    .registers 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->platform_:Ljava/lang/Object;

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
    iput-object v1, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->platform_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 62
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 171
    iget v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->memoizedSerializedSize:I

    .line 172
    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 188
    :goto_8
    return v0

    .line 174
    :cond_9
    const/4 v0, 0x0

    .line 175
    iget v1, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_19

    .line 176
    invoke-direct {p0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->getPlatformBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 179
    :cond_19
    iget v1, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_28

    .line 180
    invoke-direct {p0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->getBuildVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 183
    :cond_28
    iget v1, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_37

    .line 184
    invoke-direct {p0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->getModelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 187
    :cond_37
    iput v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->memoizedSerializedSize:I

    goto :goto_8
.end method

.method public hasBuildVersion()Z
    .registers 3

    .prologue
    .line 81
    iget v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->bitField0_:I

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

.method public hasModel()Z
    .registers 3

    .prologue
    .line 113
    iget v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->bitField0_:I

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

.method public hasPlatform()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 49
    iget v1, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->bitField0_:I

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
    const/4 v0, 0x1

    .line 148
    iget-byte v1, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->memoizedIsInitialized:B

    .line 149
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 152
    :goto_8
    return v0

    .line 149
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 151
    :cond_b
    iput-byte v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;
    .registers 2

    .prologue
    .line 266
    invoke-static {}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->newBuilder()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->newBuilderForType()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;
    .registers 2

    .prologue
    .line 270
    invoke-static {p0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->newBuilder(Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->toBuilder()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo$Builder;

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
    .line 195
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

    .line 157
    invoke-virtual {p0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->getSerializedSize()I

    .line 158
    iget v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 159
    invoke-direct {p0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->getPlatformBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 161
    :cond_13
    iget v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 162
    invoke-direct {p0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->getBuildVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 164
    :cond_20
    iget v0, p0, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2d

    .line 165
    invoke-direct {p0}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->getModelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 167
    :cond_2d
    return-void
.end method
