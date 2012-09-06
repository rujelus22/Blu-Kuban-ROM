.class public final Lcom/google/goggles/OrientationProtos$Orientation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "OrientationProtos.java"

# interfaces
.implements Lcom/google/goggles/OrientationProtos$OrientationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/OrientationProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/OrientationProtos$Orientation$Builder;
    }
.end annotation


# static fields
.field public static final AZIMUTH_DEGREES_FIELD_NUMBER:I = 0x1

.field public static final PITCH_DEGREES_FIELD_NUMBER:I = 0x2

.field public static final ROLL_DEGREES_FIELD_NUMBER:I = 0x3

.field public static final SENSOR_ACCURACY_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/google/goggles/OrientationProtos$Orientation;

.field private static final serialVersionUID:J


# instance fields
.field private azimuthDegrees_:F

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private pitchDegrees_:F

.field private rollDegrees_:F

.field private sensorAccuracy_:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 484
    new-instance v0, Lcom/google/goggles/OrientationProtos$Orientation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/OrientationProtos$Orientation;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/OrientationProtos$Orientation;->defaultInstance:Lcom/google/goggles/OrientationProtos$Orientation;

    .line 485
    sget-object v0, Lcom/google/goggles/OrientationProtos$Orientation;->defaultInstance:Lcom/google/goggles/OrientationProtos$Orientation;

    invoke-direct {v0}, Lcom/google/goggles/OrientationProtos$Orientation;->initFields()V

    .line 486
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/OrientationProtos$Orientation$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 35
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 95
    iput-byte v0, p0, Lcom/google/goggles/OrientationProtos$Orientation;->memoizedIsInitialized:B

    .line 121
    iput v0, p0, Lcom/google/goggles/OrientationProtos$Orientation;->memoizedSerializedSize:I

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/OrientationProtos$Orientation$Builder;Lcom/google/goggles/OrientationProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/goggles/OrientationProtos$Orientation;-><init>(Lcom/google/goggles/OrientationProtos$Orientation$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 37
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 95
    iput-byte v0, p0, Lcom/google/goggles/OrientationProtos$Orientation;->memoizedIsInitialized:B

    .line 121
    iput v0, p0, Lcom/google/goggles/OrientationProtos$Orientation;->memoizedSerializedSize:I

    .line 37
    return-void
.end method

.method static synthetic access$302(Lcom/google/goggles/OrientationProtos$Orientation;F)F
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 30
    iput p1, p0, Lcom/google/goggles/OrientationProtos$Orientation;->azimuthDegrees_:F

    return p1
.end method

.method static synthetic access$402(Lcom/google/goggles/OrientationProtos$Orientation;F)F
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 30
    iput p1, p0, Lcom/google/goggles/OrientationProtos$Orientation;->pitchDegrees_:F

    return p1
.end method

.method static synthetic access$502(Lcom/google/goggles/OrientationProtos$Orientation;F)F
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 30
    iput p1, p0, Lcom/google/goggles/OrientationProtos$Orientation;->rollDegrees_:F

    return p1
.end method

.method static synthetic access$602(Lcom/google/goggles/OrientationProtos$Orientation;Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/goggles/OrientationProtos$Orientation;->sensorAccuracy_:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/goggles/OrientationProtos$Orientation;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 30
    iput p1, p0, Lcom/google/goggles/OrientationProtos$Orientation;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/OrientationProtos$Orientation;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/goggles/OrientationProtos$Orientation;->defaultInstance:Lcom/google/goggles/OrientationProtos$Orientation;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/google/goggles/OrientationProtos$Orientation;->azimuthDegrees_:F

    .line 91
    iput v0, p0, Lcom/google/goggles/OrientationProtos$Orientation;->pitchDegrees_:F

    .line 92
    iput v0, p0, Lcom/google/goggles/OrientationProtos$Orientation;->rollDegrees_:F

    .line 93
    invoke-static {}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->getDefaultInstance()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/OrientationProtos$Orientation;->sensorAccuracy_:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    .line 94
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/OrientationProtos$Orientation$Builder;
    .registers 1

    .prologue
    .line 221
    #calls: Lcom/google/goggles/OrientationProtos$Orientation$Builder;->create()Lcom/google/goggles/OrientationProtos$Orientation$Builder;
    invoke-static {}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->access$100()Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/OrientationProtos$Orientation;)Lcom/google/goggles/OrientationProtos$Orientation$Builder;
    .registers 2
    .parameter

    .prologue
    .line 224
    invoke-static {}, Lcom/google/goggles/OrientationProtos$Orientation;->newBuilder()Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->mergeFrom(Lcom/google/goggles/OrientationProtos$Orientation;)Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/OrientationProtos$Orientation;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-static {}, Lcom/google/goggles/OrientationProtos$Orientation;->newBuilder()Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    move-result-object v0

    .line 191
    invoke-virtual {v0, p0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 192
    #calls: Lcom/google/goggles/OrientationProtos$Orientation$Builder;->buildParsed()Lcom/google/goggles/OrientationProtos$Orientation;
    invoke-static {v0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->access$000(Lcom/google/goggles/OrientationProtos$Orientation$Builder;)Lcom/google/goggles/OrientationProtos$Orientation;

    move-result-object v0

    .line 194
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/OrientationProtos$Orientation;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-static {}, Lcom/google/goggles/OrientationProtos$Orientation;->newBuilder()Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    move-result-object v0

    .line 202
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 203
    #calls: Lcom/google/goggles/OrientationProtos$Orientation$Builder;->buildParsed()Lcom/google/goggles/OrientationProtos$Orientation;
    invoke-static {v0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->access$000(Lcom/google/goggles/OrientationProtos$Orientation$Builder;)Lcom/google/goggles/OrientationProtos$Orientation;

    move-result-object v0

    .line 205
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/OrientationProtos$Orientation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-static {}, Lcom/google/goggles/OrientationProtos$Orientation;->newBuilder()Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    #calls: Lcom/google/goggles/OrientationProtos$Orientation$Builder;->buildParsed()Lcom/google/goggles/OrientationProtos$Orientation;
    invoke-static {v0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->access$000(Lcom/google/goggles/OrientationProtos$Orientation$Builder;)Lcom/google/goggles/OrientationProtos$Orientation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/OrientationProtos$Orientation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-static {}, Lcom/google/goggles/OrientationProtos$Orientation;->newBuilder()Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    #calls: Lcom/google/goggles/OrientationProtos$Orientation$Builder;->buildParsed()Lcom/google/goggles/OrientationProtos$Orientation;
    invoke-static {v0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->access$000(Lcom/google/goggles/OrientationProtos$Orientation$Builder;)Lcom/google/goggles/OrientationProtos$Orientation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/OrientationProtos$Orientation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-static {}, Lcom/google/goggles/OrientationProtos$Orientation;->newBuilder()Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    #calls: Lcom/google/goggles/OrientationProtos$Orientation$Builder;->buildParsed()Lcom/google/goggles/OrientationProtos$Orientation;
    invoke-static {v0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->access$000(Lcom/google/goggles/OrientationProtos$Orientation$Builder;)Lcom/google/goggles/OrientationProtos$Orientation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/OrientationProtos$Orientation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-static {}, Lcom/google/goggles/OrientationProtos$Orientation;->newBuilder()Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/OrientationProtos$Orientation$Builder;->buildParsed()Lcom/google/goggles/OrientationProtos$Orientation;
    invoke-static {v0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->access$000(Lcom/google/goggles/OrientationProtos$Orientation$Builder;)Lcom/google/goggles/OrientationProtos$Orientation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/OrientationProtos$Orientation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-static {}, Lcom/google/goggles/OrientationProtos$Orientation;->newBuilder()Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    #calls: Lcom/google/goggles/OrientationProtos$Orientation$Builder;->buildParsed()Lcom/google/goggles/OrientationProtos$Orientation;
    invoke-static {v0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->access$000(Lcom/google/goggles/OrientationProtos$Orientation$Builder;)Lcom/google/goggles/OrientationProtos$Orientation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/OrientationProtos$Orientation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-static {}, Lcom/google/goggles/OrientationProtos$Orientation;->newBuilder()Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    #calls: Lcom/google/goggles/OrientationProtos$Orientation$Builder;->buildParsed()Lcom/google/goggles/OrientationProtos$Orientation;
    invoke-static {v0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->access$000(Lcom/google/goggles/OrientationProtos$Orientation$Builder;)Lcom/google/goggles/OrientationProtos$Orientation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/OrientationProtos$Orientation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-static {}, Lcom/google/goggles/OrientationProtos$Orientation;->newBuilder()Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    #calls: Lcom/google/goggles/OrientationProtos$Orientation$Builder;->buildParsed()Lcom/google/goggles/OrientationProtos$Orientation;
    invoke-static {v0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->access$000(Lcom/google/goggles/OrientationProtos$Orientation$Builder;)Lcom/google/goggles/OrientationProtos$Orientation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/OrientationProtos$Orientation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-static {}, Lcom/google/goggles/OrientationProtos$Orientation;->newBuilder()Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    #calls: Lcom/google/goggles/OrientationProtos$Orientation$Builder;->buildParsed()Lcom/google/goggles/OrientationProtos$Orientation;
    invoke-static {v0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->access$000(Lcom/google/goggles/OrientationProtos$Orientation$Builder;)Lcom/google/goggles/OrientationProtos$Orientation;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAzimuthDegrees()F
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Lcom/google/goggles/OrientationProtos$Orientation;->azimuthDegrees_:F

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/OrientationProtos$Orientation;
    .registers 2

    .prologue
    .line 45
    sget-object v0, Lcom/google/goggles/OrientationProtos$Orientation;->defaultInstance:Lcom/google/goggles/OrientationProtos$Orientation;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/goggles/OrientationProtos$Orientation;->getDefaultInstanceForType()Lcom/google/goggles/OrientationProtos$Orientation;

    move-result-object v0

    return-object v0
.end method

.method public getPitchDegrees()F
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lcom/google/goggles/OrientationProtos$Orientation;->pitchDegrees_:F

    return v0
.end method

.method public getRollDegrees()F
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Lcom/google/goggles/OrientationProtos$Orientation;->rollDegrees_:F

    return v0
.end method

.method public getSensorAccuracy()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/goggles/OrientationProtos$Orientation;->sensorAccuracy_:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 123
    iget v0, p0, Lcom/google/goggles/OrientationProtos$Orientation;->memoizedSerializedSize:I

    .line 124
    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 144
    :goto_8
    return v0

    .line 126
    :cond_9
    const/4 v0, 0x0

    .line 127
    iget v1, p0, Lcom/google/goggles/OrientationProtos$Orientation;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_17

    .line 128
    iget v1, p0, Lcom/google/goggles/OrientationProtos$Orientation;->azimuthDegrees_:F

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 131
    :cond_17
    iget v1, p0, Lcom/google/goggles/OrientationProtos$Orientation;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_24

    .line 132
    iget v1, p0, Lcom/google/goggles/OrientationProtos$Orientation;->pitchDegrees_:F

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 135
    :cond_24
    iget v1, p0, Lcom/google/goggles/OrientationProtos$Orientation;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_32

    .line 136
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/goggles/OrientationProtos$Orientation;->rollDegrees_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 139
    :cond_32
    iget v1, p0, Lcom/google/goggles/OrientationProtos$Orientation;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_41

    .line 140
    iget-object v1, p0, Lcom/google/goggles/OrientationProtos$Orientation;->sensorAccuracy_:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 143
    :cond_41
    iput v0, p0, Lcom/google/goggles/OrientationProtos$Orientation;->memoizedSerializedSize:I

    goto :goto_8
.end method

.method public hasAzimuthDegrees()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 53
    iget v1, p0, Lcom/google/goggles/OrientationProtos$Orientation;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPitchDegrees()Z
    .registers 3

    .prologue
    .line 63
    iget v0, p0, Lcom/google/goggles/OrientationProtos$Orientation;->bitField0_:I

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

.method public hasRollDegrees()Z
    .registers 3

    .prologue
    .line 73
    iget v0, p0, Lcom/google/goggles/OrientationProtos$Orientation;->bitField0_:I

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

.method public hasSensorAccuracy()Z
    .registers 3

    .prologue
    .line 83
    iget v0, p0, Lcom/google/goggles/OrientationProtos$Orientation;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 97
    iget-byte v1, p0, Lcom/google/goggles/OrientationProtos$Orientation;->memoizedIsInitialized:B

    .line 98
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 101
    :goto_8
    return v0

    .line 98
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 100
    :cond_b
    iput-byte v0, p0, Lcom/google/goggles/OrientationProtos$Orientation;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/goggles/OrientationProtos$Orientation$Builder;
    .registers 2

    .prologue
    .line 222
    invoke-static {}, Lcom/google/goggles/OrientationProtos$Orientation;->newBuilder()Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/goggles/OrientationProtos$Orientation;->newBuilderForType()Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/OrientationProtos$Orientation$Builder;
    .registers 2

    .prologue
    .line 226
    invoke-static {p0}, Lcom/google/goggles/OrientationProtos$Orientation;->newBuilder(Lcom/google/goggles/OrientationProtos$Orientation;)Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/goggles/OrientationProtos$Orientation;->toBuilder()Lcom/google/goggles/OrientationProtos$Orientation$Builder;

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
    .line 151
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

    .line 106
    invoke-virtual {p0}, Lcom/google/goggles/OrientationProtos$Orientation;->getSerializedSize()I

    .line 107
    iget v0, p0, Lcom/google/goggles/OrientationProtos$Orientation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 108
    iget v0, p0, Lcom/google/goggles/OrientationProtos$Orientation;->azimuthDegrees_:F

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 110
    :cond_11
    iget v0, p0, Lcom/google/goggles/OrientationProtos$Orientation;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1c

    .line 111
    iget v0, p0, Lcom/google/goggles/OrientationProtos$Orientation;->pitchDegrees_:F

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 113
    :cond_1c
    iget v0, p0, Lcom/google/goggles/OrientationProtos$Orientation;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_28

    .line 114
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/goggles/OrientationProtos$Orientation;->rollDegrees_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 116
    :cond_28
    iget v0, p0, Lcom/google/goggles/OrientationProtos$Orientation;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_35

    .line 117
    iget-object v0, p0, Lcom/google/goggles/OrientationProtos$Orientation;->sensorAccuracy_:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 119
    :cond_35
    return-void
.end method
