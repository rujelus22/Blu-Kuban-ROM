.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MapsRequestData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;


# instance fields
.field private bitField0_:I

.field private gmmBinaryHeader_:Lcom/google/protobuf/ByteString;

.field private gmmSearchRequestProto_:Lcom/google/protobuf/ByteString;

.field private gmmServerResponseEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

.field private mapsServerUrl_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private userAgent_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 8139
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->PARSER:Lcom/google/protobuf/Parser;

    .line 8718
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    .line 8719
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->initFields()V

    .line 8720
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 11
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 8081
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8258
    iput-byte v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedIsInitialized:B

    .line 8303
    iput v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedSerializedSize:I

    .line 8082
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->initFields()V

    .line 8083
    const/4 v2, 0x0

    .line 8085
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 8086
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_81

    .line 8087
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 8088
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_86

    .line 8093
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_d

    .line 8095
    const/4 v0, 0x1

    goto :goto_d

    .line 8090
    :sswitch_1e
    const/4 v0, 0x1

    .line 8091
    goto :goto_d

    .line 8100
    :sswitch_20
    iget v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    .line 8101
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->mapsServerUrl_:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 8130
    .end local v4           #tag:I
    :catch_2d
    move-exception v1

    .line 8131
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 8136
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v6

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->makeExtensionsImmutable()V

    throw v6

    .line 8105
    .restart local v4       #tag:I
    :sswitch_38
    :try_start_38
    iget v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    .line 8106
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmBinaryHeader_:Lcom/google/protobuf/ByteString;
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 8132
    .end local v4           #tag:I
    :catch_45
    move-exception v1

    .line 8133
    .local v1, e:Ljava/io/IOException;
    :try_start_46
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_33

    .line 8110
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_54
    :try_start_54
    iget v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    .line 8111
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmSearchRequestProto_:Lcom/google/protobuf/ByteString;

    goto :goto_d

    .line 8115
    :sswitch_61
    iget v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    .line 8116
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->userAgent_:Ljava/lang/Object;

    goto :goto_d

    .line 8120
    :sswitch_6e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 8121
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    move-result-object v5

    .line 8122
    .local v5, value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    if-eqz v5, :cond_d

    .line 8123
    iget v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    .line 8124
    iput-object v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmServerResponseEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    :try_end_80
    .catchall {:try_start_54 .. :try_end_80} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_54 .. :try_end_80} :catch_2d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_80} :catch_45

    goto :goto_d

    .line 8136
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v5           #value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    :cond_81
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->makeExtensionsImmutable()V

    .line 8138
    return-void

    .line 8088
    nop

    :sswitch_data_86
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x12 -> :sswitch_38
        0x1a -> :sswitch_54
        0x22 -> :sswitch_61
        0x28 -> :sswitch_6e
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8059
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 8064
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 8258
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedIsInitialized:B

    .line 8303
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedSerializedSize:I

    .line 8066
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8059
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 8067
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8258
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedIsInitialized:B

    .line 8303
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedSerializedSize:I

    .line 8067
    return-void
.end method

.method static synthetic access$10000(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 8059
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->userAgent_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$10002(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8059
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->userAgent_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$10102(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8059
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmServerResponseEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    return-object p1
.end method

.method static synthetic access$10202(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8059
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    return p1
.end method

.method static synthetic access$9700(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 8059
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->mapsServerUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$9702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8059
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->mapsServerUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8059
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmBinaryHeader_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$9902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8059
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmSearchRequestProto_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;
    .registers 1

    .prologue
    .line 8071
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 8252
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->mapsServerUrl_:Ljava/lang/Object;

    .line 8253
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmBinaryHeader_:Lcom/google/protobuf/ByteString;

    .line 8254
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmSearchRequestProto_:Lcom/google/protobuf/ByteString;

    .line 8255
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->userAgent_:Ljava/lang/Object;

    .line 8256
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->NONE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmServerResponseEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    .line 8257
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;
    .registers 1

    .prologue
    .line 8392
    #calls: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->access$9500()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 8395
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8059
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;
    .registers 2

    .prologue
    .line 8075
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    return-object v0
.end method

.method public getGmmBinaryHeader()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 8195
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmBinaryHeader_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getGmmSearchRequestProto()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 8205
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmSearchRequestProto_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getGmmServerResponseEncoding()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    .registers 2

    .prologue
    .line 8248
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmServerResponseEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    return-object v0
.end method

.method public getMapsServerUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 8177
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->mapsServerUrl_:Ljava/lang/Object;

    .line 8178
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 8179
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8181
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->mapsServerUrl_:Ljava/lang/Object;

    .line 8184
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 8305
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedSerializedSize:I

    .line 8306
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 8330
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 8308
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 8309
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 8310
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->getMapsServerUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8313
    :cond_1a
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_27

    .line 8314
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmBinaryHeader_:Lcom/google/protobuf/ByteString;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8317
    :cond_27
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_35

    .line 8318
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmSearchRequestProto_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8321
    :cond_35
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_46

    .line 8322
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->getUserAgentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8325
    :cond_46
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5a

    .line 8326
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmServerResponseEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    invoke-virtual {v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 8329
    :cond_5a
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedSerializedSize:I

    move v1, v0

    .line 8330
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getUserAgentBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 8230
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->userAgent_:Ljava/lang/Object;

    .line 8231
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 8232
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8234
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->userAgent_:Ljava/lang/Object;

    .line 8237
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public hasGmmBinaryHeader()Z
    .registers 3

    .prologue
    .line 8192
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

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

.method public hasGmmSearchRequestProto()Z
    .registers 3

    .prologue
    .line 8202
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

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

.method public hasGmmServerResponseEncoding()Z
    .registers 3

    .prologue
    .line 8245
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

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

.method public hasMapsServerUrl()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 8159
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasUserAgent()Z
    .registers 3

    .prologue
    .line 8212
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8260
    iget-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedIsInitialized:B

    .line 8261
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_d

    if-ne v0, v1, :cond_b

    :goto_9
    move v2, v1

    .line 8280
    :goto_a
    return v2

    :cond_b
    move v1, v2

    .line 8261
    goto :goto_9

    .line 8263
    :cond_d
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->hasMapsServerUrl()Z

    move-result v3

    if-nez v3, :cond_16

    .line 8264
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedIsInitialized:B

    goto :goto_a

    .line 8267
    :cond_16
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->hasGmmBinaryHeader()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 8268
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedIsInitialized:B

    goto :goto_a

    .line 8271
    :cond_1f
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->hasGmmSearchRequestProto()Z

    move-result v3

    if-nez v3, :cond_28

    .line 8272
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedIsInitialized:B

    goto :goto_a

    .line 8275
    :cond_28
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->hasUserAgent()Z

    move-result v3

    if-nez v3, :cond_31

    .line 8276
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedIsInitialized:B

    goto :goto_a

    .line 8279
    :cond_31
    iput-byte v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->memoizedIsInitialized:B

    move v2, v1

    .line 8280
    goto :goto_a
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8059
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;
    .registers 2

    .prologue
    .line 8393
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8059
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;
    .registers 2

    .prologue
    .line 8397
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

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
    .line 8336
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 8285
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->getSerializedSize()I

    .line 8286
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 8287
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->getMapsServerUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8289
    :cond_13
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1e

    .line 8290
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmBinaryHeader_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8292
    :cond_1e
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2a

    .line 8293
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmSearchRequestProto_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8295
    :cond_2a
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_39

    .line 8296
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->getUserAgentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8298
    :cond_39
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4b

    .line 8299
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->gmmServerResponseEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 8301
    :cond_4b
    return-void
.end method
