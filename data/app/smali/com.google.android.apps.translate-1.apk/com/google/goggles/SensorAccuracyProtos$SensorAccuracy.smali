.class public final Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SensorAccuracyProtos.java"

# interfaces
.implements Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/SensorAccuracyProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SensorAccuracy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;,
        Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;
    }
.end annotation


# static fields
.field public static final DISCRETE_ACCURACY_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private discreteAccuracy_:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 341
    new-instance v0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->defaultInstance:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    .line 342
    sget-object v0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->defaultInstance:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    invoke-direct {v0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->initFields()V

    .line 343
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 23
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 97
    iput-byte v0, p0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->memoizedIsInitialized:B

    .line 114
    iput v0, p0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->memoizedSerializedSize:I

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;Lcom/google/goggles/SensorAccuracyProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;-><init>(Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 25
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 97
    iput-byte v0, p0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->memoizedIsInitialized:B

    .line 114
    iput v0, p0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->memoizedSerializedSize:I

    .line 25
    return-void
.end method

.method static synthetic access$302(Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->discreteAccuracy_:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 18
    iput p1, p0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->defaultInstance:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 95
    sget-object v0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;->MEDIUM:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    iput-object v0, p0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->discreteAccuracy_:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    .line 96
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;
    .registers 1

    .prologue
    .line 202
    #calls: Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->create()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;
    invoke-static {}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->access$100()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;
    .registers 2
    .parameter

    .prologue
    .line 205
    invoke-static {}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->newBuilder()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->mergeFrom(Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-static {}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->newBuilder()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    move-result-object v0

    .line 172
    invoke-virtual {v0, p0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 173
    #calls: Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->buildParsed()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;
    invoke-static {v0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->access$000(Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    move-result-object v0

    .line 175
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-static {}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->newBuilder()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    move-result-object v0

    .line 183
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 184
    #calls: Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->buildParsed()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;
    invoke-static {v0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->access$000(Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    move-result-object v0

    .line 186
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->newBuilder()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    #calls: Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->buildParsed()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;
    invoke-static {v0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->access$000(Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-static {}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->newBuilder()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    #calls: Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->buildParsed()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;
    invoke-static {v0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->access$000(Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-static {}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->newBuilder()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    #calls: Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->buildParsed()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;
    invoke-static {v0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->access$000(Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-static {}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->newBuilder()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->buildParsed()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;
    invoke-static {v0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->access$000(Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-static {}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->newBuilder()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    #calls: Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->buildParsed()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;
    invoke-static {v0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->access$000(Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-static {}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->newBuilder()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    #calls: Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->buildParsed()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;
    invoke-static {v0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->access$000(Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->newBuilder()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    #calls: Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->buildParsed()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;
    invoke-static {v0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->access$000(Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-static {}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->newBuilder()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    #calls: Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->buildParsed()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;
    invoke-static {v0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->access$000(Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;
    .registers 2

    .prologue
    .line 33
    sget-object v0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->defaultInstance:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->getDefaultInstanceForType()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    move-result-object v0

    return-object v0
.end method

.method public getDiscreteAccuracy()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->discreteAccuracy_:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 116
    iget v0, p0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->memoizedSerializedSize:I

    .line 117
    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 125
    :goto_6
    return v0

    .line 119
    :cond_7
    const/4 v0, 0x0

    .line 120
    iget v1, p0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_19

    .line 121
    iget-object v1, p0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->discreteAccuracy_:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    invoke-virtual {v1}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 124
    :cond_19
    iput v0, p0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->memoizedSerializedSize:I

    goto :goto_6
.end method

.method public hasDiscreteAccuracy()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 88
    iget v1, p0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->bitField0_:I

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

    .line 99
    iget-byte v1, p0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->memoizedIsInitialized:B

    .line 100
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 103
    :goto_8
    return v0

    .line 100
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 102
    :cond_b
    iput-byte v0, p0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;
    .registers 2

    .prologue
    .line 203
    invoke-static {}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->newBuilder()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->newBuilderForType()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;
    .registers 2

    .prologue
    .line 207
    invoke-static {p0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->newBuilder(Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->toBuilder()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

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
    .line 132
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

    .line 108
    invoke-virtual {p0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->getSerializedSize()I

    .line 109
    iget v0, p0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 110
    iget-object v0, p0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->discreteAccuracy_:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    invoke-virtual {v0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 112
    :cond_13
    return-void
.end method
