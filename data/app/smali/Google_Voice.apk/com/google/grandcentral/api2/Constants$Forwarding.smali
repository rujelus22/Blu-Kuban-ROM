.class public final Lcom/google/grandcentral/api2/Constants$Forwarding;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Constants.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Constants$ForwardingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Forwarding"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Constants$Forwarding$Builder;,
        Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;,
        Lcom/google/grandcentral/api2/Constants$Forwarding$Type;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Constants$Forwarding;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Constants$Forwarding;


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 64
    new-instance v0, Lcom/google/grandcentral/api2/Constants$Forwarding$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Constants$Forwarding$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding;->PARSER:Lcom/google/protobuf/Parser;

    .line 346
    new-instance v0, Lcom/google/grandcentral/api2/Constants$Forwarding;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Constants$Forwarding;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding;->defaultInstance:Lcom/google/grandcentral/api2/Constants$Forwarding;

    .line 347
    sget-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding;->defaultInstance:Lcom/google/grandcentral/api2/Constants$Forwarding;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Constants$Forwarding;->initFields()V

    .line 348
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 36
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 184
    iput-byte v3, p0, Lcom/google/grandcentral/api2/Constants$Forwarding;->memoizedIsInitialized:B

    .line 198
    iput v3, p0, Lcom/google/grandcentral/api2/Constants$Forwarding;->memoizedSerializedSize:I

    .line 37
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Constants$Forwarding;->initFields()V

    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, done:Z
    :cond_c
    :goto_c
    if-nez v0, :cond_1f

    .line 41
    :try_start_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 42
    .local v2, tag:I
    packed-switch v2, :pswitch_data_3e

    .line 47
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/grandcentral/api2/Constants$Forwarding;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_29
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_18} :catch_23
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_18} :catch_2e

    move-result v3

    if-nez v3, :cond_c

    .line 49
    const/4 v0, 0x1

    goto :goto_c

    .line 44
    :pswitch_1d
    const/4 v0, 0x1

    .line 45
    goto :goto_c

    .line 61
    .end local v2           #tag:I
    :cond_1f
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$Forwarding;->makeExtensionsImmutable()V

    .line 63
    return-void

    .line 55
    :catch_23
    move-exception v1

    .line 56
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_24
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_29

    .line 61
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_29
    move-exception v3

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$Forwarding;->makeExtensionsImmutable()V

    throw v3

    .line 57
    :catch_2e
    move-exception v1

    .line 58
    .local v1, e:Ljava/io/IOException;
    :try_start_2f
    new-instance v3, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v3

    throw v3
    :try_end_3d
    .catchall {:try_start_2f .. :try_end_3d} :catchall_29

    .line 42
    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_1d
    .end packed-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/grandcentral/api2/Constants$1;)V
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
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Constants$Forwarding;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 19
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 184
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Constants$Forwarding;->memoizedIsInitialized:B

    .line 198
    iput v0, p0, Lcom/google/grandcentral/api2/Constants$Forwarding;->memoizedSerializedSize:I

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Constants$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Constants$Forwarding;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 22
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 184
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Constants$Forwarding;->memoizedIsInitialized:B

    .line 198
    iput v0, p0, Lcom/google/grandcentral/api2/Constants$Forwarding;->memoizedSerializedSize:I

    .line 22
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Constants$Forwarding;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding;->defaultInstance:Lcom/google/grandcentral/api2/Constants$Forwarding;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 183
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Constants$Forwarding$Builder;
    .registers 1

    .prologue
    .line 267
    #calls: Lcom/google/grandcentral/api2/Constants$Forwarding$Builder;->create()Lcom/google/grandcentral/api2/Constants$Forwarding$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Constants$Forwarding$Builder;->access$100()Lcom/google/grandcentral/api2/Constants$Forwarding$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Constants$Forwarding;)Lcom/google/grandcentral/api2/Constants$Forwarding$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 270
    invoke-static {}, Lcom/google/grandcentral/api2/Constants$Forwarding;->newBuilder()Lcom/google/grandcentral/api2/Constants$Forwarding$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Constants$Forwarding$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Constants$Forwarding;)Lcom/google/grandcentral/api2/Constants$Forwarding$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Constants$Forwarding;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    sget-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Constants$Forwarding;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Constants$Forwarding;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    sget-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Constants$Forwarding;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Constants$Forwarding;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 217
    sget-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Constants$Forwarding;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Constants$Forwarding;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 223
    sget-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Constants$Forwarding;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Constants$Forwarding;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    sget-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Constants$Forwarding;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Constants$Forwarding;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    sget-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Constants$Forwarding;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Constants$Forwarding;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    sget-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Constants$Forwarding;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Constants$Forwarding;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    sget-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Constants$Forwarding;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Constants$Forwarding;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 227
    sget-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Constants$Forwarding;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Constants$Forwarding;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 233
    sget-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Constants$Forwarding;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Constants$Forwarding;
    .registers 2

    .prologue
    .line 30
    sget-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding;->defaultInstance:Lcom/google/grandcentral/api2/Constants$Forwarding;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$Forwarding;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Constants$Forwarding;

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
            "Lcom/google/grandcentral/api2/Constants$Forwarding;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    sget-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 200
    iget v0, p0, Lcom/google/grandcentral/api2/Constants$Forwarding;->memoizedSerializedSize:I

    .line 201
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 205
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 203
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 204
    iput v0, p0, Lcom/google/grandcentral/api2/Constants$Forwarding;->memoizedSerializedSize:I

    move v1, v0

    .line 205
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 186
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Constants$Forwarding;->memoizedIsInitialized:B

    .line 187
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 190
    :goto_8
    return v1

    .line 187
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 189
    :cond_b
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Constants$Forwarding;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Constants$Forwarding$Builder;
    .registers 2

    .prologue
    .line 268
    invoke-static {}, Lcom/google/grandcentral/api2/Constants$Forwarding;->newBuilder()Lcom/google/grandcentral/api2/Constants$Forwarding$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$Forwarding;->newBuilderForType()Lcom/google/grandcentral/api2/Constants$Forwarding$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Constants$Forwarding$Builder;
    .registers 2

    .prologue
    .line 272
    invoke-static {p0}, Lcom/google/grandcentral/api2/Constants$Forwarding;->newBuilder(Lcom/google/grandcentral/api2/Constants$Forwarding;)Lcom/google/grandcentral/api2/Constants$Forwarding$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$Forwarding;->toBuilder()Lcom/google/grandcentral/api2/Constants$Forwarding$Builder;

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
    .line 211
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Constants$Forwarding;->getSerializedSize()I

    .line 196
    return-void
.end method
