.class public final Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiGetClientSettingsRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;
    }
.end annotation


# static fields
.field public static final CLIENT_LOGIN_TOKEN_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;


# instance fields
.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 34453
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 34750
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;

    .line 34751
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->initFields()V

    .line 34752
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

    .line 34419
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 34505
    iput-byte v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->memoizedIsInitialized:B

    .line 34526
    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->memoizedSerializedSize:I

    .line 34420
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->initFields()V

    .line 34421
    const/4 v2, 0x0

    .line 34423
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 34424
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_38

    .line 34425
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 34426
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_4c

    .line 34431
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 34433
    const/4 v0, 0x1

    goto :goto_d

    .line 34428
    :sswitch_1e
    const/4 v0, 0x1

    .line 34429
    goto :goto_d

    .line 34438
    :sswitch_20
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->bitField0_:I

    .line 34439
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->clientLoginToken_:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_3c

    goto :goto_d

    .line 34444
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 34445
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 34450
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->makeExtensionsImmutable()V

    throw v4

    :cond_38
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->makeExtensionsImmutable()V

    .line 34452
    return-void

    .line 34446
    :catch_3c
    move-exception v1

    .line 34447
    .local v1, e:Ljava/io/IOException;
    :try_start_3d
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_4b
    .catchall {:try_start_3d .. :try_end_4b} :catchall_33

    .line 34426
    nop

    :sswitch_data_4c
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
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
    .line 34397
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 34402
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 34505
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->memoizedIsInitialized:B

    .line 34526
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->memoizedSerializedSize:I

    .line 34404
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34397
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 34405
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 34505
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->memoizedIsInitialized:B

    .line 34526
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->memoizedSerializedSize:I

    .line 34405
    return-void
.end method

.method static synthetic access$41500(Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34397
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$41502(Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34397
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$41602(Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34397
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;
    .registers 1

    .prologue
    .line 34409
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 34503
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 34504
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;
    .registers 1

    .prologue
    .line 34599
    #calls: Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->access$41300()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 34602
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34579
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34585
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 34549
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 34555
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34590
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34596
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34569
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34575
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 34559
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 34565
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;

    return-object v0
.end method


# virtual methods
.method public getClientLoginToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 34476
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 34477
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 34478
    check-cast v1, Ljava/lang/String;

    .line 34486
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 34480
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 34482
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 34483
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 34484
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->clientLoginToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 34486
    goto :goto_8
.end method

.method public getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 34491
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 34492
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 34493
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 34495
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 34498
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;
    .registers 2

    .prologue
    .line 34413
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 34397
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;

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
            "Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34465
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 34528
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->memoizedSerializedSize:I

    .line 34529
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 34537
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 34531
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 34532
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 34533
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 34536
    :cond_18
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 34537
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 34473
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->bitField0_:I

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

    .line 34507
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->memoizedIsInitialized:B

    .line 34508
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 34515
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 34508
    goto :goto_9

    .line 34510
    :cond_c
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->hasClientLoginToken()Z

    move-result v3

    if-nez v3, :cond_16

    .line 34511
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 34512
    goto :goto_9

    .line 34514
    :cond_16
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;
    .registers 2

    .prologue
    .line 34600
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 34397
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;
    .registers 2

    .prologue
    .line 34604
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;)Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 34397
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest$Builder;

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
    .line 34543
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 34520
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->getSerializedSize()I

    .line 34521
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 34522
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetClientSettingsRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 34524
    :cond_11
    return-void
.end method
