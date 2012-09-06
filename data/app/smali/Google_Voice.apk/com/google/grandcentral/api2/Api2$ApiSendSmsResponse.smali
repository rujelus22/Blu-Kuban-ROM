.class public final Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiSendSmsResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;
    }
.end annotation


# static fields
.field public static final CONVERSATION_ID_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;


# instance fields
.field private bitField0_:I

.field private conversationId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 8465
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 8848
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;

    .line 8849
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->initFields()V

    .line 8850
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

    .line 8418
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8528
    iput-byte v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->memoizedIsInitialized:B

    .line 8560
    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->memoizedSerializedSize:I

    .line 8419
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->initFields()V

    .line 8420
    const/4 v2, 0x0

    .line 8422
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 8423
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_73

    .line 8424
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 8425
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_78

    .line 8430
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_d

    .line 8432
    const/4 v0, 0x1

    goto :goto_d

    .line 8427
    :sswitch_1e
    const/4 v0, 0x1

    .line 8428
    goto :goto_d

    .line 8437
    :sswitch_20
    const/4 v3, 0x0

    .line 8438
    .local v3, subBuilder:Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2e

    .line 8439
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {v5}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v3

    .line 8441
    :cond_2e
    sget-object v5, Lcom/google/grandcentral/api2/Api2$ApiStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/grandcentral/api2/Api2$ApiStatus;

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 8442
    if-eqz v3, :cond_45

    .line 8443
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {v3, v5}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    .line 8444
    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 8446
    :cond_45
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->bitField0_:I
    :try_end_4b
    .catchall {:try_start_f .. :try_end_4b} :catchall_52
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_4b} :catch_4c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_4b} :catch_64

    goto :goto_d

    .line 8456
    .end local v3           #subBuilder:Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    .end local v4           #tag:I
    :catch_4c
    move-exception v1

    .line 8457
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_4d
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_52

    .line 8462
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_52
    move-exception v5

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->makeExtensionsImmutable()V

    throw v5

    .line 8450
    .restart local v4       #tag:I
    :sswitch_57
    :try_start_57
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->bitField0_:I

    .line 8451
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->conversationId_:Ljava/lang/Object;
    :try_end_63
    .catchall {:try_start_57 .. :try_end_63} :catchall_52
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_57 .. :try_end_63} :catch_4c
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_63} :catch_64

    goto :goto_d

    .line 8458
    .end local v4           #tag:I
    :catch_64
    move-exception v1

    .line 8459
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
    .catchall {:try_start_65 .. :try_end_73} :catchall_52

    .line 8462
    .end local v1           #e:Ljava/io/IOException;
    :cond_73
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->makeExtensionsImmutable()V

    .line 8464
    return-void

    .line 8425
    nop

    :sswitch_data_78
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x12 -> :sswitch_57
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
    .line 8396
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 8401
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 8528
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->memoizedIsInitialized:B

    .line 8560
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->memoizedSerializedSize:I

    .line 8403
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8396
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 8404
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8528
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->memoizedIsInitialized:B

    .line 8560
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->memoizedSerializedSize:I

    .line 8404
    return-void
.end method

.method static synthetic access$10000(Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 8396
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->conversationId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$10002(Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8396
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->conversationId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$10102(Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8396
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->bitField0_:I

    return p1
.end method

.method static synthetic access$9902(Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8396
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;
    .registers 1

    .prologue
    .line 8408
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 8525
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 8526
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->conversationId_:Ljava/lang/Object;

    .line 8527
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;
    .registers 1

    .prologue
    .line 8637
    #calls: Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->access$9700()Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 8640
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8617
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8623
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8587
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8593
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8628
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8634
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8607
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8613
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8597
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8603
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;

    return-object v0
.end method


# virtual methods
.method public getConversationId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 8498
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->conversationId_:Ljava/lang/Object;

    .line 8499
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 8500
    check-cast v1, Ljava/lang/String;

    .line 8508
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 8502
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8504
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 8505
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 8506
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->conversationId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 8508
    goto :goto_8
.end method

.method public getConversationIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 8513
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->conversationId_:Ljava/lang/Object;

    .line 8514
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 8515
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8517
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->conversationId_:Ljava/lang/Object;

    .line 8520
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;
    .registers 2

    .prologue
    .line 8412
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8396
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;

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
            "Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8477
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 8562
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->memoizedSerializedSize:I

    .line 8563
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 8575
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 8565
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 8566
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 8567
    iget-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8570
    :cond_17
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 8571
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8574
    :cond_26
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 8575
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 8488
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    .line 8495
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 8485
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->bitField0_:I

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

    .line 8530
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->memoizedIsInitialized:B

    .line 8531
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_d

    if-ne v0, v1, :cond_b

    :goto_9
    move v2, v1

    .line 8546
    :goto_a
    return v2

    :cond_b
    move v1, v2

    .line 8531
    goto :goto_9

    .line 8533
    :cond_d
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->hasStatus()Z

    move-result v3

    if-nez v3, :cond_16

    .line 8534
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 8537
    :cond_16
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->hasConversationId()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 8538
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 8541
    :cond_1f
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2c

    .line 8542
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 8545
    :cond_2c
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->memoizedIsInitialized:B

    move v2, v1

    .line 8546
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;
    .registers 2

    .prologue
    .line 8638
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8396
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;
    .registers 2

    .prologue
    .line 8642
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8396
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse$Builder;

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
    .line 8581
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

    .line 8551
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->getSerializedSize()I

    .line 8552
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 8553
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 8555
    :cond_10
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 8556
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsResponse;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8558
    :cond_1d
    return-void
.end method
