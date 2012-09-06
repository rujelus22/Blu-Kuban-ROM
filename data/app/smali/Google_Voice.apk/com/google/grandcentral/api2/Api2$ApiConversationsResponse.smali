.class public final Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiConversationsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiConversationsResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;
    }
.end annotation


# static fields
.field public static final CONVERSATION_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final REMAINING_FIELD_NUMBER:I = 0x3

.field public static final STATUS_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;


# instance fields
.field private bitField0_:I

.field private conversation_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiConversation;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private remaining_:I

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 20291
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 20756
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    .line 20757
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->initFields()V

    .line 20758
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
    const/4 v5, -0x1

    const/4 v7, 0x2

    .line 20233
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 20353
    iput-byte v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->memoizedIsInitialized:B

    .line 20390
    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->memoizedSerializedSize:I

    .line 20234
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->initFields()V

    .line 20235
    const/4 v2, 0x0

    .line 20237
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 20238
    .local v0, done:Z
    :cond_e
    :goto_e
    if-nez v0, :cond_9a

    .line 20239
    :try_start_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 20240
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_aa

    .line 20245
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_e

    .line 20247
    const/4 v0, 0x1

    goto :goto_e

    .line 20242
    :sswitch_1f
    const/4 v0, 0x1

    .line 20243
    goto :goto_e

    .line 20252
    :sswitch_21
    const/4 v3, 0x0

    .line 20253
    .local v3, subBuilder:Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2f

    .line 20254
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {v5}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v3

    .line 20256
    :cond_2f
    sget-object v5, Lcom/google/grandcentral/api2/Api2$ApiStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/grandcentral/api2/Api2$ApiStatus;

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 20257
    if-eqz v3, :cond_46

    .line 20258
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {v3, v5}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    .line 20259
    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 20261
    :cond_46
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->bitField0_:I
    :try_end_4c
    .catchall {:try_start_10 .. :try_end_4c} :catchall_53
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_10 .. :try_end_4c} :catch_4d
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_4c} :catch_7d

    goto :goto_e

    .line 20279
    .end local v3           #subBuilder:Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    .end local v4           #tag:I
    :catch_4d
    move-exception v1

    .line 20280
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_4e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_53

    .line 20285
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_53
    move-exception v5

    and-int/lit8 v6, v2, 0x2

    if-ne v6, v7, :cond_60

    .line 20286
    iget-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->conversation_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->conversation_:Ljava/util/List;

    .line 20288
    :cond_60
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->makeExtensionsImmutable()V

    throw v5

    .line 20265
    .restart local v4       #tag:I
    :sswitch_64
    and-int/lit8 v5, v2, 0x2

    if-eq v5, v7, :cond_71

    .line 20266
    :try_start_68
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->conversation_:Ljava/util/List;

    .line 20267
    or-int/lit8 v2, v2, 0x2

    .line 20269
    :cond_71
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->conversation_:Ljava/util/List;

    sget-object v6, Lcom/google/grandcentral/api2/Api2$ApiConversation;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7c
    .catchall {:try_start_68 .. :try_end_7c} :catchall_53
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_68 .. :try_end_7c} :catch_4d
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_7c} :catch_7d

    goto :goto_e

    .line 20281
    .end local v4           #tag:I
    :catch_7d
    move-exception v1

    .line 20282
    .local v1, e:Ljava/io/IOException;
    :try_start_7e
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_8c
    .catchall {:try_start_7e .. :try_end_8c} :catchall_53

    .line 20273
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_8c
    :try_start_8c
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->bitField0_:I

    .line 20274
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->remaining_:I
    :try_end_98
    .catchall {:try_start_8c .. :try_end_98} :catchall_53
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_8c .. :try_end_98} :catch_4d
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_98} :catch_7d

    goto/16 :goto_e

    .line 20285
    .end local v4           #tag:I
    :cond_9a
    and-int/lit8 v5, v2, 0x2

    if-ne v5, v7, :cond_a6

    .line 20286
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->conversation_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->conversation_:Ljava/util/List;

    .line 20288
    :cond_a6
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->makeExtensionsImmutable()V

    .line 20290
    return-void

    .line 20240
    :sswitch_data_aa
    .sparse-switch
        0x0 -> :sswitch_1f
        0xa -> :sswitch_21
        0x12 -> :sswitch_64
        0x18 -> :sswitch_8c
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
    .line 20211
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 20216
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 20353
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->memoizedIsInitialized:B

    .line 20390
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->memoizedSerializedSize:I

    .line 20218
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20211
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 20219
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 20353
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->memoizedIsInitialized:B

    .line 20390
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->memoizedSerializedSize:I

    .line 20219
    return-void
.end method

.method static synthetic access$24302(Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20211
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object p1
.end method

.method static synthetic access$24400(Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20211
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->conversation_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$24402(Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20211
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->conversation_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$24502(Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20211
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->remaining_:I

    return p1
.end method

.method static synthetic access$24602(Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20211
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;
    .registers 1

    .prologue
    .line 20223
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 20349
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 20350
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->conversation_:Ljava/util/List;

    .line 20351
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->remaining_:I

    .line 20352
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;
    .registers 1

    .prologue
    .line 20471
    #calls: Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->access$24100()Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;)Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 20474
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;)Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20451
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20457
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20421
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20427
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20462
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20468
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20441
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20447
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20431
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20437
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    return-object v0
.end method


# virtual methods
.method public getConversation(I)Lcom/google/grandcentral/api2/Api2$ApiConversation;
    .registers 3
    .parameter "index"

    .prologue
    .line 20331
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->conversation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversation;

    return-object v0
.end method

.method public getConversationCount()I
    .registers 2

    .prologue
    .line 20328
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->conversation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getConversationList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiConversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20321
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->conversation_:Ljava/util/List;

    return-object v0
.end method

.method public getConversationOrBuilder(I)Lcom/google/grandcentral/api2/Api2$ApiConversationOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 20335
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->conversation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversationOrBuilder;

    return-object v0
.end method

.method public getConversationOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/grandcentral/api2/Api2$ApiConversationOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20325
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->conversation_:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;
    .registers 2

    .prologue
    .line 20227
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20211
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;

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
            "Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20303
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRemaining()I
    .registers 2

    .prologue
    .line 20345
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->remaining_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 20392
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->memoizedSerializedSize:I

    .line 20393
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_9

    move v2, v1

    .line 20409
    .end local v1           #size:I
    .local v2, size:I
    :goto_8
    return v2

    .line 20395
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_9
    const/4 v1, 0x0

    .line 20396
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_17

    .line 20397
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 20400
    :cond_17
    const/4 v0, 0x0

    .local v0, i:I
    :goto_18
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->conversation_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_30

    .line 20401
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->conversation_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 20400
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 20404
    :cond_30
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_3e

    .line 20405
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->remaining_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 20408
    :cond_3e
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 20409
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_8
.end method

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 20314
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public hasRemaining()Z
    .registers 3

    .prologue
    .line 20342
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->bitField0_:I

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

    .line 20311
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 20355
    iget-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->memoizedIsInitialized:B

    .line 20356
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_d

    if-ne v1, v2, :cond_b

    :goto_9
    move v3, v2

    .line 20373
    :goto_a
    return v3

    :cond_b
    move v2, v3

    .line 20356
    goto :goto_9

    .line 20358
    :cond_d
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->hasStatus()Z

    move-result v4

    if-nez v4, :cond_16

    .line 20359
    iput-byte v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 20362
    :cond_16
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_23

    .line 20363
    iput-byte v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 20366
    :cond_23
    const/4 v0, 0x0

    .local v0, i:I
    :goto_24
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->getConversationCount()I

    move-result v4

    if-ge v0, v4, :cond_3a

    .line 20367
    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->getConversation(I)Lcom/google/grandcentral/api2/Api2$ApiConversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/grandcentral/api2/Api2$ApiConversation;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_37

    .line 20368
    iput-byte v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 20366
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 20372
    :cond_3a
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->memoizedIsInitialized:B

    move v3, v2

    .line 20373
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;
    .registers 2

    .prologue
    .line 20472
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 20211
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;
    .registers 2

    .prologue
    .line 20476
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;)Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 20211
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse$Builder;

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
    .line 20415
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
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 20378
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->getSerializedSize()I

    .line 20379
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_10

    .line 20380
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 20382
    :cond_10
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->conversation_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 20383
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->conversation_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 20382
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 20385
    :cond_27
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_33

    .line 20386
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationsResponse;->remaining_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 20388
    :cond_33
    return-void
.end method
