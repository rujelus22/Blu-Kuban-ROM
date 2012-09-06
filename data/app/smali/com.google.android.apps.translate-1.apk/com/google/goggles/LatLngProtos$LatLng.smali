.class public final Lcom/google/goggles/LatLngProtos$LatLng;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LatLngProtos.java"

# interfaces
.implements Lcom/google/goggles/LatLngProtos$LatLngOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/LatLngProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LatLng"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/LatLngProtos$LatLng$Builder;
    }
.end annotation


# static fields
.field public static final LAT_DEGREES_FIELD_NUMBER:I = 0x1

.field public static final LNG_DEGREES_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/goggles/LatLngProtos$LatLng;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private latDegrees_:D

.field private lngDegrees_:D

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 360
    new-instance v0, Lcom/google/goggles/LatLngProtos$LatLng;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/LatLngProtos$LatLng;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/LatLngProtos$LatLng;->defaultInstance:Lcom/google/goggles/LatLngProtos$LatLng;

    .line 361
    sget-object v0, Lcom/google/goggles/LatLngProtos$LatLng;->defaultInstance:Lcom/google/goggles/LatLngProtos$LatLng;

    invoke-direct {v0}, Lcom/google/goggles/LatLngProtos$LatLng;->initFields()V

    .line 362
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/LatLngProtos$LatLng$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 27
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 65
    iput-byte v0, p0, Lcom/google/goggles/LatLngProtos$LatLng;->memoizedIsInitialized:B

    .line 93
    iput v0, p0, Lcom/google/goggles/LatLngProtos$LatLng;->memoizedSerializedSize:I

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/LatLngProtos$LatLng$Builder;Lcom/google/goggles/LatLngProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/goggles/LatLngProtos$LatLng;-><init>(Lcom/google/goggles/LatLngProtos$LatLng$Builder;)V

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
    iput-byte v0, p0, Lcom/google/goggles/LatLngProtos$LatLng;->memoizedIsInitialized:B

    .line 93
    iput v0, p0, Lcom/google/goggles/LatLngProtos$LatLng;->memoizedSerializedSize:I

    .line 29
    return-void
.end method

.method static synthetic access$302(Lcom/google/goggles/LatLngProtos$LatLng;D)D
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/google/goggles/LatLngProtos$LatLng;->latDegrees_:D

    return-wide p1
.end method

.method static synthetic access$402(Lcom/google/goggles/LatLngProtos$LatLng;D)D
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/google/goggles/LatLngProtos$LatLng;->lngDegrees_:D

    return-wide p1
.end method

.method static synthetic access$502(Lcom/google/goggles/LatLngProtos$LatLng;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 22
    iput p1, p0, Lcom/google/goggles/LatLngProtos$LatLng;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/LatLngProtos$LatLng;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/goggles/LatLngProtos$LatLng;->defaultInstance:Lcom/google/goggles/LatLngProtos$LatLng;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 62
    iput-wide v0, p0, Lcom/google/goggles/LatLngProtos$LatLng;->latDegrees_:D

    .line 63
    iput-wide v0, p0, Lcom/google/goggles/LatLngProtos$LatLng;->lngDegrees_:D

    .line 64
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/LatLngProtos$LatLng$Builder;
    .registers 1

    .prologue
    .line 185
    #calls: Lcom/google/goggles/LatLngProtos$LatLng$Builder;->create()Lcom/google/goggles/LatLngProtos$LatLng$Builder;
    invoke-static {}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->access$100()Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/LatLngProtos$LatLng;)Lcom/google/goggles/LatLngProtos$LatLng$Builder;
    .registers 2
    .parameter

    .prologue
    .line 188
    invoke-static {}, Lcom/google/goggles/LatLngProtos$LatLng;->newBuilder()Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->mergeFrom(Lcom/google/goggles/LatLngProtos$LatLng;)Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/LatLngProtos$LatLng;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-static {}, Lcom/google/goggles/LatLngProtos$LatLng;->newBuilder()Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    move-result-object v0

    .line 155
    invoke-virtual {v0, p0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 156
    #calls: Lcom/google/goggles/LatLngProtos$LatLng$Builder;->buildParsed()Lcom/google/goggles/LatLngProtos$LatLng;
    invoke-static {v0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->access$000(Lcom/google/goggles/LatLngProtos$LatLng$Builder;)Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v0

    .line 158
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/LatLngProtos$LatLng;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-static {}, Lcom/google/goggles/LatLngProtos$LatLng;->newBuilder()Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    move-result-object v0

    .line 166
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 167
    #calls: Lcom/google/goggles/LatLngProtos$LatLng$Builder;->buildParsed()Lcom/google/goggles/LatLngProtos$LatLng;
    invoke-static {v0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->access$000(Lcom/google/goggles/LatLngProtos$LatLng$Builder;)Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v0

    .line 169
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/LatLngProtos$LatLng;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-static {}, Lcom/google/goggles/LatLngProtos$LatLng;->newBuilder()Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    #calls: Lcom/google/goggles/LatLngProtos$LatLng$Builder;->buildParsed()Lcom/google/goggles/LatLngProtos$LatLng;
    invoke-static {v0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->access$000(Lcom/google/goggles/LatLngProtos$LatLng$Builder;)Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/LatLngProtos$LatLng;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {}, Lcom/google/goggles/LatLngProtos$LatLng;->newBuilder()Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    #calls: Lcom/google/goggles/LatLngProtos$LatLng$Builder;->buildParsed()Lcom/google/goggles/LatLngProtos$LatLng;
    invoke-static {v0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->access$000(Lcom/google/goggles/LatLngProtos$LatLng$Builder;)Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/LatLngProtos$LatLng;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-static {}, Lcom/google/goggles/LatLngProtos$LatLng;->newBuilder()Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    #calls: Lcom/google/goggles/LatLngProtos$LatLng$Builder;->buildParsed()Lcom/google/goggles/LatLngProtos$LatLng;
    invoke-static {v0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->access$000(Lcom/google/goggles/LatLngProtos$LatLng$Builder;)Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/LatLngProtos$LatLng;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    invoke-static {}, Lcom/google/goggles/LatLngProtos$LatLng;->newBuilder()Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/LatLngProtos$LatLng$Builder;->buildParsed()Lcom/google/goggles/LatLngProtos$LatLng;
    invoke-static {v0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->access$000(Lcom/google/goggles/LatLngProtos$LatLng$Builder;)Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/LatLngProtos$LatLng;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-static {}, Lcom/google/goggles/LatLngProtos$LatLng;->newBuilder()Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    #calls: Lcom/google/goggles/LatLngProtos$LatLng$Builder;->buildParsed()Lcom/google/goggles/LatLngProtos$LatLng;
    invoke-static {v0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->access$000(Lcom/google/goggles/LatLngProtos$LatLng$Builder;)Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/LatLngProtos$LatLng;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {}, Lcom/google/goggles/LatLngProtos$LatLng;->newBuilder()Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    #calls: Lcom/google/goggles/LatLngProtos$LatLng$Builder;->buildParsed()Lcom/google/goggles/LatLngProtos$LatLng;
    invoke-static {v0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->access$000(Lcom/google/goggles/LatLngProtos$LatLng$Builder;)Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/LatLngProtos$LatLng;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-static {}, Lcom/google/goggles/LatLngProtos$LatLng;->newBuilder()Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    #calls: Lcom/google/goggles/LatLngProtos$LatLng$Builder;->buildParsed()Lcom/google/goggles/LatLngProtos$LatLng;
    invoke-static {v0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->access$000(Lcom/google/goggles/LatLngProtos$LatLng$Builder;)Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/LatLngProtos$LatLng;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {}, Lcom/google/goggles/LatLngProtos$LatLng;->newBuilder()Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    #calls: Lcom/google/goggles/LatLngProtos$LatLng$Builder;->buildParsed()Lcom/google/goggles/LatLngProtos$LatLng;
    invoke-static {v0}, Lcom/google/goggles/LatLngProtos$LatLng$Builder;->access$000(Lcom/google/goggles/LatLngProtos$LatLng$Builder;)Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/LatLngProtos$LatLng;
    .registers 2

    .prologue
    .line 37
    sget-object v0, Lcom/google/goggles/LatLngProtos$LatLng;->defaultInstance:Lcom/google/goggles/LatLngProtos$LatLng;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/goggles/LatLngProtos$LatLng;->getDefaultInstanceForType()Lcom/google/goggles/LatLngProtos$LatLng;

    move-result-object v0

    return-object v0
.end method

.method public getLatDegrees()D
    .registers 3

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/google/goggles/LatLngProtos$LatLng;->latDegrees_:D

    return-wide v0
.end method

.method public getLngDegrees()D
    .registers 3

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/google/goggles/LatLngProtos$LatLng;->lngDegrees_:D

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 95
    iget v0, p0, Lcom/google/goggles/LatLngProtos$LatLng;->memoizedSerializedSize:I

    .line 96
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 108
    :goto_7
    return v0

    .line 98
    :cond_8
    const/4 v0, 0x0

    .line 99
    iget v1, p0, Lcom/google/goggles/LatLngProtos$LatLng;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_16

    .line 100
    iget-wide v1, p0, Lcom/google/goggles/LatLngProtos$LatLng;->latDegrees_:D

    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 103
    :cond_16
    iget v1, p0, Lcom/google/goggles/LatLngProtos$LatLng;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_23

    .line 104
    iget-wide v1, p0, Lcom/google/goggles/LatLngProtos$LatLng;->lngDegrees_:D

    invoke-static {v4, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 107
    :cond_23
    iput v0, p0, Lcom/google/goggles/LatLngProtos$LatLng;->memoizedSerializedSize:I

    goto :goto_7
.end method

.method public hasLatDegrees()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 45
    iget v1, p0, Lcom/google/goggles/LatLngProtos$LatLng;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLngDegrees()Z
    .registers 3

    .prologue
    .line 55
    iget v0, p0, Lcom/google/goggles/LatLngProtos$LatLng;->bitField0_:I

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
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 67
    iget-byte v2, p0, Lcom/google/goggles/LatLngProtos$LatLng;->memoizedIsInitialized:B

    .line 68
    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    if-ne v2, v0, :cond_a

    .line 79
    :goto_9
    return v0

    :cond_a
    move v0, v1

    .line 68
    goto :goto_9

    .line 70
    :cond_c
    invoke-virtual {p0}, Lcom/google/goggles/LatLngProtos$LatLng;->hasLatDegrees()Z

    move-result v2

    if-nez v2, :cond_16

    .line 71
    iput-byte v1, p0, Lcom/google/goggles/LatLngProtos$LatLng;->memoizedIsInitialized:B

    move v0, v1

    .line 72
    goto :goto_9

    .line 74
    :cond_16
    invoke-virtual {p0}, Lcom/google/goggles/LatLngProtos$LatLng;->hasLngDegrees()Z

    move-result v2

    if-nez v2, :cond_20

    .line 75
    iput-byte v1, p0, Lcom/google/goggles/LatLngProtos$LatLng;->memoizedIsInitialized:B

    move v0, v1

    .line 76
    goto :goto_9

    .line 78
    :cond_20
    iput-byte v0, p0, Lcom/google/goggles/LatLngProtos$LatLng;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/goggles/LatLngProtos$LatLng$Builder;
    .registers 2

    .prologue
    .line 186
    invoke-static {}, Lcom/google/goggles/LatLngProtos$LatLng;->newBuilder()Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/goggles/LatLngProtos$LatLng;->newBuilderForType()Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/LatLngProtos$LatLng$Builder;
    .registers 2

    .prologue
    .line 190
    invoke-static {p0}, Lcom/google/goggles/LatLngProtos$LatLng;->newBuilder(Lcom/google/goggles/LatLngProtos$LatLng;)Lcom/google/goggles/LatLngProtos$LatLng$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/goggles/LatLngProtos$LatLng;->toBuilder()Lcom/google/goggles/LatLngProtos$LatLng$Builder;

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
    .line 115
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
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 84
    invoke-virtual {p0}, Lcom/google/goggles/LatLngProtos$LatLng;->getSerializedSize()I

    .line 85
    iget v0, p0, Lcom/google/goggles/LatLngProtos$LatLng;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_10

    .line 86
    iget-wide v0, p0, Lcom/google/goggles/LatLngProtos$LatLng;->latDegrees_:D

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 88
    :cond_10
    iget v0, p0, Lcom/google/goggles/LatLngProtos$LatLng;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1b

    .line 89
    iget-wide v0, p0, Lcom/google/goggles/LatLngProtos$LatLng;->lngDegrees_:D

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 91
    :cond_1b
    return-void
.end method
