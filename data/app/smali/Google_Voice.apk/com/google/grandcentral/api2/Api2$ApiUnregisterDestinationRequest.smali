.class public final Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiUnregisterDestinationRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;
    }
.end annotation


# static fields
.field public static final CLIENT_LOGIN_TOKEN_FIELD_NUMBER:I = 0x1

.field public static final DESTINATION_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;


# instance fields
.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;

.field private destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 38509
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 38892
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;

    .line 38893
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->initFields()V

    .line 38894
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

    .line 38462
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 38572
    iput-byte v5, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->memoizedIsInitialized:B

    .line 38604
    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->memoizedSerializedSize:I

    .line 38463
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->initFields()V

    .line 38464
    const/4 v2, 0x0

    .line 38466
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 38467
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_73

    .line 38468
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 38469
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_78

    .line 38474
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_d

    .line 38476
    const/4 v0, 0x1

    goto :goto_d

    .line 38471
    :sswitch_1e
    const/4 v0, 0x1

    .line 38472
    goto :goto_d

    .line 38481
    :sswitch_20
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->bitField0_:I

    .line 38482
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->clientLoginToken_:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_64

    goto :goto_d

    .line 38500
    .end local v4           #tag:I
    :catch_2d
    move-exception v1

    .line 38501
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 38506
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v5

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->makeExtensionsImmutable()V

    throw v5

    .line 38486
    .restart local v4       #tag:I
    :sswitch_38
    const/4 v3, 0x0

    .line 38487
    .local v3, subBuilder:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    :try_start_39
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_46

    .line 38488
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    invoke-virtual {v5}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    move-result-object v3

    .line 38490
    :cond_46
    sget-object v5, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    .line 38491
    if-eqz v3, :cond_5d

    .line 38492
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    invoke-virtual {v3, v5}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    .line 38493
    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    .line 38495
    :cond_5d
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->bitField0_:I
    :try_end_63
    .catchall {:try_start_39 .. :try_end_63} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_39 .. :try_end_63} :catch_2d
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_63} :catch_64

    goto :goto_d

    .line 38502
    .end local v3           #subBuilder:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .end local v4           #tag:I
    :catch_64
    move-exception v1

    .line 38503
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
    .catchall {:try_start_65 .. :try_end_73} :catchall_33

    .line 38506
    .end local v1           #e:Ljava/io/IOException;
    :cond_73
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->makeExtensionsImmutable()V

    .line 38508
    return-void

    .line 38469
    nop

    :sswitch_data_78
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
    .line 38440
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 38445
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 38572
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->memoizedIsInitialized:B

    .line 38604
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->memoizedSerializedSize:I

    .line 38447
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38440
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 38448
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 38572
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->memoizedIsInitialized:B

    .line 38604
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->memoizedSerializedSize:I

    .line 38448
    return-void
.end method

.method static synthetic access$46700(Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38440
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$46702(Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38440
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$46802(Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38440
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    return-object p1
.end method

.method static synthetic access$46902(Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38440
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;
    .registers 1

    .prologue
    .line 38452
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 38569
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 38570
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    .line 38571
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;
    .registers 1

    .prologue
    .line 38681
    #calls: Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->access$46500()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 38684
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38661
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38667
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 38631
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 38637
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38672
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38678
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38651
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38657
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 38641
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 38647
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;

    return-object v0
.end method


# virtual methods
.method public getClientLoginToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 38532
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 38533
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 38534
    check-cast v1, Ljava/lang/String;

    .line 38542
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 38536
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 38538
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 38539
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 38540
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->clientLoginToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 38542
    goto :goto_8
.end method

.method public getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 38547
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 38548
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 38549
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 38551
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 38554
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;
    .registers 2

    .prologue
    .line 38456
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 38440
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDestination()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;
    .registers 2

    .prologue
    .line 38565
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38521
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 38606
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->memoizedSerializedSize:I

    .line 38607
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 38619
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 38609
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 38610
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 38611
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 38614
    :cond_19
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 38615
    iget-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 38618
    :cond_26
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 38619
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 38529
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasDestination()Z
    .registers 3

    .prologue
    .line 38562
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->bitField0_:I

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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38574
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->memoizedIsInitialized:B

    .line 38575
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_d

    if-ne v0, v1, :cond_b

    :goto_9
    move v2, v1

    .line 38590
    :goto_a
    return v2

    :cond_b
    move v1, v2

    .line 38575
    goto :goto_9

    .line 38577
    :cond_d
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->hasClientLoginToken()Z

    move-result v3

    if-nez v3, :cond_16

    .line 38578
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->memoizedIsInitialized:B

    goto :goto_a

    .line 38581
    :cond_16
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->hasDestination()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 38582
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->memoizedIsInitialized:B

    goto :goto_a

    .line 38585
    :cond_1f
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->getDestination()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2c

    .line 38586
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->memoizedIsInitialized:B

    goto :goto_a

    .line 38589
    :cond_2c
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->memoizedIsInitialized:B

    move v2, v1

    .line 38590
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;
    .registers 2

    .prologue
    .line 38682
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 38440
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;
    .registers 2

    .prologue
    .line 38686
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;)Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 38440
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest$Builder;

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
    .line 38625
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

    .line 38595
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->getSerializedSize()I

    .line 38596
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 38597
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 38599
    :cond_12
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 38600
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUnregisterDestinationRequest;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 38602
    :cond_1d
    return-void
.end method
