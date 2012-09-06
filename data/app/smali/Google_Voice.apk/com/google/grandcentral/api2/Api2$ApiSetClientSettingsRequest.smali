.class public final Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiSetClientSettingsRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;
    }
.end annotation


# static fields
.field public static final CLIENT_LOGIN_TOKEN_FIELD_NUMBER:I = 0x1

.field public static final CLIENT_SETTINGS_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;


# instance fields
.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;

.field private clientSettings_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 35239
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 35587
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;

    .line 35588
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->initFields()V

    .line 35589
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

    .line 35200
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 35302
    iput-byte v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->memoizedIsInitialized:B

    .line 35326
    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->memoizedSerializedSize:I

    .line 35201
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->initFields()V

    .line 35202
    const/4 v2, 0x0

    .line 35204
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 35205
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_54

    .line 35206
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 35207
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_58

    .line 35212
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 35214
    const/4 v0, 0x1

    goto :goto_d

    .line 35209
    :sswitch_1e
    const/4 v0, 0x1

    .line 35210
    goto :goto_d

    .line 35219
    :sswitch_20
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->bitField0_:I

    .line 35220
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->clientLoginToken_:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 35230
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 35231
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 35236
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->makeExtensionsImmutable()V

    throw v4

    .line 35224
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->bitField0_:I

    .line 35225
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->clientSettings_:Lcom/google/protobuf/ByteString;
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 35232
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 35233
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

    .line 35236
    .end local v1           #e:Ljava/io/IOException;
    :cond_54
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->makeExtensionsImmutable()V

    .line 35238
    return-void

    .line 35207
    :sswitch_data_58
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x1a -> :sswitch_38
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
    .line 35178
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 35183
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 35302
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->memoizedIsInitialized:B

    .line 35326
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->memoizedSerializedSize:I

    .line 35185
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35178
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 35186
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 35302
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->memoizedIsInitialized:B

    .line 35326
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->memoizedSerializedSize:I

    .line 35186
    return-void
.end method

.method static synthetic access$42600(Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35178
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$42602(Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35178
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$42702(Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35178
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->clientSettings_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$42802(Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35178
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;
    .registers 1

    .prologue
    .line 35190
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 35299
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 35300
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->clientSettings_:Lcom/google/protobuf/ByteString;

    .line 35301
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;
    .registers 1

    .prologue
    .line 35403
    #calls: Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->access$42400()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;)Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 35406
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;)Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35383
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35389
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 35353
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 35359
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35394
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35400
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35373
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35379
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 35363
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 35369
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;

    return-object v0
.end method


# virtual methods
.method public getClientLoginToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 35262
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 35263
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 35264
    check-cast v1, Ljava/lang/String;

    .line 35272
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 35266
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 35268
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 35269
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 35270
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->clientLoginToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 35272
    goto :goto_8
.end method

.method public getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 35277
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 35278
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 35279
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 35281
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 35284
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

.method public getClientSettings()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 35295
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->clientSettings_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;
    .registers 2

    .prologue
    .line 35194
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 35178
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;

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
            "Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35251
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 35328
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->memoizedSerializedSize:I

    .line 35329
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 35341
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 35331
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 35332
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 35333
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 35336
    :cond_18
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_27

    .line 35337
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->clientSettings_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 35340
    :cond_27
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 35341
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 35259
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasClientSettings()Z
    .registers 3

    .prologue
    .line 35292
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 35304
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->memoizedIsInitialized:B

    .line 35305
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 35312
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 35305
    goto :goto_9

    .line 35307
    :cond_c
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->hasClientLoginToken()Z

    move-result v3

    if-nez v3, :cond_16

    .line 35308
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 35309
    goto :goto_9

    .line 35311
    :cond_16
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;
    .registers 2

    .prologue
    .line 35404
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 35178
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;
    .registers 2

    .prologue
    .line 35408
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;)Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 35178
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest$Builder;

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
    .line 35347
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

    .line 35317
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->getSerializedSize()I

    .line 35318
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 35319
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 35321
    :cond_11
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1e

    .line 35322
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSetClientSettingsRequest;->clientSettings_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 35324
    :cond_1e
    return-void
.end method
