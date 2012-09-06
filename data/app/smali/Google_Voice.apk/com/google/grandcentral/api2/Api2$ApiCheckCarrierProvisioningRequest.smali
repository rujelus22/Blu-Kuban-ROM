.class public final Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiCheckCarrierProvisioningRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;
    }
.end annotation


# static fields
.field public static final CLIENT_LOGIN_TOKEN_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHONE_NUMBER_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;


# instance fields
.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private phoneNumber_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 40368
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 40770
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;

    .line 40771
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->initFields()V

    .line 40772
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

    .line 40329
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 40454
    iput-byte v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->memoizedIsInitialized:B

    .line 40478
    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->memoizedSerializedSize:I

    .line 40330
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->initFields()V

    .line 40331
    const/4 v2, 0x0

    .line 40333
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 40334
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_54

    .line 40335
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 40336
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_58

    .line 40341
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 40343
    const/4 v0, 0x1

    goto :goto_d

    .line 40338
    :sswitch_1e
    const/4 v0, 0x1

    .line 40339
    goto :goto_d

    .line 40348
    :sswitch_20
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->bitField0_:I

    .line 40349
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->clientLoginToken_:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 40359
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 40360
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 40365
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->makeExtensionsImmutable()V

    throw v4

    .line 40353
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->bitField0_:I

    .line 40354
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->phoneNumber_:Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 40361
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 40362
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

    .line 40365
    .end local v1           #e:Ljava/io/IOException;
    :cond_54
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->makeExtensionsImmutable()V

    .line 40367
    return-void

    .line 40336
    :sswitch_data_58
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
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
    .line 40307
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 40312
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 40454
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->memoizedIsInitialized:B

    .line 40478
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->memoizedSerializedSize:I

    .line 40314
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40307
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 40315
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 40454
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->memoizedIsInitialized:B

    .line 40478
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->memoizedSerializedSize:I

    .line 40315
    return-void
.end method

.method static synthetic access$49100(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40307
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$49102(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40307
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$49200(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40307
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->phoneNumber_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$49202(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40307
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->phoneNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$49302(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40307
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;
    .registers 1

    .prologue
    .line 40319
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 40451
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 40452
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->phoneNumber_:Ljava/lang/Object;

    .line 40453
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;
    .registers 1

    .prologue
    .line 40555
    #calls: Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->access$48900()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 40558
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40535
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40541
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 40505
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 40511
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40546
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40552
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40525
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40531
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 40515
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 40521
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;

    return-object v0
.end method


# virtual methods
.method public getClientLoginToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 40391
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 40392
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 40393
    check-cast v1, Ljava/lang/String;

    .line 40401
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 40395
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 40397
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 40398
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 40399
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->clientLoginToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 40401
    goto :goto_8
.end method

.method public getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 40406
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 40407
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 40408
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 40410
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 40413
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;
    .registers 2

    .prologue
    .line 40323
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40307
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;

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
            "Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40380
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 5

    .prologue
    .line 40424
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->phoneNumber_:Ljava/lang/Object;

    .line 40425
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 40426
    check-cast v1, Ljava/lang/String;

    .line 40434
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 40428
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 40430
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 40431
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 40432
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->phoneNumber_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 40434
    goto :goto_8
.end method

.method public getPhoneNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 40439
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->phoneNumber_:Ljava/lang/Object;

    .line 40440
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 40441
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 40443
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->phoneNumber_:Ljava/lang/Object;

    .line 40446
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

    .line 40480
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->memoizedSerializedSize:I

    .line 40481
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 40493
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 40483
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 40484
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 40485
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 40488
    :cond_19
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 40489
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->getPhoneNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 40492
    :cond_28
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 40493
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 40388
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPhoneNumber()Z
    .registers 3

    .prologue
    .line 40421
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->bitField0_:I

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

    .line 40456
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->memoizedIsInitialized:B

    .line 40457
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 40464
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 40457
    goto :goto_9

    .line 40459
    :cond_c
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->hasClientLoginToken()Z

    move-result v3

    if-nez v3, :cond_16

    .line 40460
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 40461
    goto :goto_9

    .line 40463
    :cond_16
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;
    .registers 2

    .prologue
    .line 40556
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 40307
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;
    .registers 2

    .prologue
    .line 40560
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;)Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 40307
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest$Builder;

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
    .line 40499
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

    .line 40469
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->getSerializedSize()I

    .line 40470
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 40471
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 40473
    :cond_12
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 40474
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckCarrierProvisioningRequest;->getPhoneNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 40476
    :cond_1f
    return-void
.end method
