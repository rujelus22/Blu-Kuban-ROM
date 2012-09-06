.class public final Lcom/google/goggles/PoseProtos$Pose;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PoseProtos.java"

# interfaces
.implements Lcom/google/goggles/PoseProtos$PoseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/PoseProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Pose"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/PoseProtos$Pose$Builder;
    }
.end annotation


# static fields
.field public static final LOCATION_FIELD_NUMBER:I = 0x2

.field public static final ORIENTATION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/goggles/PoseProtos$Pose;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private location_:Lcom/google/goggles/LocationProtos$Location;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private orientation_:Lcom/google/goggles/OrientationProtos$Orientation;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 408
    new-instance v0, Lcom/google/goggles/PoseProtos$Pose;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/PoseProtos$Pose;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/PoseProtos$Pose;->defaultInstance:Lcom/google/goggles/PoseProtos$Pose;

    .line 409
    sget-object v0, Lcom/google/goggles/PoseProtos$Pose;->defaultInstance:Lcom/google/goggles/PoseProtos$Pose;

    invoke-direct {v0}, Lcom/google/goggles/PoseProtos$Pose;->initFields()V

    .line 410
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/PoseProtos$Pose$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 27
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 65
    iput-byte v0, p0, Lcom/google/goggles/PoseProtos$Pose;->memoizedIsInitialized:B

    .line 91
    iput v0, p0, Lcom/google/goggles/PoseProtos$Pose;->memoizedSerializedSize:I

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/PoseProtos$Pose$Builder;Lcom/google/goggles/PoseProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/goggles/PoseProtos$Pose;-><init>(Lcom/google/goggles/PoseProtos$Pose$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 29
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 65
    iput-byte v0, p0, Lcom/google/goggles/PoseProtos$Pose;->memoizedIsInitialized:B

    .line 91
    iput v0, p0, Lcom/google/goggles/PoseProtos$Pose;->memoizedSerializedSize:I

    .line 29
    return-void
.end method

.method static synthetic access$302(Lcom/google/goggles/PoseProtos$Pose;Lcom/google/goggles/LocationProtos$Location;)Lcom/google/goggles/LocationProtos$Location;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/goggles/PoseProtos$Pose;->location_:Lcom/google/goggles/LocationProtos$Location;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/goggles/PoseProtos$Pose;Lcom/google/goggles/OrientationProtos$Orientation;)Lcom/google/goggles/OrientationProtos$Orientation;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/goggles/PoseProtos$Pose;->orientation_:Lcom/google/goggles/OrientationProtos$Orientation;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/goggles/PoseProtos$Pose;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 22
    iput p1, p0, Lcom/google/goggles/PoseProtos$Pose;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/PoseProtos$Pose;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/goggles/PoseProtos$Pose;->defaultInstance:Lcom/google/goggles/PoseProtos$Pose;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 62
    invoke-static {}, Lcom/google/goggles/LocationProtos$Location;->getDefaultInstance()Lcom/google/goggles/LocationProtos$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/PoseProtos$Pose;->location_:Lcom/google/goggles/LocationProtos$Location;

    .line 63
    invoke-static {}, Lcom/google/goggles/OrientationProtos$Orientation;->getDefaultInstance()Lcom/google/goggles/OrientationProtos$Orientation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/PoseProtos$Pose;->orientation_:Lcom/google/goggles/OrientationProtos$Orientation;

    .line 64
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/PoseProtos$Pose$Builder;
    .registers 1

    .prologue
    .line 183
    #calls: Lcom/google/goggles/PoseProtos$Pose$Builder;->create()Lcom/google/goggles/PoseProtos$Pose$Builder;
    invoke-static {}, Lcom/google/goggles/PoseProtos$Pose$Builder;->access$100()Lcom/google/goggles/PoseProtos$Pose$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/PoseProtos$Pose;)Lcom/google/goggles/PoseProtos$Pose$Builder;
    .registers 2
    .parameter

    .prologue
    .line 186
    invoke-static {}, Lcom/google/goggles/PoseProtos$Pose;->newBuilder()Lcom/google/goggles/PoseProtos$Pose$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->mergeFrom(Lcom/google/goggles/PoseProtos$Pose;)Lcom/google/goggles/PoseProtos$Pose$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/PoseProtos$Pose;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-static {}, Lcom/google/goggles/PoseProtos$Pose;->newBuilder()Lcom/google/goggles/PoseProtos$Pose$Builder;

    move-result-object v0

    .line 153
    invoke-virtual {v0, p0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 154
    #calls: Lcom/google/goggles/PoseProtos$Pose$Builder;->buildParsed()Lcom/google/goggles/PoseProtos$Pose;
    invoke-static {v0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->access$000(Lcom/google/goggles/PoseProtos$Pose$Builder;)Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v0

    .line 156
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/PoseProtos$Pose;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-static {}, Lcom/google/goggles/PoseProtos$Pose;->newBuilder()Lcom/google/goggles/PoseProtos$Pose$Builder;

    move-result-object v0

    .line 164
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/PoseProtos$Pose$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 165
    #calls: Lcom/google/goggles/PoseProtos$Pose$Builder;->buildParsed()Lcom/google/goggles/PoseProtos$Pose;
    invoke-static {v0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->access$000(Lcom/google/goggles/PoseProtos$Pose$Builder;)Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v0

    .line 167
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/PoseProtos$Pose;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-static {}, Lcom/google/goggles/PoseProtos$Pose;->newBuilder()Lcom/google/goggles/PoseProtos$Pose$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/PoseProtos$Pose$Builder;

    #calls: Lcom/google/goggles/PoseProtos$Pose$Builder;->buildParsed()Lcom/google/goggles/PoseProtos$Pose;
    invoke-static {v0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->access$000(Lcom/google/goggles/PoseProtos$Pose$Builder;)Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/PoseProtos$Pose;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-static {}, Lcom/google/goggles/PoseProtos$Pose;->newBuilder()Lcom/google/goggles/PoseProtos$Pose$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/PoseProtos$Pose$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/PoseProtos$Pose$Builder;

    #calls: Lcom/google/goggles/PoseProtos$Pose$Builder;->buildParsed()Lcom/google/goggles/PoseProtos$Pose;
    invoke-static {v0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->access$000(Lcom/google/goggles/PoseProtos$Pose$Builder;)Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/PoseProtos$Pose;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-static {}, Lcom/google/goggles/PoseProtos$Pose;->newBuilder()Lcom/google/goggles/PoseProtos$Pose$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/PoseProtos$Pose$Builder;

    #calls: Lcom/google/goggles/PoseProtos$Pose$Builder;->buildParsed()Lcom/google/goggles/PoseProtos$Pose;
    invoke-static {v0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->access$000(Lcom/google/goggles/PoseProtos$Pose$Builder;)Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/PoseProtos$Pose;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-static {}, Lcom/google/goggles/PoseProtos$Pose;->newBuilder()Lcom/google/goggles/PoseProtos$Pose$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/PoseProtos$Pose$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/PoseProtos$Pose$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/PoseProtos$Pose$Builder;->buildParsed()Lcom/google/goggles/PoseProtos$Pose;
    invoke-static {v0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->access$000(Lcom/google/goggles/PoseProtos$Pose$Builder;)Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/PoseProtos$Pose;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-static {}, Lcom/google/goggles/PoseProtos$Pose;->newBuilder()Lcom/google/goggles/PoseProtos$Pose$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/PoseProtos$Pose$Builder;

    #calls: Lcom/google/goggles/PoseProtos$Pose$Builder;->buildParsed()Lcom/google/goggles/PoseProtos$Pose;
    invoke-static {v0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->access$000(Lcom/google/goggles/PoseProtos$Pose$Builder;)Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/PoseProtos$Pose;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-static {}, Lcom/google/goggles/PoseProtos$Pose;->newBuilder()Lcom/google/goggles/PoseProtos$Pose$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/PoseProtos$Pose$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/PoseProtos$Pose$Builder;

    #calls: Lcom/google/goggles/PoseProtos$Pose$Builder;->buildParsed()Lcom/google/goggles/PoseProtos$Pose;
    invoke-static {v0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->access$000(Lcom/google/goggles/PoseProtos$Pose$Builder;)Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/PoseProtos$Pose;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-static {}, Lcom/google/goggles/PoseProtos$Pose;->newBuilder()Lcom/google/goggles/PoseProtos$Pose$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/PoseProtos$Pose$Builder;

    #calls: Lcom/google/goggles/PoseProtos$Pose$Builder;->buildParsed()Lcom/google/goggles/PoseProtos$Pose;
    invoke-static {v0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->access$000(Lcom/google/goggles/PoseProtos$Pose$Builder;)Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/PoseProtos$Pose;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {}, Lcom/google/goggles/PoseProtos$Pose;->newBuilder()Lcom/google/goggles/PoseProtos$Pose$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/PoseProtos$Pose$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/PoseProtos$Pose$Builder;

    #calls: Lcom/google/goggles/PoseProtos$Pose$Builder;->buildParsed()Lcom/google/goggles/PoseProtos$Pose;
    invoke-static {v0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->access$000(Lcom/google/goggles/PoseProtos$Pose$Builder;)Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/PoseProtos$Pose;
    .registers 2

    .prologue
    .line 37
    sget-object v0, Lcom/google/goggles/PoseProtos$Pose;->defaultInstance:Lcom/google/goggles/PoseProtos$Pose;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/goggles/PoseProtos$Pose;->getDefaultInstanceForType()Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lcom/google/goggles/LocationProtos$Location;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/goggles/PoseProtos$Pose;->location_:Lcom/google/goggles/LocationProtos$Location;

    return-object v0
.end method

.method public getOrientation()Lcom/google/goggles/OrientationProtos$Orientation;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/goggles/PoseProtos$Pose;->orientation_:Lcom/google/goggles/OrientationProtos$Orientation;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 93
    iget v0, p0, Lcom/google/goggles/PoseProtos$Pose;->memoizedSerializedSize:I

    .line 94
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 106
    :goto_7
    return v0

    .line 96
    :cond_8
    const/4 v0, 0x0

    .line 97
    iget v1, p0, Lcom/google/goggles/PoseProtos$Pose;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_16

    .line 98
    iget-object v1, p0, Lcom/google/goggles/PoseProtos$Pose;->orientation_:Lcom/google/goggles/OrientationProtos$Orientation;

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    :cond_16
    iget v1, p0, Lcom/google/goggles/PoseProtos$Pose;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_23

    .line 102
    iget-object v1, p0, Lcom/google/goggles/PoseProtos$Pose;->location_:Lcom/google/goggles/LocationProtos$Location;

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    :cond_23
    iput v0, p0, Lcom/google/goggles/PoseProtos$Pose;->memoizedSerializedSize:I

    goto :goto_7
.end method

.method public hasLocation()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 45
    iget v1, p0, Lcom/google/goggles/PoseProtos$Pose;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasOrientation()Z
    .registers 3

    .prologue
    .line 55
    iget v0, p0, Lcom/google/goggles/PoseProtos$Pose;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 67
    iget-byte v2, p0, Lcom/google/goggles/PoseProtos$Pose;->memoizedIsInitialized:B

    .line 68
    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    if-ne v2, v0, :cond_a

    .line 77
    :goto_9
    return v0

    :cond_a
    move v0, v1

    .line 68
    goto :goto_9

    .line 70
    :cond_c
    invoke-virtual {p0}, Lcom/google/goggles/PoseProtos$Pose;->hasLocation()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 71
    invoke-virtual {p0}, Lcom/google/goggles/PoseProtos$Pose;->getLocation()Lcom/google/goggles/LocationProtos$Location;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/LocationProtos$Location;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_20

    .line 72
    iput-byte v1, p0, Lcom/google/goggles/PoseProtos$Pose;->memoizedIsInitialized:B

    move v0, v1

    .line 73
    goto :goto_9

    .line 76
    :cond_20
    iput-byte v0, p0, Lcom/google/goggles/PoseProtos$Pose;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/goggles/PoseProtos$Pose$Builder;
    .registers 2

    .prologue
    .line 184
    invoke-static {}, Lcom/google/goggles/PoseProtos$Pose;->newBuilder()Lcom/google/goggles/PoseProtos$Pose$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/goggles/PoseProtos$Pose;->newBuilderForType()Lcom/google/goggles/PoseProtos$Pose$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/PoseProtos$Pose$Builder;
    .registers 2

    .prologue
    .line 188
    invoke-static {p0}, Lcom/google/goggles/PoseProtos$Pose;->newBuilder(Lcom/google/goggles/PoseProtos$Pose;)Lcom/google/goggles/PoseProtos$Pose$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/goggles/PoseProtos$Pose;->toBuilder()Lcom/google/goggles/PoseProtos$Pose$Builder;

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
    .line 113
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

    .line 82
    invoke-virtual {p0}, Lcom/google/goggles/PoseProtos$Pose;->getSerializedSize()I

    .line 83
    iget v0, p0, Lcom/google/goggles/PoseProtos$Pose;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_10

    .line 84
    iget-object v0, p0, Lcom/google/goggles/PoseProtos$Pose;->orientation_:Lcom/google/goggles/OrientationProtos$Orientation;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 86
    :cond_10
    iget v0, p0, Lcom/google/goggles/PoseProtos$Pose;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_1b

    .line 87
    iget-object v0, p0, Lcom/google/goggles/PoseProtos$Pose;->location_:Lcom/google/goggles/LocationProtos$Location;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 89
    :cond_1b
    return-void
.end method
