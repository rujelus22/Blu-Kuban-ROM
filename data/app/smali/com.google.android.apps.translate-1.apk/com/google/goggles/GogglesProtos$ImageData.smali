.class public final Lcom/google/goggles/GogglesProtos$ImageData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "GogglesProtos.java"

# interfaces
.implements Lcom/google/goggles/GogglesProtos$ImageDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImageData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/GogglesProtos$ImageData$Builder;,
        Lcom/google/goggles/GogglesProtos$ImageData$CWOffsetFromRightSideUp;,
        Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;
    }
.end annotation


# static fields
.field public static final CROP_REGION_FIELD_NUMBER:I = 0x9

.field public static final ENCODED_IMAGE_FIELD_NUMBER:I = 0x1

.field public static final HEIGHT_FIELD_NUMBER:I = 0x8

.field public static final IMAGE_ENCODING_FIELD_NUMBER:I = 0x2

.field public static final IMAGE_OFFSET_FROM_RIGHT_SIDE_UP_FIELD_NUMBER:I = 0x4

.field public static final OFFSET_ALREADY_APPLIED_FIELD_NUMBER:I = 0x6

.field public static final QUALITY_FIELD_NUMBER:I = 0x3

.field public static final WIDTH_FIELD_NUMBER:I = 0x7

.field private static final defaultInstance:Lcom/google/goggles/GogglesProtos$ImageData;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private cropRegion_:Lcom/google/goggles/GogglesProtos$CropRegion;

.field private encodedImage_:Lcom/google/protobuf/ByteString;

.field private height_:I

.field private imageEncoding_:Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;

.field private imageOffsetFromRightSideUp_:Lcom/google/goggles/GogglesProtos$ImageData$CWOffsetFromRightSideUp;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private offsetAlreadyApplied_:Z

.field private quality_:I

.field private width_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1282
    new-instance v0, Lcom/google/goggles/GogglesProtos$ImageData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/GogglesProtos$ImageData;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/GogglesProtos$ImageData;->defaultInstance:Lcom/google/goggles/GogglesProtos$ImageData;

    .line 1283
    sget-object v0, Lcom/google/goggles/GogglesProtos$ImageData;->defaultInstance:Lcom/google/goggles/GogglesProtos$ImageData;

    invoke-direct {v0}, Lcom/google/goggles/GogglesProtos$ImageData;->initFields()V

    .line 1284
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/GogglesProtos$ImageData$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 507
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 696
    iput-byte v0, p0, Lcom/google/goggles/GogglesProtos$ImageData;->memoizedIsInitialized:B

    .line 740
    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData;->memoizedSerializedSize:I

    .line 508
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/GogglesProtos$ImageData$Builder;Lcom/google/goggles/GogglesProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 502
    invoke-direct {p0, p1}, Lcom/google/goggles/GogglesProtos$ImageData;-><init>(Lcom/google/goggles/GogglesProtos$ImageData$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 509
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 696
    iput-byte v0, p0, Lcom/google/goggles/GogglesProtos$ImageData;->memoizedIsInitialized:B

    .line 740
    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData;->memoizedSerializedSize:I

    .line 509
    return-void
.end method

.method static synthetic access$1002(Lcom/google/goggles/GogglesProtos$ImageData;Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;)Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$ImageData;->imageEncoding_:Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/goggles/GogglesProtos$ImageData;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 502
    iput p1, p0, Lcom/google/goggles/GogglesProtos$ImageData;->quality_:I

    return p1
.end method

.method static synthetic access$1202(Lcom/google/goggles/GogglesProtos$ImageData;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$ImageData;->encodedImage_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/goggles/GogglesProtos$ImageData;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 502
    iput p1, p0, Lcom/google/goggles/GogglesProtos$ImageData;->width_:I

    return p1
.end method

.method static synthetic access$1402(Lcom/google/goggles/GogglesProtos$ImageData;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 502
    iput p1, p0, Lcom/google/goggles/GogglesProtos$ImageData;->height_:I

    return p1
.end method

.method static synthetic access$1502(Lcom/google/goggles/GogglesProtos$ImageData;Lcom/google/goggles/GogglesProtos$ImageData$CWOffsetFromRightSideUp;)Lcom/google/goggles/GogglesProtos$ImageData$CWOffsetFromRightSideUp;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$ImageData;->imageOffsetFromRightSideUp_:Lcom/google/goggles/GogglesProtos$ImageData$CWOffsetFromRightSideUp;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/google/goggles/GogglesProtos$ImageData;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 502
    iput-boolean p1, p0, Lcom/google/goggles/GogglesProtos$ImageData;->offsetAlreadyApplied_:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/google/goggles/GogglesProtos$ImageData;Lcom/google/goggles/GogglesProtos$CropRegion;)Lcom/google/goggles/GogglesProtos$CropRegion;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$ImageData;->cropRegion_:Lcom/google/goggles/GogglesProtos$CropRegion;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/google/goggles/GogglesProtos$ImageData;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 502
    iput p1, p0, Lcom/google/goggles/GogglesProtos$ImageData;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/GogglesProtos$ImageData;
    .registers 1

    .prologue
    .line 513
    sget-object v0, Lcom/google/goggles/GogglesProtos$ImageData;->defaultInstance:Lcom/google/goggles/GogglesProtos$ImageData;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 687
    sget-object v0, Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;->JPEG:Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageData;->imageEncoding_:Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;

    .line 688
    iput v1, p0, Lcom/google/goggles/GogglesProtos$ImageData;->quality_:I

    .line 689
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageData;->encodedImage_:Lcom/google/protobuf/ByteString;

    .line 690
    iput v1, p0, Lcom/google/goggles/GogglesProtos$ImageData;->width_:I

    .line 691
    iput v1, p0, Lcom/google/goggles/GogglesProtos$ImageData;->height_:I

    .line 692
    sget-object v0, Lcom/google/goggles/GogglesProtos$ImageData$CWOffsetFromRightSideUp;->ZERO_DEGREES:Lcom/google/goggles/GogglesProtos$ImageData$CWOffsetFromRightSideUp;

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageData;->imageOffsetFromRightSideUp_:Lcom/google/goggles/GogglesProtos$ImageData$CWOffsetFromRightSideUp;

    .line 693
    iput-boolean v1, p0, Lcom/google/goggles/GogglesProtos$ImageData;->offsetAlreadyApplied_:Z

    .line 694
    invoke-static {}, Lcom/google/goggles/GogglesProtos$CropRegion;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$CropRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageData;->cropRegion_:Lcom/google/goggles/GogglesProtos$CropRegion;

    .line 695
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/GogglesProtos$ImageData$Builder;
    .registers 1

    .prologue
    .line 856
    #calls: Lcom/google/goggles/GogglesProtos$ImageData$Builder;->create()Lcom/google/goggles/GogglesProtos$ImageData$Builder;
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->access$800()Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/GogglesProtos$ImageData;)Lcom/google/goggles/GogglesProtos$ImageData$Builder;
    .registers 2
    .parameter

    .prologue
    .line 859
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageData;->newBuilder()Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->mergeFrom(Lcom/google/goggles/GogglesProtos$ImageData;)Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/GogglesProtos$ImageData;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 825
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageData;->newBuilder()Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    move-result-object v0

    .line 826
    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 827
    #calls: Lcom/google/goggles/GogglesProtos$ImageData$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$ImageData;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->access$700(Lcom/google/goggles/GogglesProtos$ImageData$Builder;)Lcom/google/goggles/GogglesProtos$ImageData;

    move-result-object v0

    .line 829
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$ImageData;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 836
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageData;->newBuilder()Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    move-result-object v0

    .line 837
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 838
    #calls: Lcom/google/goggles/GogglesProtos$ImageData$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$ImageData;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->access$700(Lcom/google/goggles/GogglesProtos$ImageData$Builder;)Lcom/google/goggles/GogglesProtos$ImageData;

    move-result-object v0

    .line 840
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/GogglesProtos$ImageData;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 792
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageData;->newBuilder()Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$ImageData$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$ImageData;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->access$700(Lcom/google/goggles/GogglesProtos$ImageData$Builder;)Lcom/google/goggles/GogglesProtos$ImageData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$ImageData;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 798
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageData;->newBuilder()Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$ImageData$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$ImageData;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->access$700(Lcom/google/goggles/GogglesProtos$ImageData$Builder;)Lcom/google/goggles/GogglesProtos$ImageData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/GogglesProtos$ImageData;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 846
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageData;->newBuilder()Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$ImageData$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$ImageData;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->access$700(Lcom/google/goggles/GogglesProtos$ImageData$Builder;)Lcom/google/goggles/GogglesProtos$ImageData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$ImageData;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 852
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageData;->newBuilder()Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/GogglesProtos$ImageData$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$ImageData;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->access$700(Lcom/google/goggles/GogglesProtos$ImageData$Builder;)Lcom/google/goggles/GogglesProtos$ImageData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/GogglesProtos$ImageData;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 814
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageData;->newBuilder()Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$ImageData$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$ImageData;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->access$700(Lcom/google/goggles/GogglesProtos$ImageData$Builder;)Lcom/google/goggles/GogglesProtos$ImageData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$ImageData;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 820
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageData;->newBuilder()Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$ImageData$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$ImageData;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->access$700(Lcom/google/goggles/GogglesProtos$ImageData$Builder;)Lcom/google/goggles/GogglesProtos$ImageData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/GogglesProtos$ImageData;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 803
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageData;->newBuilder()Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$ImageData$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$ImageData;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->access$700(Lcom/google/goggles/GogglesProtos$ImageData$Builder;)Lcom/google/goggles/GogglesProtos$ImageData;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$ImageData;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 809
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageData;->newBuilder()Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$ImageData$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$ImageData;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->access$700(Lcom/google/goggles/GogglesProtos$ImageData$Builder;)Lcom/google/goggles/GogglesProtos$ImageData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCropRegion()Lcom/google/goggles/GogglesProtos$CropRegion;
    .registers 2

    .prologue
    .line 683
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageData;->cropRegion_:Lcom/google/goggles/GogglesProtos$CropRegion;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/GogglesProtos$ImageData;
    .registers 2

    .prologue
    .line 517
    sget-object v0, Lcom/google/goggles/GogglesProtos$ImageData;->defaultInstance:Lcom/google/goggles/GogglesProtos$ImageData;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageData;->getDefaultInstanceForType()Lcom/google/goggles/GogglesProtos$ImageData;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedImage()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageData;->encodedImage_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 653
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData;->height_:I

    return v0
.end method

.method public getImageEncoding()Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;
    .registers 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageData;->imageEncoding_:Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;

    return-object v0
.end method

.method public getImageOffsetFromRightSideUp()Lcom/google/goggles/GogglesProtos$ImageData$CWOffsetFromRightSideUp;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 663
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageData;->imageOffsetFromRightSideUp_:Lcom/google/goggles/GogglesProtos$ImageData$CWOffsetFromRightSideUp;

    return-object v0
.end method

.method public getOffsetAlreadyApplied()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 673
    iget-boolean v0, p0, Lcom/google/goggles/GogglesProtos$ImageData;->offsetAlreadyApplied_:Z

    return v0
.end method

.method public getQuality()I
    .registers 2

    .prologue
    .line 623
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData;->quality_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 742
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData;->memoizedSerializedSize:I

    .line 743
    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    .line 779
    :goto_a
    return v0

    .line 745
    :cond_b
    const/4 v0, 0x0

    .line 746
    iget v1, p0, Lcom/google/goggles/GogglesProtos$ImageData;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_19

    .line 747
    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$ImageData;->encodedImage_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 750
    :cond_19
    iget v1, p0, Lcom/google/goggles/GogglesProtos$ImageData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_2a

    .line 751
    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$ImageData;->imageEncoding_:Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;

    invoke-virtual {v1}, Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;->getNumber()I

    move-result v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 754
    :cond_2a
    iget v1, p0, Lcom/google/goggles/GogglesProtos$ImageData;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_38

    .line 755
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/goggles/GogglesProtos$ImageData;->quality_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 758
    :cond_38
    iget v1, p0, Lcom/google/goggles/GogglesProtos$ImageData;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_4b

    .line 759
    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$ImageData;->imageOffsetFromRightSideUp_:Lcom/google/goggles/GogglesProtos$ImageData$CWOffsetFromRightSideUp;

    invoke-virtual {v1}, Lcom/google/goggles/GogglesProtos$ImageData$CWOffsetFromRightSideUp;->getNumber()I

    move-result v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 762
    :cond_4b
    iget v1, p0, Lcom/google/goggles/GogglesProtos$ImageData;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_5b

    .line 763
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/goggles/GogglesProtos$ImageData;->offsetAlreadyApplied_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 766
    :cond_5b
    iget v1, p0, Lcom/google/goggles/GogglesProtos$ImageData;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_69

    .line 767
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/goggles/GogglesProtos$ImageData;->width_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 770
    :cond_69
    iget v1, p0, Lcom/google/goggles/GogglesProtos$ImageData;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_78

    .line 771
    iget v1, p0, Lcom/google/goggles/GogglesProtos$ImageData;->height_:I

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 774
    :cond_78
    iget v1, p0, Lcom/google/goggles/GogglesProtos$ImageData;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_89

    .line 775
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/goggles/GogglesProtos$ImageData;->cropRegion_:Lcom/google/goggles/GogglesProtos$CropRegion;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 778
    :cond_89
    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData;->memoizedSerializedSize:I

    goto/16 :goto_a
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 643
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData;->width_:I

    return v0
.end method

.method public hasCropRegion()Z
    .registers 3

    .prologue
    .line 680
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasEncodedImage()Z
    .registers 3

    .prologue
    .line 630
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData;->bitField0_:I

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

.method public hasHeight()Z
    .registers 3

    .prologue
    .line 650
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData;->bitField0_:I

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

.method public hasImageEncoding()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 610
    iget v1, p0, Lcom/google/goggles/GogglesProtos$ImageData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasImageOffsetFromRightSideUp()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 660
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasOffsetAlreadyApplied()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 670
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasQuality()Z
    .registers 3

    .prologue
    .line 620
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData;->bitField0_:I

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

.method public hasWidth()Z
    .registers 3

    .prologue
    .line 640
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData;->bitField0_:I

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
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 698
    iget-byte v2, p0, Lcom/google/goggles/GogglesProtos$ImageData;->memoizedIsInitialized:B

    .line 699
    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    if-ne v2, v0, :cond_a

    .line 708
    :goto_9
    return v0

    :cond_a
    move v0, v1

    .line 699
    goto :goto_9

    .line 701
    :cond_c
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageData;->hasCropRegion()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 702
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageData;->getCropRegion()Lcom/google/goggles/GogglesProtos$CropRegion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/GogglesProtos$CropRegion;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_20

    .line 703
    iput-byte v1, p0, Lcom/google/goggles/GogglesProtos$ImageData;->memoizedIsInitialized:B

    move v0, v1

    .line 704
    goto :goto_9

    .line 707
    :cond_20
    iput-byte v0, p0, Lcom/google/goggles/GogglesProtos$ImageData;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/goggles/GogglesProtos$ImageData$Builder;
    .registers 2

    .prologue
    .line 857
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageData;->newBuilder()Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageData;->newBuilderForType()Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/GogglesProtos$ImageData$Builder;
    .registers 2

    .prologue
    .line 861
    invoke-static {p0}, Lcom/google/goggles/GogglesProtos$ImageData;->newBuilder(Lcom/google/goggles/GogglesProtos$ImageData;)Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageData;->toBuilder()Lcom/google/goggles/GogglesProtos$ImageData$Builder;

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
    .line 786
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 713
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageData;->getSerializedSize()I

    .line 714
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_13

    .line 715
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageData;->encodedImage_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 717
    :cond_13
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_22

    .line 718
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageData;->imageEncoding_:Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;

    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 720
    :cond_22
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_2e

    .line 721
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/goggles/GogglesProtos$ImageData;->quality_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 723
    :cond_2e
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3f

    .line 724
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageData;->imageOffsetFromRightSideUp_:Lcom/google/goggles/GogglesProtos$ImageData$CWOffsetFromRightSideUp;

    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$ImageData$CWOffsetFromRightSideUp;->getNumber()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 726
    :cond_3f
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_4d

    .line 727
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/goggles/GogglesProtos$ImageData;->offsetAlreadyApplied_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 729
    :cond_4d
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_59

    .line 730
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/goggles/GogglesProtos$ImageData;->width_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 732
    :cond_59
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_66

    .line 733
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData;->height_:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 735
    :cond_66
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_75

    .line 736
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$ImageData;->cropRegion_:Lcom/google/goggles/GogglesProtos$CropRegion;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 738
    :cond_75
    return-void
.end method
