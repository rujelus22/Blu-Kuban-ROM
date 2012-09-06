.class public final Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiClickToCallRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;,
        Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;
    }
.end annotation


# static fields
.field public static final CLIENT_LOGIN_TOKEN_FIELD_NUMBER:I = 0x1

.field public static final CREATE_PHONEBOOK_IF_NOT_EXIST_FIELD_NUMBER:I = 0x5

.field public static final FORWARDING_NUMBER_FIELD_NUMBER:I = 0x4

.field public static final OUTGOING_NUMBER_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUBSCRIBER_DID_FIELD_NUMBER:I = 0x3

.field public static final TYPE_FIELD_NUMBER:I = 0x6

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;


# instance fields
.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;

.field private createPhonebookIfNotExist_:Z

.field private forwardingNumber_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private outgoingNumber_:Ljava/lang/Object;

.field private subscriberDid_:Ljava/lang/Object;

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 6063
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 6823
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;

    .line 6824
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->initFields()V

    .line 6825
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

    .line 6004
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6283
    iput-byte v4, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->memoizedIsInitialized:B

    .line 6323
    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->memoizedSerializedSize:I

    .line 6005
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->initFields()V

    .line 6006
    const/4 v2, 0x0

    .line 6008
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 6009
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_88

    .line 6010
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 6011
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_8c

    .line 6016
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 6018
    const/4 v0, 0x1

    goto :goto_d

    .line 6013
    :sswitch_1e
    const/4 v0, 0x1

    .line 6014
    goto :goto_d

    .line 6023
    :sswitch_20
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->bitField0_:I

    .line 6024
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->clientLoginToken_:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 6054
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 6055
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 6060
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->makeExtensionsImmutable()V

    throw v4

    .line 6028
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->bitField0_:I

    .line 6029
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->outgoingNumber_:Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 6056
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 6057
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

    .line 6033
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_54
    :try_start_54
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->bitField0_:I

    .line 6034
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->subscriberDid_:Ljava/lang/Object;

    goto :goto_d

    .line 6038
    :sswitch_61
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->bitField0_:I

    .line 6039
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->forwardingNumber_:Ljava/lang/Object;

    goto :goto_d

    .line 6043
    :sswitch_6e
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->bitField0_:I

    .line 6044
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->createPhonebookIfNotExist_:Z

    goto :goto_d

    .line 6048
    :sswitch_7b
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->bitField0_:I

    .line 6049
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->type_:I
    :try_end_87
    .catchall {:try_start_54 .. :try_end_87} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_54 .. :try_end_87} :catch_2d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_87} :catch_45

    goto :goto_d

    .line 6060
    .end local v3           #tag:I
    :cond_88
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->makeExtensionsImmutable()V

    .line 6062
    return-void

    .line 6011
    :sswitch_data_8c
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x12 -> :sswitch_38
        0x1a -> :sswitch_54
        0x22 -> :sswitch_61
        0x28 -> :sswitch_6e
        0x30 -> :sswitch_7b
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
    .line 5982
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 5987
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 6283
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->memoizedIsInitialized:B

    .line 6323
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->memoizedSerializedSize:I

    .line 5989
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5982
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 5990
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6283
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->memoizedIsInitialized:B

    .line 6323
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->memoizedSerializedSize:I

    .line 5990
    return-void
.end method

.method static synthetic access$7100(Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 5982
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7102(Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5982
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7200(Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 5982
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->outgoingNumber_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7202(Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5982
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->outgoingNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7300(Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 5982
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->subscriberDid_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7302(Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5982
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->subscriberDid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7400(Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 5982
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->forwardingNumber_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7402(Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5982
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->forwardingNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7502(Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5982
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->createPhonebookIfNotExist_:Z

    return p1
.end method

.method static synthetic access$7602(Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5982
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->type_:I

    return p1
.end method

.method static synthetic access$7702(Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5982
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;
    .registers 1

    .prologue
    .line 5994
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 6276
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 6277
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->outgoingNumber_:Ljava/lang/Object;

    .line 6278
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->subscriberDid_:Ljava/lang/Object;

    .line 6279
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->forwardingNumber_:Ljava/lang/Object;

    .line 6280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->createPhonebookIfNotExist_:Z

    .line 6281
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->type_:I

    .line 6282
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;
    .registers 1

    .prologue
    .line 6416
    #calls: Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->access$6900()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 6419
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6396
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6402
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6366
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6372
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6407
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6413
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6386
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6392
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6376
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6382
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;

    return-object v0
.end method


# virtual methods
.method public getClientLoginToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 6130
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 6131
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 6132
    check-cast v1, Ljava/lang/String;

    .line 6140
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 6134
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6136
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6137
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 6138
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->clientLoginToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 6140
    goto :goto_8
.end method

.method public getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 6145
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 6146
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 6147
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6149
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 6152
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
    .line 6262
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->createPhonebookIfNotExist_:Z

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;
    .registers 2

    .prologue
    .line 5998
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 5982
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;

    move-result-object v0

    return-object v0
.end method

.method public getForwardingNumber()Ljava/lang/String;
    .registers 5

    .prologue
    .line 6229
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->forwardingNumber_:Ljava/lang/Object;

    .line 6230
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 6231
    check-cast v1, Ljava/lang/String;

    .line 6239
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 6233
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6235
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6236
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 6237
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->forwardingNumber_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 6239
    goto :goto_8
.end method

.method public getForwardingNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 6244
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->forwardingNumber_:Ljava/lang/Object;

    .line 6245
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 6246
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6248
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->forwardingNumber_:Ljava/lang/Object;

    .line 6251
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
    .line 6163
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->outgoingNumber_:Ljava/lang/Object;

    .line 6164
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 6165
    check-cast v1, Ljava/lang/String;

    .line 6173
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 6167
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6169
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6170
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 6171
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->outgoingNumber_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 6173
    goto :goto_8
.end method

.method public getOutgoingNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 6178
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->outgoingNumber_:Ljava/lang/Object;

    .line 6179
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 6180
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6182
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->outgoingNumber_:Ljava/lang/Object;

    .line 6185
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
            "Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6075
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 6325
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->memoizedSerializedSize:I

    .line 6326
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 6354
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 6328
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 6329
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 6330
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6333
    :cond_1a
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 6334
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->getOutgoingNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6337
    :cond_29
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_39

    .line 6338
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->getSubscriberDidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6341
    :cond_39
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4a

    .line 6342
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->getForwardingNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6345
    :cond_4a
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5a

    .line 6346
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->createPhonebookIfNotExist_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 6349
    :cond_5a
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6a

    .line 6350
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->type_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 6353
    :cond_6a
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 6354
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getSubscriberDid()Ljava/lang/String;
    .registers 5

    .prologue
    .line 6196
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->subscriberDid_:Ljava/lang/Object;

    .line 6197
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 6198
    check-cast v1, Ljava/lang/String;

    .line 6206
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 6200
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6202
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 6203
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 6204
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->subscriberDid_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 6206
    goto :goto_8
.end method

.method public getSubscriberDidBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 6211
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->subscriberDid_:Ljava/lang/Object;

    .line 6212
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 6213
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6215
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->subscriberDid_:Ljava/lang/Object;

    .line 6218
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

.method public getType()I
    .registers 2

    .prologue
    .line 6272
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->type_:I

    return v0
.end method

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 6127
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->bitField0_:I

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
    .line 6259
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->bitField0_:I

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
    .line 6226
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->bitField0_:I

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

.method public hasOutgoingNumber()Z
    .registers 3

    .prologue
    .line 6160
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->bitField0_:I

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

.method public hasSubscriberDid()Z
    .registers 3

    .prologue
    .line 6193
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    .line 6269
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6285
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->memoizedIsInitialized:B

    .line 6286
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 6297
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 6286
    goto :goto_9

    .line 6288
    :cond_c
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->hasClientLoginToken()Z

    move-result v3

    if-nez v3, :cond_16

    .line 6289
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 6290
    goto :goto_9

    .line 6292
    :cond_16
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->hasOutgoingNumber()Z

    move-result v3

    if-nez v3, :cond_20

    .line 6293
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 6294
    goto :goto_9

    .line 6296
    :cond_20
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;
    .registers 2

    .prologue
    .line 6417
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5982
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;
    .registers 2

    .prologue
    .line 6421
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 5982
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Builder;

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
    .line 6360
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

    .line 6302
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->getSerializedSize()I

    .line 6303
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 6304
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6306
    :cond_13
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 6307
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->getOutgoingNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6309
    :cond_20
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 6310
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->getSubscriberDidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6312
    :cond_2e
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3d

    .line 6313
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->getForwardingNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6315
    :cond_3d
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4b

    .line 6316
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->createPhonebookIfNotExist_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 6318
    :cond_4b
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_59

    .line 6319
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 6321
    :cond_59
    return-void
.end method
