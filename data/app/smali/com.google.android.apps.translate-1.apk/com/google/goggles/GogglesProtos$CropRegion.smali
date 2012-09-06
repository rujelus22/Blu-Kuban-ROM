.class public final Lcom/google/goggles/GogglesProtos$CropRegion;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "GogglesProtos.java"

# interfaces
.implements Lcom/google/goggles/GogglesProtos$CropRegionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CropRegion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/GogglesProtos$CropRegion$Builder;
    }
.end annotation


# static fields
.field public static final HEIGHT_FIELD_NUMBER:I = 0x2

.field public static final REGION_FIELD_NUMBER:I = 0x3

.field public static final WIDTH_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/goggles/GogglesProtos$CropRegion;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private height_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private region_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

.field private width_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 460
    new-instance v0, Lcom/google/goggles/GogglesProtos$CropRegion;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/GogglesProtos$CropRegion;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/GogglesProtos$CropRegion;->defaultInstance:Lcom/google/goggles/GogglesProtos$CropRegion;

    .line 461
    sget-object v0, Lcom/google/goggles/GogglesProtos$CropRegion;->defaultInstance:Lcom/google/goggles/GogglesProtos$CropRegion;

    invoke-direct {v0}, Lcom/google/goggles/GogglesProtos$CropRegion;->initFields()V

    .line 462
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/GogglesProtos$CropRegion$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 32
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 81
    iput-byte v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion;->memoizedIsInitialized:B

    .line 120
    iput v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion;->memoizedSerializedSize:I

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/GogglesProtos$CropRegion$Builder;Lcom/google/goggles/GogglesProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/goggles/GogglesProtos$CropRegion;-><init>(Lcom/google/goggles/GogglesProtos$CropRegion$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 34
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 81
    iput-byte v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion;->memoizedIsInitialized:B

    .line 120
    iput v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion;->memoizedSerializedSize:I

    .line 34
    return-void
.end method

.method static synthetic access$302(Lcom/google/goggles/GogglesProtos$CropRegion;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 27
    iput p1, p0, Lcom/google/goggles/GogglesProtos$CropRegion;->width_:I

    return p1
.end method

.method static synthetic access$402(Lcom/google/goggles/GogglesProtos$CropRegion;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 27
    iput p1, p0, Lcom/google/goggles/GogglesProtos$CropRegion;->height_:I

    return p1
.end method

.method static synthetic access$502(Lcom/google/goggles/GogglesProtos$CropRegion;Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$CropRegion;->region_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/goggles/GogglesProtos$CropRegion;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 27
    iput p1, p0, Lcom/google/goggles/GogglesProtos$CropRegion;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/GogglesProtos$CropRegion;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/goggles/GogglesProtos$CropRegion;->defaultInstance:Lcom/google/goggles/GogglesProtos$CropRegion;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion;->width_:I

    .line 78
    iput v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion;->height_:I

    .line 79
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getDefaultInstance()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion;->region_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 80
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/GogglesProtos$CropRegion$Builder;
    .registers 1

    .prologue
    .line 216
    #calls: Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->create()Lcom/google/goggles/GogglesProtos$CropRegion$Builder;
    invoke-static {}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->access$100()Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/GogglesProtos$CropRegion;)Lcom/google/goggles/GogglesProtos$CropRegion$Builder;
    .registers 2
    .parameter

    .prologue
    .line 219
    invoke-static {}, Lcom/google/goggles/GogglesProtos$CropRegion;->newBuilder()Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->mergeFrom(Lcom/google/goggles/GogglesProtos$CropRegion;)Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/GogglesProtos$CropRegion;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-static {}, Lcom/google/goggles/GogglesProtos$CropRegion;->newBuilder()Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    move-result-object v0

    .line 186
    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 187
    #calls: Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$CropRegion;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->access$000(Lcom/google/goggles/GogglesProtos$CropRegion$Builder;)Lcom/google/goggles/GogglesProtos$CropRegion;

    move-result-object v0

    .line 189
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$CropRegion;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-static {}, Lcom/google/goggles/GogglesProtos$CropRegion;->newBuilder()Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    move-result-object v0

    .line 197
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 198
    #calls: Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$CropRegion;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->access$000(Lcom/google/goggles/GogglesProtos$CropRegion$Builder;)Lcom/google/goggles/GogglesProtos$CropRegion;

    move-result-object v0

    .line 200
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/GogglesProtos$CropRegion;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-static {}, Lcom/google/goggles/GogglesProtos$CropRegion;->newBuilder()Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$CropRegion;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->access$000(Lcom/google/goggles/GogglesProtos$CropRegion$Builder;)Lcom/google/goggles/GogglesProtos$CropRegion;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$CropRegion;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-static {}, Lcom/google/goggles/GogglesProtos$CropRegion;->newBuilder()Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$CropRegion;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->access$000(Lcom/google/goggles/GogglesProtos$CropRegion$Builder;)Lcom/google/goggles/GogglesProtos$CropRegion;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/GogglesProtos$CropRegion;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-static {}, Lcom/google/goggles/GogglesProtos$CropRegion;->newBuilder()Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$CropRegion;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->access$000(Lcom/google/goggles/GogglesProtos$CropRegion$Builder;)Lcom/google/goggles/GogglesProtos$CropRegion;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$CropRegion;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-static {}, Lcom/google/goggles/GogglesProtos$CropRegion;->newBuilder()Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$CropRegion;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->access$000(Lcom/google/goggles/GogglesProtos$CropRegion$Builder;)Lcom/google/goggles/GogglesProtos$CropRegion;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/GogglesProtos$CropRegion;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-static {}, Lcom/google/goggles/GogglesProtos$CropRegion;->newBuilder()Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$CropRegion;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->access$000(Lcom/google/goggles/GogglesProtos$CropRegion$Builder;)Lcom/google/goggles/GogglesProtos$CropRegion;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$CropRegion;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-static {}, Lcom/google/goggles/GogglesProtos$CropRegion;->newBuilder()Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$CropRegion;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->access$000(Lcom/google/goggles/GogglesProtos$CropRegion$Builder;)Lcom/google/goggles/GogglesProtos$CropRegion;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/GogglesProtos$CropRegion;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-static {}, Lcom/google/goggles/GogglesProtos$CropRegion;->newBuilder()Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$CropRegion;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->access$000(Lcom/google/goggles/GogglesProtos$CropRegion$Builder;)Lcom/google/goggles/GogglesProtos$CropRegion;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$CropRegion;
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
    invoke-static {}, Lcom/google/goggles/GogglesProtos$CropRegion;->newBuilder()Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$CropRegion;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->access$000(Lcom/google/goggles/GogglesProtos$CropRegion$Builder;)Lcom/google/goggles/GogglesProtos$CropRegion;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/GogglesProtos$CropRegion;
    .registers 2

    .prologue
    .line 42
    sget-object v0, Lcom/google/goggles/GogglesProtos$CropRegion;->defaultInstance:Lcom/google/goggles/GogglesProtos$CropRegion;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$CropRegion;->getDefaultInstanceForType()Lcom/google/goggles/GogglesProtos$CropRegion;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 63
    iget v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion;->height_:I

    return v0
.end method

.method public getRegion()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion;->region_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 122
    iget v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion;->memoizedSerializedSize:I

    .line 123
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 139
    :goto_7
    return v0

    .line 125
    :cond_8
    const/4 v0, 0x0

    .line 126
    iget v1, p0, Lcom/google/goggles/GogglesProtos$CropRegion;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_16

    .line 127
    iget v1, p0, Lcom/google/goggles/GogglesProtos$CropRegion;->width_:I

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 130
    :cond_16
    iget v1, p0, Lcom/google/goggles/GogglesProtos$CropRegion;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_23

    .line 131
    iget v1, p0, Lcom/google/goggles/GogglesProtos$CropRegion;->height_:I

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 134
    :cond_23
    iget v1, p0, Lcom/google/goggles/GogglesProtos$CropRegion;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_32

    .line 135
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/goggles/GogglesProtos$CropRegion;->region_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 138
    :cond_32
    iput v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion;->memoizedSerializedSize:I

    goto :goto_7
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 53
    iget v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion;->width_:I

    return v0
.end method

.method public hasHeight()Z
    .registers 3

    .prologue
    .line 60
    iget v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion;->bitField0_:I

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

.method public hasRegion()Z
    .registers 3

    .prologue
    .line 70
    iget v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion;->bitField0_:I

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

.method public hasWidth()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 50
    iget v1, p0, Lcom/google/goggles/GogglesProtos$CropRegion;->bitField0_:I

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
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 83
    iget-byte v2, p0, Lcom/google/goggles/GogglesProtos$CropRegion;->memoizedIsInitialized:B

    .line 84
    const/4 v3, -0x1

    if-eq v2, v3, :cond_d

    if-ne v2, v0, :cond_b

    :goto_9
    move v1, v0

    .line 103
    :goto_a
    return v1

    :cond_b
    move v0, v1

    .line 84
    goto :goto_9

    .line 86
    :cond_d
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$CropRegion;->hasWidth()Z

    move-result v2

    if-nez v2, :cond_16

    .line 87
    iput-byte v1, p0, Lcom/google/goggles/GogglesProtos$CropRegion;->memoizedIsInitialized:B

    goto :goto_a

    .line 90
    :cond_16
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$CropRegion;->hasHeight()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 91
    iput-byte v1, p0, Lcom/google/goggles/GogglesProtos$CropRegion;->memoizedIsInitialized:B

    goto :goto_a

    .line 94
    :cond_1f
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$CropRegion;->hasRegion()Z

    move-result v2

    if-nez v2, :cond_28

    .line 95
    iput-byte v1, p0, Lcom/google/goggles/GogglesProtos$CropRegion;->memoizedIsInitialized:B

    goto :goto_a

    .line 98
    :cond_28
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$CropRegion;->getRegion()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_35

    .line 99
    iput-byte v1, p0, Lcom/google/goggles/GogglesProtos$CropRegion;->memoizedIsInitialized:B

    goto :goto_a

    .line 102
    :cond_35
    iput-byte v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion;->memoizedIsInitialized:B

    move v1, v0

    .line 103
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/goggles/GogglesProtos$CropRegion$Builder;
    .registers 2

    .prologue
    .line 217
    invoke-static {}, Lcom/google/goggles/GogglesProtos$CropRegion;->newBuilder()Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$CropRegion;->newBuilderForType()Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/GogglesProtos$CropRegion$Builder;
    .registers 2

    .prologue
    .line 221
    invoke-static {p0}, Lcom/google/goggles/GogglesProtos$CropRegion;->newBuilder(Lcom/google/goggles/GogglesProtos$CropRegion;)Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$CropRegion;->toBuilder()Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

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
    .line 146
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

    .line 108
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$CropRegion;->getSerializedSize()I

    .line 109
    iget v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 110
    iget v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion;->width_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 112
    :cond_10
    iget v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1b

    .line 113
    iget v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion;->height_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 115
    :cond_1b
    iget v0, p0, Lcom/google/goggles/GogglesProtos$CropRegion;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_28

    .line 116
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$CropRegion;->region_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 118
    :cond_28
    return-void
.end method
