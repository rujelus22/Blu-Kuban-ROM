.class public final Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiCheckinResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiCheckinResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 40015
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 40285
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;

    .line 40286
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->initFields()V

    .line 40287
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

    .line 39973
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 40044
    iput-byte v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->memoizedIsInitialized:B

    .line 40069
    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->memoizedSerializedSize:I

    .line 39974
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->initFields()V

    .line 39975
    const/4 v2, 0x0

    .line 39977
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 39978
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_57

    .line 39979
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 39980
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_6a

    .line 39985
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_d

    .line 39987
    const/4 v0, 0x1

    goto :goto_d

    .line 39982
    :sswitch_1e
    const/4 v0, 0x1

    .line 39983
    goto :goto_d

    .line 39992
    :sswitch_20
    const/4 v3, 0x0

    .line 39993
    .local v3, subBuilder:Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2e

    .line 39994
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {v5}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v3

    .line 39996
    :cond_2e
    sget-object v5, Lcom/google/grandcentral/api2/Api2$ApiStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/grandcentral/api2/Api2$ApiStatus;

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 39997
    if-eqz v3, :cond_45

    .line 39998
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {v3, v5}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    .line 39999
    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 40001
    :cond_45
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->bitField0_:I
    :try_end_4b
    .catchall {:try_start_f .. :try_end_4b} :catchall_52
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_4b} :catch_4c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_4b} :catch_5b

    goto :goto_d

    .line 40006
    .end local v3           #subBuilder:Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    .end local v4           #tag:I
    :catch_4c
    move-exception v1

    .line 40007
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_4d
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_52

    .line 40012
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_52
    move-exception v5

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->makeExtensionsImmutable()V

    throw v5

    :cond_57
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->makeExtensionsImmutable()V

    .line 40014
    return-void

    .line 40008
    :catch_5b
    move-exception v1

    .line 40009
    .local v1, e:Ljava/io/IOException;
    :try_start_5c
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_6a
    .catchall {:try_start_5c .. :try_end_6a} :catchall_52

    .line 39980
    :sswitch_data_6a
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
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
    .line 39951
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 39956
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 40044
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->memoizedIsInitialized:B

    .line 40069
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->memoizedSerializedSize:I

    .line 39958
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39951
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 39959
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 40044
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->memoizedIsInitialized:B

    .line 40069
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->memoizedSerializedSize:I

    .line 39959
    return-void
.end method

.method static synthetic access$48602(Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39951
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object p1
.end method

.method static synthetic access$48702(Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39951
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;
    .registers 1

    .prologue
    .line 39963
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 40042
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 40043
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;
    .registers 1

    .prologue
    .line 40142
    #calls: Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->access$48400()Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;)Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 40145
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;)Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40122
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40128
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 40092
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 40098
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40133
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40139
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40112
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40118
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 40102
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 40108
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;
    .registers 2

    .prologue
    .line 39967
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 39951
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;

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
            "Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40027
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 40071
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->memoizedSerializedSize:I

    .line 40072
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 40080
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 40074
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 40075
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_16

    .line 40076
    iget-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 40079
    :cond_16
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 40080
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 40038
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 40035
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->bitField0_:I

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

    .line 40046
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->memoizedIsInitialized:B

    .line 40047
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 40058
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 40047
    goto :goto_9

    .line 40049
    :cond_c
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->hasStatus()Z

    move-result v3

    if-nez v3, :cond_16

    .line 40050
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->memoizedIsInitialized:B

    move v1, v2

    .line 40051
    goto :goto_9

    .line 40053
    :cond_16
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_24

    .line 40054
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->memoizedIsInitialized:B

    move v1, v2

    .line 40055
    goto :goto_9

    .line 40057
    :cond_24
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;
    .registers 2

    .prologue
    .line 40143
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 39951
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;
    .registers 2

    .prologue
    .line 40147
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;)Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 39951
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse$Builder;

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
    .line 40086
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 40063
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->getSerializedSize()I

    .line 40064
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_f

    .line 40065
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 40067
    :cond_f
    return-void
.end method
