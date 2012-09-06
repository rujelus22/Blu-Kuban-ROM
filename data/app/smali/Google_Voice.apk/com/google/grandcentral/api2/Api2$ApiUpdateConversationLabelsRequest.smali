.class public final Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiUpdateConversationLabelsRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;
    }
.end annotation


# static fields
.field public static final ADD_LABEL_FIELD_NUMBER:I = 0x3

.field public static final CLIENT_LOGIN_TOKEN_FIELD_NUMBER:I = 0x1

.field public static final CONVERSATION_ID_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final REMOVE_LABEL_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;


# instance fields
.field private addLabel_:Lcom/google/protobuf/LazyStringList;

.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;

.field private conversationId_:Lcom/google/protobuf/LazyStringList;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private removeLabel_:Lcom/google/protobuf/LazyStringList;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 22922
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 23561
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;

    .line 23562
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->initFields()V

    .line 23563
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 12
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    .line 22855
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 23031
    iput-byte v4, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->memoizedIsInitialized:B

    .line 23061
    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->memoizedSerializedSize:I

    .line 22856
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->initFields()V

    .line 22857
    const/4 v2, 0x0

    .line 22859
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 22860
    .local v0, done:Z
    :cond_11
    :goto_11
    if-nez v0, :cond_b9

    .line 22861
    :try_start_13
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 22862
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_e4

    .line 22867
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_11

    .line 22869
    const/4 v0, 0x1

    goto :goto_11

    .line 22864
    :sswitch_22
    const/4 v0, 0x1

    .line 22865
    goto :goto_11

    .line 22874
    :sswitch_24
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->bitField0_:I

    .line 22875
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->clientLoginToken_:Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_13 .. :try_end_30} :catchall_37
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_13 .. :try_end_30} :catch_31
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_30} :catch_7a

    goto :goto_11

    .line 22904
    .end local v3           #tag:I
    :catch_31
    move-exception v1

    .line 22905
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_32
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_37

    .line 22910
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_37
    move-exception v4

    and-int/lit8 v5, v2, 0x2

    if-ne v5, v6, :cond_45

    .line 22911
    new-instance v5, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->conversationId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v5, v6}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->conversationId_:Lcom/google/protobuf/LazyStringList;

    .line 22913
    :cond_45
    and-int/lit8 v5, v2, 0x4

    if-ne v5, v7, :cond_52

    .line 22914
    new-instance v5, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->addLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v5, v6}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->addLabel_:Lcom/google/protobuf/LazyStringList;

    .line 22916
    :cond_52
    and-int/lit8 v5, v2, 0x8

    if-ne v5, v8, :cond_5f

    .line 22917
    new-instance v5, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->removeLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v5, v6}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->removeLabel_:Lcom/google/protobuf/LazyStringList;

    .line 22919
    :cond_5f
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->makeExtensionsImmutable()V

    throw v4

    .line 22879
    .restart local v3       #tag:I
    :sswitch_63
    and-int/lit8 v4, v2, 0x2

    if-eq v4, v6, :cond_70

    .line 22880
    :try_start_67
    new-instance v4, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v4}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->conversationId_:Lcom/google/protobuf/LazyStringList;

    .line 22881
    or-int/lit8 v2, v2, 0x2

    .line 22883
    :cond_70
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->conversationId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V
    :try_end_79
    .catchall {:try_start_67 .. :try_end_79} :catchall_37
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_67 .. :try_end_79} :catch_31
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_79} :catch_7a

    goto :goto_11

    .line 22906
    .end local v3           #tag:I
    :catch_7a
    move-exception v1

    .line 22907
    .local v1, e:Ljava/io/IOException;
    :try_start_7b
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_89
    .catchall {:try_start_7b .. :try_end_89} :catchall_37

    .line 22887
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_89
    and-int/lit8 v4, v2, 0x4

    if-eq v4, v7, :cond_96

    .line 22888
    :try_start_8d
    new-instance v4, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v4}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->addLabel_:Lcom/google/protobuf/LazyStringList;

    .line 22889
    or-int/lit8 v2, v2, 0x4

    .line 22891
    :cond_96
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->addLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_11

    .line 22895
    :sswitch_a1
    and-int/lit8 v4, v2, 0x8

    if-eq v4, v8, :cond_ae

    .line 22896
    new-instance v4, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v4}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->removeLabel_:Lcom/google/protobuf/LazyStringList;

    .line 22897
    or-int/lit8 v2, v2, 0x8

    .line 22899
    :cond_ae
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->removeLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V
    :try_end_b7
    .catchall {:try_start_8d .. :try_end_b7} :catchall_37
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_8d .. :try_end_b7} :catch_31
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_b7} :catch_7a

    goto/16 :goto_11

    .line 22910
    .end local v3           #tag:I
    :cond_b9
    and-int/lit8 v4, v2, 0x2

    if-ne v4, v6, :cond_c6

    .line 22911
    new-instance v4, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->conversationId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v4, v5}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->conversationId_:Lcom/google/protobuf/LazyStringList;

    .line 22913
    :cond_c6
    and-int/lit8 v4, v2, 0x4

    if-ne v4, v7, :cond_d3

    .line 22914
    new-instance v4, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->addLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v4, v5}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->addLabel_:Lcom/google/protobuf/LazyStringList;

    .line 22916
    :cond_d3
    and-int/lit8 v4, v2, 0x8

    if-ne v4, v8, :cond_e0

    .line 22917
    new-instance v4, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->removeLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v4, v5}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->removeLabel_:Lcom/google/protobuf/LazyStringList;

    .line 22919
    :cond_e0
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->makeExtensionsImmutable()V

    .line 22921
    return-void

    .line 22862
    :sswitch_data_e4
    .sparse-switch
        0x0 -> :sswitch_22
        0xa -> :sswitch_24
        0x12 -> :sswitch_63
        0x1a -> :sswitch_89
        0x22 -> :sswitch_a1
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
    .line 22833
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 22838
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 23031
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->memoizedIsInitialized:B

    .line 23061
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->memoizedSerializedSize:I

    .line 22840
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22833
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 22841
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 23031
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->memoizedIsInitialized:B

    .line 23061
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->memoizedSerializedSize:I

    .line 22841
    return-void
.end method

.method static synthetic access$27700(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22833
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$27702(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22833
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$27800(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22833
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->conversationId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$27802(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22833
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->conversationId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$27900(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22833
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->addLabel_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$27902(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22833
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->addLabel_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$28000(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22833
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->removeLabel_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$28002(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22833
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->removeLabel_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$28102(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22833
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;
    .registers 1

    .prologue
    .line 22845
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 23026
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 23027
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->conversationId_:Lcom/google/protobuf/LazyStringList;

    .line 23028
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->addLabel_:Lcom/google/protobuf/LazyStringList;

    .line 23029
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->removeLabel_:Lcom/google/protobuf/LazyStringList;

    .line 23030
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;
    .registers 1

    .prologue
    .line 23161
    #calls: Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->access$27500()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 23164
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23141
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23147
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 23111
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 23117
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23152
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23158
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23131
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23137
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 23121
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 23127
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;

    return-object v0
.end method


# virtual methods
.method public getAddLabel(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 23000
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->addLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAddLabelBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 23004
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->addLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAddLabelCount()I
    .registers 2

    .prologue
    .line 22997
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->addLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getAddLabelList()Ljava/util/List;
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
    .line 22994
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->addLabel_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getClientLoginToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 22945
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 22946
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 22947
    check-cast v1, Ljava/lang/String;

    .line 22955
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 22949
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 22951
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 22952
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 22953
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->clientLoginToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 22955
    goto :goto_8
.end method

.method public getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 22960
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 22961
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 22962
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 22964
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 22967
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

.method public getConversationId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 22982
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->conversationId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getConversationIdBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 22986
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->conversationId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getConversationIdCount()I
    .registers 2

    .prologue
    .line 22979
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->conversationId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getConversationIdList()Ljava/util/List;
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
    .line 22976
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->conversationId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;
    .registers 2

    .prologue
    .line 22849
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22833
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;

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
            "Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22934
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRemoveLabel(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 23018
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->removeLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRemoveLabelBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 23022
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->removeLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRemoveLabelCount()I
    .registers 2

    .prologue
    .line 23015
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->removeLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getRemoveLabelList()Ljava/util/List;
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
    .line 23012
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->removeLabel_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 23063
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->memoizedSerializedSize:I

    .line 23064
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    move v3, v2

    .line 23099
    .end local v2           #size:I
    .local v3, size:I
    :goto_7
    return v3

    .line 23066
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_8
    const/4 v2, 0x0

    .line 23067
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_18

    .line 23068
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 23072
    :cond_18
    const/4 v0, 0x0

    .line 23073
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1a
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->conversationId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_30

    .line 23074
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->conversationId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 23073
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 23077
    :cond_30
    add-int/2addr v2, v0

    .line 23078
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->getConversationIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 23081
    const/4 v0, 0x0

    .line 23082
    const/4 v1, 0x0

    :goto_3e
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->addLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_54

    .line 23083
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->addLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 23082
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 23086
    :cond_54
    add-int/2addr v2, v0

    .line 23087
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->getAddLabelList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 23090
    const/4 v0, 0x0

    .line 23091
    const/4 v1, 0x0

    :goto_62
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->removeLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_78

    .line 23092
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->removeLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 23091
    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    .line 23095
    :cond_78
    add-int/2addr v2, v0

    .line 23096
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->getRemoveLabelList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 23098
    iput v2, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->memoizedSerializedSize:I

    move v3, v2

    .line 23099
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_7
.end method

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 22942
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->bitField0_:I

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

    .line 23033
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->memoizedIsInitialized:B

    .line 23034
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 23041
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 23034
    goto :goto_9

    .line 23036
    :cond_c
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->hasClientLoginToken()Z

    move-result v3

    if-nez v3, :cond_16

    .line 23037
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 23038
    goto :goto_9

    .line 23040
    :cond_16
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;
    .registers 2

    .prologue
    .line 23162
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22833
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;
    .registers 2

    .prologue
    .line 23166
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;)Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 22833
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest$Builder;

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
    .line 23105
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

    .line 23046
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->getSerializedSize()I

    .line 23047
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_11

    .line 23048
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 23050
    :cond_11
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->conversationId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 23051
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->conversationId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 23050
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 23053
    :cond_27
    const/4 v0, 0x0

    :goto_28
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->addLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3d

    .line 23054
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->addLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 23053
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 23056
    :cond_3d
    const/4 v0, 0x0

    :goto_3e
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->removeLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_53

    .line 23057
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiUpdateConversationLabelsRequest;->removeLabel_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 23056
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 23059
    :cond_53
    return-void
.end method
