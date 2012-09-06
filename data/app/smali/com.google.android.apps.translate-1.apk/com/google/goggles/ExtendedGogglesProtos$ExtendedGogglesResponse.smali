.class public final Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ExtendedGogglesProtos.java"

# interfaces
.implements Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/ExtendedGogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtendedGogglesResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;
    }
.end annotation


# static fields
.field public static final EXTENDED_GOGGLES_RESPONSE_FIELD_NUMBER:I = 0xefa681

.field public static final EYE_CANDY_RESULTS_FIELD_NUMBER:I = 0x1

.field public static final GOGGLES_ID_FIELD_NUMBER:I = 0x2

.field public static final MOMENT_ID_FIELD_NUMBER:I = 0x5

.field public static final PUGGLE_RESULTS_FIELD_NUMBER:I = 0x7

.field public static final TRACKING_ID_FIELD_NUMBER:I = 0x6

.field private static final defaultInstance:Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;

.field public static final extendedGogglesResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/goggles/GogglesProtos$GogglesResponse;",
            "Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private eyeCandyResults_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ResultProtos$Result;",
            ">;"
        }
    .end annotation
.end field

.field private gogglesId_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private momentId_:Ljava/lang/Object;

.field private puggleResults_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ResultProtos$Result;",
            ">;"
        }
    .end annotation
.end field

.field private trackingId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 2502
    new-instance v0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->defaultInstance:Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;

    .line 2503
    sget-object v0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->defaultInstance:Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;

    invoke-direct {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->initFields()V

    .line 2511
    invoke-static {}, Lcom/google/goggles/GogglesProtos$GogglesResponse;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$GogglesResponse;

    move-result-object v0

    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->getDefaultInstance()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;

    move-result-object v1

    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->getDefaultInstance()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0xefa681

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->extendedGogglesResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1752
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1889
    iput-byte v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->memoizedIsInitialized:B

    .line 1930
    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->memoizedSerializedSize:I

    .line 1753
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;Lcom/google/goggles/ExtendedGogglesProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1747
    invoke-direct {p0, p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;-><init>(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1754
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1889
    iput-byte v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->memoizedIsInitialized:B

    .line 1930
    iput v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->memoizedSerializedSize:I

    .line 1754
    return-void
.end method

.method static synthetic access$2500(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->eyeCandyResults_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1747
    iput-object p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->eyeCandyResults_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;J)J
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1747
    iput-wide p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->gogglesId_:J

    return-wide p1
.end method

.method static synthetic access$2702(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1747
    iput-object p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->momentId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1747
    iput-object p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->trackingId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 1747
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->puggleResults_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1747
    iput-object p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->puggleResults_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1747
    iput p1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;
    .registers 1

    .prologue
    .line 1758
    sget-object v0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->defaultInstance:Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;

    return-object v0
.end method

.method private getMomentIdBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->momentId_:Ljava/lang/Object;

    .line 1819
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1820
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1822
    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->momentId_:Ljava/lang/Object;

    .line 1825
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getTrackingIdBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->trackingId_:Ljava/lang/Object;

    .line 1851
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1852
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1854
    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->trackingId_:Ljava/lang/Object;

    .line 1857
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 1883
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->eyeCandyResults_:Ljava/util/List;

    .line 1884
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->gogglesId_:J

    .line 1885
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->momentId_:Ljava/lang/Object;

    .line 1886
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->trackingId_:Ljava/lang/Object;

    .line 1887
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->puggleResults_:Ljava/util/List;

    .line 1888
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;
    .registers 1

    .prologue
    .line 2034
    #calls: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->create()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->access$2300()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;
    .registers 2
    .parameter

    .prologue
    .line 2037
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->mergeFrom(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2003
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    move-result-object v0

    .line 2004
    invoke-virtual {v0, p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2005
    #calls: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->access$2200(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;

    move-result-object v0

    .line 2007
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2014
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    move-result-object v0

    .line 2015
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2016
    #calls: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->access$2200(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;

    move-result-object v0

    .line 2018
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1970
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    #calls: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->access$2200(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1976
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    #calls: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->access$2200(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2024
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    #calls: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->access$2200(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2030
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->access$2200(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1992
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    #calls: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->access$2200(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1998
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    #calls: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->access$2200(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1981
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    #calls: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->access$2200(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1987
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    #calls: Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->buildParsed()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;
    invoke-static {v0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;->access$2200(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;
    .registers 2

    .prologue
    .line 1762
    sget-object v0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->defaultInstance:Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1747
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->getDefaultInstanceForType()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;

    move-result-object v0

    return-object v0
.end method

.method public getEyeCandyResults(I)Lcom/google/goggles/ResultProtos$Result;
    .registers 3
    .parameter

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->eyeCandyResults_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ResultProtos$Result;

    return-object v0
.end method

.method public getEyeCandyResultsCount()I
    .registers 2

    .prologue
    .line 1777
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->eyeCandyResults_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEyeCandyResultsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ResultProtos$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->eyeCandyResults_:Ljava/util/List;

    return-object v0
.end method

.method public getEyeCandyResultsOrBuilder(I)Lcom/google/goggles/ResultProtos$ResultOrBuilder;
    .registers 3
    .parameter

    .prologue
    .line 1784
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->eyeCandyResults_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ResultProtos$ResultOrBuilder;

    return-object v0
.end method

.method public getEyeCandyResultsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/goggles/ResultProtos$ResultOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1774
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->eyeCandyResults_:Ljava/util/List;

    return-object v0
.end method

.method public getGogglesId()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1794
    iget-wide v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->gogglesId_:J

    return-wide v0
.end method

.method public getMomentId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1804
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->momentId_:Ljava/lang/Object;

    .line 1805
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1806
    check-cast v0, Ljava/lang/String;

    .line 1814
    :goto_8
    return-object v0

    .line 1808
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1810
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1811
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1812
    iput-object v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->momentId_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 1814
    goto :goto_8
.end method

.method public getPuggleResults(I)Lcom/google/goggles/ResultProtos$Result;
    .registers 3
    .parameter

    .prologue
    .line 1875
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->puggleResults_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ResultProtos$Result;

    return-object v0
.end method

.method public getPuggleResultsCount()I
    .registers 2

    .prologue
    .line 1872
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->puggleResults_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPuggleResultsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/ResultProtos$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->puggleResults_:Ljava/util/List;

    return-object v0
.end method

.method public getPuggleResultsOrBuilder(I)Lcom/google/goggles/ResultProtos$ResultOrBuilder;
    .registers 3
    .parameter

    .prologue
    .line 1879
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->puggleResults_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/ResultProtos$ResultOrBuilder;

    return-object v0
.end method

.method public getPuggleResultsOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/goggles/ResultProtos$ResultOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->puggleResults_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1932
    iget v3, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->memoizedSerializedSize:I

    .line 1933
    const/4 v0, -0x1

    if-eq v3, v0, :cond_9

    .line 1957
    :goto_8
    return v3

    :cond_9
    move v1, v2

    move v3, v2

    .line 1936
    :goto_b
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->eyeCandyResults_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_24

    .line 1937
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->eyeCandyResults_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 1936
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 1940
    :cond_24
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_31

    .line 1941
    iget-wide v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->gogglesId_:J

    invoke-static {v5, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v0

    add-int/2addr v3, v0

    .line 1944
    :cond_31
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v5, :cond_41

    .line 1945
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->getMomentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v3, v0

    .line 1948
    :cond_41
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_52

    .line 1949
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->getTrackingIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v3, v0

    .line 1952
    :cond_52
    :goto_52
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->puggleResults_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6b

    .line 1953
    const/4 v1, 0x7

    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->puggleResults_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    .line 1952
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 1956
    :cond_6b
    iput v3, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->memoizedSerializedSize:I

    goto :goto_8
.end method

.method public getTrackingId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1836
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->trackingId_:Ljava/lang/Object;

    .line 1837
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1838
    check-cast v0, Ljava/lang/String;

    .line 1846
    :goto_8
    return-object v0

    .line 1840
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1842
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1843
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1844
    iput-object v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->trackingId_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 1846
    goto :goto_8
.end method

.method public hasGogglesId()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1791
    iget v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasMomentId()Z
    .registers 3

    .prologue
    .line 1801
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->bitField0_:I

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

.method public hasTrackingId()Z
    .registers 3

    .prologue
    .line 1833
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->bitField0_:I

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

    .line 1891
    iget-byte v2, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->memoizedIsInitialized:B

    .line 1892
    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    if-ne v2, v0, :cond_a

    .line 1907
    :goto_9
    return v0

    :cond_a
    move v0, v1

    .line 1892
    goto :goto_9

    :cond_c
    move v2, v1

    .line 1894
    :goto_d
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->getEyeCandyResultsCount()I

    move-result v3

    if-ge v2, v3, :cond_24

    .line 1895
    invoke-virtual {p0, v2}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->getEyeCandyResults(I)Lcom/google/goggles/ResultProtos$Result;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/goggles/ResultProtos$Result;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_21

    .line 1896
    iput-byte v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->memoizedIsInitialized:B

    move v0, v1

    .line 1897
    goto :goto_9

    .line 1894
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_24
    move v2, v1

    .line 1900
    :goto_25
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->getPuggleResultsCount()I

    move-result v3

    if-ge v2, v3, :cond_3c

    .line 1901
    invoke-virtual {p0, v2}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->getPuggleResults(I)Lcom/google/goggles/ResultProtos$Result;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/goggles/ResultProtos$Result;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_39

    .line 1902
    iput-byte v1, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->memoizedIsInitialized:B

    move v0, v1

    .line 1903
    goto :goto_9

    .line 1900
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 1906
    :cond_3c
    iput-byte v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;
    .registers 2

    .prologue
    .line 2035
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1747
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->newBuilderForType()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;
    .registers 2

    .prologue
    .line 2039
    invoke-static {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->newBuilder(Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;)Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1747
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->toBuilder()Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse$Builder;

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
    .line 1964
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
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1912
    invoke-virtual {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->getSerializedSize()I

    move v1, v2

    .line 1913
    :goto_7
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->eyeCandyResults_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1e

    .line 1914
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->eyeCandyResults_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1913
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 1916
    :cond_1e
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_29

    .line 1917
    iget-wide v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->gogglesId_:J

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    .line 1919
    :cond_29
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v4, :cond_37

    .line 1920
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->getMomentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1922
    :cond_37
    iget v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_46

    .line 1923
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->getTrackingIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1925
    :cond_46
    :goto_46
    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->puggleResults_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5d

    .line 1926
    const/4 v1, 0x7

    iget-object v0, p0, Lcom/google/goggles/ExtendedGogglesProtos$ExtendedGogglesResponse;->puggleResults_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1925
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 1928
    :cond_5d
    return-void
.end method
