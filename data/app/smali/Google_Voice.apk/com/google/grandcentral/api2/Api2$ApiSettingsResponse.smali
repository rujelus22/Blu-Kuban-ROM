.class public final Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiSettingsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiSettingsResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final SETTINGS_FIELD_NUMBER:I = 0x2

.field public static final STATUS_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 13526
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 13878
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;

    .line 13879
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->initFields()V

    .line 13880
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

    .line 13471
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 13566
    iput-byte v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->memoizedIsInitialized:B

    .line 13600
    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->memoizedSerializedSize:I

    .line 13472
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->initFields()V

    .line 13473
    const/4 v2, 0x0

    .line 13475
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 13476
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_92

    .line 13477
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 13478
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_96

    .line 13483
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_d

    .line 13485
    const/4 v0, 0x1

    goto :goto_d

    .line 13480
    :sswitch_1e
    const/4 v0, 0x1

    .line 13481
    goto :goto_d

    .line 13490
    :sswitch_20
    const/4 v3, 0x0

    .line 13491
    .local v3, subBuilder:Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2e

    .line 13492
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {v5}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v3

    .line 13494
    :cond_2e
    sget-object v5, Lcom/google/grandcentral/api2/Api2$ApiStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/grandcentral/api2/Api2$ApiStatus;

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 13495
    if-eqz v3, :cond_45

    .line 13496
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {v3, v5}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    .line 13497
    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 13499
    :cond_45
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->bitField0_:I
    :try_end_4b
    .catchall {:try_start_f .. :try_end_4b} :catchall_52
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_4b} :catch_4c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_4b} :catch_83

    goto :goto_d

    .line 13517
    .end local v3           #subBuilder:Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    .end local v4           #tag:I
    :catch_4c
    move-exception v1

    .line 13518
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_4d
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_52

    .line 13523
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_52
    move-exception v5

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->makeExtensionsImmutable()V

    throw v5

    .line 13503
    .restart local v4       #tag:I
    :sswitch_57
    const/4 v3, 0x0

    .line 13504
    .local v3, subBuilder:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    :try_start_58
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_65

    .line 13505
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    invoke-virtual {v5}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    move-result-object v3

    .line 13507
    :cond_65
    sget-object v5, Lcom/google/grandcentral/api2/Api2$ApiSettings;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/grandcentral/api2/Api2$ApiSettings;

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    .line 13508
    if-eqz v3, :cond_7c

    .line 13509
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    invoke-virtual {v3, v5}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    .line 13510
    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    .line 13512
    :cond_7c
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->bitField0_:I
    :try_end_82
    .catchall {:try_start_58 .. :try_end_82} :catchall_52
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_58 .. :try_end_82} :catch_4c
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_82} :catch_83

    goto :goto_d

    .line 13519
    .end local v3           #subBuilder:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .end local v4           #tag:I
    :catch_83
    move-exception v1

    .line 13520
    .local v1, e:Ljava/io/IOException;
    :try_start_84
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_92
    .catchall {:try_start_84 .. :try_end_92} :catchall_52

    .line 13523
    .end local v1           #e:Ljava/io/IOException;
    :cond_92
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->makeExtensionsImmutable()V

    .line 13525
    return-void

    .line 13478
    :sswitch_data_96
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x12 -> :sswitch_57
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
    .line 13449
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 13454
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 13566
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->memoizedIsInitialized:B

    .line 13600
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->memoizedSerializedSize:I

    .line 13456
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13449
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 13457
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 13566
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->memoizedIsInitialized:B

    .line 13600
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->memoizedSerializedSize:I

    .line 13457
    return-void
.end method

.method static synthetic access$16302(Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13449
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object p1
.end method

.method static synthetic access$16402(Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/grandcentral/api2/Api2$ApiSettings;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13449
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    return-object p1
.end method

.method static synthetic access$16502(Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13449
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;
    .registers 1

    .prologue
    .line 13461
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 13563
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 13564
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    .line 13565
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;
    .registers 1

    .prologue
    .line 13677
    #calls: Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->access$16100()Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;)Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 13680
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;)Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13657
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13663
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13627
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13633
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13668
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13674
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13647
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13653
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13637
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13643
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;
    .registers 2

    .prologue
    .line 13465
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13449
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;

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
            "Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13538
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 13602
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->memoizedSerializedSize:I

    .line 13603
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 13615
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 13605
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 13606
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 13607
    iget-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13610
    :cond_17
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_24

    .line 13611
    iget-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13614
    :cond_24
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 13615
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getSettings()Lcom/google/grandcentral/api2/Api2$ApiSettings;
    .registers 2

    .prologue
    .line 13559
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    return-object v0
.end method

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 13549
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public hasSettings()Z
    .registers 3

    .prologue
    .line 13556
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->bitField0_:I

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

    .line 13546
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->bitField0_:I

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

    .line 13568
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->memoizedIsInitialized:B

    .line 13569
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_d

    if-ne v0, v1, :cond_b

    :goto_9
    move v2, v1

    .line 13586
    :goto_a
    return v2

    :cond_b
    move v1, v2

    .line 13569
    goto :goto_9

    .line 13571
    :cond_d
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->hasStatus()Z

    move-result v3

    if-nez v3, :cond_16

    .line 13572
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 13575
    :cond_16
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_23

    .line 13576
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 13579
    :cond_23
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->hasSettings()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 13580
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->getSettings()Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_36

    .line 13581
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 13585
    :cond_36
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->memoizedIsInitialized:B

    move v2, v1

    .line 13586
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;
    .registers 2

    .prologue
    .line 13678
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 13449
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;
    .registers 2

    .prologue
    .line 13682
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;)Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 13449
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse$Builder;

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
    .line 13621
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

    .line 13591
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->getSerializedSize()I

    .line 13592
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 13593
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 13595
    :cond_10
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1b

    .line 13596
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsResponse;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 13598
    :cond_1b
    return-void
.end method
