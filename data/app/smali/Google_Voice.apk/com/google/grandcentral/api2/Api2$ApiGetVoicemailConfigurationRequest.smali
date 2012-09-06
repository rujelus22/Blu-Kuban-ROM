.class public final Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiGetVoicemailConfigurationRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;
    }
.end annotation


# static fields
.field public static final CARRIER_MCC_MNC_FIELD_NUMBER:I = 0x2

.field public static final CLIENT_LOGIN_TOKEN_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHONE_NUMBER_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;


# instance fields
.field private bitField0_:I

.field private carrierMccMnc_:Ljava/lang/Object;

.field private clientLoginToken_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private phoneNumber_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 29779
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 30302
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;

    .line 30303
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->initFields()V

    .line 30304
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

    .line 29735
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 29899
    iput-byte v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->memoizedIsInitialized:B

    .line 29934
    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->memoizedSerializedSize:I

    .line 29736
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->initFields()V

    .line 29737
    const/4 v2, 0x0

    .line 29739
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 29740
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_61

    .line 29741
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 29742
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_66

    .line 29747
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 29749
    const/4 v0, 0x1

    goto :goto_d

    .line 29744
    :sswitch_1e
    const/4 v0, 0x1

    .line 29745
    goto :goto_d

    .line 29754
    :sswitch_20
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->bitField0_:I

    .line 29755
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->clientLoginToken_:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 29770
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 29771
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 29776
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->makeExtensionsImmutable()V

    throw v4

    .line 29759
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->bitField0_:I

    .line 29760
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->carrierMccMnc_:Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 29772
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 29773
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

    .line 29764
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_54
    :try_start_54
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->bitField0_:I

    .line 29765
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->phoneNumber_:Ljava/lang/Object;
    :try_end_60
    .catchall {:try_start_54 .. :try_end_60} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_54 .. :try_end_60} :catch_2d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_60} :catch_45

    goto :goto_d

    .line 29776
    .end local v3           #tag:I
    :cond_61
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->makeExtensionsImmutable()V

    .line 29778
    return-void

    .line 29742
    nop

    :sswitch_data_66
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x12 -> :sswitch_38
        0x1a -> :sswitch_54
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
    .line 29713
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 29718
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 29899
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->memoizedIsInitialized:B

    .line 29934
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->memoizedSerializedSize:I

    .line 29720
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29713
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 29721
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 29899
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->memoizedIsInitialized:B

    .line 29934
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->memoizedSerializedSize:I

    .line 29721
    return-void
.end method

.method static synthetic access$36000(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29713
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$36002(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29713
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$36100(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29713
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->carrierMccMnc_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$36102(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29713
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->carrierMccMnc_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$36200(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29713
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->phoneNumber_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$36202(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29713
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->phoneNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$36302(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29713
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;
    .registers 1

    .prologue
    .line 29725
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 29895
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 29896
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->carrierMccMnc_:Ljava/lang/Object;

    .line 29897
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->phoneNumber_:Ljava/lang/Object;

    .line 29898
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;
    .registers 1

    .prologue
    .line 30015
    #calls: Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->access$35800()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 30018
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29995
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30001
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 29965
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 29971
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30006
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30012
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29985
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29991
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 29975
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 29981
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;

    return-object v0
.end method


# virtual methods
.method public getCarrierMccMnc()Ljava/lang/String;
    .registers 5

    .prologue
    .line 29835
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->carrierMccMnc_:Ljava/lang/Object;

    .line 29836
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 29837
    check-cast v1, Ljava/lang/String;

    .line 29845
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 29839
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 29841
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 29842
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 29843
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->carrierMccMnc_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 29845
    goto :goto_8
.end method

.method public getCarrierMccMncBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 29850
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->carrierMccMnc_:Ljava/lang/Object;

    .line 29851
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 29852
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 29854
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->carrierMccMnc_:Ljava/lang/Object;

    .line 29857
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

.method public getClientLoginToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 29802
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 29803
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 29804
    check-cast v1, Ljava/lang/String;

    .line 29812
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 29806
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 29808
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 29809
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 29810
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->clientLoginToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 29812
    goto :goto_8
.end method

.method public getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 29817
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 29818
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 29819
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 29821
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 29824
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;
    .registers 2

    .prologue
    .line 29729
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 29713
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;

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
            "Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29791
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 5

    .prologue
    .line 29868
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->phoneNumber_:Ljava/lang/Object;

    .line 29869
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 29870
    check-cast v1, Ljava/lang/String;

    .line 29878
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 29872
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 29874
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 29875
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 29876
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->phoneNumber_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 29878
    goto :goto_8
.end method

.method public getPhoneNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 29883
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->phoneNumber_:Ljava/lang/Object;

    .line 29884
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 29885
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 29887
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->phoneNumber_:Ljava/lang/Object;

    .line 29890
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

    .line 29936
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->memoizedSerializedSize:I

    .line 29937
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 29953
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 29939
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 29940
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 29941
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 29944
    :cond_19
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 29945
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->getCarrierMccMncBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 29948
    :cond_28
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_39

    .line 29949
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->getPhoneNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 29952
    :cond_39
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 29953
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasCarrierMccMnc()Z
    .registers 3

    .prologue
    .line 29832
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->bitField0_:I

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

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 29799
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->bitField0_:I

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
    .line 29865
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 29901
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->memoizedIsInitialized:B

    .line 29902
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_d

    if-ne v0, v1, :cond_b

    :goto_9
    move v2, v1

    .line 29917
    :goto_a
    return v2

    :cond_b
    move v1, v2

    .line 29902
    goto :goto_9

    .line 29904
    :cond_d
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->hasClientLoginToken()Z

    move-result v3

    if-nez v3, :cond_16

    .line 29905
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->memoizedIsInitialized:B

    goto :goto_a

    .line 29908
    :cond_16
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->hasCarrierMccMnc()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 29909
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->memoizedIsInitialized:B

    goto :goto_a

    .line 29912
    :cond_1f
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->hasPhoneNumber()Z

    move-result v3

    if-nez v3, :cond_28

    .line 29913
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->memoizedIsInitialized:B

    goto :goto_a

    .line 29916
    :cond_28
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->memoizedIsInitialized:B

    move v2, v1

    .line 29917
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;
    .registers 2

    .prologue
    .line 30016
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 29713
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;
    .registers 2

    .prologue
    .line 30020
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;)Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 29713
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest$Builder;

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
    .line 29959
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

    .line 29922
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->getSerializedSize()I

    .line 29923
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 29924
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 29926
    :cond_12
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 29927
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->getCarrierMccMncBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 29929
    :cond_1f
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 29930
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetVoicemailConfigurationRequest;->getPhoneNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 29932
    :cond_2e
    return-void
.end method
