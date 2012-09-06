.class public final Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiGetBackendInfoResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;
    }
.end annotation


# static fields
.field public static final ACCESS_NUMBER_FOR_POST_DIAL_PIN_CALLS_FIELD_NUMBER:I = 0x2

.field public static final MAPPING_FIELD_NUMBER:I = 0x4

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final PIN_FIELD_NUMBER:I = 0x3

.field public static final STATUS_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;


# instance fields
.field private accessNumberForPostDialPinCalls_:Ljava/lang/Object;

.field private bitField0_:I

.field private mapping_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private pin_:Ljava/lang/Object;

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 5313
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 5940
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;

    .line 5941
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->initFields()V

    .line 5942
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
    const/4 v5, -0x1

    const/16 v7, 0x8

    .line 5250
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5432
    iput-byte v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->memoizedIsInitialized:B

    .line 5472
    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->memoizedSerializedSize:I

    .line 5251
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->initFields()V

    .line 5252
    const/4 v2, 0x0

    .line 5254
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 5255
    .local v0, done:Z
    :cond_f
    :goto_f
    if-nez v0, :cond_a8

    .line 5256
    :try_start_11
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 5257
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_b8

    .line 5262
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_f

    .line 5264
    const/4 v0, 0x1

    goto :goto_f

    .line 5259
    :sswitch_20
    const/4 v0, 0x1

    .line 5260
    goto :goto_f

    .line 5269
    :sswitch_22
    const/4 v3, 0x0

    .line 5270
    .local v3, subBuilder:Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_30

    .line 5271
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {v5}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v3

    .line 5273
    :cond_30
    sget-object v5, Lcom/google/grandcentral/api2/Api2$ApiStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/grandcentral/api2/Api2$ApiStatus;

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 5274
    if-eqz v3, :cond_47

    .line 5275
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {v3, v5}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    .line 5276
    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 5278
    :cond_47
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->bitField0_:I
    :try_end_4d
    .catchall {:try_start_11 .. :try_end_4d} :catchall_54
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_11 .. :try_end_4d} :catch_4e
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_4d} :catch_72

    goto :goto_f

    .line 5301
    .end local v3           #subBuilder:Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    .end local v4           #tag:I
    :catch_4e
    move-exception v1

    .line 5302
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_4f
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_54

    .line 5307
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_54
    move-exception v5

    and-int/lit8 v6, v2, 0x8

    if-ne v6, v7, :cond_61

    .line 5308
    iget-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->mapping_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->mapping_:Ljava/util/List;

    .line 5310
    :cond_61
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->makeExtensionsImmutable()V

    throw v5

    .line 5282
    .restart local v4       #tag:I
    :sswitch_65
    :try_start_65
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->bitField0_:I

    .line 5283
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->accessNumberForPostDialPinCalls_:Ljava/lang/Object;
    :try_end_71
    .catchall {:try_start_65 .. :try_end_71} :catchall_54
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_65 .. :try_end_71} :catch_4e
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_71} :catch_72

    goto :goto_f

    .line 5303
    .end local v4           #tag:I
    :catch_72
    move-exception v1

    .line 5304
    .local v1, e:Ljava/io/IOException;
    :try_start_73
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_81
    .catchall {:try_start_73 .. :try_end_81} :catchall_54

    .line 5287
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_81
    :try_start_81
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->bitField0_:I

    .line 5288
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->pin_:Ljava/lang/Object;

    goto :goto_f

    .line 5292
    :sswitch_8e
    and-int/lit8 v5, v2, 0x8

    if-eq v5, v7, :cond_9b

    .line 5293
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->mapping_:Ljava/util/List;

    .line 5294
    or-int/lit8 v2, v2, 0x8

    .line 5296
    :cond_9b
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->mapping_:Ljava/util/List;

    sget-object v6, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a6
    .catchall {:try_start_81 .. :try_end_a6} :catchall_54
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_81 .. :try_end_a6} :catch_4e
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_a6} :catch_72

    goto/16 :goto_f

    .line 5307
    .end local v4           #tag:I
    :cond_a8
    and-int/lit8 v5, v2, 0x8

    if-ne v5, v7, :cond_b4

    .line 5308
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->mapping_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->mapping_:Ljava/util/List;

    .line 5310
    :cond_b4
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->makeExtensionsImmutable()V

    .line 5312
    return-void

    .line 5257
    :sswitch_data_b8
    .sparse-switch
        0x0 -> :sswitch_20
        0xa -> :sswitch_22
        0x12 -> :sswitch_65
        0x1a -> :sswitch_81
        0x22 -> :sswitch_8e
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/grandcentral/api2/Api2$1;)V
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
    .line 5228
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 5233
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 5432
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->memoizedIsInitialized:B

    .line 5472
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->memoizedSerializedSize:I

    .line 5235
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5228
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 5236
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5432
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->memoizedIsInitialized:B

    .line 5472
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->memoizedSerializedSize:I

    .line 5236
    return-void
.end method

.method static synthetic access$6302(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5228
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object p1
.end method

.method static synthetic access$6400(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 5228
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->accessNumberForPostDialPinCalls_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6402(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5228
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->accessNumberForPostDialPinCalls_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6500(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 5228
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->pin_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6502(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5228
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->pin_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6600(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 5228
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->mapping_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6602(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5228
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->mapping_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$6702(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5228
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;
    .registers 1

    .prologue
    .line 5240
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 5427
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 5428
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->accessNumberForPostDialPinCalls_:Ljava/lang/Object;

    .line 5429
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->pin_:Ljava/lang/Object;

    .line 5430
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->mapping_:Ljava/util/List;

    .line 5431
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;
    .registers 1

    .prologue
    .line 5557
    #calls: Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->access$6100()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 5560
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5537
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5543
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5507
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5513
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5548
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5554
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5527
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5533
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5517
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5523
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;

    return-object v0
.end method


# virtual methods
.method public getAccessNumberForPostDialPinCalls()Ljava/lang/String;
    .registers 5

    .prologue
    .line 5346
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->accessNumberForPostDialPinCalls_:Ljava/lang/Object;

    .line 5347
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 5348
    check-cast v1, Ljava/lang/String;

    .line 5356
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 5350
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5352
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5353
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 5354
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->accessNumberForPostDialPinCalls_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 5356
    goto :goto_8
.end method

.method public getAccessNumberForPostDialPinCallsBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 5361
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->accessNumberForPostDialPinCalls_:Ljava/lang/Object;

    .line 5362
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 5363
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5365
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->accessNumberForPostDialPinCalls_:Ljava/lang/Object;

    .line 5368
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;
    .registers 2

    .prologue
    .line 5244
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5228
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public getMapping(I)Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;
    .registers 3
    .parameter "index"

    .prologue
    .line 5419
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->mapping_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    return-object v0
.end method

.method public getMappingCount()I
    .registers 2

    .prologue
    .line 5416
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->mapping_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMappingList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5409
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->mapping_:Ljava/util/List;

    return-object v0
.end method

.method public getMappingOrBuilder(I)Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMappingOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 5423
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->mapping_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMappingOrBuilder;

    return-object v0
.end method

.method public getMappingOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMappingOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5413
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->mapping_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5325
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPin()Ljava/lang/String;
    .registers 5

    .prologue
    .line 5379
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->pin_:Ljava/lang/Object;

    .line 5380
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 5381
    check-cast v1, Ljava/lang/String;

    .line 5389
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 5383
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5385
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5386
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 5387
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->pin_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 5389
    goto :goto_8
.end method

.method public getPinBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 5394
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->pin_:Ljava/lang/Object;

    .line 5395
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 5396
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5398
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->pin_:Ljava/lang/Object;

    .line 5401
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
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 5474
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->memoizedSerializedSize:I

    .line 5475
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    move v2, v1

    .line 5495
    .end local v1           #size:I
    .local v2, size:I
    :goto_9
    return v2

    .line 5477
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_a
    const/4 v1, 0x0

    .line 5478
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_18

    .line 5479
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 5482
    :cond_18
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_27

    .line 5483
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->getAccessNumberForPostDialPinCallsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 5486
    :cond_27
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_37

    .line 5487
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->getPinBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 5490
    :cond_37
    const/4 v0, 0x0

    .local v0, i:I
    :goto_38
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->mapping_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_50

    .line 5491
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->mapping_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 5490
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 5494
    :cond_50
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 5495
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_9
.end method

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 5336
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public hasAccessNumberForPostDialPinCalls()Z
    .registers 3

    .prologue
    .line 5343
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->bitField0_:I

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

.method public hasPin()Z
    .registers 3

    .prologue
    .line 5376
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 5333
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5434
    iget-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->memoizedIsInitialized:B

    .line 5435
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_d

    if-ne v1, v2, :cond_b

    :goto_9
    move v3, v2

    .line 5452
    :goto_a
    return v3

    :cond_b
    move v2, v3

    .line 5435
    goto :goto_9

    .line 5437
    :cond_d
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->hasStatus()Z

    move-result v4

    if-nez v4, :cond_16

    .line 5438
    iput-byte v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 5441
    :cond_16
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_23

    .line 5442
    iput-byte v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 5445
    :cond_23
    const/4 v0, 0x0

    .local v0, i:I
    :goto_24
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->getMappingCount()I

    move-result v4

    if-ge v0, v4, :cond_3a

    .line 5446
    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->getMapping(I)Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/grandcentral/api2/Api2$ApiShadowNumberMapping;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_37

    .line 5447
    iput-byte v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 5445
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 5451
    :cond_3a
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->memoizedIsInitialized:B

    move v3, v2

    .line 5452
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;
    .registers 2

    .prologue
    .line 5558
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5228
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;
    .registers 2

    .prologue
    .line 5562
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5228
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse$Builder;

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
    .line 5501
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 5457
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->getSerializedSize()I

    .line 5458
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_11

    .line 5459
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 5461
    :cond_11
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1e

    .line 5462
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->getAccessNumberForPostDialPinCallsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5464
    :cond_1e
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2c

    .line 5465
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->getPinBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5467
    :cond_2c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2d
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->mapping_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_43

    .line 5468
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoResponse;->mapping_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 5467
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 5470
    :cond_43
    return-void
.end method
