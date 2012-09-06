.class public final Lcom/google/grandcentral/api2/Api2$ApiStatus;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiStatusOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;,
        Lcom/google/grandcentral/api2/Api2$ApiStatus$Status;
    }
.end annotation


# static fields
.field public static final CLIENT_LOGIN_TOKEN_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiStatus;


# instance fields
.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private status_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 368
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiStatus$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->PARSER:Lcom/google/protobuf/Parser;

    .line 808
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiStatus;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiStatus;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 809
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->initFields()V

    .line 810
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 329
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 526
    iput-byte v4, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->memoizedIsInitialized:B

    .line 550
    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->memoizedSerializedSize:I

    .line 330
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->initFields()V

    .line 331
    const/4 v2, 0x0

    .line 333
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 334
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_54

    .line 335
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 336
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_58

    .line 341
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 343
    const/4 v0, 0x1

    goto :goto_d

    .line 338
    :sswitch_1e
    const/4 v0, 0x1

    .line 339
    goto :goto_d

    .line 348
    :sswitch_20
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->bitField0_:I

    .line 349
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->status_:I
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 359
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 360
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 365
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->makeExtensionsImmutable()V

    throw v4

    .line 353
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->bitField0_:I

    .line 354
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->clientLoginToken_:Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 361
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 362
    .local v1, e:Ljava/io/IOException;
    :try_start_46
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_33

    .line 365
    .end local v1           #e:Ljava/io/IOException;
    :cond_54
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->makeExtensionsImmutable()V

    .line 367
    return-void

    .line 336
    :sswitch_data_58
    .sparse-switch
        0x0 -> :sswitch_1e
        0x8 -> :sswitch_20
        0x12 -> :sswitch_38
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
    .line 307
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiStatus;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 312
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 526
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->memoizedIsInitialized:B

    .line 550
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->memoizedSerializedSize:I

    .line 314
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 315
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 526
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->memoizedIsInitialized:B

    .line 550
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->memoizedSerializedSize:I

    .line 315
    return-void
.end method

.method static synthetic access$602(Lcom/google/grandcentral/api2/Api2$ApiStatus;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 307
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->status_:I

    return p1
.end method

.method static synthetic access$700(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->clientLoginToken_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/grandcentral/api2/Api2$ApiStatus;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 307
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->clientLoginToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/grandcentral/api2/Api2$ApiStatus;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 307
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 1

    .prologue
    .line 319
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 523
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->status_:I

    .line 524
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->clientLoginToken_:Ljava/lang/Object;

    .line 525
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    .registers 1

    .prologue
    .line 627
    #calls: Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->access$400()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 630
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 607
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 613
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 577
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 583
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 618
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 624
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 597
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 603
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 587
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 593
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method


# virtual methods
.method public getClientLoginToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 496
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->clientLoginToken_:Ljava/lang/Object;

    .line 497
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 498
    check-cast v1, Ljava/lang/String;

    .line 506
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 500
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 502
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 503
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 504
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->clientLoginToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 506
    goto :goto_8
.end method

.method public getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 511
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->clientLoginToken_:Ljava/lang/Object;

    .line 512
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 513
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 515
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->clientLoginToken_:Ljava/lang/Object;

    .line 518
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 323
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiStatus;

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
            "Lcom/google/grandcentral/api2/Api2$ApiStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 552
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->memoizedSerializedSize:I

    .line 553
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 565
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 555
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 556
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 557
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->status_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 560
    :cond_17
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 561
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 564
    :cond_26
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->memoizedSerializedSize:I

    move v1, v0

    .line 565
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getStatus()I
    .registers 2

    .prologue
    .line 486
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->status_:I

    return v0
.end method

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    .line 493
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->bitField0_:I

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

    .line 483
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->bitField0_:I

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

    .line 528
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->memoizedIsInitialized:B

    .line 529
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 536
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 529
    goto :goto_9

    .line 531
    :cond_c
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->hasStatus()Z

    move-result v3

    if-nez v3, :cond_16

    .line 532
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->memoizedIsInitialized:B

    move v1, v2

    .line 533
    goto :goto_9

    .line 535
    :cond_16
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    .registers 2

    .prologue
    .line 628
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    .registers 2

    .prologue
    .line 632
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

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
    .line 571
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

    .line 541
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getSerializedSize()I

    .line 542
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 543
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->status_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 545
    :cond_10
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiStatus;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 546
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 548
    :cond_1d
    return-void
.end method
