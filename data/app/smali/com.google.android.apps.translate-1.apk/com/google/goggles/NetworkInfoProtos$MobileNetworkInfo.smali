.class public final Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NetworkInfoProtos.java"

# interfaces
.implements Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/NetworkInfoProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobileNetworkInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;,
        Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;
    }
.end annotation


# static fields
.field public static final CARRIER_NAME_FIELD_NUMBER:I = 0x2

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private carrierName_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 473
    new-instance v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->defaultInstance:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    .line 474
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->defaultInstance:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    invoke-direct {v0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->initFields()V

    .line 475
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 27
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 172
    iput-byte v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->memoizedIsInitialized:B

    .line 192
    iput v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->memoizedSerializedSize:I

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;Lcom/google/goggles/NetworkInfoProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;-><init>(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 29
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 172
    iput-byte v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->memoizedIsInitialized:B

    .line 192
    iput v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->memoizedSerializedSize:I

    .line 29
    return-void
.end method

.method static synthetic access$302(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->type_:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->carrierName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 22
    iput p1, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->bitField0_:I

    return p1
.end method

.method private getCarrierNameBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->carrierName_:Ljava/lang/Object;

    .line 158
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 159
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 161
    iput-object v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->carrierName_:Ljava/lang/Object;

    .line 164
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method public static getDefaultInstance()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->defaultInstance:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 169
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->UNKNOWN:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    iput-object v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->type_:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    .line 170
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->carrierName_:Ljava/lang/Object;

    .line 171
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;
    .registers 1

    .prologue
    .line 284
    #calls: Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->create()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->access$100()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;
    .registers 2
    .parameter

    .prologue
    .line 287
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->newBuilder()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->mergeFrom(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->newBuilder()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    move-result-object v0

    .line 254
    invoke-virtual {v0, p0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 255
    #calls: Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->buildParsed()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;
    invoke-static {v0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->access$000(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    move-result-object v0

    .line 257
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->newBuilder()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    move-result-object v0

    .line 265
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 266
    #calls: Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->buildParsed()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;
    invoke-static {v0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->access$000(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    move-result-object v0

    .line 268
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 220
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->newBuilder()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    #calls: Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->buildParsed()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;
    invoke-static {v0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->access$000(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->newBuilder()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    #calls: Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->buildParsed()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;
    invoke-static {v0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->access$000(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->newBuilder()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    #calls: Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->buildParsed()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;
    invoke-static {v0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->access$000(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->newBuilder()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->buildParsed()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;
    invoke-static {v0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->access$000(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->newBuilder()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    #calls: Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->buildParsed()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;
    invoke-static {v0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->access$000(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->newBuilder()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    #calls: Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->buildParsed()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;
    invoke-static {v0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->access$000(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->newBuilder()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    #calls: Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->buildParsed()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;
    invoke-static {v0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->access$000(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 237
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->newBuilder()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    #calls: Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->buildParsed()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;
    invoke-static {v0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;->access$000(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCarrierName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->carrierName_:Ljava/lang/Object;

    .line 144
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 145
    check-cast v0, Ljava/lang/String;

    .line 153
    :goto_8
    return-object v0

    .line 147
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 149
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 151
    iput-object v1, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->carrierName_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 153
    goto :goto_8
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;
    .registers 2

    .prologue
    .line 37
    sget-object v0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->defaultInstance:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->getDefaultInstanceForType()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 194
    iget v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->memoizedSerializedSize:I

    .line 195
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 207
    :goto_7
    return v0

    .line 197
    :cond_8
    const/4 v0, 0x0

    .line 198
    iget v1, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1a

    .line 199
    iget-object v1, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->type_:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    invoke-virtual {v1}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 202
    :cond_1a
    iget v1, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_29

    .line 203
    invoke-direct {p0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->getCarrierNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 206
    :cond_29
    iput v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->memoizedSerializedSize:I

    goto :goto_7
.end method

.method public getType()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->type_:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    return-object v0
.end method

.method public hasCarrierName()Z
    .registers 3

    .prologue
    .line 140
    iget v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->bitField0_:I

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

    .line 130
    iget v1, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->bitField0_:I

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

    .line 174
    iget-byte v1, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->memoizedIsInitialized:B

    .line 175
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 178
    :goto_8
    return v0

    .line 175
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 177
    :cond_b
    iput-byte v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;
    .registers 2

    .prologue
    .line 285
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->newBuilder()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->newBuilderForType()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;
    .registers 2

    .prologue
    .line 289
    invoke-static {p0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->newBuilder(Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;)Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->toBuilder()Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Builder;

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
    .line 214
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

    .line 183
    invoke-virtual {p0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->getSerializedSize()I

    .line 184
    iget v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 185
    iget-object v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->type_:Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;

    invoke-virtual {v0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 187
    :cond_14
    iget v0, p0, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_21

    .line 188
    invoke-direct {p0}, Lcom/google/goggles/NetworkInfoProtos$MobileNetworkInfo;->getCarrierNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 190
    :cond_21
    return-void
.end method
