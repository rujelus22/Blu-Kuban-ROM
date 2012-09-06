.class public final Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiCheckinRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiCheckinRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;,
        Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;
    }
.end annotation


# static fields
.field public static final CLIENT_LOGIN_TOKEN_FIELD_NUMBER:I = 0x1

.field public static final DESTINATION_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final REASON_FIELD_NUMBER:I = 0x3

.field public static final TOKEN_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;


# instance fields
.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;

.field private destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private reason_:I

.field private token_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39349
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 39937
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;

    .line 39938
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->initFields()V

    .line 39939
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

    .line 39292
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 39501
    iput-byte v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->memoizedIsInitialized:B

    .line 39543
    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->memoizedSerializedSize:I

    .line 39293
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->initFields()V

    .line 39294
    const/4 v2, 0x0

    .line 39296
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 39297
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_8d

    .line 39298
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 39299
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_92

    .line 39304
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_d

    .line 39306
    const/4 v0, 0x1

    goto :goto_d

    .line 39301
    :sswitch_1e
    const/4 v0, 0x1

    .line 39302
    goto :goto_d

    .line 39311
    :sswitch_20
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->bitField0_:I

    .line 39312
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->clientLoginToken_:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_64

    goto :goto_d

    .line 39340
    .end local v4           #tag:I
    :catch_2d
    move-exception v1

    .line 39341
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 39346
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v5

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->makeExtensionsImmutable()V

    throw v5

    .line 39316
    .restart local v4       #tag:I
    :sswitch_38
    const/4 v3, 0x0

    .line 39317
    .local v3, subBuilder:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    :try_start_39
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_46

    .line 39318
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    invoke-virtual {v5}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    move-result-object v3

    .line 39320
    :cond_46
    sget-object v5, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    .line 39321
    if-eqz v3, :cond_5d

    .line 39322
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    invoke-virtual {v3, v5}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;

    .line 39323
    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    .line 39325
    :cond_5d
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->bitField0_:I
    :try_end_63
    .catchall {:try_start_39 .. :try_end_63} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_39 .. :try_end_63} :catch_2d
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_63} :catch_64

    goto :goto_d

    .line 39342
    .end local v3           #subBuilder:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Builder;
    .end local v4           #tag:I
    :catch_64
    move-exception v1

    .line 39343
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

    .line 39329
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_73
    :try_start_73
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->bitField0_:I

    .line 39330
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v5

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->reason_:I

    goto :goto_d

    .line 39334
    :sswitch_80
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->bitField0_:I

    .line 39335
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->token_:Ljava/lang/Object;
    :try_end_8c
    .catchall {:try_start_73 .. :try_end_8c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_73 .. :try_end_8c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_8c} :catch_64

    goto :goto_d

    .line 39346
    .end local v4           #tag:I
    :cond_8d
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->makeExtensionsImmutable()V

    .line 39348
    return-void

    .line 39299
    nop

    :sswitch_data_92
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x12 -> :sswitch_38
        0x18 -> :sswitch_73
        0x22 -> :sswitch_80
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
    .line 39270
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 39275
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 39501
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->memoizedIsInitialized:B

    .line 39543
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->memoizedSerializedSize:I

    .line 39277
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39270
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 39278
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 39501
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->memoizedIsInitialized:B

    .line 39543
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->memoizedSerializedSize:I

    .line 39278
    return-void
.end method

.method static synthetic access$47800(Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39270
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$47802(Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39270
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$47902(Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39270
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    return-object p1
.end method

.method static synthetic access$48002(Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39270
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->reason_:I

    return p1
.end method

.method static synthetic access$48100(Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39270
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->token_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$48102(Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39270
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->token_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$48202(Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39270
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;
    .registers 1

    .prologue
    .line 39282
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 39496
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 39497
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    .line 39498
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->reason_:I

    .line 39499
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->token_:Ljava/lang/Object;

    .line 39500
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;
    .registers 1

    .prologue
    .line 39628
    #calls: Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->access$47600()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;)Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 39631
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;)Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39608
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39614
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 39578
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 39584
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39619
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39625
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39598
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39604
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 39588
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 39594
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;

    return-object v0
.end method


# virtual methods
.method public getClientLoginToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 39416
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 39417
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 39418
    check-cast v1, Ljava/lang/String;

    .line 39426
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 39420
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 39422
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 39423
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 39424
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->clientLoginToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 39426
    goto :goto_8
.end method

.method public getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 39431
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 39432
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 39433
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 39435
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 39438
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;
    .registers 2

    .prologue
    .line 39286
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 39270
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDestination()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;
    .registers 2

    .prologue
    .line 39449
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39361
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getReason()I
    .registers 2

    .prologue
    .line 39459
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->reason_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 39545
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->memoizedSerializedSize:I

    .line 39546
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 39566
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 39548
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 39549
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 39550
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 39553
    :cond_1a
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_27

    .line 39554
    iget-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 39557
    :cond_27
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_35

    .line 39558
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->reason_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 39561
    :cond_35
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_46

    .line 39562
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->getTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 39565
    :cond_46
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 39566
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 39469
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->token_:Ljava/lang/Object;

    .line 39470
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 39471
    check-cast v1, Ljava/lang/String;

    .line 39479
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 39473
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 39475
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 39476
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 39477
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->token_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 39479
    goto :goto_8
.end method

.method public getTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 39484
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->token_:Ljava/lang/Object;

    .line 39485
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 39486
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 39488
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->token_:Ljava/lang/Object;

    .line 39491
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

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 39413
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasDestination()Z
    .registers 3

    .prologue
    .line 39446
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->bitField0_:I

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

.method public hasReason()Z
    .registers 3

    .prologue
    .line 39456
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->bitField0_:I

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

.method public hasToken()Z
    .registers 3

    .prologue
    .line 39466
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 39503
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->memoizedIsInitialized:B

    .line 39504
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_d

    if-ne v0, v1, :cond_b

    :goto_9
    move v2, v1

    .line 39523
    :goto_a
    return v2

    :cond_b
    move v1, v2

    .line 39504
    goto :goto_9

    .line 39506
    :cond_d
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->hasClientLoginToken()Z

    move-result v3

    if-nez v3, :cond_16

    .line 39507
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->memoizedIsInitialized:B

    goto :goto_a

    .line 39510
    :cond_16
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->hasDestination()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 39511
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->memoizedIsInitialized:B

    goto :goto_a

    .line 39514
    :cond_1f
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->hasReason()Z

    move-result v3

    if-nez v3, :cond_28

    .line 39515
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->memoizedIsInitialized:B

    goto :goto_a

    .line 39518
    :cond_28
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->getDestination()Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_35

    .line 39519
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->memoizedIsInitialized:B

    goto :goto_a

    .line 39522
    :cond_35
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->memoizedIsInitialized:B

    move v2, v1

    .line 39523
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;
    .registers 2

    .prologue
    .line 39629
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 39270
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;
    .registers 2

    .prologue
    .line 39633
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;)Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 39270
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Builder;

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
    .line 39572
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

    .line 39528
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->getSerializedSize()I

    .line 39529
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 39530
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 39532
    :cond_13
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1e

    .line 39533
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->destination_:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 39535
    :cond_1e
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2a

    .line 39536
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->reason_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 39538
    :cond_2a
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_39

    .line 39539
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;->getTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 39541
    :cond_39
    return-void
.end method
