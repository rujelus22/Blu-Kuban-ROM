.class public final Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiGetVoicemailConfigurationResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;,
        Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$VoicemailDiversionType;
    }
.end annotation


# static fields
.field public static final CARRIER_DIVERSION_CODE_FIELD_NUMBER:I = 0x3

.field public static final DIVERSION_NUMBER_FIELD_NUMBER:I = 0x4

.field public static final DIVERSION_TYPE_FIELD_NUMBER:I = 0x5

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_FIELD_NUMBER:I = 0x1

.field public static final VOICEMAIL_NUMBER_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;


# instance fields
.field private bitField0_:I

.field private carrierDiversionCode_:Ljava/lang/Object;

.field private diversionNumber_:Ljava/lang/Object;

.field private diversionType_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

.field private voicemailNumber_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 30422
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 31102
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    .line 31103
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->initFields()V

    .line 31104
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

    .line 30360
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 30611
    iput-byte v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->memoizedIsInitialized:B

    .line 30648
    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->memoizedSerializedSize:I

    .line 30361
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->initFields()V

    .line 30362
    const/4 v2, 0x0

    .line 30364
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 30365
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_9b

    .line 30366
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 30367
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_a0

    .line 30372
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_d

    .line 30374
    const/4 v0, 0x1

    goto :goto_d

    .line 30369
    :sswitch_1e
    const/4 v0, 0x1

    .line 30370
    goto :goto_d

    .line 30379
    :sswitch_20
    const/4 v3, 0x0

    .line 30380
    .local v3, subBuilder:Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2e

    .line 30381
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {v5}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v3

    .line 30383
    :cond_2e
    sget-object v5, Lcom/google/grandcentral/api2/Api2$ApiStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/grandcentral/api2/Api2$ApiStatus;

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 30384
    if-eqz v3, :cond_45

    .line 30385
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {v3, v5}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    .line 30386
    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 30388
    :cond_45
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->bitField0_:I
    :try_end_4b
    .catchall {:try_start_f .. :try_end_4b} :catchall_52
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_4b} :catch_4c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_4b} :catch_64

    goto :goto_d

    .line 30413
    .end local v3           #subBuilder:Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    .end local v4           #tag:I
    :catch_4c
    move-exception v1

    .line 30414
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_4d
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_52

    .line 30419
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_52
    move-exception v5

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->makeExtensionsImmutable()V

    throw v5

    .line 30392
    .restart local v4       #tag:I
    :sswitch_57
    :try_start_57
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->bitField0_:I

    .line 30393
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->voicemailNumber_:Ljava/lang/Object;
    :try_end_63
    .catchall {:try_start_57 .. :try_end_63} :catchall_52
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_57 .. :try_end_63} :catch_4c
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_63} :catch_64

    goto :goto_d

    .line 30415
    .end local v4           #tag:I
    :catch_64
    move-exception v1

    .line 30416
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

    .line 30397
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_73
    :try_start_73
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->bitField0_:I

    .line 30398
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->carrierDiversionCode_:Ljava/lang/Object;

    goto :goto_d

    .line 30402
    :sswitch_80
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->bitField0_:I

    .line 30403
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->diversionNumber_:Ljava/lang/Object;

    goto :goto_d

    .line 30407
    :sswitch_8d
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->bitField0_:I

    .line 30408
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v5

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->diversionType_:I
    :try_end_99
    .catchall {:try_start_73 .. :try_end_99} :catchall_52
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_73 .. :try_end_99} :catch_4c
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_99} :catch_64

    goto/16 :goto_d

    .line 30419
    .end local v4           #tag:I
    :cond_9b
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->makeExtensionsImmutable()V

    .line 30421
    return-void

    .line 30367
    nop

    :sswitch_data_a0
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x12 -> :sswitch_57
        0x1a -> :sswitch_73
        0x22 -> :sswitch_80
        0x28 -> :sswitch_8d
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
    .line 30338
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 30343
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 30611
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->memoizedIsInitialized:B

    .line 30648
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->memoizedSerializedSize:I

    .line 30345
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30338
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 30346
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 30611
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->memoizedIsInitialized:B

    .line 30648
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->memoizedSerializedSize:I

    .line 30346
    return-void
.end method

.method static synthetic access$36702(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30338
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object p1
.end method

.method static synthetic access$36800(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30338
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->voicemailNumber_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$36802(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30338
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->voicemailNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$36900(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30338
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->carrierDiversionCode_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$36902(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30338
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->carrierDiversionCode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$37000(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30338
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->diversionNumber_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$37002(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30338
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->diversionNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$37102(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30338
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->diversionType_:I

    return p1
.end method

.method static synthetic access$37202(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30338
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;
    .registers 1

    .prologue
    .line 30350
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 30605
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 30606
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->voicemailNumber_:Ljava/lang/Object;

    .line 30607
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->carrierDiversionCode_:Ljava/lang/Object;

    .line 30608
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->diversionNumber_:Ljava/lang/Object;

    .line 30609
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->diversionType_:I

    .line 30610
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;
    .registers 1

    .prologue
    .line 30737
    #calls: Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->access$36500()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 30740
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30717
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30723
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 30687
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 30693
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30728
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30734
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30707
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30713
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 30697
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 30703
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    return-object v0
.end method


# virtual methods
.method public getCarrierDiversionCode()Ljava/lang/String;
    .registers 5

    .prologue
    .line 30535
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->carrierDiversionCode_:Ljava/lang/Object;

    .line 30536
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 30537
    check-cast v1, Ljava/lang/String;

    .line 30545
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 30539
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 30541
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 30542
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 30543
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->carrierDiversionCode_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 30545
    goto :goto_8
.end method

.method public getCarrierDiversionCodeBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 30550
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->carrierDiversionCode_:Ljava/lang/Object;

    .line 30551
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 30552
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 30554
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->carrierDiversionCode_:Ljava/lang/Object;

    .line 30557
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;
    .registers 2

    .prologue
    .line 30354
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30338
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDiversionNumber()Ljava/lang/String;
    .registers 5

    .prologue
    .line 30568
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->diversionNumber_:Ljava/lang/Object;

    .line 30569
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 30570
    check-cast v1, Ljava/lang/String;

    .line 30578
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 30572
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 30574
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 30575
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 30576
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->diversionNumber_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 30578
    goto :goto_8
.end method

.method public getDiversionNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 30583
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->diversionNumber_:Ljava/lang/Object;

    .line 30584
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 30585
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 30587
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->diversionNumber_:Ljava/lang/Object;

    .line 30590
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

.method public getDiversionType()I
    .registers 2

    .prologue
    .line 30601
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->diversionType_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30434
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 30650
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->memoizedSerializedSize:I

    .line 30651
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 30675
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 30653
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 30654
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 30655
    iget-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 30658
    :cond_18
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_27

    .line 30659
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->getVoicemailNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 30662
    :cond_27
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_37

    .line 30663
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->getCarrierDiversionCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 30666
    :cond_37
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_48

    .line 30667
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->getDiversionNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 30670
    :cond_48
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_58

    .line 30671
    const/4 v2, 0x5

    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->diversionType_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 30674
    :cond_58
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 30675
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 30492
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public getVoicemailNumber()Ljava/lang/String;
    .registers 5

    .prologue
    .line 30502
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->voicemailNumber_:Ljava/lang/Object;

    .line 30503
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 30504
    check-cast v1, Ljava/lang/String;

    .line 30512
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 30506
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 30508
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 30509
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 30510
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->voicemailNumber_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 30512
    goto :goto_8
.end method

.method public getVoicemailNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 30517
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->voicemailNumber_:Ljava/lang/Object;

    .line 30518
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 30519
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 30521
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->voicemailNumber_:Ljava/lang/Object;

    .line 30524
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

.method public hasCarrierDiversionCode()Z
    .registers 3

    .prologue
    .line 30532
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->bitField0_:I

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

.method public hasDiversionNumber()Z
    .registers 3

    .prologue
    .line 30565
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->bitField0_:I

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

.method public hasDiversionType()Z
    .registers 3

    .prologue
    .line 30598
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 30489
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasVoicemailNumber()Z
    .registers 3

    .prologue
    .line 30499
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->bitField0_:I

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

    .line 30613
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->memoizedIsInitialized:B

    .line 30614
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 30625
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 30614
    goto :goto_9

    .line 30616
    :cond_c
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->hasStatus()Z

    move-result v3

    if-nez v3, :cond_16

    .line 30617
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->memoizedIsInitialized:B

    move v1, v2

    .line 30618
    goto :goto_9

    .line 30620
    :cond_16
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_24

    .line 30621
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->memoizedIsInitialized:B

    move v1, v2

    .line 30622
    goto :goto_9

    .line 30624
    :cond_24
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;
    .registers 2

    .prologue
    .line 30738
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30338
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;
    .registers 2

    .prologue
    .line 30742
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30338
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse$Builder;

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
    .line 30681
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 30630
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->getSerializedSize()I

    .line 30631
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 30632
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 30634
    :cond_11
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1e

    .line 30635
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->getVoicemailNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 30637
    :cond_1e
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2c

    .line 30638
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->getCarrierDiversionCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 30640
    :cond_2c
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3b

    .line 30641
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->getDiversionNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 30643
    :cond_3b
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_49

    .line 30644
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationResponse;->diversionType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 30646
    :cond_49
    return-void
.end method
