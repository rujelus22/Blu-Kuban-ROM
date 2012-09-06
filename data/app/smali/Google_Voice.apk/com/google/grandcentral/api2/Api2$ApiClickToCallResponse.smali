.class public final Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiClickToCallResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 6901
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 7171
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;

    .line 7172
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->initFields()V

    .line 7173
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

    .line 6859
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6930
    iput-byte v5, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->memoizedIsInitialized:B

    .line 6955
    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->memoizedSerializedSize:I

    .line 6860
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->initFields()V

    .line 6861
    const/4 v2, 0x0

    .line 6863
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 6864
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_57

    .line 6865
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 6866
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_6a

    .line 6871
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_d

    .line 6873
    const/4 v0, 0x1

    goto :goto_d

    .line 6868
    :sswitch_1e
    const/4 v0, 0x1

    .line 6869
    goto :goto_d

    .line 6878
    :sswitch_20
    const/4 v3, 0x0

    .line 6879
    .local v3, subBuilder:Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2e

    .line 6880
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {v5}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v3

    .line 6882
    :cond_2e
    sget-object v5, Lcom/google/grandcentral/api2/Api2$ApiStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/grandcentral/api2/Api2$ApiStatus;

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 6883
    if-eqz v3, :cond_45

    .line 6884
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {v3, v5}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    .line 6885
    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 6887
    :cond_45
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->bitField0_:I
    :try_end_4b
    .catchall {:try_start_f .. :try_end_4b} :catchall_52
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_4b} :catch_4c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_4b} :catch_5b

    goto :goto_d

    .line 6892
    .end local v3           #subBuilder:Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    .end local v4           #tag:I
    :catch_4c
    move-exception v1

    .line 6893
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_4d
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_52

    .line 6898
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_52
    move-exception v5

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->makeExtensionsImmutable()V

    throw v5

    :cond_57
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->makeExtensionsImmutable()V

    .line 6900
    return-void

    .line 6894
    :catch_5b
    move-exception v1

    .line 6895
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

    .line 6866
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
    .line 6837
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 6842
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 6930
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->memoizedIsInitialized:B

    .line 6955
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->memoizedSerializedSize:I

    .line 6844
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6837
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 6845
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6930
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->memoizedIsInitialized:B

    .line 6955
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->memoizedSerializedSize:I

    .line 6845
    return-void
.end method

.method static synthetic access$8102(Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6837
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object p1
.end method

.method static synthetic access$8202(Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6837
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;
    .registers 1

    .prologue
    .line 6849
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 6928
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 6929
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;
    .registers 1

    .prologue
    .line 7028
    #calls: Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->access$7900()Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 7031
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7008
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7014
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6978
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6984
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7019
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7025
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6998
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7004
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6988
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 6994
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;
    .registers 2

    .prologue
    .line 6853
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6837
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;

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
            "Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6913
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 6957
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->memoizedSerializedSize:I

    .line 6958
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 6966
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 6960
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 6961
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_16

    .line 6962
    iget-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6965
    :cond_16
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 6966
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 6924
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 6921
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->bitField0_:I

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

    .line 6932
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->memoizedIsInitialized:B

    .line 6933
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 6944
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 6933
    goto :goto_9

    .line 6935
    :cond_c
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->hasStatus()Z

    move-result v3

    if-nez v3, :cond_16

    .line 6936
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->memoizedIsInitialized:B

    move v1, v2

    .line 6937
    goto :goto_9

    .line 6939
    :cond_16
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_24

    .line 6940
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->memoizedIsInitialized:B

    move v1, v2

    .line 6941
    goto :goto_9

    .line 6943
    :cond_24
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;
    .registers 2

    .prologue
    .line 7029
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 6837
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;
    .registers 2

    .prologue
    .line 7033
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 6837
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse$Builder;

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
    .line 6972
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

    .line 6949
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->getSerializedSize()I

    .line 6950
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_f

    .line 6951
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 6953
    :cond_f
    return-void
.end method
