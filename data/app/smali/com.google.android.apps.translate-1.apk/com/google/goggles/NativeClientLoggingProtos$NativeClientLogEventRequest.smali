.class public final Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NativeClientLoggingProtos.java"

# interfaces
.implements Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/NativeClientLoggingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NativeClientLogEventRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    }
.end annotation


# static fields
.field public static final CLIENT_CLICK_FIELD_NUMBER:I = 0x2

.field public static final CLIENT_INSTALL_FIELD_NUMBER:I = 0x5

.field public static final CLIENT_RATING_FIELD_NUMBER:I = 0x3

.field public static final GOGGLES_ID_FIELD_NUMBER:I = 0x9

.field public static final MS_SINCE_EPOCH_FIELD_NUMBER:I = 0x4

.field public static final SESSION_ID_FIELD_NUMBER:I = 0xb

.field public static final TRACKING_ID_FIELD_NUMBER:I = 0xa

.field private static final defaultInstance:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private clientClick_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

.field private clientInstall_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

.field private clientRating_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

.field private gogglesId_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private msSinceEpoch_:J

.field private sessionId_:Ljava/lang/Object;

.field private trackingId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2544
    new-instance v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->defaultInstance:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

    .line 2545
    sget-object v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->defaultInstance:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

    invoke-direct {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->initFields()V

    .line 2546
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1798
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1935
    iput-byte v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->memoizedIsInitialized:B

    .line 1976
    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->memoizedSerializedSize:I

    .line 1799
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;Lcom/google/goggles/NativeClientLoggingProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1793
    invoke-direct {p0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;-><init>(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1800
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1935
    iput-byte v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->memoizedIsInitialized:B

    .line 1976
    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->memoizedSerializedSize:I

    .line 1800
    return-void
.end method

.method static synthetic access$2502(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;J)J
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1793
    iput-wide p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->msSinceEpoch_:J

    return-wide p1
.end method

.method static synthetic access$2602(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1793
    iput-object p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->clientClick_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1793
    iput-object p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->clientRating_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1793
    iput-object p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->clientInstall_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;J)J
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1793
    iput-wide p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->gogglesId_:J

    return-wide p1
.end method

.method static synthetic access$3002(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1793
    iput-object p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->trackingId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1793
    iput-object p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->sessionId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1793
    iput p1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;
    .registers 1

    .prologue
    .line 1804
    sget-object v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->defaultInstance:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

    return-object v0
.end method

.method private getSessionIdBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->sessionId_:Ljava/lang/Object;

    .line 1916
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1917
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1919
    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->sessionId_:Ljava/lang/Object;

    .line 1922
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getTrackingIdBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 1883
    iget-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->trackingId_:Ljava/lang/Object;

    .line 1884
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1885
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1887
    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->trackingId_:Ljava/lang/Object;

    .line 1890
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private initFields()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 1927
    iput-wide v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->msSinceEpoch_:J

    .line 1928
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->getDefaultInstance()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->clientClick_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    .line 1929
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;->getDefaultInstance()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->clientRating_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    .line 1930
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;->getDefaultInstance()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->clientInstall_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    .line 1931
    iput-wide v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->gogglesId_:J

    .line 1932
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->trackingId_:Ljava/lang/Object;

    .line 1933
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->sessionId_:Ljava/lang/Object;

    .line 1934
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    .registers 1

    .prologue
    .line 2088
    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->create()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->access$2300()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    .registers 2
    .parameter

    .prologue
    .line 2091
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->mergeFrom(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2057
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v0

    .line 2058
    invoke-virtual {v0, p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2059
    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->access$2200(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

    move-result-object v0

    .line 2061
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2068
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v0

    .line 2069
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2070
    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->access$2200(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

    move-result-object v0

    .line 2072
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2024
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->access$2200(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2030
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->access$2200(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2078
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->access$2200(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2084
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->access$2200(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2046
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->access$2200(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2052
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->access$2200(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2035
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->access$2200(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2041
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    #calls: Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->buildParsed()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;
    invoke-static {v0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;->access$2200(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClientClick()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;
    .registers 2

    .prologue
    .line 1829
    iget-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->clientClick_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    return-object v0
.end method

.method public getClientInstall()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;
    .registers 2

    .prologue
    .line 1849
    iget-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->clientInstall_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    return-object v0
.end method

.method public getClientRating()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;
    .registers 2

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->clientRating_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;
    .registers 2

    .prologue
    .line 1808
    sget-object v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->defaultInstance:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1793
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->getDefaultInstanceForType()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;

    move-result-object v0

    return-object v0
.end method

.method public getGogglesId()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1859
    iget-wide v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->gogglesId_:J

    return-wide v0
.end method

.method public getMsSinceEpoch()J
    .registers 3

    .prologue
    .line 1819
    iget-wide v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->msSinceEpoch_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 1978
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->memoizedSerializedSize:I

    .line 1979
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 2011
    :goto_7
    return v0

    .line 1981
    :cond_8
    const/4 v0, 0x0

    .line 1982
    iget v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v2, :cond_16

    .line 1983
    iget-object v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->clientClick_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1986
    :cond_16
    iget v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v3, :cond_24

    .line 1987
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->clientRating_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1990
    :cond_24
    iget v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_32

    .line 1991
    iget-wide v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->msSinceEpoch_:J

    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1994
    :cond_32
    iget v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_42

    .line 1995
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->clientInstall_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1998
    :cond_42
    iget v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_53

    .line 1999
    const/16 v1, 0x9

    iget-wide v2, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->gogglesId_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2002
    :cond_53
    iget v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_66

    .line 2003
    const/16 v1, 0xa

    invoke-direct {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->getTrackingIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2006
    :cond_66
    iget v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_79

    .line 2007
    const/16 v1, 0xb

    invoke-direct {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->getSessionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2010
    :cond_79
    iput v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->memoizedSerializedSize:I

    goto :goto_7
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1901
    iget-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->sessionId_:Ljava/lang/Object;

    .line 1902
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1903
    check-cast v0, Ljava/lang/String;

    .line 1911
    :goto_8
    return-object v0

    .line 1905
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1907
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1908
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1909
    iput-object v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->sessionId_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 1911
    goto :goto_8
.end method

.method public getTrackingId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->trackingId_:Ljava/lang/Object;

    .line 1870
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1871
    check-cast v0, Ljava/lang/String;

    .line 1879
    :goto_8
    return-object v0

    .line 1873
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1875
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1876
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1877
    iput-object v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->trackingId_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 1879
    goto :goto_8
.end method

.method public hasClientClick()Z
    .registers 3

    .prologue
    .line 1826
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->bitField0_:I

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

.method public hasClientInstall()Z
    .registers 3

    .prologue
    .line 1846
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->bitField0_:I

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

.method public hasClientRating()Z
    .registers 3

    .prologue
    .line 1836
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->bitField0_:I

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

.method public hasGogglesId()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1856
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->bitField0_:I

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

.method public hasMsSinceEpoch()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1816
    iget v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasSessionId()Z
    .registers 3

    .prologue
    .line 1898
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->bitField0_:I

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

.method public hasTrackingId()Z
    .registers 3

    .prologue
    .line 1866
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1937
    iget-byte v2, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->memoizedIsInitialized:B

    .line 1938
    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    if-ne v2, v0, :cond_a

    .line 1947
    :goto_9
    return v0

    :cond_a
    move v0, v1

    .line 1938
    goto :goto_9

    .line 1940
    :cond_c
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->hasClientClick()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1941
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->getClientClick()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_20

    .line 1942
    iput-byte v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->memoizedIsInitialized:B

    move v0, v1

    .line 1943
    goto :goto_9

    .line 1946
    :cond_20
    iput-byte v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    .registers 2

    .prologue
    .line 2089
    invoke-static {}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->newBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1793
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->newBuilderForType()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;
    .registers 2

    .prologue
    .line 2093
    invoke-static {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->newBuilder(Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;)Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1793
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->toBuilder()Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest$Builder;

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
    .line 2018
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
    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 1952
    invoke-virtual {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->getSerializedSize()I

    .line 1953
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v1, :cond_10

    .line 1954
    iget-object v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->clientClick_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientClick;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1956
    :cond_10
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v2, :cond_1c

    .line 1957
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->clientRating_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientRating;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1959
    :cond_1c
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    .line 1960
    iget-wide v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->msSinceEpoch_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1962
    :cond_28
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_36

    .line 1963
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->clientInstall_:Lcom/google/goggles/NativeClientLoggingProtos$NativeClientInstall;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1965
    :cond_36
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_45

    .line 1966
    const/16 v0, 0x9

    iget-wide v1, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->gogglesId_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64(IJ)V

    .line 1968
    :cond_45
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_56

    .line 1969
    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->getTrackingIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1971
    :cond_56
    iget v0, p0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_67

    .line 1972
    const/16 v0, 0xb

    invoke-direct {p0}, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventRequest;->getSessionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1974
    :cond_67
    return-void
.end method
