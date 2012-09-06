.class public final Lcom/google/grandcentral/api2/Api2$ApiConversation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiConversationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiConversation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;
    }
.end annotation


# static fields
.field public static final CONVERSATION_TIME_FIELD_NUMBER:I = 0x2

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final LABEL_FIELD_NUMBER:I = 0x4

.field public static final LAST_MODIFIED_TIMESTAMP_FIELD_NUMBER:I = 0x6

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiConversation;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHONE_CALL_FIELD_NUMBER:I = 0x5

.field public static final READ_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiConversation;


# instance fields
.field private bitField0_:I

.field private conversationTime_:J

.field private id_:Ljava/lang/Object;

.field private label_:Lcom/google/protobuf/LazyStringList;

.field private lastModifiedTimestamp_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private phoneCall_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;",
            ">;"
        }
    .end annotation
.end field

.field private read_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 19469
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiConversation$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiConversation$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->PARSER:Lcom/google/protobuf/Parser;

    .line 20187
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiConversation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiConversation;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiConversation;

    .line 20188
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiConversation;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->initFields()V

    .line 20189
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 11
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/16 v7, 0x10

    const/16 v6, 0x8

    .line 19398
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19595
    iput-byte v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->memoizedIsInitialized:B

    .line 19645
    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->memoizedSerializedSize:I

    .line 19399
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->initFields()V

    .line 19400
    const/4 v2, 0x0

    .line 19402
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 19403
    .local v0, done:Z
    :cond_11
    :goto_11
    if-nez v0, :cond_be

    .line 19404
    :try_start_13
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 19405
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_dc

    .line 19410
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_11

    .line 19412
    const/4 v0, 0x1

    goto :goto_11

    .line 19407
    :sswitch_22
    const/4 v0, 0x1

    .line 19408
    goto :goto_11

    .line 19417
    :sswitch_24
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->bitField0_:I

    .line 19418
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->id_:Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_13 .. :try_end_30} :catchall_37
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_13 .. :try_end_30} :catch_31
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_30} :catch_62

    goto :goto_11

    .line 19454
    .end local v3           #tag:I
    :catch_31
    move-exception v1

    .line 19455
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_32
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_37

    .line 19460
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_37
    move-exception v4

    and-int/lit8 v5, v2, 0x8

    if-ne v5, v6, :cond_45

    .line 19461
    new-instance v5, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v5, v6}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->label_:Lcom/google/protobuf/LazyStringList;

    .line 19463
    :cond_45
    and-int/lit8 v5, v2, 0x10

    if-ne v5, v7, :cond_51

    .line 19464
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->phoneCall_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->phoneCall_:Ljava/util/List;

    .line 19466
    :cond_51
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->makeExtensionsImmutable()V

    throw v4

    .line 19422
    .restart local v3       #tag:I
    :sswitch_55
    :try_start_55
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->bitField0_:I

    .line 19423
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->conversationTime_:J
    :try_end_61
    .catchall {:try_start_55 .. :try_end_61} :catchall_37
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_55 .. :try_end_61} :catch_31
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_61} :catch_62

    goto :goto_11

    .line 19456
    .end local v3           #tag:I
    :catch_62
    move-exception v1

    .line 19457
    .local v1, e:Ljava/io/IOException;
    :try_start_63
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_71
    .catchall {:try_start_63 .. :try_end_71} :catchall_37

    .line 19427
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_71
    :try_start_71
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->bitField0_:I

    .line 19428
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->read_:Z

    goto :goto_11

    .line 19432
    :sswitch_7e
    and-int/lit8 v4, v2, 0x8

    if-eq v4, v6, :cond_8b

    .line 19433
    new-instance v4, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v4}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->label_:Lcom/google/protobuf/LazyStringList;

    .line 19434
    or-int/lit8 v2, v2, 0x8

    .line 19436
    :cond_8b
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_11

    .line 19440
    :sswitch_96
    and-int/lit8 v4, v2, 0x10

    if-eq v4, v7, :cond_a3

    .line 19441
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->phoneCall_:Ljava/util/List;

    .line 19442
    or-int/lit8 v2, v2, 0x10

    .line 19444
    :cond_a3
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->phoneCall_:Ljava/util/List;

    sget-object v5, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 19448
    :sswitch_b0
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->bitField0_:I

    .line 19449
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->lastModifiedTimestamp_:J
    :try_end_bc
    .catchall {:try_start_71 .. :try_end_bc} :catchall_37
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_71 .. :try_end_bc} :catch_31
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_bc} :catch_62

    goto/16 :goto_11

    .line 19460
    .end local v3           #tag:I
    :cond_be
    and-int/lit8 v4, v2, 0x8

    if-ne v4, v6, :cond_cb

    .line 19461
    new-instance v4, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v4, v5}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->label_:Lcom/google/protobuf/LazyStringList;

    .line 19463
    :cond_cb
    and-int/lit8 v4, v2, 0x10

    if-ne v4, v7, :cond_d7

    .line 19464
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->phoneCall_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->phoneCall_:Ljava/util/List;

    .line 19466
    :cond_d7
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->makeExtensionsImmutable()V

    .line 19468
    return-void

    .line 19405
    nop

    :sswitch_data_dc
    .sparse-switch
        0x0 -> :sswitch_22
        0xa -> :sswitch_24
        0x10 -> :sswitch_55
        0x18 -> :sswitch_71
        0x22 -> :sswitch_7e
        0x2a -> :sswitch_96
        0x30 -> :sswitch_b0
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
    .line 19376
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiConversation;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 19381
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 19595
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->memoizedIsInitialized:B

    .line 19645
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->memoizedSerializedSize:I

    .line 19383
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19376
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiConversation;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 19384
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19595
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->memoizedIsInitialized:B

    .line 19645
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->memoizedSerializedSize:I

    .line 19384
    return-void
.end method

.method static synthetic access$23300(Lcom/google/grandcentral/api2/Api2$ApiConversation;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19376
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$23302(Lcom/google/grandcentral/api2/Api2$ApiConversation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19376
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$23402(Lcom/google/grandcentral/api2/Api2$ApiConversation;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19376
    iput-wide p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->conversationTime_:J

    return-wide p1
.end method

.method static synthetic access$23502(Lcom/google/grandcentral/api2/Api2$ApiConversation;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19376
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->read_:Z

    return p1
.end method

.method static synthetic access$23600(Lcom/google/grandcentral/api2/Api2$ApiConversation;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19376
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->label_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$23602(Lcom/google/grandcentral/api2/Api2$ApiConversation;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19376
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->label_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$23700(Lcom/google/grandcentral/api2/Api2$ApiConversation;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19376
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->phoneCall_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$23702(Lcom/google/grandcentral/api2/Api2$ApiConversation;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19376
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->phoneCall_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$23802(Lcom/google/grandcentral/api2/Api2$ApiConversation;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19376
    iput-wide p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->lastModifiedTimestamp_:J

    return-wide p1
.end method

.method static synthetic access$23902(Lcom/google/grandcentral/api2/Api2$ApiConversation;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19376
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiConversation;
    .registers 1

    .prologue
    .line 19388
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiConversation;

    return-object v0
.end method

.method private initFields()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 19588
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->id_:Ljava/lang/Object;

    .line 19589
    iput-wide v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->conversationTime_:J

    .line 19590
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->read_:Z

    .line 19591
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->label_:Lcom/google/protobuf/LazyStringList;

    .line 19592
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->phoneCall_:Ljava/util/List;

    .line 19593
    iput-wide v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->lastModifiedTimestamp_:J

    .line 19594
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;
    .registers 1

    .prologue
    .line 19743
    #calls: Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->access$23100()Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiConversation;)Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 19746
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiConversation;)Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiConversation;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19723
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversation;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConversation;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19729
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversation;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiConversation;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 19693
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversation;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConversation;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 19699
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversation;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiConversation;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19734
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversation;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConversation;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19740
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversation;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiConversation;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19713
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversation;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConversation;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19719
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversation;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiConversation;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 19703
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversation;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConversation;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 19709
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversation;

    return-object v0
.end method


# virtual methods
.method public getConversationTime()J
    .registers 3

    .prologue
    .line 19525
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->conversationTime_:J

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiConversation;
    .registers 2

    .prologue
    .line 19392
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiConversation;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 19376
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiConversation;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 19492
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->id_:Ljava/lang/Object;

    .line 19493
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 19494
    check-cast v1, Ljava/lang/String;

    .line 19502
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 19496
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 19498
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 19499
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 19500
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->id_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 19502
    goto :goto_8
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 19507
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->id_:Ljava/lang/Object;

    .line 19508
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 19509
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 19511
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->id_:Ljava/lang/Object;

    .line 19514
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

.method public getLabel(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 19549
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLabelBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 19553
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLabelCount()I
    .registers 2

    .prologue
    .line 19546
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getLabelList()Ljava/util/List;
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
    .line 19543
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->label_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getLastModifiedTimestamp()J
    .registers 3

    .prologue
    .line 19584
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->lastModifiedTimestamp_:J

    return-wide v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiConversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19481
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPhoneCall(I)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;
    .registers 3
    .parameter "index"

    .prologue
    .line 19570
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->phoneCall_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    return-object v0
.end method

.method public getPhoneCallCount()I
    .registers 2

    .prologue
    .line 19567
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->phoneCall_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhoneCallList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19560
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->phoneCall_:Ljava/util/List;

    return-object v0
.end method

.method public getPhoneCallOrBuilder(I)Lcom/google/grandcentral/api2/Api2$ApiPhoneCallOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 19574
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->phoneCall_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCallOrBuilder;

    return-object v0
.end method

.method public getPhoneCallOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/grandcentral/api2/Api2$ApiPhoneCallOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19564
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->phoneCall_:Ljava/util/List;

    return-object v0
.end method

.method public getRead()Z
    .registers 2

    .prologue
    .line 19535
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->read_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 19647
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->memoizedSerializedSize:I

    .line 19648
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_9

    move v3, v2

    .line 19681
    .end local v2           #size:I
    .local v3, size:I
    :goto_8
    return v3

    .line 19650
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_9
    const/4 v2, 0x0

    .line 19651
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_19

    .line 19652
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 19655
    :cond_19
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_26

    .line 19656
    iget-wide v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->conversationTime_:J

    invoke-static {v6, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 19659
    :cond_26
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_35

    .line 19660
    const/4 v4, 0x3

    iget-boolean v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->read_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 19664
    :cond_35
    const/4 v0, 0x0

    .line 19665
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_37
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4d

    .line 19666
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 19665
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 19669
    :cond_4d
    add-int/2addr v2, v0

    .line 19670
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->getLabelList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 19672
    const/4 v1, 0x0

    :goto_5a
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->phoneCall_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_73

    .line 19673
    const/4 v5, 0x5

    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->phoneCall_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 19672
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 19676
    :cond_73
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_83

    .line 19677
    const/4 v4, 0x6

    iget-wide v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->lastModifiedTimestamp_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 19680
    :cond_83
    iput v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->memoizedSerializedSize:I

    move v3, v2

    .line 19681
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_8
.end method

.method public hasConversationTime()Z
    .registers 3

    .prologue
    .line 19522
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 19489
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLastModifiedTimestamp()Z
    .registers 3

    .prologue
    .line 19581
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->bitField0_:I

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

.method public hasRead()Z
    .registers 3

    .prologue
    .line 19532
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->bitField0_:I

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
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 19597
    iget-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->memoizedIsInitialized:B

    .line 19598
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_d

    if-ne v1, v2, :cond_b

    :goto_9
    move v3, v2

    .line 19619
    :goto_a
    return v3

    :cond_b
    move v2, v3

    .line 19598
    goto :goto_9

    .line 19600
    :cond_d
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->hasId()Z

    move-result v4

    if-nez v4, :cond_16

    .line 19601
    iput-byte v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->memoizedIsInitialized:B

    goto :goto_a

    .line 19604
    :cond_16
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->hasConversationTime()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 19605
    iput-byte v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->memoizedIsInitialized:B

    goto :goto_a

    .line 19608
    :cond_1f
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->hasRead()Z

    move-result v4

    if-nez v4, :cond_28

    .line 19609
    iput-byte v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->memoizedIsInitialized:B

    goto :goto_a

    .line 19612
    :cond_28
    const/4 v0, 0x0

    .local v0, i:I
    :goto_29
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->getPhoneCallCount()I

    move-result v4

    if-ge v0, v4, :cond_3f

    .line 19613
    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->getPhoneCall(I)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_3c

    .line 19614
    iput-byte v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->memoizedIsInitialized:B

    goto :goto_a

    .line 19612
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 19618
    :cond_3f
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->memoizedIsInitialized:B

    move v3, v2

    .line 19619
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;
    .registers 2

    .prologue
    .line 19744
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 19376
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;
    .registers 2

    .prologue
    .line 19748
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiConversation;)Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 19376
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiConversation$Builder;

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
    .line 19687
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 19624
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->getSerializedSize()I

    .line 19625
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_13

    .line 19626
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 19628
    :cond_13
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1e

    .line 19629
    iget-wide v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->conversationTime_:J

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 19631
    :cond_1e
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2a

    .line 19632
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->read_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 19634
    :cond_2a
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2b
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3f

    .line 19635
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 19634
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 19637
    :cond_3f
    const/4 v0, 0x0

    :goto_40
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->phoneCall_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_57

    .line 19638
    const/4 v2, 0x5

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->phoneCall_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 19637
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 19640
    :cond_57
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_65

    .line 19641
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConversation;->lastModifiedTimestamp_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 19643
    :cond_65
    return-void
.end method
