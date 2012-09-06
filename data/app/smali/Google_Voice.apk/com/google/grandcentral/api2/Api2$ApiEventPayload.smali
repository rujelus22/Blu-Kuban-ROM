.class public final Lcom/google/grandcentral/api2/Api2$ApiEventPayload;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiEventPayloadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiEventPayload"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;,
        Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Event;
    }
.end annotation


# static fields
.field public static final EVENTS_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiEventPayload;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYLOAD_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiEventPayload;


# instance fields
.field private bitField0_:I

.field private events_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private payload_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 36016
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->PARSER:Lcom/google/protobuf/Parser;

    .line 36391
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiEventPayload;

    .line 36392
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiEventPayload;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->initFields()V

    .line 36393
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

    .line 35977
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 36117
    iput-byte v4, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->memoizedIsInitialized:B

    .line 36137
    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->memoizedSerializedSize:I

    .line 35978
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->initFields()V

    .line 35979
    const/4 v2, 0x0

    .line 35981
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 35982
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_54

    .line 35983
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 35984
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_58

    .line 35989
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 35991
    const/4 v0, 0x1

    goto :goto_d

    .line 35986
    :sswitch_1e
    const/4 v0, 0x1

    .line 35987
    goto :goto_d

    .line 35996
    :sswitch_20
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->bitField0_:I

    .line 35997
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->events_:I
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 36007
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 36008
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 36013
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->makeExtensionsImmutable()V

    throw v4

    .line 36001
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->bitField0_:I

    .line 36002
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->payload_:Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 36009
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 36010
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

    .line 36013
    .end local v1           #e:Ljava/io/IOException;
    :cond_54
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->makeExtensionsImmutable()V

    .line 36015
    return-void

    .line 35984
    :sswitch_data_58
    .sparse-switch
        0x0 -> :sswitch_1e
        0x8 -> :sswitch_20
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
    .line 35955
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 35960
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 36117
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->memoizedIsInitialized:B

    .line 36137
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->memoizedSerializedSize:I

    .line 35962
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35955
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 35963
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 36117
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->memoizedIsInitialized:B

    .line 36137
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->memoizedSerializedSize:I

    .line 35963
    return-void
.end method

.method static synthetic access$43702(Lcom/google/grandcentral/api2/Api2$ApiEventPayload;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35955
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->events_:I

    return p1
.end method

.method static synthetic access$43800(Lcom/google/grandcentral/api2/Api2$ApiEventPayload;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35955
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->payload_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$43802(Lcom/google/grandcentral/api2/Api2$ApiEventPayload;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35955
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->payload_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$43902(Lcom/google/grandcentral/api2/Api2$ApiEventPayload;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35955
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiEventPayload;
    .registers 1

    .prologue
    .line 35967
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiEventPayload;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 36114
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->events_:I

    .line 36115
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->payload_:Ljava/lang/Object;

    .line 36116
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;
    .registers 1

    .prologue
    .line 36214
    #calls: Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->access$43500()Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiEventPayload;)Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 36217
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiEventPayload;)Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiEventPayload;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36194
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiEventPayload;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36200
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiEventPayload;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 36164
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiEventPayload;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 36170
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiEventPayload;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36205
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiEventPayload;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36211
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiEventPayload;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36184
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiEventPayload;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36190
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiEventPayload;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 36174
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiEventPayload;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 36180
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiEventPayload;
    .registers 2

    .prologue
    .line 35971
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiEventPayload;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 35955
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiEventPayload;

    move-result-object v0

    return-object v0
.end method

.method public getEvents()I
    .registers 2

    .prologue
    .line 36077
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->events_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiEventPayload;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36028
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPayload()Ljava/lang/String;
    .registers 5

    .prologue
    .line 36087
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->payload_:Ljava/lang/Object;

    .line 36088
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 36089
    check-cast v1, Ljava/lang/String;

    .line 36097
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 36091
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 36093
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 36094
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 36095
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->payload_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 36097
    goto :goto_8
.end method

.method public getPayloadBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 36102
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->payload_:Ljava/lang/Object;

    .line 36103
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 36104
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 36106
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->payload_:Ljava/lang/Object;

    .line 36109
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

    .line 36139
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->memoizedSerializedSize:I

    .line 36140
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 36152
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 36142
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 36143
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 36144
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->events_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 36147
    :cond_17
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 36148
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->getPayloadBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 36151
    :cond_26
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->memoizedSerializedSize:I

    move v1, v0

    .line 36152
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasEvents()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 36074
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPayload()Z
    .registers 3

    .prologue
    .line 36084
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 36119
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->memoizedIsInitialized:B

    .line 36120
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 36123
    :goto_8
    return v1

    .line 36120
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 36122
    :cond_b
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;
    .registers 2

    .prologue
    .line 36215
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 35955
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;
    .registers 2

    .prologue
    .line 36219
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiEventPayload;)Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 35955
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Builder;

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
    .line 36158
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

    .line 36128
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->getSerializedSize()I

    .line 36129
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 36130
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->events_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 36132
    :cond_10
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 36133
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload;->getPayloadBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 36135
    :cond_1d
    return-void
.end method
