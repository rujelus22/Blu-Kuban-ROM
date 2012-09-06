.class public final Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiGetBackendInfoRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;
    }
.end annotation


# static fields
.field public static final CLIENT_LOGIN_TOKEN_FIELD_NUMBER:I = 0x1

.field public static final COUNTRY_FIELD_NUMBER:I = 0x5

.field public static final FORWARDING_NUMBER_FIELD_NUMBER:I = 0x2

.field public static final MCC_MNC_FIELD_NUMBER:I = 0x4

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final WANT_SHADOW_MAPPINGS_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;


# instance fields
.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;

.field private country_:Ljava/lang/Object;

.field private forwardingNumber_:Ljava/lang/Object;

.field private mccMnc_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private wantShadowMappings_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 4035
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 4703
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;

    .line 4704
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->initFields()V

    .line 4705
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

    .line 3981
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4200
    iput-byte v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->memoizedIsInitialized:B

    .line 4237
    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->memoizedSerializedSize:I

    .line 3982
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->initFields()V

    .line 3983
    const/4 v2, 0x0

    .line 3985
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 3986
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_7b

    .line 3987
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 3988
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_80

    .line 3993
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 3995
    const/4 v0, 0x1

    goto :goto_d

    .line 3990
    :sswitch_1e
    const/4 v0, 0x1

    .line 3991
    goto :goto_d

    .line 4000
    :sswitch_20
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->bitField0_:I

    .line 4001
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->clientLoginToken_:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 4026
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 4027
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 4032
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->makeExtensionsImmutable()V

    throw v4

    .line 4005
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->bitField0_:I

    .line 4006
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->forwardingNumber_:Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 4028
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 4029
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

    .line 4010
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_54
    :try_start_54
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->bitField0_:I

    .line 4011
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->wantShadowMappings_:Z

    goto :goto_d

    .line 4015
    :sswitch_61
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->bitField0_:I

    .line 4016
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->mccMnc_:Ljava/lang/Object;

    goto :goto_d

    .line 4020
    :sswitch_6e
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->bitField0_:I

    .line 4021
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->country_:Ljava/lang/Object;
    :try_end_7a
    .catchall {:try_start_54 .. :try_end_7a} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_54 .. :try_end_7a} :catch_2d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_7a} :catch_45

    goto :goto_d

    .line 4032
    .end local v3           #tag:I
    :cond_7b
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->makeExtensionsImmutable()V

    .line 4034
    return-void

    .line 3988
    nop

    :sswitch_data_80
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x12 -> :sswitch_38
        0x18 -> :sswitch_54
        0x22 -> :sswitch_61
        0x2a -> :sswitch_6e
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
    .line 3959
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 3964
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 4200
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->memoizedIsInitialized:B

    .line 4237
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->memoizedSerializedSize:I

    .line 3966
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3959
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 3967
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4200
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->memoizedIsInitialized:B

    .line 4237
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->memoizedSerializedSize:I

    .line 3967
    return-void
.end method

.method static synthetic access$4800(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3959
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3959
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3959
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->forwardingNumber_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3959
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->forwardingNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5002(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3959
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->wantShadowMappings_:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3959
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->mccMnc_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3959
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->mccMnc_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3959
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->country_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3959
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->country_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5302(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3959
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;
    .registers 1

    .prologue
    .line 3971
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 4194
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 4195
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->forwardingNumber_:Ljava/lang/Object;

    .line 4196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->wantShadowMappings_:Z

    .line 4197
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->mccMnc_:Ljava/lang/Object;

    .line 4198
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->country_:Ljava/lang/Object;

    .line 4199
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;
    .registers 1

    .prologue
    .line 4326
    #calls: Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->access$4600()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 4329
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4306
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4312
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4276
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4282
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4317
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4323
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4296
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4302
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4286
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4292
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;

    return-object v0
.end method


# virtual methods
.method public getClientLoginToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4058
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 4059
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 4060
    check-cast v1, Ljava/lang/String;

    .line 4068
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 4062
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4064
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4065
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4066
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->clientLoginToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 4068
    goto :goto_8
.end method

.method public getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4073
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 4074
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4075
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4077
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 4080
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

.method public getCountry()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4167
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->country_:Ljava/lang/Object;

    .line 4168
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 4169
    check-cast v1, Ljava/lang/String;

    .line 4177
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 4171
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4173
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4174
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4175
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->country_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 4177
    goto :goto_8
.end method

.method public getCountryBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4182
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->country_:Ljava/lang/Object;

    .line 4183
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4184
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4186
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->country_:Ljava/lang/Object;

    .line 4189
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;
    .registers 2

    .prologue
    .line 3975
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3959
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;

    move-result-object v0

    return-object v0
.end method

.method public getForwardingNumber()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4091
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->forwardingNumber_:Ljava/lang/Object;

    .line 4092
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 4093
    check-cast v1, Ljava/lang/String;

    .line 4101
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 4095
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4097
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4098
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4099
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->forwardingNumber_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 4101
    goto :goto_8
.end method

.method public getForwardingNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4106
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->forwardingNumber_:Ljava/lang/Object;

    .line 4107
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4108
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4110
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->forwardingNumber_:Ljava/lang/Object;

    .line 4113
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

.method public getMccMnc()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4134
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->mccMnc_:Ljava/lang/Object;

    .line 4135
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 4136
    check-cast v1, Ljava/lang/String;

    .line 4144
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 4138
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4140
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4141
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4142
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->mccMnc_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 4144
    goto :goto_8
.end method

.method public getMccMncBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4149
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->mccMnc_:Ljava/lang/Object;

    .line 4150
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4151
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4153
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->mccMnc_:Ljava/lang/Object;

    .line 4156
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
            "Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4047
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4239
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->memoizedSerializedSize:I

    .line 4240
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 4264
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 4242
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 4243
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 4244
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4247
    :cond_1a
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 4248
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->getForwardingNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4251
    :cond_29
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_37

    .line 4252
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->wantShadowMappings_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 4255
    :cond_37
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_48

    .line 4256
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->getMccMncBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4259
    :cond_48
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5a

    .line 4260
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->getCountryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4263
    :cond_5a
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 4264
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getWantShadowMappings()Z
    .registers 2

    .prologue
    .line 4124
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->wantShadowMappings_:Z

    return v0
.end method

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 4055
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasCountry()Z
    .registers 3

    .prologue
    .line 4164
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->bitField0_:I

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

.method public hasForwardingNumber()Z
    .registers 3

    .prologue
    .line 4088
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->bitField0_:I

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

.method public hasMccMnc()Z
    .registers 3

    .prologue
    .line 4131
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->bitField0_:I

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

.method public hasWantShadowMappings()Z
    .registers 3

    .prologue
    .line 4121
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->bitField0_:I

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

    .line 4202
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->memoizedIsInitialized:B

    .line 4203
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 4214
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 4203
    goto :goto_9

    .line 4205
    :cond_c
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->hasClientLoginToken()Z

    move-result v3

    if-nez v3, :cond_16

    .line 4206
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 4207
    goto :goto_9

    .line 4209
    :cond_16
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->hasForwardingNumber()Z

    move-result v3

    if-nez v3, :cond_20

    .line 4210
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 4211
    goto :goto_9

    .line 4213
    :cond_20
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;
    .registers 2

    .prologue
    .line 4327
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3959
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;
    .registers 2

    .prologue
    .line 4331
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;)Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3959
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest$Builder;

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
    .line 4270
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

    .line 4219
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->getSerializedSize()I

    .line 4220
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 4221
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4223
    :cond_13
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 4224
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->getForwardingNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4226
    :cond_20
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2c

    .line 4227
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->wantShadowMappings_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4229
    :cond_2c
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3b

    .line 4230
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->getMccMncBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4232
    :cond_3b
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4b

    .line 4233
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetBackendInfoRequest;->getCountryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4235
    :cond_4b
    return-void
.end method
