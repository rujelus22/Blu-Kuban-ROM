.class public final Lcom/google/goggles/GogglesProtos$Image;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "GogglesProtos.java"

# interfaces
.implements Lcom/google/goggles/GogglesProtos$ImageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Image"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/GogglesProtos$Image$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage",
        "<",
        "Lcom/google/goggles/GogglesProtos$Image;",
        ">;",
        "Lcom/google/goggles/GogglesProtos$ImageOrBuilder;"
    }
.end annotation


# static fields
.field public static final DOCID_FIELD_NUMBER:I = 0x4

.field public static final IMAGE_DATA_FIELD_NUMBER:I = 0x1

.field public static final IMAGE_URL_FIELD_NUMBER:I = 0x2

.field public static final ROI_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/goggles/GogglesProtos$Image;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private docid_:Ljava/lang/Object;

.field private imageData_:Lcom/google/goggles/GogglesProtos$ImageData;

.field private imageUrl_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private roi_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1900
    new-instance v0, Lcom/google/goggles/GogglesProtos$Image;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/GogglesProtos$Image;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/GogglesProtos$Image;->defaultInstance:Lcom/google/goggles/GogglesProtos$Image;

    .line 1901
    sget-object v0, Lcom/google/goggles/GogglesProtos$Image;->defaultInstance:Lcom/google/goggles/GogglesProtos$Image;

    invoke-direct {v0}, Lcom/google/goggles/GogglesProtos$Image;->initFields()V

    .line 1902
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/GogglesProtos$Image$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1314
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    .line 1418
    iput-byte v0, p0, Lcom/google/goggles/GogglesProtos$Image;->memoizedIsInitialized:B

    .line 1464
    iput v0, p0, Lcom/google/goggles/GogglesProtos$Image;->memoizedSerializedSize:I

    .line 1315
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/GogglesProtos$Image$Builder;Lcom/google/goggles/GogglesProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1309
    invoke-direct {p0, p1}, Lcom/google/goggles/GogglesProtos$Image;-><init>(Lcom/google/goggles/GogglesProtos$Image$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1316
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 1418
    iput-byte v0, p0, Lcom/google/goggles/GogglesProtos$Image;->memoizedIsInitialized:B

    .line 1464
    iput v0, p0, Lcom/google/goggles/GogglesProtos$Image;->memoizedSerializedSize:I

    .line 1316
    return-void
.end method

.method static synthetic access$2202(Lcom/google/goggles/GogglesProtos$Image;Lcom/google/goggles/GogglesProtos$ImageData;)Lcom/google/goggles/GogglesProtos$ImageData;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1309
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$Image;->imageData_:Lcom/google/goggles/GogglesProtos$ImageData;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/google/goggles/GogglesProtos$Image;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1309
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$Image;->imageUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/google/goggles/GogglesProtos$Image;Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1309
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$Image;->roi_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/google/goggles/GogglesProtos$Image;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1309
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$Image;->docid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/google/goggles/GogglesProtos$Image;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1309
    iput p1, p0, Lcom/google/goggles/GogglesProtos$Image;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/GogglesProtos$Image;
    .registers 1

    .prologue
    .line 1320
    sget-object v0, Lcom/google/goggles/GogglesProtos$Image;->defaultInstance:Lcom/google/goggles/GogglesProtos$Image;

    return-object v0
.end method

.method private getDocidBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$Image;->docid_:Ljava/lang/Object;

    .line 1402
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1403
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1405
    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$Image;->docid_:Ljava/lang/Object;

    .line 1408
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getImageUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$Image;->imageUrl_:Ljava/lang/Object;

    .line 1360
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1361
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1363
    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$Image;->imageUrl_:Ljava/lang/Object;

    .line 1366
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 1413
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageData;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$ImageData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$Image;->imageData_:Lcom/google/goggles/GogglesProtos$ImageData;

    .line 1414
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$Image;->imageUrl_:Ljava/lang/Object;

    .line 1415
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->getDefaultInstance()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$Image;->roi_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 1416
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$Image;->docid_:Ljava/lang/Object;

    .line 1417
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/GogglesProtos$Image$Builder;
    .registers 1

    .prologue
    .line 1565
    #calls: Lcom/google/goggles/GogglesProtos$Image$Builder;->create()Lcom/google/goggles/GogglesProtos$Image$Builder;
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image$Builder;->access$2000()Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/GogglesProtos$Image;)Lcom/google/goggles/GogglesProtos$Image$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1568
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image;->newBuilder()Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->mergeFrom(Lcom/google/goggles/GogglesProtos$Image;)Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/GogglesProtos$Image;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1534
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image;->newBuilder()Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    .line 1535
    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1536
    #calls: Lcom/google/goggles/GogglesProtos$Image$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$Image;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->access$1900(Lcom/google/goggles/GogglesProtos$Image$Builder;)Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    .line 1538
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$Image;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1545
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image;->newBuilder()Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    .line 1546
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesProtos$Image$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1547
    #calls: Lcom/google/goggles/GogglesProtos$Image$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$Image;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->access$1900(Lcom/google/goggles/GogglesProtos$Image$Builder;)Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    .line 1549
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/GogglesProtos$Image;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1501
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image;->newBuilder()Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$Image$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$Image$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$Image;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->access$1900(Lcom/google/goggles/GogglesProtos$Image$Builder;)Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$Image;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1507
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image;->newBuilder()Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesProtos$Image$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$Image$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$Image$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$Image;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->access$1900(Lcom/google/goggles/GogglesProtos$Image$Builder;)Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/GogglesProtos$Image;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1555
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image;->newBuilder()Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$Image$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$Image$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$Image;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->access$1900(Lcom/google/goggles/GogglesProtos$Image$Builder;)Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$Image;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1561
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image;->newBuilder()Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesProtos$Image$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/GogglesProtos$Image$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$Image;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->access$1900(Lcom/google/goggles/GogglesProtos$Image$Builder;)Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/GogglesProtos$Image;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1523
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image;->newBuilder()Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$Image$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$Image$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$Image;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->access$1900(Lcom/google/goggles/GogglesProtos$Image$Builder;)Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$Image;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1529
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image;->newBuilder()Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesProtos$Image$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$Image$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$Image$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$Image;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->access$1900(Lcom/google/goggles/GogglesProtos$Image$Builder;)Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/GogglesProtos$Image;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1512
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image;->newBuilder()Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$Image$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$Image$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$Image;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->access$1900(Lcom/google/goggles/GogglesProtos$Image$Builder;)Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$Image;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1518
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image;->newBuilder()Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesProtos$Image$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$Image$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$Image$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$Image;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$Image$Builder;->access$1900(Lcom/google/goggles/GogglesProtos$Image$Builder;)Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/GogglesProtos$Image;
    .registers 2

    .prologue
    .line 1324
    sget-object v0, Lcom/google/goggles/GogglesProtos$Image;->defaultInstance:Lcom/google/goggles/GogglesProtos$Image;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1309
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Image;->getDefaultInstanceForType()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    return-object v0
.end method

.method public getDocid()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$Image;->docid_:Ljava/lang/Object;

    .line 1388
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1389
    check-cast v0, Ljava/lang/String;

    .line 1397
    :goto_8
    return-object v0

    .line 1391
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1393
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1394
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1395
    iput-object v1, p0, Lcom/google/goggles/GogglesProtos$Image;->docid_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 1397
    goto :goto_8
.end method

.method public getImageData()Lcom/google/goggles/GogglesProtos$ImageData;
    .registers 2

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$Image;->imageData_:Lcom/google/goggles/GogglesProtos$ImageData;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$Image;->imageUrl_:Ljava/lang/Object;

    .line 1346
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1347
    check-cast v0, Ljava/lang/String;

    .line 1355
    :goto_8
    return-object v0

    .line 1349
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1351
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1352
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1353
    iput-object v1, p0, Lcom/google/goggles/GogglesProtos$Image;->imageUrl_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 1355
    goto :goto_8
.end method

.method public getRoi()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 2

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$Image;->roi_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1466
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Image;->memoizedSerializedSize:I

    .line 1467
    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 1488
    :goto_8
    return v0

    .line 1469
    :cond_9
    const/4 v0, 0x0

    .line 1470
    iget v1, p0, Lcom/google/goggles/GogglesProtos$Image;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_17

    .line 1471
    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$Image;->imageData_:Lcom/google/goggles/GogglesProtos$ImageData;

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1474
    :cond_17
    iget v1, p0, Lcom/google/goggles/GogglesProtos$Image;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_26

    .line 1475
    invoke-direct {p0}, Lcom/google/goggles/GogglesProtos$Image;->getImageUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1478
    :cond_26
    iget v1, p0, Lcom/google/goggles/GogglesProtos$Image;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_34

    .line 1479
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/goggles/GogglesProtos$Image;->roi_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1482
    :cond_34
    iget v1, p0, Lcom/google/goggles/GogglesProtos$Image;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_45

    .line 1483
    invoke-direct {p0}, Lcom/google/goggles/GogglesProtos$Image;->getDocidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1486
    :cond_45
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Image;->extensionsSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1487
    iput v0, p0, Lcom/google/goggles/GogglesProtos$Image;->memoizedSerializedSize:I

    goto :goto_8
.end method

.method public hasDocid()Z
    .registers 3

    .prologue
    .line 1384
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Image;->bitField0_:I

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

.method public hasImageData()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1332
    iget v1, p0, Lcom/google/goggles/GogglesProtos$Image;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasImageUrl()Z
    .registers 3

    .prologue
    .line 1342
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Image;->bitField0_:I

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

.method public hasRoi()Z
    .registers 3

    .prologue
    .line 1374
    iget v0, p0, Lcom/google/goggles/GogglesProtos$Image;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1420
    iget-byte v2, p0, Lcom/google/goggles/GogglesProtos$Image;->memoizedIsInitialized:B

    .line 1421
    const/4 v3, -0x1

    if-eq v2, v3, :cond_d

    if-ne v2, v0, :cond_b

    :goto_9
    move v1, v0

    .line 1440
    :goto_a
    return v1

    :cond_b
    move v0, v1

    .line 1421
    goto :goto_9

    .line 1423
    :cond_d
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Image;->hasImageData()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1424
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Image;->getImageData()Lcom/google/goggles/GogglesProtos$ImageData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/GogglesProtos$ImageData;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_20

    .line 1425
    iput-byte v1, p0, Lcom/google/goggles/GogglesProtos$Image;->memoizedIsInitialized:B

    goto :goto_a

    .line 1429
    :cond_20
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Image;->hasRoi()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1430
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Image;->getRoi()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_33

    .line 1431
    iput-byte v1, p0, Lcom/google/goggles/GogglesProtos$Image;->memoizedIsInitialized:B

    goto :goto_a

    .line 1435
    :cond_33
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Image;->extensionsAreInitialized()Z

    move-result v2

    if-nez v2, :cond_3c

    .line 1436
    iput-byte v1, p0, Lcom/google/goggles/GogglesProtos$Image;->memoizedIsInitialized:B

    goto :goto_a

    .line 1439
    :cond_3c
    iput-byte v0, p0, Lcom/google/goggles/GogglesProtos$Image;->memoizedIsInitialized:B

    move v1, v0

    .line 1440
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/goggles/GogglesProtos$Image$Builder;
    .registers 2

    .prologue
    .line 1566
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image;->newBuilder()Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1309
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Image;->newBuilderForType()Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/GogglesProtos$Image$Builder;
    .registers 2

    .prologue
    .line 1570
    invoke-static {p0}, Lcom/google/goggles/GogglesProtos$Image;->newBuilder(Lcom/google/goggles/GogglesProtos$Image;)Lcom/google/goggles/GogglesProtos$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1309
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Image;->toBuilder()Lcom/google/goggles/GogglesProtos$Image$Builder;

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
    .line 1495
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->writeReplace()Ljava/lang/Object;

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
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1445
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Image;->getSerializedSize()I

    .line 1447
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$Image;->newExtensionWriter()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 1449
    iget v1, p0, Lcom/google/goggles/GogglesProtos$Image;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_15

    .line 1450
    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$Image;->imageData_:Lcom/google/goggles/GogglesProtos$ImageData;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1452
    :cond_15
    iget v1, p0, Lcom/google/goggles/GogglesProtos$Image;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_22

    .line 1453
    invoke-direct {p0}, Lcom/google/goggles/GogglesProtos$Image;->getImageUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1455
    :cond_22
    iget v1, p0, Lcom/google/goggles/GogglesProtos$Image;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2e

    .line 1456
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/goggles/GogglesProtos$Image;->roi_:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1458
    :cond_2e
    iget v1, p0, Lcom/google/goggles/GogglesProtos$Image;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3d

    .line 1459
    invoke-direct {p0}, Lcom/google/goggles/GogglesProtos$Image;->getDocidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1461
    :cond_3d
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 1462
    return-void
.end method
