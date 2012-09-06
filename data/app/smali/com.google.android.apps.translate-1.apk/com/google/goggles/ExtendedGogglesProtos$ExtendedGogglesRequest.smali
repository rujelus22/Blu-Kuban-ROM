.class public final Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ExtendedGogglesProtos.java"

# interfaces
.implements Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/ExtendedGogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtendedGogglesRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    }
.end annotation


# static fields
.field public static final CLIENT_ANNOTATIONS_FIELD_NUMBER:I = 0x5

.field public static final DEPRECATED_FIELD1_FIELD_NUMBER:I = 0x8

.field public static final DEVICE_INFO_FIELD_NUMBER:I = 0x9

.field public static final ENCRYPTED_LAT_LNG_FIELD_NUMBER:I = 0x1

.field public static final EXTENDED_GOGGLES_REQUEST_FIELD_NUMBER:I = 0xefa6c2

.field public static final MS_SINCE_EPOCH_FIELD_NUMBER:I = 0x7

.field public static final NETWORK_INFO_FIELD_NUMBER:I = 0xa

.field public static final REQUEST_ID_FIELD_NUMBER:I = 0xc

.field public static final RETURN_RESULTS_FIELD_NUMBER:I = 0xd

.field public static final SEQUENCE_NUMBER_FIELD_NUMBER:I = 0xf

.field public static final SESSION_ID_FIELD_NUMBER:I = 0xb

.field public static final SOURCE_LANGUAGE_FIELD_NUMBER:I = 0x10

.field public static final TRACKED_RESULTS_FIELD_NUMBER:I = 0xe

.field private static final defaultInstance:Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

.field public static final extendedGogglesRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/goggles/GogglesProtos$GogglesRequest;",
            "Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private clientAnnotations_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field private deprecatedField1_:J

.field private deviceInfo_:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

.field private encryptedLatLng_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private msSinceEpoch_:J

.field private networkInfo_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

.field private requestId_:Ljava/lang/Object;

.field private returnResults_:Z

.field private sequenceNumber_:I

.field private sessionId_:Ljava/lang/Object;

.field private sourceLanguage_:Ljava/lang/Object;

.field private trackedResults_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 1701
    new-instance v0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->defaultInstance:Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    .line 1702
    sget-object v0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->defaultInstance:Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    invoke-direct {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->initFields()V

    .line 1710
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesRequest;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$GogglesRequest;

    move-result-object v0

    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->getDefaultInstance()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    move-result-object v1

    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->getDefaultInstance()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0xefa6c2

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->extendedGogglesRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 488
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 724
    iput-byte v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->memoizedIsInitialized:B

    .line 786
    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->memoizedSerializedSize:I

    .line 489
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;Lcom/google/goggles/ExtendedGogglesProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 483
    invoke-direct {p0, p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;-><init>(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 490
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 724
    iput-byte v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->memoizedIsInitialized:B

    .line 786
    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->memoizedSerializedSize:I

    .line 490
    return-void
.end method

.method static synthetic access$1000(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 483
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->clientAnnotations_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->clientAnnotations_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;J)J
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 483
    iput-wide p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->msSinceEpoch_:J

    return-wide p1
.end method

.method static synthetic access$1202(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;)Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->deviceInfo_:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;)Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->networkInfo_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->sourceLanguage_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->sessionId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->requestId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 483
    iput p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->sequenceNumber_:I

    return p1
.end method

.method static synthetic access$1802(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 483
    iput-boolean p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->returnResults_:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 483
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->trackedResults_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->trackedResults_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;J)J
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 483
    iput-wide p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->deprecatedField1_:J

    return-wide p1
.end method

.method static synthetic access$2102(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 483
    iput p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->bitField0_:I

    return p1
.end method

.method static synthetic access$902(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->encryptedLatLng_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;
    .registers 1

    .prologue
    .line 494
    sget-object v0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->defaultInstance:Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    return-object v0
.end method

.method private getRequestIdBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 648
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->requestId_:Ljava/lang/Object;

    .line 649
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 650
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 652
    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->requestId_:Ljava/lang/Object;

    .line 655
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getSessionIdBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 616
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->sessionId_:Ljava/lang/Object;

    .line 617
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 618
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 620
    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->sessionId_:Ljava/lang/Object;

    .line 623
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getSourceLanguageBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 584
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->sourceLanguage_:Ljava/lang/Object;

    .line 585
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 586
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 588
    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->sourceLanguage_:Ljava/lang/Object;

    .line 591
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private initFields()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 711
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->encryptedLatLng_:Lcom/google/protobuf/ByteString;

    .line 712
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->clientAnnotations_:Ljava/util/List;

    .line 713
    iput-wide v2, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->msSinceEpoch_:J

    .line 714
    invoke-static {}, Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;->getDefaultInstance()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->deviceInfo_:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    .line 715
    invoke-static {}, Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;->getDefaultInstance()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->networkInfo_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    .line 716
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->sourceLanguage_:Ljava/lang/Object;

    .line 717
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->sessionId_:Ljava/lang/Object;

    .line 718
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->requestId_:Ljava/lang/Object;

    .line 719
    iput v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->sequenceNumber_:I

    .line 720
    iput-boolean v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->returnResults_:Z

    .line 721
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->trackedResults_:Ljava/util/List;

    .line 722
    iput-wide v2, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->deprecatedField1_:J

    .line 723
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 1

    .prologue
    .line 918
    #calls: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->create()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->access$700()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 2
    .parameter

    .prologue
    .line 921
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->mergeFrom(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 887
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    move-result-object v0

    .line 888
    invoke-virtual {v0, p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 889
    #calls: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->access$600(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    move-result-object v0

    .line 891
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 898
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    move-result-object v0

    .line 899
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 900
    #calls: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->access$600(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    move-result-object v0

    .line 902
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 854
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    #calls: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->access$600(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 860
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    #calls: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->access$600(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 908
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    #calls: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->access$600(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 914
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->access$600(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 876
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    #calls: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->access$600(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 882
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    #calls: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->access$600(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 865
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    #calls: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->access$600(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 871
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    #calls: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;->access$600(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClientAnnotations(I)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;
    .registers 3
    .parameter

    .prologue
    .line 526
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->clientAnnotations_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;

    return-object v0
.end method

.method public getClientAnnotationsCount()I
    .registers 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->clientAnnotations_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getClientAnnotationsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->clientAnnotations_:Ljava/util/List;

    return-object v0
.end method

.method public getClientAnnotationsOrBuilder(I)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotationOrBuilder;
    .registers 3
    .parameter

    .prologue
    .line 530
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->clientAnnotations_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotationOrBuilder;

    return-object v0
.end method

.method public getClientAnnotationsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotationOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 520
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->clientAnnotations_:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;
    .registers 2

    .prologue
    .line 498
    sget-object v0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->defaultInstance:Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->getDefaultInstanceForType()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecatedField1()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 707
    iget-wide v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->deprecatedField1_:J

    return-wide v0
.end method

.method public getDeviceInfo()Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;
    .registers 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->deviceInfo_:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    return-object v0
.end method

.method public getEncryptedLatLng()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->encryptedLatLng_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMsSinceEpoch()J
    .registers 3

    .prologue
    .line 540
    iget-wide v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->msSinceEpoch_:J

    return-wide v0
.end method

.method public getNetworkInfo()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;
    .registers 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->networkInfo_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 634
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->requestId_:Ljava/lang/Object;

    .line 635
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 636
    check-cast v0, Ljava/lang/String;

    .line 644
    :goto_8
    return-object v0

    .line 638
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 640
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 641
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 642
    iput-object v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->requestId_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 644
    goto :goto_8
.end method

.method public getReturnResults()Z
    .registers 2

    .prologue
    .line 676
    iget-boolean v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->returnResults_:Z

    return v0
.end method

.method public getSequenceNumber()I
    .registers 2

    .prologue
    .line 666
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->sequenceNumber_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/16 v7, 0x10

    const/16 v6, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 788
    iget v3, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->memoizedSerializedSize:I

    .line 789
    const/4 v0, -0x1

    if-eq v3, v0, :cond_c

    .line 841
    :goto_b
    return v3

    .line 792
    :cond_c
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_e7

    .line 793
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->encryptedLatLng_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v0, v1

    :goto_19
    move v2, v1

    move v3, v0

    .line 796
    :goto_1b
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->clientAnnotations_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_35

    .line 797
    const/4 v4, 0x5

    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->clientAnnotations_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 796
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1b

    .line 800
    :cond_35
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_44

    .line 801
    const/4 v0, 0x7

    iget-wide v4, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->msSinceEpoch_:J

    invoke-static {v0, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v3, v0

    .line 804
    :cond_44
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v2, 0x200

    if-ne v0, v2, :cond_53

    .line 805
    iget-wide v4, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->deprecatedField1_:J

    invoke-static {v6, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    add-int/2addr v3, v0

    .line 808
    :cond_53
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v2, 0x4

    if-ne v0, v2, :cond_63

    .line 809
    const/16 v0, 0x9

    iget-object v2, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->deviceInfo_:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 812
    :cond_63
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v6, :cond_72

    .line 813
    const/16 v0, 0xa

    iget-object v2, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->networkInfo_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 816
    :cond_72
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v2, 0x20

    if-ne v0, v2, :cond_85

    .line 817
    const/16 v0, 0xb

    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->getSessionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v3, v0

    .line 820
    :cond_85
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v2, 0x40

    if-ne v0, v2, :cond_98

    .line 821
    const/16 v0, 0xc

    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->getRequestIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v3, v0

    .line 824
    :cond_98
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v2, 0x100

    if-ne v0, v2, :cond_a9

    .line 825
    const/16 v0, 0xd

    iget-boolean v2, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->returnResults_:Z

    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v3, v0

    .line 828
    :cond_a9
    :goto_a9
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->trackedResults_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_c3

    .line 829
    const/16 v2, 0xe

    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->trackedResults_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 828
    add-int/lit8 v1, v1, 0x1

    goto :goto_a9

    .line 832
    :cond_c3
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_d4

    .line 833
    const/16 v0, 0xf

    iget v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->sequenceNumber_:I

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v3, v0

    .line 836
    :cond_d4
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-ne v0, v7, :cond_e3

    .line 837
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->getSourceLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v3, v0

    .line 840
    :cond_e3
    iput v3, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->memoizedSerializedSize:I

    goto/16 :goto_b

    :cond_e7
    move v0, v1

    goto/16 :goto_19
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 602
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->sessionId_:Ljava/lang/Object;

    .line 603
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 604
    check-cast v0, Ljava/lang/String;

    .line 612
    :goto_8
    return-object v0

    .line 606
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 608
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 609
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 610
    iput-object v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->sessionId_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 612
    goto :goto_8
.end method

.method public getSourceLanguage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 570
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->sourceLanguage_:Ljava/lang/Object;

    .line 571
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 572
    check-cast v0, Ljava/lang/String;

    .line 580
    :goto_8
    return-object v0

    .line 574
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 576
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 577
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 578
    iput-object v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->sourceLanguage_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 580
    goto :goto_8
.end method

.method public getTrackedResults(I)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;
    .registers 3
    .parameter

    .prologue
    .line 693
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->trackedResults_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    return-object v0
.end method

.method public getTrackedResultsCount()I
    .registers 2

    .prologue
    .line 690
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->trackedResults_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTrackedResultsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 683
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->trackedResults_:Ljava/util/List;

    return-object v0
.end method

.method public getTrackedResultsOrBuilder(I)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResultOrBuilder;
    .registers 3
    .parameter

    .prologue
    .line 697
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->trackedResults_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResultOrBuilder;

    return-object v0
.end method

.method public getTrackedResultsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/goggles/ExtendedGogglesProtos$TrackedResultOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 687
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->trackedResults_:Ljava/util/List;

    return-object v0
.end method

.method public hasDeprecatedField1()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 704
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasDeviceInfo()Z
    .registers 3

    .prologue
    .line 547
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->bitField0_:I

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

.method public hasEncryptedLatLng()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 506
    iget v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasMsSinceEpoch()Z
    .registers 3

    .prologue
    .line 537
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->bitField0_:I

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

.method public hasNetworkInfo()Z
    .registers 3

    .prologue
    .line 557
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->bitField0_:I

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

.method public hasRequestId()Z
    .registers 3

    .prologue
    .line 631
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->bitField0_:I

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

.method public hasReturnResults()Z
    .registers 3

    .prologue
    .line 673
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasSequenceNumber()Z
    .registers 3

    .prologue
    .line 663
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->bitField0_:I

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

.method public hasSessionId()Z
    .registers 3

    .prologue
    .line 599
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->bitField0_:I

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

.method public hasSourceLanguage()Z
    .registers 3

    .prologue
    .line 567
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->bitField0_:I

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
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 726
    iget-byte v2, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->memoizedIsInitialized:B

    .line 727
    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    if-ne v2, v0, :cond_a

    .line 742
    :goto_9
    return v0

    :cond_a
    move v0, v1

    .line 727
    goto :goto_9

    :cond_c
    move v2, v1

    .line 729
    :goto_d
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->getClientAnnotationsCount()I

    move-result v3

    if-ge v2, v3, :cond_24

    .line 730
    invoke-virtual {p0, v2}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->getClientAnnotations(I)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_21

    .line 731
    iput-byte v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->memoizedIsInitialized:B

    move v0, v1

    .line 732
    goto :goto_9

    .line 729
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_24
    move v2, v1

    .line 735
    :goto_25
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->getTrackedResultsCount()I

    move-result v3

    if-ge v2, v3, :cond_3c

    .line 736
    invoke-virtual {p0, v2}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->getTrackedResults(I)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_39

    .line 737
    iput-byte v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->memoizedIsInitialized:B

    move v0, v1

    .line 738
    goto :goto_9

    .line 735
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 741
    :cond_3c
    iput-byte v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 2

    .prologue
    .line 919
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->newBuilderForType()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;
    .registers 2

    .prologue
    .line 923
    invoke-static {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->newBuilder(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->toBuilder()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest$Builder;

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
    .line 848
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 747
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->getSerializedSize()I

    .line 748
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 749
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->encryptedLatLng_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_14
    move v1, v2

    .line 751
    :goto_15
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->clientAnnotations_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2d

    .line 752
    const/4 v3, 0x5

    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->clientAnnotations_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 751
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15

    .line 754
    :cond_2d
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3a

    .line 755
    const/4 v0, 0x7

    iget-wide v3, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->msSinceEpoch_:J

    invoke-virtual {p1, v0, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 757
    :cond_3a
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_47

    .line 758
    iget-wide v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->deprecatedField1_:J

    invoke-virtual {p1, v5, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 760
    :cond_47
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_55

    .line 761
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->deviceInfo_:Lcom/google/goggles/DeviceInfoProtos$DeviceInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 763
    :cond_55
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_62

    .line 764
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->networkInfo_:Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 766
    :cond_62
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_73

    .line 767
    const/16 v0, 0xb

    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->getSessionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 769
    :cond_73
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_84

    .line 770
    const/16 v0, 0xc

    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->getRequestIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 772
    :cond_84
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_93

    .line 773
    const/16 v0, 0xd

    iget-boolean v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->returnResults_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 775
    :cond_93
    :goto_93
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->trackedResults_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_ab

    .line 776
    const/16 v1, 0xe

    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->trackedResults_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 775
    add-int/lit8 v2, v2, 0x1

    goto :goto_93

    .line 778
    :cond_ab
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_ba

    .line 779
    const/16 v0, 0xf

    iget v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->sequenceNumber_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 781
    :cond_ba
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-ne v0, v6, :cond_c7

    .line 782
    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesRequest;->getSourceLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 784
    :cond_c7
    return-void
.end method
