.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MapsResponseItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;


# instance fields
.field private bitField0_:I

.field private gmmServerResponseEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

.field private gmmServerResponse_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private query_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 10294
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    .line 10693
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    .line 10694
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->initFields()V

    .line 10695
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

    .line 10246
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10368
    iput-byte v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->memoizedIsInitialized:B

    .line 10395
    iput v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->memoizedSerializedSize:I

    .line 10247
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->initFields()V

    .line 10248
    const/4 v2, 0x0

    .line 10250
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 10251
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_67

    .line 10252
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 10253
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_6c

    .line 10258
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_d

    .line 10260
    const/4 v0, 0x1

    goto :goto_d

    .line 10255
    :sswitch_1e
    const/4 v0, 0x1

    .line 10256
    goto :goto_d

    .line 10265
    :sswitch_20
    iget v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->bitField0_:I

    .line 10266
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->query_:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 10285
    .end local v4           #tag:I
    :catch_2d
    move-exception v1

    .line 10286
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 10291
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v6

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->makeExtensionsImmutable()V

    throw v6

    .line 10270
    .restart local v4       #tag:I
    :sswitch_38
    :try_start_38
    iget v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->bitField0_:I

    .line 10271
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->gmmServerResponse_:Lcom/google/protobuf/ByteString;
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 10287
    .end local v4           #tag:I
    :catch_45
    move-exception v1

    .line 10288
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

    .line 10275
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_54
    :try_start_54
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 10276
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    move-result-object v5

    .line 10277
    .local v5, value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    if-eqz v5, :cond_d

    .line 10278
    iget v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->bitField0_:I

    .line 10279
    iput-object v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->gmmServerResponseEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    :try_end_66
    .catchall {:try_start_54 .. :try_end_66} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_54 .. :try_end_66} :catch_2d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_66} :catch_45

    goto :goto_d

    .line 10291
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v5           #value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    :cond_67
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->makeExtensionsImmutable()V

    .line 10293
    return-void

    .line 10253
    nop

    :sswitch_data_6c
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x12 -> :sswitch_38
        0x18 -> :sswitch_54
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
    .line 10224
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 10229
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 10368
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->memoizedIsInitialized:B

    .line 10395
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->memoizedSerializedSize:I

    .line 10231
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10224
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 10232
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10368
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->memoizedIsInitialized:B

    .line 10395
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->memoizedSerializedSize:I

    .line 10232
    return-void
.end method

.method static synthetic access$12400(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 10224
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->query_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$12402(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10224
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->query_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12502(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10224
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->gmmServerResponse_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$12602(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10224
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->gmmServerResponseEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    return-object p1
.end method

.method static synthetic access$12702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10224
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;
    .registers 1

    .prologue
    .line 10236
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 10364
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->query_:Ljava/lang/Object;

    .line 10365
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->gmmServerResponse_:Lcom/google/protobuf/ByteString;

    .line 10366
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->NONE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->gmmServerResponseEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    .line 10367
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;
    .registers 1

    .prologue
    .line 10476
    #calls: Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->access$12200()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 10479
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10224
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;
    .registers 2

    .prologue
    .line 10240
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;

    return-object v0
.end method

.method public getGmmServerResponse()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 10350
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->gmmServerResponse_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getGmmServerResponseEncoding()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    .registers 2

    .prologue
    .line 10360
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->gmmServerResponseEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    return-object v0
.end method

.method public getQueryBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 10332
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->query_:Ljava/lang/Object;

    .line 10333
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 10334
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10336
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->query_:Ljava/lang/Object;

    .line 10339
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
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 10397
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->memoizedSerializedSize:I

    .line 10398
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 10414
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 10400
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 10401
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 10402
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->getQueryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10405
    :cond_19
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 10406
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->gmmServerResponse_:Lcom/google/protobuf/ByteString;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10409
    :cond_26
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_39

    .line 10410
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->gmmServerResponseEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    invoke-virtual {v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 10413
    :cond_39
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->memoizedSerializedSize:I

    move v1, v0

    .line 10414
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasGmmServerResponse()Z
    .registers 3

    .prologue
    .line 10347
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->bitField0_:I

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

.method public hasGmmServerResponseEncoding()Z
    .registers 3

    .prologue
    .line 10357
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->bitField0_:I

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

.method public hasQuery()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 10314
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->bitField0_:I

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
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 10370
    iget-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->memoizedIsInitialized:B

    .line 10371
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 10378
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 10371
    goto :goto_9

    .line 10373
    :cond_c
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->hasQuery()Z

    move-result v3

    if-nez v3, :cond_16

    .line 10374
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->memoizedIsInitialized:B

    move v1, v2

    .line 10375
    goto :goto_9

    .line 10377
    :cond_16
    iput-byte v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 10224
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;
    .registers 2

    .prologue
    .line 10477
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 10224
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;
    .registers 2

    .prologue
    .line 10481
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem$Builder;

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
    .line 10420
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 10383
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->getSerializedSize()I

    .line 10384
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 10385
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->getQueryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10387
    :cond_12
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 10388
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->gmmServerResponse_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10390
    :cond_1d
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 10391
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsResponseItem;->gmmServerResponseEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 10393
    :cond_2e
    return-void
.end method
