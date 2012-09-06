.class public final Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiListConversationsRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;
    }
.end annotation


# static fields
.field public static final CLIENT_LOGIN_TOKEN_FIELD_NUMBER:I = 0x1

.field public static final LABEL_FIELD_NUMBER:I = 0x4

.field public static final LIMIT_FIELD_NUMBER:I = 0x3

.field public static final MODIFIED_SINCE_TIMESTAMP_FIELD_NUMBER:I = 0x5

.field public static final OFFSET_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final WANT_TRANSCRIPT_FIELD_NUMBER:I = 0x6

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;


# instance fields
.field private bitField0_:I

.field private clientLoginToken_:Ljava/lang/Object;

.field private label_:Lcom/google/protobuf/LazyStringList;

.field private limit_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private modifiedSinceTimestamp_:J

.field private offset_:I

.field private wantTranscript_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 14004
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 14607
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;

    .line 14608
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->initFields()V

    .line 14609
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

    const/16 v6, 0x8

    .line 13939
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 14119
    iput-byte v4, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->memoizedIsInitialized:B

    .line 14155
    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->memoizedSerializedSize:I

    .line 13940
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->initFields()V

    .line 13941
    const/4 v2, 0x0

    .line 13943
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 13944
    .local v0, done:Z
    :cond_f
    :goto_f
    if-nez v0, :cond_a3

    .line 13945
    :try_start_11
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 13946
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_b4

    .line 13951
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_f

    .line 13953
    const/4 v0, 0x1

    goto :goto_f

    .line 13948
    :sswitch_20
    const/4 v0, 0x1

    .line 13949
    goto :goto_f

    .line 13958
    :sswitch_22
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->bitField0_:I

    .line 13959
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->clientLoginToken_:Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_35
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_11 .. :try_end_2e} :catch_2f
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_2e} :catch_54

    goto :goto_f

    .line 13992
    .end local v3           #tag:I
    :catch_2f
    move-exception v1

    .line 13993
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_30
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_35

    .line 13998
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_35
    move-exception v4

    and-int/lit8 v5, v2, 0x8

    if-ne v5, v6, :cond_43

    .line 13999
    new-instance v5, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v5, v6}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->label_:Lcom/google/protobuf/LazyStringList;

    .line 14001
    :cond_43
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->makeExtensionsImmutable()V

    throw v4

    .line 13963
    .restart local v3       #tag:I
    :sswitch_47
    :try_start_47
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->bitField0_:I

    .line 13964
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->offset_:I
    :try_end_53
    .catchall {:try_start_47 .. :try_end_53} :catchall_35
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_47 .. :try_end_53} :catch_2f
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_53} :catch_54

    goto :goto_f

    .line 13994
    .end local v3           #tag:I
    :catch_54
    move-exception v1

    .line 13995
    .local v1, e:Ljava/io/IOException;
    :try_start_55
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_63
    .catchall {:try_start_55 .. :try_end_63} :catchall_35

    .line 13968
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_63
    :try_start_63
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->bitField0_:I

    .line 13969
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->limit_:I

    goto :goto_f

    .line 13973
    :sswitch_70
    and-int/lit8 v4, v2, 0x8

    if-eq v4, v6, :cond_7d

    .line 13974
    new-instance v4, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v4}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->label_:Lcom/google/protobuf/LazyStringList;

    .line 13975
    or-int/lit8 v2, v2, 0x8

    .line 13977
    :cond_7d
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_f

    .line 13981
    :sswitch_87
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->bitField0_:I

    .line 13982
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->modifiedSinceTimestamp_:J

    goto/16 :goto_f

    .line 13986
    :sswitch_95
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->bitField0_:I

    .line 13987
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->wantTranscript_:Z
    :try_end_a1
    .catchall {:try_start_63 .. :try_end_a1} :catchall_35
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_63 .. :try_end_a1} :catch_2f
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_a1} :catch_54

    goto/16 :goto_f

    .line 13998
    .end local v3           #tag:I
    :cond_a3
    and-int/lit8 v4, v2, 0x8

    if-ne v4, v6, :cond_b0

    .line 13999
    new-instance v4, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v4, v5}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->label_:Lcom/google/protobuf/LazyStringList;

    .line 14001
    :cond_b0
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->makeExtensionsImmutable()V

    .line 14003
    return-void

    .line 13946
    :sswitch_data_b4
    .sparse-switch
        0x0 -> :sswitch_20
        0xa -> :sswitch_22
        0x10 -> :sswitch_47
        0x18 -> :sswitch_63
        0x22 -> :sswitch_70
        0x28 -> :sswitch_87
        0x30 -> :sswitch_95
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
    .line 13917
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 13922
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 14119
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->memoizedIsInitialized:B

    .line 14155
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->memoizedSerializedSize:I

    .line 13924
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13917
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 13925
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 14119
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->memoizedIsInitialized:B

    .line 14155
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->memoizedSerializedSize:I

    .line 13925
    return-void
.end method

.method static synthetic access$16900(Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 13917
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$16902(Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13917
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$17002(Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13917
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->offset_:I

    return p1
.end method

.method static synthetic access$17102(Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13917
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->limit_:I

    return p1
.end method

.method static synthetic access$17200(Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 13917
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->label_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$17202(Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13917
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->label_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$17302(Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13917
    iput-wide p1, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->modifiedSinceTimestamp_:J

    return-wide p1
.end method

.method static synthetic access$17402(Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13917
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->wantTranscript_:Z

    return p1
.end method

.method static synthetic access$17502(Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13917
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;
    .registers 1

    .prologue
    .line 13929
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 14112
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 14113
    iput v2, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->offset_:I

    .line 14114
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->limit_:I

    .line 14115
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->label_:Lcom/google/protobuf/LazyStringList;

    .line 14116
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->modifiedSinceTimestamp_:J

    .line 14117
    iput-boolean v2, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->wantTranscript_:Z

    .line 14118
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;
    .registers 1

    .prologue
    .line 14253
    #calls: Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->access$16700()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 14256
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14233
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14239
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14203
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14209
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14244
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14250
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14223
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14229
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14213
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14219
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;

    return-object v0
.end method


# virtual methods
.method public getClientLoginToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 14027
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 14028
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 14029
    check-cast v1, Ljava/lang/String;

    .line 14037
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 14031
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 14033
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 14034
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 14035
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->clientLoginToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 14037
    goto :goto_8
.end method

.method public getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 14042
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 14043
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 14044
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14046
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 14049
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;
    .registers 2

    .prologue
    .line 13933
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13917
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getLabel(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 14084
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLabelBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 14088
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLabelCount()I
    .registers 2

    .prologue
    .line 14081
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->label_:Lcom/google/protobuf/LazyStringList;

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
    .line 14078
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->label_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getLimit()I
    .registers 2

    .prologue
    .line 14070
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->limit_:I

    return v0
.end method

.method public getModifiedSinceTimestamp()J
    .registers 3

    .prologue
    .line 14098
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->modifiedSinceTimestamp_:J

    return-wide v0
.end method

.method public getOffset()I
    .registers 2

    .prologue
    .line 14060
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->offset_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14016
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 14157
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->memoizedSerializedSize:I

    .line 14158
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_9

    move v3, v2

    .line 14191
    .end local v2           #size:I
    .local v3, size:I
    :goto_8
    return v3

    .line 14160
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_9
    const/4 v2, 0x0

    .line 14161
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_19

    .line 14162
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 14165
    :cond_19
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_26

    .line 14166
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->offset_:I

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 14169
    :cond_26
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_35

    .line 14170
    const/4 v4, 0x3

    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->limit_:I

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 14174
    :cond_35
    const/4 v0, 0x0

    .line 14175
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_37
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4d

    .line 14176
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 14175
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 14179
    :cond_4d
    add-int/2addr v2, v0

    .line 14180
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->getLabelList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 14182
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_69

    .line 14183
    const/4 v4, 0x5

    iget-wide v5, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->modifiedSinceTimestamp_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 14186
    :cond_69
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_79

    .line 14187
    const/4 v4, 0x6

    iget-boolean v5, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->wantTranscript_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 14190
    :cond_79
    iput v2, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->memoizedSerializedSize:I

    move v3, v2

    .line 14191
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_8
.end method

.method public getWantTranscript()Z
    .registers 2

    .prologue
    .line 14108
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->wantTranscript_:Z

    return v0
.end method

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 14024
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->bitField0_:I

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
    .line 14067
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->bitField0_:I

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

.method public hasModifiedSinceTimestamp()Z
    .registers 3

    .prologue
    .line 14095
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->bitField0_:I

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

.method public hasOffset()Z
    .registers 3

    .prologue
    .line 14057
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->bitField0_:I

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

.method public hasWantTranscript()Z
    .registers 3

    .prologue
    .line 14105
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->bitField0_:I

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
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 14121
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->memoizedIsInitialized:B

    .line 14122
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 14129
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 14122
    goto :goto_9

    .line 14124
    :cond_c
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->hasClientLoginToken()Z

    move-result v3

    if-nez v3, :cond_16

    .line 14125
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 14126
    goto :goto_9

    .line 14128
    :cond_16
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;
    .registers 2

    .prologue
    .line 14254
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 13917
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;
    .registers 2

    .prologue
    .line 14258
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;)Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 13917
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest$Builder;

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
    .line 14197
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

    .line 14134
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->getSerializedSize()I

    .line 14135
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_13

    .line 14136
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14138
    :cond_13
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1e

    .line 14139
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->offset_:I

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 14141
    :cond_1e
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2a

    .line 14142
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->limit_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 14144
    :cond_2a
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2b
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3f

    .line 14145
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->label_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 14144
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 14147
    :cond_3f
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4d

    .line 14148
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->modifiedSinceTimestamp_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 14150
    :cond_4d
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5b

    .line 14151
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequest;->wantTranscript_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 14153
    :cond_5b
    return-void
.end method
