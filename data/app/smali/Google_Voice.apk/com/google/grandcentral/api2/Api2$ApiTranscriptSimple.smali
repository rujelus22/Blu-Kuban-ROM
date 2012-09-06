.class public final Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimpleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiTranscriptSimple"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;
    }
.end annotation


# static fields
.field public static final CONFIDENCE_FIELD_NUMBER:I = 0x1

.field public static final EDITED_TEXT_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;",
            ">;"
        }
    .end annotation
.end field

.field public static final WORD_TOKENS_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;


# instance fields
.field private bitField0_:I

.field private confidence_:F

.field private editedText_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private wordTokens_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16141
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->PARSER:Lcom/google/protobuf/Parser;

    .line 16633
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    .line 16634
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->initFields()V

    .line 16635
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

    .line 16091
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 16226
    iput-byte v4, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->memoizedIsInitialized:B

    .line 16259
    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->memoizedSerializedSize:I

    .line 16092
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->initFields()V

    .line 16093
    const/4 v2, 0x0

    .line 16095
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 16096
    .local v0, done:Z
    :cond_e
    :goto_e
    if-nez v0, :cond_7a

    .line 16097
    :try_start_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 16098
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_8a

    .line 16103
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_e

    .line 16105
    const/4 v0, 0x1

    goto :goto_e

    .line 16100
    :sswitch_1f
    const/4 v0, 0x1

    .line 16101
    goto :goto_e

    .line 16110
    :sswitch_21
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->bitField0_:I

    .line 16111
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->confidence_:F
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_34
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_10 .. :try_end_2d} :catch_2e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_2d} :catch_5e

    goto :goto_e

    .line 16129
    .end local v3           #tag:I
    :catch_2e
    move-exception v1

    .line 16130
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2f
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_34

    .line 16135
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_34
    move-exception v4

    and-int/lit8 v5, v2, 0x2

    if-ne v5, v6, :cond_41

    .line 16136
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->wordTokens_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->wordTokens_:Ljava/util/List;

    .line 16138
    :cond_41
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->makeExtensionsImmutable()V

    throw v4

    .line 16115
    .restart local v3       #tag:I
    :sswitch_45
    and-int/lit8 v4, v2, 0x2

    if-eq v4, v6, :cond_52

    .line 16116
    :try_start_49
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->wordTokens_:Ljava/util/List;

    .line 16117
    or-int/lit8 v2, v2, 0x2

    .line 16119
    :cond_52
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->wordTokens_:Ljava/util/List;

    sget-object v5, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5d
    .catchall {:try_start_49 .. :try_end_5d} :catchall_34
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_49 .. :try_end_5d} :catch_2e
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_5d} :catch_5e

    goto :goto_e

    .line 16131
    .end local v3           #tag:I
    :catch_5e
    move-exception v1

    .line 16132
    .local v1, e:Ljava/io/IOException;
    :try_start_5f
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_6d
    .catchall {:try_start_5f .. :try_end_6d} :catchall_34

    .line 16123
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_6d
    :try_start_6d
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->bitField0_:I

    .line 16124
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->editedText_:Ljava/lang/Object;
    :try_end_79
    .catchall {:try_start_6d .. :try_end_79} :catchall_34
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_6d .. :try_end_79} :catch_2e
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_79} :catch_5e

    goto :goto_e

    .line 16135
    .end local v3           #tag:I
    :cond_7a
    and-int/lit8 v4, v2, 0x2

    if-ne v4, v6, :cond_86

    .line 16136
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->wordTokens_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->wordTokens_:Ljava/util/List;

    .line 16138
    :cond_86
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->makeExtensionsImmutable()V

    .line 16140
    return-void

    .line 16098
    :sswitch_data_8a
    .sparse-switch
        0x0 -> :sswitch_1f
        0xd -> :sswitch_21
        0x12 -> :sswitch_45
        0x1a -> :sswitch_6d
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
    .line 16069
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 16074
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 16226
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->memoizedIsInitialized:B

    .line 16259
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->memoizedSerializedSize:I

    .line 16076
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16069
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 16077
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 16226
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->memoizedIsInitialized:B

    .line 16259
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->memoizedSerializedSize:I

    .line 16077
    return-void
.end method

.method static synthetic access$19802(Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16069
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->confidence_:F

    return p1
.end method

.method static synthetic access$19900(Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 16069
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->wordTokens_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$19902(Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16069
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->wordTokens_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$20000(Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 16069
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->editedText_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$20002(Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16069
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->editedText_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$20102(Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16069
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;
    .registers 1

    .prologue
    .line 16081
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 16222
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->confidence_:F

    .line 16223
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->wordTokens_:Ljava/util/List;

    .line 16224
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->editedText_:Ljava/lang/Object;

    .line 16225
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;
    .registers 1

    .prologue
    .line 16340
    #calls: Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->access$19600()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 16343
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16320
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16326
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 16290
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 16296
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16331
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16337
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16310
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16316
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 16300
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 16306
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    return-object v0
.end method


# virtual methods
.method public getConfidence()F
    .registers 2

    .prologue
    .line 16164
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->confidence_:F

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;
    .registers 2

    .prologue
    .line 16085
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16069
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    move-result-object v0

    return-object v0
.end method

.method public getEditedText()Ljava/lang/String;
    .registers 5

    .prologue
    .line 16195
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->editedText_:Ljava/lang/Object;

    .line 16196
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 16197
    check-cast v1, Ljava/lang/String;

    .line 16205
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 16199
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 16201
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 16202
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 16203
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->editedText_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 16205
    goto :goto_8
.end method

.method public getEditedTextBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 16210
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->editedText_:Ljava/lang/Object;

    .line 16211
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 16212
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 16214
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->editedText_:Ljava/lang/Object;

    .line 16217
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

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16153
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 16261
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->memoizedSerializedSize:I

    .line 16262
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_9

    move v2, v1

    .line 16278
    .end local v1           #size:I
    .local v2, size:I
    :goto_8
    return v2

    .line 16264
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_9
    const/4 v1, 0x0

    .line 16265
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_17

    .line 16266
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->confidence_:F

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v1, v3

    .line 16269
    :cond_17
    const/4 v0, 0x0

    .local v0, i:I
    :goto_18
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->wordTokens_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_30

    .line 16270
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->wordTokens_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 16269
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 16273
    :cond_30
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_40

    .line 16274
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->getEditedTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 16277
    :cond_40
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->memoizedSerializedSize:I

    move v2, v1

    .line 16278
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_8
.end method

.method public getWordTokens(I)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;
    .registers 3
    .parameter "index"

    .prologue
    .line 16181
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->wordTokens_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;

    return-object v0
.end method

.method public getWordTokensCount()I
    .registers 2

    .prologue
    .line 16178
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->wordTokens_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getWordTokensList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16171
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->wordTokens_:Ljava/util/List;

    return-object v0
.end method

.method public getWordTokensOrBuilder(I)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordTokenOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 16185
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->wordTokens_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordTokenOrBuilder;

    return-object v0
.end method

.method public getWordTokensOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordTokenOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16175
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->wordTokens_:Ljava/util/List;

    return-object v0
.end method

.method public hasConfidence()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 16161
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasEditedText()Z
    .registers 3

    .prologue
    .line 16192
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 16228
    iget-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->memoizedIsInitialized:B

    .line 16229
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_c

    if-ne v1, v2, :cond_a

    .line 16242
    :goto_9
    return v2

    :cond_a
    move v2, v3

    .line 16229
    goto :goto_9

    .line 16231
    :cond_c
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->hasConfidence()Z

    move-result v4

    if-nez v4, :cond_16

    .line 16232
    iput-byte v3, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->memoizedIsInitialized:B

    move v2, v3

    .line 16233
    goto :goto_9

    .line 16235
    :cond_16
    const/4 v0, 0x0

    .local v0, i:I
    :goto_17
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->getWordTokensCount()I

    move-result v4

    if-ge v0, v4, :cond_2e

    .line 16236
    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->getWordTokens(I)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2b

    .line 16237
    iput-byte v3, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->memoizedIsInitialized:B

    move v2, v3

    .line 16238
    goto :goto_9

    .line 16235
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 16241
    :cond_2e
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;
    .registers 2

    .prologue
    .line 16341
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 16069
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;
    .registers 2

    .prologue
    .line 16345
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 16069
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;

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
    .line 16284
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

    .line 16247
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->getSerializedSize()I

    .line 16248
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_10

    .line 16249
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->confidence_:F

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 16251
    :cond_10
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->wordTokens_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 16252
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->wordTokens_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 16251
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 16254
    :cond_27
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_35

    .line 16255
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->getEditedTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 16257
    :cond_35
    return-void
.end method
