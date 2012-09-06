.class public final Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "GogglesReplayProtos.java"

# interfaces
.implements Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/GogglesReplayProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GogglesReplayResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;,
        Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;,
        Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadataOrBuilder;
    }
.end annotation


# static fields
.field public static final GOGGLES_RESPONSE_FIELD_NUMBER:I = 0x1

.field public static final QUERY_IMAGE_FIELD_NUMBER:I = 0x2

.field public static final QUERY_IMAGE_THUMBNAIL_FIELD_NUMBER:I = 0x3

.field public static final USER_CONTRIBUTION_METADATA_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private gogglesResponse_:Lcom/google/goggles/GogglesProtos$GogglesResponse;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private queryImageThumbnail_:Lcom/google/goggles/GogglesProtos$Image;

.field private queryImage_:Lcom/google/goggles/GogglesProtos$Image;

.field private userContributionMetadata_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1919
    new-instance v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->defaultInstance:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    .line 1920
    sget-object v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->defaultInstance:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    invoke-direct {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->initFields()V

    .line 1921
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 507
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1404
    iput-byte v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->memoizedIsInitialized:B

    .line 1454
    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->memoizedSerializedSize:I

    .line 508
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;Lcom/google/goggles/GogglesReplayProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 502
    invoke-direct {p0, p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;-><init>(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 509
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1404
    iput-byte v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->memoizedIsInitialized:B

    .line 1454
    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->memoizedSerializedSize:I

    .line 509
    return-void
.end method

.method static synthetic access$2102(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;Lcom/google/goggles/GogglesProtos$GogglesResponse;)Lcom/google/goggles/GogglesProtos$GogglesResponse;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->gogglesResponse_:Lcom/google/goggles/GogglesProtos$GogglesResponse;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;Lcom/google/goggles/GogglesProtos$Image;)Lcom/google/goggles/GogglesProtos$Image;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->queryImage_:Lcom/google/goggles/GogglesProtos$Image;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;Lcom/google/goggles/GogglesProtos$Image;)Lcom/google/goggles/GogglesProtos$Image;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->queryImageThumbnail_:Lcom/google/goggles/GogglesProtos$Image;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->userContributionMetadata_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 502
    iput p1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;
    .registers 1

    .prologue
    .line 513
    sget-object v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->defaultInstance:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 1399
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->gogglesResponse_:Lcom/google/goggles/GogglesProtos$GogglesResponse;

    .line 1400
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->queryImage_:Lcom/google/goggles/GogglesProtos$Image;

    .line 1401
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->queryImageThumbnail_:Lcom/google/goggles/GogglesProtos$Image;

    .line 1402
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->getDefaultInstance()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->userContributionMetadata_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    .line 1403
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;
    .registers 1

    .prologue
    .line 1554
    #calls: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->create()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->access$1900()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1557
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->mergeFrom(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1523
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    move-result-object v0

    .line 1524
    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1525
    #calls: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->buildParsed()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;
    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->access$1800(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    move-result-object v0

    .line 1527
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1534
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    move-result-object v0

    .line 1535
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1536
    #calls: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->buildParsed()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;
    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->access$1800(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    move-result-object v0

    .line 1538
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1490
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    #calls: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->buildParsed()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;
    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->access$1800(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1496
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    #calls: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->buildParsed()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;
    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->access$1800(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1544
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    #calls: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->buildParsed()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;
    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->access$1800(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1550
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->buildParsed()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;
    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->access$1800(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1512
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    #calls: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->buildParsed()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;
    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->access$1800(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1518
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    #calls: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->buildParsed()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;
    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->access$1800(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1501
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    #calls: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->buildParsed()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;
    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->access$1800(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;
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
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    #calls: Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->buildParsed()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;
    invoke-static {v0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;->access$1800(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;
    .registers 2

    .prologue
    .line 517
    sget-object v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->defaultInstance:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->getDefaultInstanceForType()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    move-result-object v0

    return-object v0
.end method

.method public getGogglesResponse()Lcom/google/goggles/GogglesProtos$GogglesResponse;
    .registers 2

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->gogglesResponse_:Lcom/google/goggles/GogglesProtos$GogglesResponse;

    return-object v0
.end method

.method public getQueryImage()Lcom/google/goggles/GogglesProtos$Image;
    .registers 2

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->queryImage_:Lcom/google/goggles/GogglesProtos$Image;

    return-object v0
.end method

.method public getQueryImageThumbnail()Lcom/google/goggles/GogglesProtos$Image;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->queryImageThumbnail_:Lcom/google/goggles/GogglesProtos$Image;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1456
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->memoizedSerializedSize:I

    .line 1457
    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 1477
    :goto_8
    return v0

    .line 1459
    :cond_9
    const/4 v0, 0x0

    .line 1460
    iget v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_17

    .line 1461
    iget-object v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->gogglesResponse_:Lcom/google/goggles/GogglesProtos$GogglesResponse;

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1464
    :cond_17
    iget v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_24

    .line 1465
    iget-object v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->queryImage_:Lcom/google/goggles/GogglesProtos$Image;

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1468
    :cond_24
    iget v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_32

    .line 1469
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->queryImageThumbnail_:Lcom/google/goggles/GogglesProtos$Image;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1472
    :cond_32
    iget v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_41

    .line 1473
    iget-object v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->userContributionMetadata_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1476
    :cond_41
    iput v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->memoizedSerializedSize:I

    goto :goto_8
.end method

.method public getUserContributionMetadata()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;
    .registers 2

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->userContributionMetadata_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    return-object v0
.end method

.method public hasGogglesResponse()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1362
    iget v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasQueryImage()Z
    .registers 3

    .prologue
    .line 1372
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->bitField0_:I

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

.method public hasQueryImageThumbnail()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1382
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->bitField0_:I

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

.method public hasUserContributionMetadata()Z
    .registers 3

    .prologue
    .line 1392
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->bitField0_:I

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
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1406
    iget-byte v2, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->memoizedIsInitialized:B

    .line 1407
    const/4 v3, -0x1

    if-eq v2, v3, :cond_d

    if-ne v2, v0, :cond_b

    :goto_9
    move v1, v0

    .line 1434
    :goto_a
    return v1

    :cond_b
    move v0, v1

    .line 1407
    goto :goto_9

    .line 1409
    :cond_d
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->hasGogglesResponse()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1410
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->getGogglesResponse()Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_20

    .line 1411
    iput-byte v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 1415
    :cond_20
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->hasQueryImage()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1416
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->getQueryImage()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/GogglesProtos$Image;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_33

    .line 1417
    iput-byte v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 1421
    :cond_33
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->hasQueryImageThumbnail()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1422
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->getQueryImageThumbnail()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/GogglesProtos$Image;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_46

    .line 1423
    iput-byte v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 1427
    :cond_46
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->hasUserContributionMetadata()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 1428
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->getUserContributionMetadata()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_59

    .line 1429
    iput-byte v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 1433
    :cond_59
    iput-byte v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->memoizedIsInitialized:B

    move v1, v0

    .line 1434
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;
    .registers 2

    .prologue
    .line 1555
    invoke-static {}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->newBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->newBuilderForType()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;
    .registers 2

    .prologue
    .line 1559
    invoke-static {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->newBuilder(Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;)Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->toBuilder()Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$Builder;

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
    .line 1484
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

    .line 1439
    invoke-virtual {p0}, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->getSerializedSize()I

    .line 1440
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 1441
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->gogglesResponse_:Lcom/google/goggles/GogglesProtos$GogglesResponse;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1443
    :cond_11
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1c

    .line 1444
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->queryImage_:Lcom/google/goggles/GogglesProtos$Image;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1446
    :cond_1c
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_28

    .line 1447
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->queryImageThumbnail_:Lcom/google/goggles/GogglesProtos$Image;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1449
    :cond_28
    iget v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_35

    .line 1450
    iget-object v0, p0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;->userContributionMetadata_:Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse$UserContributionMetadata;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1452
    :cond_35
    return-void
.end method
