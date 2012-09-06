.class public final Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestinationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiPushNotificationDestination"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;,
        Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;
    }
.end annotation


# static fields
.field public static final ANDROID_PRIMARY_ID_FIELD_NUMBER:I = 0x5

.field public static final APNS_DEVICE_TOKEN_FIELD_NUMBER:I = 0x6

.field public static final APPLICATION_ID_FIELD_NUMBER:I = 0x7

.field public static final COUNTRY_CODE_FIELD_NUMBER:I = 0x9

.field public static final EVENT_PAYLOAD_FIELD_NUMBER:I = 0x3

.field public static final LANGUAGE_CODE_FIELD_NUMBER:I = 0x8

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROUTING_INFO_FIELD_NUMBER:I = 0x4

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x1

.field public static final TYPE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;


# instance fields
.field private androidPrimaryId_:Ljava/lang/Object;

.field private apnsDeviceToken_:Lcom/google/protobuf/ByteString;

.field private applicationId_:Ljava/lang/Object;

.field private bitField0_:I

.field private countryCode_:Ljava/lang/Object;

.field private eventPayload_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiEventPayload;",
            ">;"
        }
    .end annotation
.end field

.field private languageCode_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private routingInfo_:Ljava/lang/Object;

.field private timestamp_:J

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 36551
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->PARSER:Lcom/google/protobuf/Parser;

    .line 37600
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    .line 37601
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->initFields()V

    .line 37602
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
    const/4 v4, -0x1

    const/4 v6, 0x4

    .line 36471
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 36844
    iput-byte v4, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->memoizedIsInitialized:B

    .line 36889
    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->memoizedSerializedSize:I

    .line 36472
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->initFields()V

    .line 36473
    const/4 v2, 0x0

    .line 36475
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 36476
    .local v0, done:Z
    :cond_e
    :goto_e
    if-nez v0, :cond_cd

    .line 36477
    :try_start_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 36478
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_de

    .line 36483
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_e

    .line 36485
    const/4 v0, 0x1

    goto :goto_e

    .line 36480
    :sswitch_1f
    const/4 v0, 0x1

    .line 36481
    goto :goto_e

    .line 36490
    :sswitch_21
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

    .line 36491
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->timestamp_:J
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_34
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_10 .. :try_end_2d} :catch_2e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_2d} :catch_52

    goto :goto_e

    .line 36539
    .end local v3           #tag:I
    :catch_2e
    move-exception v1

    .line 36540
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2f
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_34

    .line 36545
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_34
    move-exception v4

    and-int/lit8 v5, v2, 0x4

    if-ne v5, v6, :cond_41

    .line 36546
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->eventPayload_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->eventPayload_:Ljava/util/List;

    .line 36548
    :cond_41
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->makeExtensionsImmutable()V

    throw v4

    .line 36495
    .restart local v3       #tag:I
    :sswitch_45
    :try_start_45
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

    .line 36496
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->type_:I
    :try_end_51
    .catchall {:try_start_45 .. :try_end_51} :catchall_34
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_45 .. :try_end_51} :catch_2e
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_51} :catch_52

    goto :goto_e

    .line 36541
    .end local v3           #tag:I
    :catch_52
    move-exception v1

    .line 36542
    .local v1, e:Ljava/io/IOException;
    :try_start_53
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_61
    .catchall {:try_start_53 .. :try_end_61} :catchall_34

    .line 36500
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_61
    and-int/lit8 v4, v2, 0x4

    if-eq v4, v6, :cond_6e

    .line 36501
    :try_start_65
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->eventPayload_:Ljava/util/List;

    .line 36502
    or-int/lit8 v2, v2, 0x4

    .line 36504
    :cond_6e
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->eventPayload_:Ljava/util/List;

    sget-object v5, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 36508
    :sswitch_7a
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

    .line 36509
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->routingInfo_:Ljava/lang/Object;

    goto :goto_e

    .line 36513
    :sswitch_87
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

    .line 36514
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->androidPrimaryId_:Ljava/lang/Object;

    goto/16 :goto_e

    .line 36518
    :sswitch_95
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

    .line 36519
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->apnsDeviceToken_:Lcom/google/protobuf/ByteString;

    goto/16 :goto_e

    .line 36523
    :sswitch_a3
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

    .line 36524
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->applicationId_:Ljava/lang/Object;

    goto/16 :goto_e

    .line 36528
    :sswitch_b1
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

    .line 36529
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->languageCode_:Ljava/lang/Object;

    goto/16 :goto_e

    .line 36533
    :sswitch_bf
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

    .line 36534
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->countryCode_:Ljava/lang/Object;
    :try_end_cb
    .catchall {:try_start_65 .. :try_end_cb} :catchall_34
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_65 .. :try_end_cb} :catch_2e
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_cb} :catch_52

    goto/16 :goto_e

    .line 36545
    .end local v3           #tag:I
    :cond_cd
    and-int/lit8 v4, v2, 0x4

    if-ne v4, v6, :cond_d9

    .line 36546
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->eventPayload_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->eventPayload_:Ljava/util/List;

    .line 36548
    :cond_d9
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->makeExtensionsImmutable()V

    .line 36550
    return-void

    .line 36478
    nop

    :sswitch_data_de
    .sparse-switch
        0x0 -> :sswitch_1f
        0x8 -> :sswitch_21
        0x10 -> :sswitch_45
        0x1a -> :sswitch_61
        0x22 -> :sswitch_7a
        0x2a -> :sswitch_87
        0x32 -> :sswitch_95
        0x3a -> :sswitch_a3
        0x42 -> :sswitch_b1
        0x4a -> :sswitch_bf
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
    .line 36449
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 36454
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 36844
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->memoizedIsInitialized:B

    .line 36889
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->memoizedSerializedSize:I

    .line 36456
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36449
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 36457
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 36844
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->memoizedIsInitialized:B

    .line 36889
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->memoizedSerializedSize:I

    .line 36457
    return-void
.end method

.method static synthetic access$44302(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36449
    iput-wide p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$44402(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36449
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->type_:I

    return p1
.end method

.method static synthetic access$44500(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36449
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->eventPayload_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$44502(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36449
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->eventPayload_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$44600(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36449
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->routingInfo_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$44602(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36449
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->routingInfo_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$44700(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36449
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->androidPrimaryId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$44702(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36449
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->androidPrimaryId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$44802(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36449
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->apnsDeviceToken_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$44900(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36449
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->applicationId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$44902(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36449
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->applicationId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$45000(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36449
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->languageCode_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$45002(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36449
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->languageCode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$45100(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36449
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->countryCode_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$45102(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36449
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->countryCode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$45202(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36449
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;
    .registers 1

    .prologue
    .line 36461
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 36834
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->timestamp_:J

    .line 36835
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->type_:I

    .line 36836
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->eventPayload_:Ljava/util/List;

    .line 36837
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->routingInfo_:Ljava/lang/Object;

    .line 36838
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->androidPrimaryId_:Ljava/lang/Object;

    .line 36839
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->apnsDeviceToken_:Lcom/google/protobuf/ByteString;

    .line 36840
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->applicationId_:Ljava/lang/Object;

    .line 36841
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->languageCode_:Ljava/lang/Object;

    .line 36842
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->countryCode_:Ljava/lang/Object;

    .line 36843
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 1

    .prologue
    .line 36994
    #calls: Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->access$44100()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 36997
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36974
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36980
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 36944
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 36950
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36985
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36991
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36964
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36970
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 36954
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 36960
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    return-object v0
.end method


# virtual methods
.method public getAndroidPrimaryId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 36698
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->androidPrimaryId_:Ljava/lang/Object;

    .line 36699
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 36700
    check-cast v1, Ljava/lang/String;

    .line 36708
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 36702
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 36704
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 36705
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 36706
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->androidPrimaryId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 36708
    goto :goto_8
.end method

.method public getAndroidPrimaryIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 36713
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->androidPrimaryId_:Ljava/lang/Object;

    .line 36714
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 36715
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 36717
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->androidPrimaryId_:Ljava/lang/Object;

    .line 36720
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

.method public getApnsDeviceToken()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 36731
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->apnsDeviceToken_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 36741
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->applicationId_:Ljava/lang/Object;

    .line 36742
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 36743
    check-cast v1, Ljava/lang/String;

    .line 36751
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 36745
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 36747
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 36748
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 36749
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->applicationId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 36751
    goto :goto_8
.end method

.method public getApplicationIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 36756
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->applicationId_:Ljava/lang/Object;

    .line 36757
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 36758
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 36760
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->applicationId_:Ljava/lang/Object;

    .line 36763
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

.method public getCountryCode()Ljava/lang/String;
    .registers 5

    .prologue
    .line 36807
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->countryCode_:Ljava/lang/Object;

    .line 36808
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 36809
    check-cast v1, Ljava/lang/String;

    .line 36817
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 36811
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 36813
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 36814
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 36815
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->countryCode_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 36817
    goto :goto_8
.end method

.method public getCountryCodeBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 36822
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->countryCode_:Ljava/lang/Object;

    .line 36823
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 36824
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 36826
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->countryCode_:Ljava/lang/Object;

    .line 36829
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;
    .registers 2

    .prologue
    .line 36465
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 36449
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v0

    return-object v0
.end method

.method public getEventPayload(I)Lcom/google/grandcentral/api2/Api2$ApiEventPayload;
    .registers 3
    .parameter "index"

    .prologue
    .line 36651
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->eventPayload_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;

    return-object v0
.end method

.method public getEventPayloadCount()I
    .registers 2

    .prologue
    .line 36648
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->eventPayload_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEventPayloadList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiEventPayload;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36641
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->eventPayload_:Ljava/util/List;

    return-object v0
.end method

.method public getEventPayloadOrBuilder(I)Lcom/google/grandcentral/api2/Api2$ApiEventPayloadOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 36655
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->eventPayload_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayloadOrBuilder;

    return-object v0
.end method

.method public getEventPayloadOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/grandcentral/api2/Api2$ApiEventPayloadOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36645
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->eventPayload_:Ljava/util/List;

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .registers 5

    .prologue
    .line 36774
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->languageCode_:Ljava/lang/Object;

    .line 36775
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 36776
    check-cast v1, Ljava/lang/String;

    .line 36784
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 36778
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 36780
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 36781
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 36782
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->languageCode_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 36784
    goto :goto_8
.end method

.method public getLanguageCodeBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 36789
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->languageCode_:Ljava/lang/Object;

    .line 36790
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 36791
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 36793
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->languageCode_:Ljava/lang/Object;

    .line 36796
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

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36563
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRoutingInfo()Ljava/lang/String;
    .registers 5

    .prologue
    .line 36665
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->routingInfo_:Ljava/lang/Object;

    .line 36666
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 36667
    check-cast v1, Ljava/lang/String;

    .line 36675
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 36669
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 36671
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 36672
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 36673
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->routingInfo_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 36675
    goto :goto_8
.end method

.method public getRoutingInfoBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 36680
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->routingInfo_:Ljava/lang/Object;

    .line 36681
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 36682
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 36684
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->routingInfo_:Ljava/lang/Object;

    .line 36687
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
    .registers 10

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 36891
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->memoizedSerializedSize:I

    .line 36892
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_c

    move v2, v1

    .line 36932
    .end local v1           #size:I
    .local v2, size:I
    :goto_b
    return v2

    .line 36894
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_c
    const/4 v1, 0x0

    .line 36895
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v5, :cond_1a

    .line 36896
    iget-wide v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->timestamp_:J

    invoke-static {v5, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 36899
    :cond_1a
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v6, :cond_27

    .line 36900
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->type_:I

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 36903
    :cond_27
    const/4 v0, 0x0

    .local v0, i:I
    :goto_28
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->eventPayload_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_41

    .line 36904
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->eventPayload_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 36903
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 36907
    :cond_41
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v7, :cond_50

    .line 36908
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getRoutingInfoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 36911
    :cond_50
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v8, :cond_60

    .line 36912
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getAndroidPrimaryIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 36915
    :cond_60
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_70

    .line 36916
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->apnsDeviceToken_:Lcom/google/protobuf/ByteString;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 36919
    :cond_70
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_82

    .line 36920
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getApplicationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 36923
    :cond_82
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_93

    .line 36924
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getLanguageCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 36927
    :cond_93
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_a6

    .line 36928
    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getCountryCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 36931
    :cond_a6
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->memoizedSerializedSize:I

    move v2, v1

    .line 36932
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_b
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 36624
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->timestamp_:J

    return-wide v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 36634
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->type_:I

    return v0
.end method

.method public hasAndroidPrimaryId()Z
    .registers 3

    .prologue
    .line 36695
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

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

.method public hasApnsDeviceToken()Z
    .registers 3

    .prologue
    .line 36728
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

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

.method public hasApplicationId()Z
    .registers 3

    .prologue
    .line 36738
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

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

.method public hasCountryCode()Z
    .registers 3

    .prologue
    .line 36804
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasLanguageCode()Z
    .registers 3

    .prologue
    .line 36771
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

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

.method public hasRoutingInfo()Z
    .registers 3

    .prologue
    .line 36662
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

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

.method public hasTimestamp()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 36621
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasType()Z
    .registers 3

    .prologue
    .line 36631
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

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

    .line 36846
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->memoizedIsInitialized:B

    .line 36847
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 36854
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 36847
    goto :goto_9

    .line 36849
    :cond_c
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->hasType()Z

    move-result v3

    if-nez v3, :cond_16

    .line 36850
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->memoizedIsInitialized:B

    move v1, v2

    .line 36851
    goto :goto_9

    .line 36853
    :cond_16
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 2

    .prologue
    .line 36995
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 36449
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .registers 2

    .prologue
    .line 36999
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 36449
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

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
    .line 36938
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 9
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 36859
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getSerializedSize()I

    .line 36860
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_13

    .line 36861
    iget-wide v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->timestamp_:J

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 36863
    :cond_13
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_1e

    .line 36864
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->type_:I

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 36866
    :cond_1e
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1f
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->eventPayload_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_36

    .line 36867
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->eventPayload_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 36866
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 36869
    :cond_36
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_43

    .line 36870
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getRoutingInfoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 36872
    :cond_43
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v6, :cond_51

    .line 36873
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getAndroidPrimaryIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 36875
    :cond_51
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5f

    .line 36876
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->apnsDeviceToken_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 36878
    :cond_5f
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6f

    .line 36879
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getApplicationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 36881
    :cond_6f
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7e

    .line 36882
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getLanguageCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v6, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 36884
    :cond_7e
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8f

    .line 36885
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getCountryCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 36887
    :cond_8f
    return-void
.end method
