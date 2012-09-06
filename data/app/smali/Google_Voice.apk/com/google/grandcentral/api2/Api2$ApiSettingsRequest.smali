.class public final Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiSettingsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiSettingsRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;
    }
.end annotation


# static fields
.field public static final CLIENT_LOGIN_TOKEN_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final SETTINGS_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;


# instance fields
.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 13052
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 13431
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;

    .line 13432
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->initFields()V

    .line 13433
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

    .line 13005
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 13115
    iput-byte v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->memoizedIsInitialized:B

    .line 13145
    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->memoizedSerializedSize:I

    .line 13006
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->initFields()V

    .line 13007
    const/4 v2, 0x0

    .line 13009
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 13010
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_73

    .line 13011
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 13012
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_78

    .line 13017
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_d

    .line 13019
    const/4 v0, 0x1

    goto :goto_d

    .line 13014
    :sswitch_1e
    const/4 v0, 0x1

    .line 13015
    goto :goto_d

    .line 13024
    :sswitch_20
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->bitField0_:I

    .line 13025
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->clientLoginToken_:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_64

    goto :goto_d

    .line 13043
    .end local v4           #tag:I
    :catch_2d
    move-exception v1

    .line 13044
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 13049
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v5

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->makeExtensionsImmutable()V

    throw v5

    .line 13029
    .restart local v4       #tag:I
    :sswitch_38
    const/4 v3, 0x0

    .line 13030
    .local v3, subBuilder:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    :try_start_39
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_46

    .line 13031
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    invoke-virtual {v5}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    move-result-object v3

    .line 13033
    :cond_46
    sget-object v5, Lcom/google/grandcentral/api2/Api2$ApiSettings;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/grandcentral/api2/Api2$ApiSettings;

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    .line 13034
    if-eqz v3, :cond_5d

    .line 13035
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    invoke-virtual {v3, v5}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;

    .line 13036
    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    .line 13038
    :cond_5d
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->bitField0_:I
    :try_end_63
    .catchall {:try_start_39 .. :try_end_63} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_39 .. :try_end_63} :catch_2d
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_63} :catch_64

    goto :goto_d

    .line 13045
    .end local v3           #subBuilder:Lcom/google/grandcentral/api2/Api2$ApiSettings$Builder;
    .end local v4           #tag:I
    :catch_64
    move-exception v1

    .line 13046
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

    .line 13049
    .end local v1           #e:Ljava/io/IOException;
    :cond_73
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->makeExtensionsImmutable()V

    .line 13051
    return-void

    .line 13012
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
    .line 12983
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 12988
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 13115
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->memoizedIsInitialized:B

    .line 13145
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->memoizedSerializedSize:I

    .line 12990
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12983
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 12991
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 13115
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->memoizedIsInitialized:B

    .line 13145
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->memoizedSerializedSize:I

    .line 12991
    return-void
.end method

.method static synthetic access$15700(Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 12983
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$15702(Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12983
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$15802(Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;Lcom/google/grandcentral/api2/Api2$ApiSettings;)Lcom/google/grandcentral/api2/Api2$ApiSettings;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12983
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    return-object p1
.end method

.method static synthetic access$15902(Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12983
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;
    .registers 1

    .prologue
    .line 12995
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 13112
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 13113
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    .line 13114
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;
    .registers 1

    .prologue
    .line 13222
    #calls: Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->access$15500()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;)Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 13225
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;)Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13202
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13208
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13172
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13178
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13213
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13219
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13192
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13198
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13182
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13188
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;

    return-object v0
.end method


# virtual methods
.method public getClientLoginToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 13075
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 13076
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 13077
    check-cast v1, Ljava/lang/String;

    .line 13085
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 13079
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 13081
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 13082
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 13083
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->clientLoginToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 13085
    goto :goto_8
.end method

.method public getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 13090
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 13091
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 13092
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13094
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 13097
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;
    .registers 2

    .prologue
    .line 12999
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 12983
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;

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
            "Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13064
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 13147
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->memoizedSerializedSize:I

    .line 13148
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 13160
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 13150
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 13151
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 13152
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13155
    :cond_19
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 13156
    iget-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13159
    :cond_26
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 13160
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getSettings()Lcom/google/grandcentral/api2/Api2$ApiSettings;
    .registers 2

    .prologue
    .line 13108
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    return-object v0
.end method

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 13072
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasSettings()Z
    .registers 3

    .prologue
    .line 13105
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->bitField0_:I

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

    .line 13117
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->memoizedIsInitialized:B

    .line 13118
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 13131
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 13118
    goto :goto_9

    .line 13120
    :cond_c
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->hasClientLoginToken()Z

    move-result v3

    if-nez v3, :cond_16

    .line 13121
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 13122
    goto :goto_9

    .line 13124
    :cond_16
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->hasSettings()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 13125
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->getSettings()Lcom/google/grandcentral/api2/Api2$ApiSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiSettings;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 13126
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 13127
    goto :goto_9

    .line 13130
    :cond_2a
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;
    .registers 2

    .prologue
    .line 13223
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 12983
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;
    .registers 2

    .prologue
    .line 13227
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;)Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 12983
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest$Builder;

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
    .line 13166
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

    .line 13136
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->getSerializedSize()I

    .line 13137
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 13138
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 13140
    :cond_12
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 13141
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSettingsRequest;->settings_:Lcom/google/grandcentral/api2/Api2$ApiSettings;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 13143
    :cond_1d
    return-void
.end method
