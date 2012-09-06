.class public final Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiGetRatesRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;
    }
.end annotation


# static fields
.field public static final CLIENT_LOGIN_TOKEN_FIELD_NUMBER:I = 0x1

.field public static final DESTINATION_NUMBER_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;


# instance fields
.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;

.field private destinationNumber_:Lcom/google/protobuf/LazyStringList;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 32206
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 32617
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;

    .line 32618
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->initFields()V

    .line 32619
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
    const/4 v4, -0x1

    const/4 v6, 0x2

    .line 32161
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 32277
    iput-byte v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->memoizedIsInitialized:B

    .line 32301
    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->memoizedSerializedSize:I

    .line 32162
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->initFields()V

    .line 32163
    const/4 v2, 0x0

    .line 32165
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 32166
    .local v0, done:Z
    :cond_e
    :goto_e
    if-nez v0, :cond_6c

    .line 32167
    :try_start_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 32168
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_7e

    .line 32173
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_e

    .line 32175
    const/4 v0, 0x1

    goto :goto_e

    .line 32170
    :sswitch_1f
    const/4 v0, 0x1

    .line 32171
    goto :goto_e

    .line 32180
    :sswitch_21
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->bitField0_:I

    .line 32181
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->clientLoginToken_:Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_34
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_10 .. :try_end_2d} :catch_2e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_2d} :catch_5d

    goto :goto_e

    .line 32194
    .end local v3           #tag:I
    :catch_2e
    move-exception v1

    .line 32195
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2f
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_34

    .line 32200
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_34
    move-exception v4

    and-int/lit8 v5, v2, 0x2

    if-ne v5, v6, :cond_42

    .line 32201
    new-instance v5, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->destinationNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v5, v6}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->destinationNumber_:Lcom/google/protobuf/LazyStringList;

    .line 32203
    :cond_42
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->makeExtensionsImmutable()V

    throw v4

    .line 32185
    .restart local v3       #tag:I
    :sswitch_46
    and-int/lit8 v4, v2, 0x2

    if-eq v4, v6, :cond_53

    .line 32186
    :try_start_4a
    new-instance v4, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v4}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->destinationNumber_:Lcom/google/protobuf/LazyStringList;

    .line 32187
    or-int/lit8 v2, v2, 0x2

    .line 32189
    :cond_53
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->destinationNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V
    :try_end_5c
    .catchall {:try_start_4a .. :try_end_5c} :catchall_34
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4a .. :try_end_5c} :catch_2e
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_5c} :catch_5d

    goto :goto_e

    .line 32196
    .end local v3           #tag:I
    :catch_5d
    move-exception v1

    .line 32197
    .local v1, e:Ljava/io/IOException;
    :try_start_5e
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_6c
    .catchall {:try_start_5e .. :try_end_6c} :catchall_34

    .line 32200
    .end local v1           #e:Ljava/io/IOException;
    :cond_6c
    and-int/lit8 v4, v2, 0x2

    if-ne v4, v6, :cond_79

    .line 32201
    new-instance v4, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->destinationNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v4, v5}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->destinationNumber_:Lcom/google/protobuf/LazyStringList;

    .line 32203
    :cond_79
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->makeExtensionsImmutable()V

    .line 32205
    return-void

    .line 32168
    nop

    :sswitch_data_7e
    .sparse-switch
        0x0 -> :sswitch_1f
        0xa -> :sswitch_21
        0x12 -> :sswitch_46
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
    .line 32139
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 32144
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 32277
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->memoizedIsInitialized:B

    .line 32301
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->memoizedSerializedSize:I

    .line 32146
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32139
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 32147
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 32277
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->memoizedIsInitialized:B

    .line 32301
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->memoizedSerializedSize:I

    .line 32147
    return-void
.end method

.method static synthetic access$38900(Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32139
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$38902(Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32139
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$39000(Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32139
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->destinationNumber_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$39002(Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32139
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->destinationNumber_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$39102(Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32139
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;
    .registers 1

    .prologue
    .line 32151
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 32274
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 32275
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->destinationNumber_:Lcom/google/protobuf/LazyStringList;

    .line 32276
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;
    .registers 1

    .prologue
    .line 32383
    #calls: Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->access$38700()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 32386
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32363
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32369
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 32333
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 32339
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32374
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32380
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32353
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32359
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 32343
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 32349
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;

    return-object v0
.end method


# virtual methods
.method public getClientLoginToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 32229
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 32230
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 32231
    check-cast v1, Ljava/lang/String;

    .line 32239
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 32233
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 32235
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 32236
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 32237
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->clientLoginToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 32239
    goto :goto_8
.end method

.method public getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 32244
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 32245
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 32246
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 32248
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 32251
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;
    .registers 2

    .prologue
    .line 32155
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 32139
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDestinationNumber(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 32266
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->destinationNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationNumberBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 32270
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->destinationNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDestinationNumberCount()I
    .registers 2

    .prologue
    .line 32263
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->destinationNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getDestinationNumberList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32260
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->destinationNumber_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32218
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 32303
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->memoizedSerializedSize:I

    .line 32304
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    move v3, v2

    .line 32321
    .end local v2           #size:I
    .local v3, size:I
    :goto_7
    return v3

    .line 32306
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_8
    const/4 v2, 0x0

    .line 32307
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_18

    .line 32308
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 32312
    :cond_18
    const/4 v0, 0x0

    .line 32313
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1a
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->destinationNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_30

    .line 32314
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->destinationNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 32313
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 32317
    :cond_30
    add-int/2addr v2, v0

    .line 32318
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->getDestinationNumberList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 32320
    iput v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->memoizedSerializedSize:I

    move v3, v2

    .line 32321
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_7
.end method

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 32226
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->bitField0_:I

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
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 32279
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->memoizedIsInitialized:B

    .line 32280
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 32287
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 32280
    goto :goto_9

    .line 32282
    :cond_c
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->hasClientLoginToken()Z

    move-result v3

    if-nez v3, :cond_16

    .line 32283
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 32284
    goto :goto_9

    .line 32286
    :cond_16
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;
    .registers 2

    .prologue
    .line 32384
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 32139
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;
    .registers 2

    .prologue
    .line 32388
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;)Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 32139
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest$Builder;

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
    .line 32327
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
    const/4 v2, 0x1

    .line 32292
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->getSerializedSize()I

    .line 32293
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_11

    .line 32294
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 32296
    :cond_11
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->destinationNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 32297
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiGetRatesRequest;->destinationNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 32296
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 32299
    :cond_27
    return-void
.end method
