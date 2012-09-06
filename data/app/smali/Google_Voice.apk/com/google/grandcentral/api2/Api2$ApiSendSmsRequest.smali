.class public final Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiSendSmsRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    }
.end annotation


# static fields
.field public static final CLIENT_LOGIN_TOKEN_FIELD_NUMBER:I = 0x1

.field public static final CONVERSATION_ID_FIELD_NUMBER:I = 0x6

.field public static final CREATE_PHONEBOOK_IF_NOT_EXIST_FIELD_NUMBER:I = 0x4

.field public static final DEPRECATED_OUTGOING_NUMBER_FIELD_NUMBER:I = 0x2

.field public static final MESSAGE_ID_FIELD_NUMBER:I = 0x9

.field public static final OUTGOING_DESTINATION_FIELD_NUMBER:I = 0x7

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEND_ERROR_SMS_ON_FREE_QUOTA_ERROR_FIELD_NUMBER:I = 0x8

.field public static final SMS_MESSAGE_FIELD_NUMBER:I = 0x5

.field public static final SUBSCRIBER_DID_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;


# instance fields
.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;

.field private conversationId_:Ljava/lang/Object;

.field private createPhonebookIfNotExist_:Z

.field private dEPRECATEDOutgoingNumber_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private messageId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private outgoingDestination_:Lcom/google/protobuf/LazyStringList;

.field private sendErrorSmsOnFreeQuotaError_:Z

.field private smsMessage_:Ljava/lang/Object;

.field private subscriberDid_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 7352
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 8376
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;

    .line 8377
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->initFields()V

    .line 8378
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 14
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/16 v10, 0x40

    const/16 v9, 0x100

    .line 7253
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7596
    iput-byte v6, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->memoizedIsInitialized:B

    .line 7645
    iput v6, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->memoizedSerializedSize:I

    .line 7254
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->initFields()V

    .line 7255
    const/4 v4, 0x0

    .line 7257
    .local v4, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 7258
    .local v0, done:Z
    :cond_11
    :goto_11
    if-nez v0, :cond_11d

    .line 7259
    :try_start_13
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 7260
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_13a

    .line 7265
    invoke-virtual {p0, p1, p2, v5}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_11

    .line 7267
    const/4 v0, 0x1

    goto :goto_11

    .line 7262
    :sswitch_22
    const/4 v0, 0x1

    .line 7263
    goto :goto_11

    .line 7272
    :sswitch_24
    iget v6, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->bitField0_:I

    .line 7273
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->clientLoginToken_:Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_13 .. :try_end_30} :catchall_37
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_13 .. :try_end_30} :catch_31
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_30} :catch_62

    goto :goto_11

    .line 7337
    .end local v5           #tag:I
    :catch_31
    move-exception v1

    .line 7338
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_32
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_37

    .line 7343
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_37
    move-exception v6

    and-int/lit8 v7, v4, 0x40

    if-ne v7, v10, :cond_45

    .line 7344
    new-instance v7, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v8, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v7, v8}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;

    .line 7346
    :cond_45
    and-int/lit16 v7, v4, 0x100

    if-ne v7, v9, :cond_51

    .line 7347
    iget-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->messageId_:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->messageId_:Ljava/util/List;

    .line 7349
    :cond_51
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->makeExtensionsImmutable()V

    throw v6

    .line 7277
    .restart local v5       #tag:I
    :sswitch_55
    :try_start_55
    iget v6, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->bitField0_:I

    .line 7278
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->dEPRECATEDOutgoingNumber_:Ljava/lang/Object;
    :try_end_61
    .catchall {:try_start_55 .. :try_end_61} :catchall_37
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_55 .. :try_end_61} :catch_31
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_61} :catch_62

    goto :goto_11

    .line 7339
    .end local v5           #tag:I
    :catch_62
    move-exception v1

    .line 7340
    .local v1, e:Ljava/io/IOException;
    :try_start_63
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_71
    .catchall {:try_start_63 .. :try_end_71} :catchall_37

    .line 7282
    .end local v1           #e:Ljava/io/IOException;
    .restart local v5       #tag:I
    :sswitch_71
    :try_start_71
    iget v6, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->bitField0_:I

    .line 7283
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->subscriberDid_:Ljava/lang/Object;

    goto :goto_11

    .line 7287
    :sswitch_7e
    iget v6, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->bitField0_:I

    .line 7288
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->createPhonebookIfNotExist_:Z

    goto :goto_11

    .line 7292
    :sswitch_8b
    iget v6, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->bitField0_:I

    .line 7293
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->smsMessage_:Ljava/lang/Object;

    goto/16 :goto_11

    .line 7297
    :sswitch_99
    iget v6, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->bitField0_:I

    .line 7298
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->conversationId_:Ljava/lang/Object;

    goto/16 :goto_11

    .line 7302
    :sswitch_a7
    and-int/lit8 v6, v4, 0x40

    if-eq v6, v10, :cond_b4

    .line 7303
    new-instance v6, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v6}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;

    .line 7304
    or-int/lit8 v4, v4, 0x40

    .line 7306
    :cond_b4
    iget-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_11

    .line 7310
    :sswitch_bf
    iget v6, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->bitField0_:I

    .line 7311
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->sendErrorSmsOnFreeQuotaError_:Z

    goto/16 :goto_11

    .line 7315
    :sswitch_cd
    and-int/lit16 v6, v4, 0x100

    if-eq v6, v9, :cond_da

    .line 7316
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->messageId_:Ljava/util/List;

    .line 7317
    or-int/lit16 v4, v4, 0x100

    .line 7319
    :cond_da
    iget-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->messageId_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 7323
    :sswitch_e9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v2

    .line 7324
    .local v2, length:I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v3

    .line 7325
    .local v3, limit:I
    and-int/lit16 v6, v4, 0x100

    if-eq v6, v9, :cond_104

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_104

    .line 7326
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->messageId_:Ljava/util/List;

    .line 7327
    or-int/lit16 v4, v4, 0x100

    .line 7329
    :cond_104
    :goto_104
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_118

    .line 7330
    iget-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->messageId_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_104

    .line 7332
    :cond_118
    invoke-virtual {p1, v3}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V
    :try_end_11b
    .catchall {:try_start_71 .. :try_end_11b} :catchall_37
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_71 .. :try_end_11b} :catch_31
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_11b} :catch_62

    goto/16 :goto_11

    .line 7343
    .end local v2           #length:I
    .end local v3           #limit:I
    .end local v5           #tag:I
    :cond_11d
    and-int/lit8 v6, v4, 0x40

    if-ne v6, v10, :cond_12a

    .line 7344
    new-instance v6, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v6, v7}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;

    .line 7346
    :cond_12a
    and-int/lit16 v6, v4, 0x100

    if-ne v6, v9, :cond_136

    .line 7347
    iget-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->messageId_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->messageId_:Ljava/util/List;

    .line 7349
    :cond_136
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->makeExtensionsImmutable()V

    .line 7351
    return-void

    .line 7260
    :sswitch_data_13a
    .sparse-switch
        0x0 -> :sswitch_22
        0xa -> :sswitch_24
        0x12 -> :sswitch_55
        0x1a -> :sswitch_71
        0x20 -> :sswitch_7e
        0x2a -> :sswitch_8b
        0x32 -> :sswitch_99
        0x3a -> :sswitch_a7
        0x40 -> :sswitch_bf
        0x48 -> :sswitch_cd
        0x4a -> :sswitch_e9
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
    .line 7231
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 7236
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 7596
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->memoizedIsInitialized:B

    .line 7645
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->memoizedSerializedSize:I

    .line 7238
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7231
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 7239
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7596
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->memoizedIsInitialized:B

    .line 7645
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->memoizedSerializedSize:I

    .line 7239
    return-void
.end method

.method static synthetic access$8600(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 7231
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$8602(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7231
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8700(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 7231
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->dEPRECATEDOutgoingNumber_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$8702(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7231
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->dEPRECATEDOutgoingNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8800(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 7231
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->subscriberDid_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$8802(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7231
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->subscriberDid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8902(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7231
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->createPhonebookIfNotExist_:Z

    return p1
.end method

.method static synthetic access$9000(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 7231
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->smsMessage_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$9002(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7231
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->smsMessage_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9100(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 7231
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->conversationId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$9102(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7231
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->conversationId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9200(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 7231
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$9202(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7231
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$9302(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7231
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->sendErrorSmsOnFreeQuotaError_:Z

    return p1
.end method

.method static synthetic access$9400(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 7231
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->messageId_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$9402(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7231
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->messageId_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$9502(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7231
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;
    .registers 1

    .prologue
    .line 7243
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 7586
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 7587
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->dEPRECATEDOutgoingNumber_:Ljava/lang/Object;

    .line 7588
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->subscriberDid_:Ljava/lang/Object;

    .line 7589
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->createPhonebookIfNotExist_:Z

    .line 7590
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->smsMessage_:Ljava/lang/Object;

    .line 7591
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->conversationId_:Ljava/lang/Object;

    .line 7592
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;

    .line 7593
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->sendErrorSmsOnFreeQuotaError_:Z

    .line 7594
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->messageId_:Ljava/util/List;

    .line 7595
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    .registers 1

    .prologue
    .line 7760
    #calls: Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->access$8400()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 7763
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7740
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7746
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7710
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7716
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7751
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7757
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7730
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7736
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7720
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7726
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;

    return-object v0
.end method


# virtual methods
.method public getClientLoginToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 7375
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 7376
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 7377
    check-cast v1, Ljava/lang/String;

    .line 7385
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 7379
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7381
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 7382
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 7383
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->clientLoginToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 7385
    goto :goto_8
.end method

.method public getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 7390
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 7391
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 7392
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7394
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 7397
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

.method public getConversationId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 7517
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->conversationId_:Ljava/lang/Object;

    .line 7518
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 7519
    check-cast v1, Ljava/lang/String;

    .line 7527
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 7521
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7523
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 7524
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 7525
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->conversationId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 7527
    goto :goto_8
.end method

.method public getConversationIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 7532
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->conversationId_:Ljava/lang/Object;

    .line 7533
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 7534
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7536
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->conversationId_:Ljava/lang/Object;

    .line 7539
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
    .line 7474
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->createPhonebookIfNotExist_:Z

    return v0
.end method

.method public getDEPRECATEDOutgoingNumber()Ljava/lang/String;
    .registers 5

    .prologue
    .line 7408
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->dEPRECATEDOutgoingNumber_:Ljava/lang/Object;

    .line 7409
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 7410
    check-cast v1, Ljava/lang/String;

    .line 7418
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 7412
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7414
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 7415
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 7416
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->dEPRECATEDOutgoingNumber_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 7418
    goto :goto_8
.end method

.method public getDEPRECATEDOutgoingNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 7423
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->dEPRECATEDOutgoingNumber_:Ljava/lang/Object;

    .line 7424
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 7425
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7427
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->dEPRECATEDOutgoingNumber_:Ljava/lang/Object;

    .line 7430
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;
    .registers 2

    .prologue
    .line 7247
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7231
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 7582
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->messageId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMessageIdCount()I
    .registers 2

    .prologue
    .line 7579
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->messageId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMessageIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7576
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->messageId_:Ljava/util/List;

    return-object v0
.end method

.method public getOutgoingDestination(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 7554
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOutgoingDestinationBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 7558
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOutgoingDestinationCount()I
    .registers 2

    .prologue
    .line 7551
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getOutgoingDestinationList()Ljava/util/List;
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
    .line 7548
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7364
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSendErrorSmsOnFreeQuotaError()Z
    .registers 2

    .prologue
    .line 7568
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->sendErrorSmsOnFreeQuotaError_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 10

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 7647
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->memoizedSerializedSize:I

    .line 7648
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_c

    move v3, v2

    .line 7698
    .end local v2           #size:I
    .local v3, size:I
    :goto_b
    return v3

    .line 7650
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_c
    const/4 v2, 0x0

    .line 7651
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1c

    .line 7652
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 7655
    :cond_1c
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_2b

    .line 7656
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->getDEPRECATEDOutgoingNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 7659
    :cond_2b
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v7, :cond_3b

    .line 7660
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->getSubscriberDidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 7663
    :cond_3b
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v4, v8, :cond_48

    .line 7664
    iget-boolean v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->createPhonebookIfNotExist_:Z

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 7667
    :cond_48
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_5a

    .line 7668
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->getSmsMessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 7671
    :cond_5a
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_6c

    .line 7672
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 7676
    :cond_6c
    const/4 v0, 0x0

    .line 7677
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6e
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_84

    .line 7678
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 7677
    add-int/lit8 v1, v1, 0x1

    goto :goto_6e

    .line 7681
    :cond_84
    add-int/2addr v2, v0

    .line 7682
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->getOutgoingDestinationList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 7684
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_9f

    .line 7685
    iget-boolean v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->sendErrorSmsOnFreeQuotaError_:Z

    invoke-static {v8, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 7689
    :cond_9f
    const/4 v0, 0x0

    .line 7690
    const/4 v1, 0x0

    :goto_a1
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->messageId_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_bd

    .line 7691
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->messageId_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v4

    add-int/2addr v0, v4

    .line 7690
    add-int/lit8 v1, v1, 0x1

    goto :goto_a1

    .line 7694
    :cond_bd
    add-int/2addr v2, v0

    .line 7695
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->getMessageIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 7697
    iput v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->memoizedSerializedSize:I

    move v3, v2

    .line 7698
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_b
.end method

.method public getSmsMessage()Ljava/lang/String;
    .registers 5

    .prologue
    .line 7484
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->smsMessage_:Ljava/lang/Object;

    .line 7485
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 7486
    check-cast v1, Ljava/lang/String;

    .line 7494
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 7488
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7490
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 7491
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 7492
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->smsMessage_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 7494
    goto :goto_8
.end method

.method public getSmsMessageBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 7499
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->smsMessage_:Ljava/lang/Object;

    .line 7500
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 7501
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7503
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->smsMessage_:Ljava/lang/Object;

    .line 7506
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

.method public getSubscriberDid()Ljava/lang/String;
    .registers 5

    .prologue
    .line 7441
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->subscriberDid_:Ljava/lang/Object;

    .line 7442
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 7443
    check-cast v1, Ljava/lang/String;

    .line 7451
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 7445
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 7447
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 7448
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 7449
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->subscriberDid_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 7451
    goto :goto_8
.end method

.method public getSubscriberDidBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 7456
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->subscriberDid_:Ljava/lang/Object;

    .line 7457
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 7458
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7460
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->subscriberDid_:Ljava/lang/Object;

    .line 7463
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

    .line 7372
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasConversationId()Z
    .registers 3

    .prologue
    .line 7514
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->bitField0_:I

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

.method public hasCreatePhonebookIfNotExist()Z
    .registers 3

    .prologue
    .line 7471
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->bitField0_:I

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

.method public hasDEPRECATEDOutgoingNumber()Z
    .registers 3

    .prologue
    .line 7405
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->bitField0_:I

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

.method public hasSendErrorSmsOnFreeQuotaError()Z
    .registers 3

    .prologue
    .line 7565
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasSmsMessage()Z
    .registers 3

    .prologue
    .line 7481
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->bitField0_:I

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

.method public hasSubscriberDid()Z
    .registers 3

    .prologue
    .line 7438
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->bitField0_:I

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

    .line 7598
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->memoizedIsInitialized:B

    .line 7599
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 7610
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 7599
    goto :goto_9

    .line 7601
    :cond_c
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->hasClientLoginToken()Z

    move-result v3

    if-nez v3, :cond_16

    .line 7602
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 7603
    goto :goto_9

    .line 7605
    :cond_16
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->hasSmsMessage()Z

    move-result v3

    if-nez v3, :cond_20

    .line 7606
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 7607
    goto :goto_9

    .line 7609
    :cond_20
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    .registers 2

    .prologue
    .line 7761
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 7231
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;
    .registers 2

    .prologue
    .line 7765
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;)Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 7231
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest$Builder;

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
    .line 7704
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 8
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 7615
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->getSerializedSize()I

    .line 7616
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_15

    .line 7617
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7619
    :cond_15
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_22

    .line 7620
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->getDEPRECATEDOutgoingNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7622
    :cond_22
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_30

    .line 7623
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->getSubscriberDidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7625
    :cond_30
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_3b

    .line 7626
    iget-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->createPhonebookIfNotExist_:Z

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 7628
    :cond_3b
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4b

    .line 7629
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->getSmsMessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7631
    :cond_4b
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5b

    .line 7632
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->getConversationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7634
    :cond_5b
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5c
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_71

    .line 7635
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->outgoingDestination_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 7634
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 7637
    :cond_71
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7e

    .line 7638
    iget-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->sendErrorSmsOnFreeQuotaError_:Z

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 7640
    :cond_7e
    const/4 v0, 0x0

    :goto_7f
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->messageId_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9b

    .line 7641
    const/16 v2, 0x9

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequest;->messageId_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 7640
    add-int/lit8 v0, v0, 0x1

    goto :goto_7f

    .line 7643
    :cond_9b
    return-void
.end method
