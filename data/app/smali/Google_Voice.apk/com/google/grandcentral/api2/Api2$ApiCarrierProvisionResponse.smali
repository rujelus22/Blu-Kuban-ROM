.class public final Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiCarrierProvisionResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROVISION_ERROR_FIELD_NUMBER:I = 0x2

.field public static final STATUS_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private provisionError_:I

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 42264
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 42582
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;

    .line 42583
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->initFields()V

    .line 42584
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 10
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 42217
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 42304
    iput-byte v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->memoizedIsInitialized:B

    .line 42332
    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->memoizedSerializedSize:I

    .line 42218
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->initFields()V

    .line 42219
    const/4 v2, 0x0

    .line 42221
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 42222
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_73

    .line 42223
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 42224
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_78

    .line 42229
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_d

    .line 42231
    const/4 v0, 0x1

    goto :goto_d

    .line 42226
    :sswitch_1e
    const/4 v0, 0x1

    .line 42227
    goto :goto_d

    .line 42236
    :sswitch_20
    const/4 v3, 0x0

    .line 42237
    .local v3, subBuilder:Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2e

    .line 42238
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {v5}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v3

    .line 42240
    :cond_2e
    sget-object v5, Lcom/google/grandcentral/api2/Api2$ApiStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/grandcentral/api2/Api2$ApiStatus;

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 42241
    if-eqz v3, :cond_45

    .line 42242
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {v3, v5}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    .line 42243
    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 42245
    :cond_45
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->bitField0_:I
    :try_end_4b
    .catchall {:try_start_f .. :try_end_4b} :catchall_52
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_4b} :catch_4c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_4b} :catch_64

    goto :goto_d

    .line 42255
    .end local v3           #subBuilder:Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    .end local v4           #tag:I
    :catch_4c
    move-exception v1

    .line 42256
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_4d
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_52

    .line 42261
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_52
    move-exception v5

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->makeExtensionsImmutable()V

    throw v5

    .line 42249
    .restart local v4       #tag:I
    :sswitch_57
    :try_start_57
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->bitField0_:I

    .line 42250
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v5

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->provisionError_:I
    :try_end_63
    .catchall {:try_start_57 .. :try_end_63} :catchall_52
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_57 .. :try_end_63} :catch_4c
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_63} :catch_64

    goto :goto_d

    .line 42257
    .end local v4           #tag:I
    :catch_64
    move-exception v1

    .line 42258
    .local v1, e:Ljava/io/IOException;
    :try_start_65
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_73
    .catchall {:try_start_65 .. :try_end_73} :catchall_52

    .line 42261
    .end local v1           #e:Ljava/io/IOException;
    :cond_73
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->makeExtensionsImmutable()V

    .line 42263
    return-void

    .line 42224
    nop

    :sswitch_data_78
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x10 -> :sswitch_57
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
    .line 42195
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 42200
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 42304
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->memoizedIsInitialized:B

    .line 42332
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->memoizedSerializedSize:I

    .line 42202
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42195
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 42203
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 42304
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->memoizedIsInitialized:B

    .line 42332
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->memoizedSerializedSize:I

    .line 42203
    return-void
.end method

.method static synthetic access$51602(Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42195
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object p1
.end method

.method static synthetic access$51702(Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42195
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->provisionError_:I

    return p1
.end method

.method static synthetic access$51802(Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42195
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;
    .registers 1

    .prologue
    .line 42207
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 42301
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 42302
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->provisionError_:I

    .line 42303
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;
    .registers 1

    .prologue
    .line 42409
    #calls: Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->access$51400()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 42412
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42389
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42395
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 42359
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 42365
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42400
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42406
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42379
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42385
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 42369
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 42375
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;
    .registers 2

    .prologue
    .line 42211
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 42195
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42276
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getProvisionError()I
    .registers 2

    .prologue
    .line 42297
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->provisionError_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 42334
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->memoizedSerializedSize:I

    .line 42335
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 42347
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 42337
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 42338
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 42339
    iget-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 42342
    :cond_17
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_24

    .line 42343
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->provisionError_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 42346
    :cond_24
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 42347
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 42287
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public hasProvisionError()Z
    .registers 3

    .prologue
    .line 42294
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 42284
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->bitField0_:I

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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42306
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->memoizedIsInitialized:B

    .line 42307
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 42318
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 42307
    goto :goto_9

    .line 42309
    :cond_c
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->hasStatus()Z

    move-result v3

    if-nez v3, :cond_16

    .line 42310
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->memoizedIsInitialized:B

    move v1, v2

    .line 42311
    goto :goto_9

    .line 42313
    :cond_16
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_24

    .line 42314
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->memoizedIsInitialized:B

    move v1, v2

    .line 42315
    goto :goto_9

    .line 42317
    :cond_24
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;
    .registers 2

    .prologue
    .line 42410
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 42195
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;
    .registers 2

    .prologue
    .line 42414
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;)Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 42195
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse$Builder;

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
    .line 42353
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

    .line 42323
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->getSerializedSize()I

    .line 42324
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 42325
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 42327
    :cond_10
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1b

    .line 42328
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCarrierProvisionResponse;->provisionError_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 42330
    :cond_1b
    return-void
.end method
