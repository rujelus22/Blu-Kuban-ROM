.class public final Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiVerifyViaSmsRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;
    }
.end annotation


# static fields
.field public static final CLIENT_LOGIN_TOKEN_FIELD_NUMBER:I = 0x1

.field public static final COUNTRY_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPOSED_NUMBER_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;


# instance fields
.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;

.field private country_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private proposedNumber_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27155
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 27662
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;

    .line 27663
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->initFields()V

    .line 27664
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

    .line 27111
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 27275
    iput-byte v4, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->memoizedIsInitialized:B

    .line 27302
    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->memoizedSerializedSize:I

    .line 27112
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->initFields()V

    .line 27113
    const/4 v2, 0x0

    .line 27115
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 27116
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_61

    .line 27117
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 27118
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_66

    .line 27123
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 27125
    const/4 v0, 0x1

    goto :goto_d

    .line 27120
    :sswitch_1e
    const/4 v0, 0x1

    .line 27121
    goto :goto_d

    .line 27130
    :sswitch_20
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->bitField0_:I

    .line 27131
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->clientLoginToken_:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 27146
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 27147
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 27152
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->makeExtensionsImmutable()V

    throw v4

    .line 27135
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->bitField0_:I

    .line 27136
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->proposedNumber_:Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 27148
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 27149
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

    .line 27140
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_54
    :try_start_54
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->bitField0_:I

    .line 27141
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->country_:Ljava/lang/Object;
    :try_end_60
    .catchall {:try_start_54 .. :try_end_60} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_54 .. :try_end_60} :catch_2d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_60} :catch_45

    goto :goto_d

    .line 27152
    .end local v3           #tag:I
    :cond_61
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->makeExtensionsImmutable()V

    .line 27154
    return-void

    .line 27118
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
    .line 27089
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 27094
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 27275
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->memoizedIsInitialized:B

    .line 27302
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->memoizedSerializedSize:I

    .line 27096
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27089
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 27097
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 27275
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->memoizedIsInitialized:B

    .line 27302
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->memoizedSerializedSize:I

    .line 27097
    return-void
.end method

.method static synthetic access$32900(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27089
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$32902(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27089
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$33000(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27089
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->proposedNumber_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$33002(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27089
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->proposedNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$33100(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27089
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->country_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$33102(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27089
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->country_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$33202(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27089
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;
    .registers 1

    .prologue
    .line 27101
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 27271
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 27272
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->proposedNumber_:Ljava/lang/Object;

    .line 27273
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->country_:Ljava/lang/Object;

    .line 27274
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;
    .registers 1

    .prologue
    .line 27383
    #calls: Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->access$32700()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 27386
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27363
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27369
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 27333
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 27339
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27374
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27380
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27353
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27359
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 27343
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 27349
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;

    return-object v0
.end method


# virtual methods
.method public getClientLoginToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 27178
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 27179
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 27180
    check-cast v1, Ljava/lang/String;

    .line 27188
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 27182
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 27184
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 27185
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 27186
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->clientLoginToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 27188
    goto :goto_8
.end method

.method public getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 27193
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 27194
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 27195
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 27197
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 27200
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
    .line 27244
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->country_:Ljava/lang/Object;

    .line 27245
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 27246
    check-cast v1, Ljava/lang/String;

    .line 27254
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 27248
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 27250
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 27251
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 27252
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->country_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 27254
    goto :goto_8
.end method

.method public getCountryBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 27259
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->country_:Ljava/lang/Object;

    .line 27260
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 27261
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 27263
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->country_:Ljava/lang/Object;

    .line 27266
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;
    .registers 2

    .prologue
    .line 27105
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27089
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;

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
            "Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27167
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getProposedNumber()Ljava/lang/String;
    .registers 5

    .prologue
    .line 27211
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->proposedNumber_:Ljava/lang/Object;

    .line 27212
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 27213
    check-cast v1, Ljava/lang/String;

    .line 27221
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 27215
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 27217
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 27218
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 27219
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->proposedNumber_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 27221
    goto :goto_8
.end method

.method public getProposedNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 27226
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->proposedNumber_:Ljava/lang/Object;

    .line 27227
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 27228
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 27230
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->proposedNumber_:Ljava/lang/Object;

    .line 27233
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

    .line 27304
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->memoizedSerializedSize:I

    .line 27305
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 27321
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 27307
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 27308
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 27309
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 27312
    :cond_19
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 27313
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->getProposedNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 27316
    :cond_28
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_39

    .line 27317
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->getCountryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 27320
    :cond_39
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 27321
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 27175
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->bitField0_:I

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
    .line 27241
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->bitField0_:I

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

.method public hasProposedNumber()Z
    .registers 3

    .prologue
    .line 27208
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->bitField0_:I

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

    .line 27277
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->memoizedIsInitialized:B

    .line 27278
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 27285
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 27278
    goto :goto_9

    .line 27280
    :cond_c
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->hasClientLoginToken()Z

    move-result v3

    if-nez v3, :cond_16

    .line 27281
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 27282
    goto :goto_9

    .line 27284
    :cond_16
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;
    .registers 2

    .prologue
    .line 27384
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 27089
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;
    .registers 2

    .prologue
    .line 27388
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 27089
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest$Builder;

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
    .line 27327
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

    .line 27290
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->getSerializedSize()I

    .line 27291
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 27292
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 27294
    :cond_12
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 27295
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->getProposedNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 27297
    :cond_1f
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 27298
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsRequest;->getCountryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 27300
    :cond_2e
    return-void
.end method
