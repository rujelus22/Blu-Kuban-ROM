.class public final Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiCallThroughRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    }
.end annotation


# static fields
.field public static final CLIENT_LOGIN_TOKEN_FIELD_NUMBER:I = 0x1

.field public static final CREATE_PHONEBOOK_IF_NOT_EXIST_FIELD_NUMBER:I = 0x4

.field public static final DEVICE_PHONE_NUMBER_FIELD_NUMBER:I = 0x7

.field public static final GEO_LOCATION_HINT_FIELD_NUMBER:I = 0x6

.field public static final OUTGOING_NUMBER_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROVIDER_HINT_FIELD_NUMBER:I = 0x5

.field public static final SUBSCRIBER_DID_FIELD_NUMBER:I = 0x3

.field public static final USE_SHADOW_NUMBER_FIELD_NUMBER:I = 0x8

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;


# instance fields
.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;

.field private createPhonebookIfNotExist_:Z

.field private devicePhoneNumber_:Ljava/lang/Object;

.field private geoLocationHint_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private outgoingNumber_:Ljava/lang/Object;

.field private providerHint_:Ljava/lang/Object;

.field private subscriberDid_:Ljava/lang/Object;

.field private useShadowNumber_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 24555
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 25481
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;

    .line 25482
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->initFields()V

    .line 25483
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

    .line 24486
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 24799
    iput-byte v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->memoizedIsInitialized:B

    .line 24845
    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->memoizedSerializedSize:I

    .line 24487
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->initFields()V

    .line 24488
    const/4 v2, 0x0

    .line 24490
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 24491
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_a4

    .line 24492
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 24493
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_a8

    .line 24498
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 24500
    const/4 v0, 0x1

    goto :goto_d

    .line 24495
    :sswitch_1e
    const/4 v0, 0x1

    .line 24496
    goto :goto_d

    .line 24505
    :sswitch_20
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

    .line 24506
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->clientLoginToken_:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 24546
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 24547
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 24552
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->makeExtensionsImmutable()V

    throw v4

    .line 24510
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

    .line 24511
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->outgoingNumber_:Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 24548
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 24549
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

    .line 24515
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_54
    :try_start_54
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

    .line 24516
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->subscriberDid_:Ljava/lang/Object;

    goto :goto_d

    .line 24520
    :sswitch_61
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

    .line 24521
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->createPhonebookIfNotExist_:Z

    goto :goto_d

    .line 24525
    :sswitch_6e
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

    .line 24526
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->providerHint_:Ljava/lang/Object;

    goto :goto_d

    .line 24530
    :sswitch_7b
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

    .line 24531
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->geoLocationHint_:Ljava/lang/Object;

    goto :goto_d

    .line 24535
    :sswitch_88
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

    .line 24536
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->devicePhoneNumber_:Ljava/lang/Object;

    goto/16 :goto_d

    .line 24540
    :sswitch_96
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

    .line 24541
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->useShadowNumber_:Z
    :try_end_a2
    .catchall {:try_start_54 .. :try_end_a2} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_54 .. :try_end_a2} :catch_2d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_a2} :catch_45

    goto/16 :goto_d

    .line 24552
    .end local v3           #tag:I
    :cond_a4
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->makeExtensionsImmutable()V

    .line 24554
    return-void

    .line 24493
    :sswitch_data_a8
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x12 -> :sswitch_38
        0x1a -> :sswitch_54
        0x20 -> :sswitch_61
        0x2a -> :sswitch_6e
        0x32 -> :sswitch_7b
        0x3a -> :sswitch_88
        0x40 -> :sswitch_96
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
    .line 24464
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 24469
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 24799
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->memoizedIsInitialized:B

    .line 24845
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->memoizedSerializedSize:I

    .line 24471
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24464
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 24472
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 24799
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->memoizedIsInitialized:B

    .line 24845
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->memoizedSerializedSize:I

    .line 24472
    return-void
.end method

.method static synthetic access$29600(Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24464
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$29602(Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24464
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$29700(Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24464
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->outgoingNumber_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$29702(Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24464
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->outgoingNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$29800(Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24464
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->subscriberDid_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$29802(Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24464
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->subscriberDid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$29902(Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24464
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->createPhonebookIfNotExist_:Z

    return p1
.end method

.method static synthetic access$30000(Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24464
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->providerHint_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$30002(Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24464
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->providerHint_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$30100(Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24464
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->geoLocationHint_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$30102(Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24464
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->geoLocationHint_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$30200(Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24464
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->devicePhoneNumber_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$30202(Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24464
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->devicePhoneNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$30302(Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24464
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->useShadowNumber_:Z

    return p1
.end method

.method static synthetic access$30402(Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24464
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;
    .registers 1

    .prologue
    .line 24476
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 24790
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 24791
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->outgoingNumber_:Ljava/lang/Object;

    .line 24792
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->subscriberDid_:Ljava/lang/Object;

    .line 24793
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->createPhonebookIfNotExist_:Z

    .line 24794
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->providerHint_:Ljava/lang/Object;

    .line 24795
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->geoLocationHint_:Ljava/lang/Object;

    .line 24796
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->devicePhoneNumber_:Ljava/lang/Object;

    .line 24797
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->useShadowNumber_:Z

    .line 24798
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    .registers 1

    .prologue
    .line 24946
    #calls: Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->access$29400()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 24949
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24926
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24932
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 24896
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 24902
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24937
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24943
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24916
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24922
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 24906
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 24912
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;

    return-object v0
.end method


# virtual methods
.method public getClientLoginToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 24578
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 24579
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 24580
    check-cast v1, Ljava/lang/String;

    .line 24588
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 24582
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 24584
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 24585
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 24586
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->clientLoginToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 24588
    goto :goto_8
.end method

.method public getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 24593
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 24594
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 24595
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 24597
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 24600
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

.method public getCreatePhonebookIfNotExist()Z
    .registers 2

    .prologue
    .line 24677
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->createPhonebookIfNotExist_:Z

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;
    .registers 2

    .prologue
    .line 24480
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 24464
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDevicePhoneNumber()Ljava/lang/String;
    .registers 5

    .prologue
    .line 24753
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->devicePhoneNumber_:Ljava/lang/Object;

    .line 24754
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 24755
    check-cast v1, Ljava/lang/String;

    .line 24763
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 24757
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 24759
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 24760
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 24761
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->devicePhoneNumber_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 24763
    goto :goto_8
.end method

.method public getDevicePhoneNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 24768
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->devicePhoneNumber_:Ljava/lang/Object;

    .line 24769
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 24770
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 24772
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->devicePhoneNumber_:Ljava/lang/Object;

    .line 24775
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

.method public getGeoLocationHint()Ljava/lang/String;
    .registers 5

    .prologue
    .line 24720
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->geoLocationHint_:Ljava/lang/Object;

    .line 24721
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 24722
    check-cast v1, Ljava/lang/String;

    .line 24730
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 24724
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 24726
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 24727
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 24728
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->geoLocationHint_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 24730
    goto :goto_8
.end method

.method public getGeoLocationHintBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 24735
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->geoLocationHint_:Ljava/lang/Object;

    .line 24736
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 24737
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 24739
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->geoLocationHint_:Ljava/lang/Object;

    .line 24742
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

.method public getOutgoingNumber()Ljava/lang/String;
    .registers 5

    .prologue
    .line 24611
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->outgoingNumber_:Ljava/lang/Object;

    .line 24612
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 24613
    check-cast v1, Ljava/lang/String;

    .line 24621
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 24615
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 24617
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 24618
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 24619
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->outgoingNumber_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 24621
    goto :goto_8
.end method

.method public getOutgoingNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 24626
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->outgoingNumber_:Ljava/lang/Object;

    .line 24627
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 24628
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 24630
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->outgoingNumber_:Ljava/lang/Object;

    .line 24633
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
            "Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24567
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getProviderHint()Ljava/lang/String;
    .registers 5

    .prologue
    .line 24687
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->providerHint_:Ljava/lang/Object;

    .line 24688
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 24689
    check-cast v1, Ljava/lang/String;

    .line 24697
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 24691
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 24693
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 24694
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 24695
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->providerHint_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 24697
    goto :goto_8
.end method

.method public getProviderHintBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 24702
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->providerHint_:Ljava/lang/Object;

    .line 24703
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 24704
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 24706
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->providerHint_:Ljava/lang/Object;

    .line 24709
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
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 24847
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->memoizedSerializedSize:I

    .line 24848
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 24884
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 24850
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 24851
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 24852
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 24855
    :cond_1c
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2b

    .line 24856
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->getOutgoingNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 24859
    :cond_2b
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3b

    .line 24860
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->getSubscriberDidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 24863
    :cond_3b
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_48

    .line 24864
    iget-boolean v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->createPhonebookIfNotExist_:Z

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 24867
    :cond_48
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5a

    .line 24868
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->getProviderHintBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 24871
    :cond_5a
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6c

    .line 24872
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->getGeoLocationHintBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 24875
    :cond_6c
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7e

    .line 24876
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->getDevicePhoneNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 24879
    :cond_7e
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8d

    .line 24880
    iget-boolean v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->useShadowNumber_:Z

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 24883
    :cond_8d
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 24884
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_b
.end method

.method public getSubscriberDid()Ljava/lang/String;
    .registers 5

    .prologue
    .line 24644
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->subscriberDid_:Ljava/lang/Object;

    .line 24645
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 24646
    check-cast v1, Ljava/lang/String;

    .line 24654
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 24648
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 24650
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 24651
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 24652
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->subscriberDid_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 24654
    goto :goto_8
.end method

.method public getSubscriberDidBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 24659
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->subscriberDid_:Ljava/lang/Object;

    .line 24660
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 24661
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 24663
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->subscriberDid_:Ljava/lang/Object;

    .line 24666
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

.method public getUseShadowNumber()Z
    .registers 2

    .prologue
    .line 24786
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->useShadowNumber_:Z

    return v0
.end method

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 24575
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasCreatePhonebookIfNotExist()Z
    .registers 3

    .prologue
    .line 24674
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

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

.method public hasDevicePhoneNumber()Z
    .registers 3

    .prologue
    .line 24750
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

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

.method public hasGeoLocationHint()Z
    .registers 3

    .prologue
    .line 24717
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

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

.method public hasOutgoingNumber()Z
    .registers 3

    .prologue
    .line 24608
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

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

.method public hasProviderHint()Z
    .registers 3

    .prologue
    .line 24684
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

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

.method public hasSubscriberDid()Z
    .registers 3

    .prologue
    .line 24641
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

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

.method public hasUseShadowNumber()Z
    .registers 3

    .prologue
    .line 24783
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 24801
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->memoizedIsInitialized:B

    .line 24802
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 24813
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 24802
    goto :goto_9

    .line 24804
    :cond_c
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->hasClientLoginToken()Z

    move-result v3

    if-nez v3, :cond_16

    .line 24805
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 24806
    goto :goto_9

    .line 24808
    :cond_16
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->hasOutgoingNumber()Z

    move-result v3

    if-nez v3, :cond_20

    .line 24809
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 24810
    goto :goto_9

    .line 24812
    :cond_20
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    .registers 2

    .prologue
    .line 24947
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 24464
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;
    .registers 2

    .prologue
    .line 24951
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 24464
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest$Builder;

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
    .line 24890
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
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 24818
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->getSerializedSize()I

    .line 24819
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 24820
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 24822
    :cond_15
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 24823
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->getOutgoingNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 24825
    :cond_22
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_30

    .line 24826
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->getSubscriberDidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 24828
    :cond_30
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3b

    .line 24829
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->createPhonebookIfNotExist_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 24831
    :cond_3b
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4b

    .line 24832
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->getProviderHintBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 24834
    :cond_4b
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5b

    .line 24835
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->getGeoLocationHintBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 24837
    :cond_5b
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6b

    .line 24838
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->getDevicePhoneNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 24840
    :cond_6b
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_78

    .line 24841
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughRequest;->useShadowNumber_:Z

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 24843
    :cond_78
    return-void
.end method
