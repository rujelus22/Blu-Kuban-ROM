.class public final Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiSearchConversationsRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;
    }
.end annotation


# static fields
.field public static final CLIENT_LOGIN_TOKEN_FIELD_NUMBER:I = 0x1

.field public static final LIMIT_FIELD_NUMBER:I = 0x4

.field public static final LOCALE_FIELD_NUMBER:I = 0x8

.field public static final OFFSET_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUERY_FIELD_NUMBER:I = 0x2

.field public static final TIMEZONE_FIELD_NUMBER:I = 0x7

.field public static final WANT_TRANSCRIPT_FIELD_NUMBER:I = 0x6

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;


# instance fields
.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;

.field private limit_:I

.field private locale_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private offset_:I

.field private query_:Ljava/lang/Object;

.field private timezone_:Ljava/lang/Object;

.field private wantTranscript_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 14739
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 15503
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;

    .line 15504
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->initFields()V

    .line 15505
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 14675
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 14926
    iput-byte v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->memoizedIsInitialized:B

    .line 14969
    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->memoizedSerializedSize:I

    .line 14676
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->initFields()V

    .line 14677
    const/4 v2, 0x0

    .line 14679
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 14680
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_96

    .line 14681
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 14682
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_9a

    .line 14687
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 14689
    const/4 v0, 0x1

    goto :goto_d

    .line 14684
    :sswitch_1e
    const/4 v0, 0x1

    .line 14685
    goto :goto_d

    .line 14694
    :sswitch_20
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->bitField0_:I

    .line 14695
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->clientLoginToken_:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 14730
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 14731
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 14736
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->makeExtensionsImmutable()V

    throw v4

    .line 14699
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->bitField0_:I

    .line 14700
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->query_:Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 14732
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 14733
    .local v1, e:Ljava/io/IOException;
    :try_start_46
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_33

    .line 14704
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_54
    :try_start_54
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->bitField0_:I

    .line 14705
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->offset_:I

    goto :goto_d

    .line 14709
    :sswitch_61
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->bitField0_:I

    .line 14710
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->limit_:I

    goto :goto_d

    .line 14714
    :sswitch_6e
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->bitField0_:I

    .line 14715
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->wantTranscript_:Z

    goto :goto_d

    .line 14719
    :sswitch_7b
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->bitField0_:I

    .line 14720
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->timezone_:Ljava/lang/Object;

    goto :goto_d

    .line 14724
    :sswitch_88
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->bitField0_:I

    .line 14725
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->locale_:Ljava/lang/Object;
    :try_end_94
    .catchall {:try_start_54 .. :try_end_94} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_54 .. :try_end_94} :catch_2d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_94} :catch_45

    goto/16 :goto_d

    .line 14736
    .end local v3           #tag:I
    :cond_96
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->makeExtensionsImmutable()V

    .line 14738
    return-void

    .line 14682
    :sswitch_data_9a
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x12 -> :sswitch_38
        0x18 -> :sswitch_54
        0x20 -> :sswitch_61
        0x30 -> :sswitch_6e
        0x3a -> :sswitch_7b
        0x42 -> :sswitch_88
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
    .line 14653
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 14658
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 14926
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->memoizedIsInitialized:B

    .line 14969
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->memoizedSerializedSize:I

    .line 14660
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14653
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 14661
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 14926
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->memoizedIsInitialized:B

    .line 14969
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->memoizedSerializedSize:I

    .line 14661
    return-void
.end method

.method static synthetic access$17900(Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 14653
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$17902(Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14653
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$18000(Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 14653
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->query_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$18002(Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14653
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->query_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$18102(Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14653
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->offset_:I

    return p1
.end method

.method static synthetic access$18202(Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14653
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->limit_:I

    return p1
.end method

.method static synthetic access$18302(Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14653
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->wantTranscript_:Z

    return p1
.end method

.method static synthetic access$18400(Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 14653
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->timezone_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$18402(Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14653
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->timezone_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$18500(Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 14653
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->locale_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$18502(Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14653
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->locale_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$18602(Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14653
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;
    .registers 1

    .prologue
    .line 14665
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 14918
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 14919
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->query_:Ljava/lang/Object;

    .line 14920
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->offset_:I

    .line 14921
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->limit_:I

    .line 14922
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->wantTranscript_:Z

    .line 14923
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->timezone_:Ljava/lang/Object;

    .line 14924
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->locale_:Ljava/lang/Object;

    .line 14925
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;
    .registers 1

    .prologue
    .line 15066
    #calls: Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->access$17700()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 15069
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15046
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15052
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15016
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15022
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15057
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15063
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15036
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15042
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15026
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15032
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;

    return-object v0
.end method


# virtual methods
.method public getClientLoginToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 14762
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 14763
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 14764
    check-cast v1, Ljava/lang/String;

    .line 14772
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 14766
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 14768
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 14769
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 14770
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->clientLoginToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 14772
    goto :goto_8
.end method

.method public getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 14777
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 14778
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 14779
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14781
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 14784
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;
    .registers 2

    .prologue
    .line 14669
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14653
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getLimit()I
    .registers 2

    .prologue
    .line 14838
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->limit_:I

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .registers 5

    .prologue
    .line 14891
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->locale_:Ljava/lang/Object;

    .line 14892
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 14893
    check-cast v1, Ljava/lang/String;

    .line 14901
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 14895
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 14897
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 14898
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 14899
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->locale_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 14901
    goto :goto_8
.end method

.method public getLocaleBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 14906
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->locale_:Ljava/lang/Object;

    .line 14907
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 14908
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14910
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->locale_:Ljava/lang/Object;

    .line 14913
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

.method public getOffset()I
    .registers 2

    .prologue
    .line 14828
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->offset_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14751
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 5

    .prologue
    .line 14795
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->query_:Ljava/lang/Object;

    .line 14796
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 14797
    check-cast v1, Ljava/lang/String;

    .line 14805
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 14799
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 14801
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 14802
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 14803
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->query_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 14805
    goto :goto_8
.end method

.method public getQueryBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 14810
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->query_:Ljava/lang/Object;

    .line 14811
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 14812
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14814
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->query_:Ljava/lang/Object;

    .line 14817
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

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 14971
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->memoizedSerializedSize:I

    .line 14972
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 15004
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 14974
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 14975
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 14976
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14979
    :cond_1c
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2b

    .line 14980
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->getQueryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14983
    :cond_2b
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_39

    .line 14984
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->offset_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 14987
    :cond_39
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_46

    .line 14988
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->limit_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 14991
    :cond_46
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_56

    .line 14992
    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->wantTranscript_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 14995
    :cond_56
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_68

    .line 14996
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->getTimezoneBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 14999
    :cond_68
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_79

    .line 15000
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->getLocaleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 15003
    :cond_79
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 15004
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_b
.end method

.method public getTimezone()Ljava/lang/String;
    .registers 5

    .prologue
    .line 14858
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->timezone_:Ljava/lang/Object;

    .line 14859
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 14860
    check-cast v1, Ljava/lang/String;

    .line 14868
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 14862
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 14864
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 14865
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 14866
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->timezone_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 14868
    goto :goto_8
.end method

.method public getTimezoneBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 14873
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->timezone_:Ljava/lang/Object;

    .line 14874
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 14875
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14877
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->timezone_:Ljava/lang/Object;

    .line 14880
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

.method public getWantTranscript()Z
    .registers 2

    .prologue
    .line 14848
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->wantTranscript_:Z

    return v0
.end method

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 14759
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLimit()Z
    .registers 3

    .prologue
    .line 14835
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->bitField0_:I

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

.method public hasLocale()Z
    .registers 3

    .prologue
    .line 14888
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->bitField0_:I

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

.method public hasOffset()Z
    .registers 3

    .prologue
    .line 14825
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->bitField0_:I

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

.method public hasQuery()Z
    .registers 3

    .prologue
    .line 14792
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->bitField0_:I

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

.method public hasTimezone()Z
    .registers 3

    .prologue
    .line 14855
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->bitField0_:I

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

.method public hasWantTranscript()Z
    .registers 3

    .prologue
    .line 14845
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 14928
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->memoizedIsInitialized:B

    .line 14929
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 14940
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 14929
    goto :goto_9

    .line 14931
    :cond_c
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->hasClientLoginToken()Z

    move-result v3

    if-nez v3, :cond_16

    .line 14932
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 14933
    goto :goto_9

    .line 14935
    :cond_16
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->hasQuery()Z

    move-result v3

    if-nez v3, :cond_20

    .line 14936
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 14937
    goto :goto_9

    .line 14939
    :cond_20
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;
    .registers 2

    .prologue
    .line 15067
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 14653
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;
    .registers 2

    .prologue
    .line 15071
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;)Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 14653
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest$Builder;

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
    .line 15010
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
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 14945
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->getSerializedSize()I

    .line 14946
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 14947
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14949
    :cond_15
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 14950
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->getQueryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14952
    :cond_22
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 14953
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->offset_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 14955
    :cond_2e
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_39

    .line 14956
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->limit_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 14958
    :cond_39
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_47

    .line 14959
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->wantTranscript_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 14961
    :cond_47
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_57

    .line 14962
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->getTimezoneBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14964
    :cond_57
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_66

    .line 14965
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiSearchConversationsRequest;->getLocaleBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14967
    :cond_66
    return-void
.end method
