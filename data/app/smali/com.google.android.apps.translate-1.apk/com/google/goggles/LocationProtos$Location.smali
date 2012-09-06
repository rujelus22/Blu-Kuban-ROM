.class public final Lcom/google/goggles/LocationProtos$Location;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LocationProtos.java"

# interfaces
.implements Lcom/google/goggles/LocationProtos$LocationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/LocationProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Location"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/LocationProtos$Location$Builder;
    }
.end annotation


# static fields
.field public static final ALTITUDE_ACCURACY_METERS_FIELD_NUMBER:I = 0x5

.field public static final ALTITUDE_METERS_FIELD_NUMBER:I = 0x4

.field public static final LAT_LNG_ACCURACY_METERS_FIELD_NUMBER:I = 0x2

.field public static final LAT_LNG_FIELD_NUMBER:I = 0x1

.field public static final TIMESTAMP_MS_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/goggles/LocationProtos$Location;

.field private static final serialVersionUID:J


# instance fields
.field private altitudeAccuracyMeters_:F

.field private altitudeMeters_:F

.field private bitField0_:I

.field private latLngAccuracyMeters_:F

.field private latLng_:Lcom/google/goggles/LatLngProtos$LatLng;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private timestampMs_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 553
    new-instance v0, Lcom/google/goggles/LocationProtos$Location;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/LocationProtos$Location;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/LocationProtos$Location;->defaultInstance:Lcom/google/goggles/LocationProtos$Location;

    .line 554
    sget-object v0, Lcom/google/goggles/LocationProtos$Location;->defaultInstance:Lcom/google/goggles/LocationProtos$Location;

    invoke-direct {v0}, Lcom/google/goggles/LocationProtos$Location;->initFields()V

    .line 555
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/LocationProtos$Location$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 39
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 110
    iput-byte v0, p0, Lcom/google/goggles/LocationProtos$Location;->memoizedIsInitialized:B

    .line 145
    iput v0, p0, Lcom/google/goggles/LocationProtos$Location;->memoizedSerializedSize:I

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/LocationProtos$Location$Builder;Lcom/google/goggles/LocationProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/goggles/LocationProtos$Location;-><init>(Lcom/google/goggles/LocationProtos$Location$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 41
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 110
    iput-byte v0, p0, Lcom/google/goggles/LocationProtos$Location;->memoizedIsInitialized:B

    .line 145
    iput v0, p0, Lcom/google/goggles/LocationProtos$Location;->memoizedSerializedSize:I

    .line 41
    return-void
.end method

.method static synthetic access$302(Lcom/google/goggles/LocationProtos$Location;Lcom/google/goggles/LatLngProtos$LatLng;)Lcom/google/goggles/LatLngProtos$LatLng;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/goggles/LocationProtos$Location;->latLng_:Lcom/google/goggles/LatLngProtos$LatLng;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/goggles/LocationProtos$Location;F)F
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 34
    iput p1, p0, Lcom/google/goggles/LocationProtos$Location;->latLngAccuracyMeters_:F

    return p1
.end method

.method static synthetic access$502(Lcom/google/goggles/LocationProtos$Location;F)F
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 34
    iput p1, p0, Lcom/google/goggles/LocationProtos$Location;->altitudeMeters_:F

    return p1
.end method

.method static synthetic access$602(Lcom/google/goggles/LocationProtos$Location;F)F
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 34
    iput p1, p0, Lcom/google/goggles/LocationProtos$Location;->altitudeAccuracyMeters_:F

    return p1
.end method

.method static synthetic access$702(Lcom/google/goggles/LocationProtos$Location;J)J
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/google/goggles/LocationProtos$Location;->timestampMs_:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/google/goggles/LocationProtos$Location;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 34
    iput p1, p0, Lcom/google/goggles/LocationProtos$Location;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/LocationProtos$Location;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/goggles/LocationProtos$Location;->defaultInstance:Lcom/google/goggles/LocationProtos$Location;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-static {}, Lcom/google/goggles/LatLngProtos$LatLng;->getDefaultInstance()Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/LocationProtos$Location;->latLng_:Lcom/google/goggles/LatLngProtos$LatLng;

    .line 105
    iput v1, p0, Lcom/google/goggles/LocationProtos$Location;->latLngAccuracyMeters_:F

    .line 106
    iput v1, p0, Lcom/google/goggles/LocationProtos$Location;->altitudeMeters_:F

    .line 107
    iput v1, p0, Lcom/google/goggles/LocationProtos$Location;->altitudeAccuracyMeters_:F

    .line 108
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/goggles/LocationProtos$Location;->timestampMs_:J

    .line 109
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/LocationProtos$Location$Builder;
    .registers 1

    .prologue
    .line 249
    #calls: Lcom/google/goggles/LocationProtos$Location$Builder;->create()Lcom/google/goggles/LocationProtos$Location$Builder;
    invoke-static {}, Lcom/google/goggles/LocationProtos$Location$Builder;->access$100()Lcom/google/goggles/LocationProtos$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/LocationProtos$Location;)Lcom/google/goggles/LocationProtos$Location$Builder;
    .registers 2
    .parameter

    .prologue
    .line 252
    invoke-static {}, Lcom/google/goggles/LocationProtos$Location;->newBuilder()Lcom/google/goggles/LocationProtos$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/LocationProtos$Location$Builder;->mergeFrom(Lcom/google/goggles/LocationProtos$Location;)Lcom/google/goggles/LocationProtos$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/LocationProtos$Location;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-static {}, Lcom/google/goggles/LocationProtos$Location;->newBuilder()Lcom/google/goggles/LocationProtos$Location$Builder;

    move-result-object v0

    .line 219
    invoke-virtual {v0, p0}, Lcom/google/goggles/LocationProtos$Location$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 220
    #calls: Lcom/google/goggles/LocationProtos$Location$Builder;->buildParsed()Lcom/google/goggles/LocationProtos$Location;
    invoke-static {v0}, Lcom/google/goggles/LocationProtos$Location$Builder;->access$000(Lcom/google/goggles/LocationProtos$Location$Builder;)Lcom/google/goggles/LocationProtos$Location;

    move-result-object v0

    .line 222
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/LocationProtos$Location;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-static {}, Lcom/google/goggles/LocationProtos$Location;->newBuilder()Lcom/google/goggles/LocationProtos$Location$Builder;

    move-result-object v0

    .line 230
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/LocationProtos$Location$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 231
    #calls: Lcom/google/goggles/LocationProtos$Location$Builder;->buildParsed()Lcom/google/goggles/LocationProtos$Location;
    invoke-static {v0}, Lcom/google/goggles/LocationProtos$Location$Builder;->access$000(Lcom/google/goggles/LocationProtos$Location$Builder;)Lcom/google/goggles/LocationProtos$Location;

    move-result-object v0

    .line 233
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/LocationProtos$Location;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-static {}, Lcom/google/goggles/LocationProtos$Location;->newBuilder()Lcom/google/goggles/LocationProtos$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/LocationProtos$Location$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/LocationProtos$Location$Builder;

    #calls: Lcom/google/goggles/LocationProtos$Location$Builder;->buildParsed()Lcom/google/goggles/LocationProtos$Location;
    invoke-static {v0}, Lcom/google/goggles/LocationProtos$Location$Builder;->access$000(Lcom/google/goggles/LocationProtos$Location$Builder;)Lcom/google/goggles/LocationProtos$Location;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/LocationProtos$Location;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-static {}, Lcom/google/goggles/LocationProtos$Location;->newBuilder()Lcom/google/goggles/LocationProtos$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/LocationProtos$Location$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/LocationProtos$Location$Builder;

    #calls: Lcom/google/goggles/LocationProtos$Location$Builder;->buildParsed()Lcom/google/goggles/LocationProtos$Location;
    invoke-static {v0}, Lcom/google/goggles/LocationProtos$Location$Builder;->access$000(Lcom/google/goggles/LocationProtos$Location$Builder;)Lcom/google/goggles/LocationProtos$Location;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/LocationProtos$Location;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-static {}, Lcom/google/goggles/LocationProtos$Location;->newBuilder()Lcom/google/goggles/LocationProtos$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/LocationProtos$Location$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/LocationProtos$Location$Builder;

    #calls: Lcom/google/goggles/LocationProtos$Location$Builder;->buildParsed()Lcom/google/goggles/LocationProtos$Location;
    invoke-static {v0}, Lcom/google/goggles/LocationProtos$Location$Builder;->access$000(Lcom/google/goggles/LocationProtos$Location$Builder;)Lcom/google/goggles/LocationProtos$Location;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/LocationProtos$Location;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-static {}, Lcom/google/goggles/LocationProtos$Location;->newBuilder()Lcom/google/goggles/LocationProtos$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/LocationProtos$Location$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/LocationProtos$Location$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/LocationProtos$Location$Builder;->buildParsed()Lcom/google/goggles/LocationProtos$Location;
    invoke-static {v0}, Lcom/google/goggles/LocationProtos$Location$Builder;->access$000(Lcom/google/goggles/LocationProtos$Location$Builder;)Lcom/google/goggles/LocationProtos$Location;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/LocationProtos$Location;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-static {}, Lcom/google/goggles/LocationProtos$Location;->newBuilder()Lcom/google/goggles/LocationProtos$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/LocationProtos$Location$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/LocationProtos$Location$Builder;

    #calls: Lcom/google/goggles/LocationProtos$Location$Builder;->buildParsed()Lcom/google/goggles/LocationProtos$Location;
    invoke-static {v0}, Lcom/google/goggles/LocationProtos$Location$Builder;->access$000(Lcom/google/goggles/LocationProtos$Location$Builder;)Lcom/google/goggles/LocationProtos$Location;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/LocationProtos$Location;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-static {}, Lcom/google/goggles/LocationProtos$Location;->newBuilder()Lcom/google/goggles/LocationProtos$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/LocationProtos$Location$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/LocationProtos$Location$Builder;

    #calls: Lcom/google/goggles/LocationProtos$Location$Builder;->buildParsed()Lcom/google/goggles/LocationProtos$Location;
    invoke-static {v0}, Lcom/google/goggles/LocationProtos$Location$Builder;->access$000(Lcom/google/goggles/LocationProtos$Location$Builder;)Lcom/google/goggles/LocationProtos$Location;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/LocationProtos$Location;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-static {}, Lcom/google/goggles/LocationProtos$Location;->newBuilder()Lcom/google/goggles/LocationProtos$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/LocationProtos$Location$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/LocationProtos$Location$Builder;

    #calls: Lcom/google/goggles/LocationProtos$Location$Builder;->buildParsed()Lcom/google/goggles/LocationProtos$Location;
    invoke-static {v0}, Lcom/google/goggles/LocationProtos$Location$Builder;->access$000(Lcom/google/goggles/LocationProtos$Location$Builder;)Lcom/google/goggles/LocationProtos$Location;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/LocationProtos$Location;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-static {}, Lcom/google/goggles/LocationProtos$Location;->newBuilder()Lcom/google/goggles/LocationProtos$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/LocationProtos$Location$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/LocationProtos$Location$Builder;

    #calls: Lcom/google/goggles/LocationProtos$Location$Builder;->buildParsed()Lcom/google/goggles/LocationProtos$Location;
    invoke-static {v0}, Lcom/google/goggles/LocationProtos$Location$Builder;->access$000(Lcom/google/goggles/LocationProtos$Location$Builder;)Lcom/google/goggles/LocationProtos$Location;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAltitudeAccuracyMeters()F
    .registers 2

    .prologue
    .line 90
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location;->altitudeAccuracyMeters_:F

    return v0
.end method

.method public getAltitudeMeters()F
    .registers 2

    .prologue
    .line 80
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location;->altitudeMeters_:F

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/LocationProtos$Location;
    .registers 2

    .prologue
    .line 49
    sget-object v0, Lcom/google/goggles/LocationProtos$Location;->defaultInstance:Lcom/google/goggles/LocationProtos$Location;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/goggles/LocationProtos$Location;->getDefaultInstanceForType()Lcom/google/goggles/LocationProtos$Location;

    move-result-object v0

    return-object v0
.end method

.method public getLatLng()Lcom/google/goggles/LatLngProtos$LatLng;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/goggles/LocationProtos$Location;->latLng_:Lcom/google/goggles/LatLngProtos$LatLng;

    return-object v0
.end method

.method public getLatLngAccuracyMeters()F
    .registers 2

    .prologue
    .line 70
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location;->latLngAccuracyMeters_:F

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 147
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location;->memoizedSerializedSize:I

    .line 148
    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 172
    :goto_8
    return v0

    .line 150
    :cond_9
    const/4 v0, 0x0

    .line 151
    iget v1, p0, Lcom/google/goggles/LocationProtos$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_17

    .line 152
    iget-object v1, p0, Lcom/google/goggles/LocationProtos$Location;->latLng_:Lcom/google/goggles/LatLngProtos$LatLng;

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 155
    :cond_17
    iget v1, p0, Lcom/google/goggles/LocationProtos$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_24

    .line 156
    iget v1, p0, Lcom/google/goggles/LocationProtos$Location;->latLngAccuracyMeters_:F

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 159
    :cond_24
    iget v1, p0, Lcom/google/goggles/LocationProtos$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_34

    .line 160
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/goggles/LocationProtos$Location;->timestampMs_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 163
    :cond_34
    iget v1, p0, Lcom/google/goggles/LocationProtos$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_41

    .line 164
    iget v1, p0, Lcom/google/goggles/LocationProtos$Location;->altitudeMeters_:F

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 167
    :cond_41
    iget v1, p0, Lcom/google/goggles/LocationProtos$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_51

    .line 168
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/goggles/LocationProtos$Location;->altitudeAccuracyMeters_:F

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 171
    :cond_51
    iput v0, p0, Lcom/google/goggles/LocationProtos$Location;->memoizedSerializedSize:I

    goto :goto_8
.end method

.method public getTimestampMs()J
    .registers 3

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/google/goggles/LocationProtos$Location;->timestampMs_:J

    return-wide v0
.end method

.method public hasAltitudeAccuracyMeters()Z
    .registers 3

    .prologue
    .line 87
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location;->bitField0_:I

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

.method public hasAltitudeMeters()Z
    .registers 3

    .prologue
    .line 77
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location;->bitField0_:I

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

.method public hasLatLng()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 57
    iget v1, p0, Lcom/google/goggles/LocationProtos$Location;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLatLngAccuracyMeters()Z
    .registers 3

    .prologue
    .line 67
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location;->bitField0_:I

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

.method public hasTimestampMs()Z
    .registers 3

    .prologue
    .line 97
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 112
    iget-byte v2, p0, Lcom/google/goggles/LocationProtos$Location;->memoizedIsInitialized:B

    .line 113
    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    if-ne v2, v0, :cond_a

    .line 122
    :goto_9
    return v0

    :cond_a
    move v0, v1

    .line 113
    goto :goto_9

    .line 115
    :cond_c
    invoke-virtual {p0}, Lcom/google/goggles/LocationProtos$Location;->hasLatLng()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 116
    invoke-virtual {p0}, Lcom/google/goggles/LocationProtos$Location;->getLatLng()Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/LatLngProtos$LatLng;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_20

    .line 117
    iput-byte v1, p0, Lcom/google/goggles/LocationProtos$Location;->memoizedIsInitialized:B

    move v0, v1

    .line 118
    goto :goto_9

    .line 121
    :cond_20
    iput-byte v0, p0, Lcom/google/goggles/LocationProtos$Location;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/goggles/LocationProtos$Location$Builder;
    .registers 2

    .prologue
    .line 250
    invoke-static {}, Lcom/google/goggles/LocationProtos$Location;->newBuilder()Lcom/google/goggles/LocationProtos$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/goggles/LocationProtos$Location;->newBuilderForType()Lcom/google/goggles/LocationProtos$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/LocationProtos$Location$Builder;
    .registers 2

    .prologue
    .line 254
    invoke-static {p0}, Lcom/google/goggles/LocationProtos$Location;->newBuilder(Lcom/google/goggles/LocationProtos$Location;)Lcom/google/goggles/LocationProtos$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/goggles/LocationProtos$Location;->toBuilder()Lcom/google/goggles/LocationProtos$Location$Builder;

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
    .line 179
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

    .line 127
    invoke-virtual {p0}, Lcom/google/goggles/LocationProtos$Location;->getSerializedSize()I

    .line 128
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 129
    iget-object v0, p0, Lcom/google/goggles/LocationProtos$Location;->latLng_:Lcom/google/goggles/LatLngProtos$LatLng;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 131
    :cond_11
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1c

    .line 132
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location;->latLngAccuracyMeters_:F

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 134
    :cond_1c
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2a

    .line 135
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/goggles/LocationProtos$Location;->timestampMs_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 137
    :cond_2a
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_35

    .line 138
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location;->altitudeMeters_:F

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 140
    :cond_35
    iget v0, p0, Lcom/google/goggles/LocationProtos$Location;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_43

    .line 141
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/goggles/LocationProtos$Location;->altitudeAccuracyMeters_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 143
    :cond_43
    return-void
.end method
