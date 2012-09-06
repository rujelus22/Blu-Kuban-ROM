.class public final Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiFetchRecordingRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;
    }
.end annotation


# static fields
.field public static final CALL_ID_FIELD_NUMBER:I = 0x2

.field public static final CLIENT_LOGIN_TOKEN_FIELD_NUMBER:I = 0x1

.field public static final END_OFFSET_FIELD_NUMBER:I = 0x5

.field public static final FORMAT_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final START_OFFSET_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;


# instance fields
.field private bitField0_:I

.field private callId_:Lcom/google/protobuf/LazyStringList;

.field private clientLoginToken_:Ljava/lang/Object;

.field private endOffset_:J

.field private format_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private startOffset_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 20893
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 21489
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;

    .line 21490
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->initFields()V

    .line 21491
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 13
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v8, 0x2

    const/4 v9, 0x4

    .line 20814
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21001
    iput-byte v6, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->memoizedIsInitialized:B

    .line 21034
    iput v6, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->memoizedSerializedSize:I

    .line 20815
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->initFields()V

    .line 20816
    const/4 v4, 0x0

    .line 20818
    .local v4, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 20819
    .local v0, done:Z
    :cond_f
    :goto_f
    if-nez v0, :cond_e5

    .line 20820
    :try_start_11
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 20821
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_102

    .line 20826
    invoke-virtual {p0, p1, p2, v5}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_f

    .line 20828
    const/4 v0, 0x1

    goto :goto_f

    .line 20823
    :sswitch_20
    const/4 v0, 0x1

    .line 20824
    goto :goto_f

    .line 20833
    :sswitch_22
    iget v6, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->bitField0_:I

    .line 20834
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->clientLoginToken_:Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_35
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_11 .. :try_end_2e} :catch_2f
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_2e} :catch_6a

    goto :goto_f

    .line 20878
    .end local v5           #tag:I
    :catch_2f
    move-exception v1

    .line 20879
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_30
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_35

    .line 20884
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_35
    move-exception v6

    and-int/lit8 v7, v4, 0x2

    if-ne v7, v8, :cond_43

    .line 20885
    new-instance v7, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v8, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->callId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v7, v8}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->callId_:Lcom/google/protobuf/LazyStringList;

    .line 20887
    :cond_43
    and-int/lit8 v7, v4, 0x4

    if-ne v7, v9, :cond_4f

    .line 20888
    iget-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->format_:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->format_:Ljava/util/List;

    .line 20890
    :cond_4f
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->makeExtensionsImmutable()V

    throw v6

    .line 20838
    .restart local v5       #tag:I
    :sswitch_53
    and-int/lit8 v6, v4, 0x2

    if-eq v6, v8, :cond_60

    .line 20839
    :try_start_57
    new-instance v6, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v6}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->callId_:Lcom/google/protobuf/LazyStringList;

    .line 20840
    or-int/lit8 v4, v4, 0x2

    .line 20842
    :cond_60
    iget-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->callId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V
    :try_end_69
    .catchall {:try_start_57 .. :try_end_69} :catchall_35
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_57 .. :try_end_69} :catch_2f
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_69} :catch_6a

    goto :goto_f

    .line 20880
    .end local v5           #tag:I
    :catch_6a
    move-exception v1

    .line 20881
    .local v1, e:Ljava/io/IOException;
    :try_start_6b
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_79
    .catchall {:try_start_6b .. :try_end_79} :catchall_35

    .line 20846
    .end local v1           #e:Ljava/io/IOException;
    .restart local v5       #tag:I
    :sswitch_79
    and-int/lit8 v6, v4, 0x4

    if-eq v6, v9, :cond_86

    .line 20847
    :try_start_7d
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->format_:Ljava/util/List;

    .line 20848
    or-int/lit8 v4, v4, 0x4

    .line 20850
    :cond_86
    iget-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->format_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 20854
    :sswitch_95
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v2

    .line 20855
    .local v2, length:I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v3

    .line 20856
    .local v3, limit:I
    and-int/lit8 v6, v4, 0x4

    if-eq v6, v9, :cond_b0

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_b0

    .line 20857
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->format_:Ljava/util/List;

    .line 20858
    or-int/lit8 v4, v4, 0x4

    .line 20860
    :cond_b0
    :goto_b0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_c4

    .line 20861
    iget-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->format_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b0

    .line 20863
    :cond_c4
    invoke-virtual {p1, v3}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_f

    .line 20867
    .end local v2           #length:I
    .end local v3           #limit:I
    :sswitch_c9
    iget v6, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->bitField0_:I

    .line 20868
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->startOffset_:J

    goto/16 :goto_f

    .line 20872
    :sswitch_d7
    iget v6, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->bitField0_:I

    .line 20873
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->endOffset_:J
    :try_end_e3
    .catchall {:try_start_7d .. :try_end_e3} :catchall_35
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_7d .. :try_end_e3} :catch_2f
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_e3} :catch_6a

    goto/16 :goto_f

    .line 20884
    .end local v5           #tag:I
    :cond_e5
    and-int/lit8 v6, v4, 0x2

    if-ne v6, v8, :cond_f2

    .line 20885
    new-instance v6, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->callId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v6, v7}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->callId_:Lcom/google/protobuf/LazyStringList;

    .line 20887
    :cond_f2
    and-int/lit8 v6, v4, 0x4

    if-ne v6, v9, :cond_fe

    .line 20888
    iget-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->format_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->format_:Ljava/util/List;

    .line 20890
    :cond_fe
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->makeExtensionsImmutable()V

    .line 20892
    return-void

    .line 20821
    :sswitch_data_102
    .sparse-switch
        0x0 -> :sswitch_20
        0xa -> :sswitch_22
        0x12 -> :sswitch_53
        0x18 -> :sswitch_79
        0x1a -> :sswitch_95
        0x20 -> :sswitch_c9
        0x28 -> :sswitch_d7
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
    .line 20792
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 20797
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 21001
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->memoizedIsInitialized:B

    .line 21034
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->memoizedSerializedSize:I

    .line 20799
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20792
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 20800
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21001
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->memoizedIsInitialized:B

    .line 21034
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->memoizedSerializedSize:I

    .line 20800
    return-void
.end method

.method static synthetic access$25000(Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20792
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$25002(Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20792
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->clientLoginToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$25100(Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20792
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->callId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$25102(Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20792
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->callId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$25200(Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20792
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->format_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$25202(Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20792
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->format_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$25302(Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20792
    iput-wide p1, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->startOffset_:J

    return-wide p1
.end method

.method static synthetic access$25402(Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20792
    iput-wide p1, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->endOffset_:J

    return-wide p1
.end method

.method static synthetic access$25502(Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20792
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;
    .registers 1

    .prologue
    .line 20804
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 20995
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 20996
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->callId_:Lcom/google/protobuf/LazyStringList;

    .line 20997
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->format_:Ljava/util/List;

    .line 20998
    iput-wide v1, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->startOffset_:J

    .line 20999
    iput-wide v1, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->endOffset_:J

    .line 21000
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;
    .registers 1

    .prologue
    .line 21133
    #calls: Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->access$24800()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 21136
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21113
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21119
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21083
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21089
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21124
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21130
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21103
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21109
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21093
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21099
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;

    return-object v0
.end method


# virtual methods
.method public getCallId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 20953
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->callId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCallIdBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 20957
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->callId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCallIdCount()I
    .registers 2

    .prologue
    .line 20950
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->callId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getCallIdList()Ljava/util/List;
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
    .line 20947
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->callId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getClientLoginToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 20916
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 20917
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 20918
    check-cast v1, Ljava/lang/String;

    .line 20926
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 20920
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 20922
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 20923
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 20924
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->clientLoginToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 20926
    goto :goto_8
.end method

.method public getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 20931
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 20932
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 20933
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 20935
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->clientLoginToken_:Ljava/lang/Object;

    .line 20938
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;
    .registers 2

    .prologue
    .line 20808
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20792
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;

    move-result-object v0

    return-object v0
.end method

.method public getEndOffset()J
    .registers 3

    .prologue
    .line 20991
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->endOffset_:J

    return-wide v0
.end method

.method public getFormat(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 20971
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->format_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getFormatCount()I
    .registers 2

    .prologue
    .line 20968
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->format_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFormatList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20965
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->format_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20905
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 21036
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->memoizedSerializedSize:I

    .line 21037
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_9

    move v3, v2

    .line 21071
    .end local v2           #size:I
    .local v3, size:I
    :goto_8
    return v3

    .line 21039
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_9
    const/4 v2, 0x0

    .line 21040
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_19

    .line 21041
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 21045
    :cond_19
    const/4 v0, 0x0

    .line 21046
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1b
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->callId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_31

    .line 21047
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->callId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 21046
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 21050
    :cond_31
    add-int/2addr v2, v0

    .line 21051
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->getCallIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 21054
    const/4 v0, 0x0

    .line 21055
    const/4 v1, 0x0

    :goto_3f
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->format_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_5b

    .line 21056
    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->format_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 21055
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 21059
    :cond_5b
    add-int/2addr v2, v0

    .line 21060
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->getFormatList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 21062
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_75

    .line 21063
    iget-wide v4, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->startOffset_:J

    invoke-static {v6, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 21066
    :cond_75
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v6, :cond_83

    .line 21067
    const/4 v4, 0x5

    iget-wide v5, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->endOffset_:J

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v2, v4

    .line 21070
    :cond_83
    iput v2, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->memoizedSerializedSize:I

    move v3, v2

    .line 21071
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_8
.end method

.method public getStartOffset()J
    .registers 3

    .prologue
    .line 20981
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->startOffset_:J

    return-wide v0
.end method

.method public hasClientLoginToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 20913
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasEndOffset()Z
    .registers 3

    .prologue
    .line 20988
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->bitField0_:I

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

.method public hasStartOffset()Z
    .registers 3

    .prologue
    .line 20978
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->bitField0_:I

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
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 21003
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->memoizedIsInitialized:B

    .line 21004
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 21011
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 21004
    goto :goto_9

    .line 21006
    :cond_c
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->hasClientLoginToken()Z

    move-result v3

    if-nez v3, :cond_16

    .line 21007
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 21008
    goto :goto_9

    .line 21010
    :cond_16
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;
    .registers 2

    .prologue
    .line 21134
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 20792
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;
    .registers 2

    .prologue
    .line 21138
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;)Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 20792
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest$Builder;

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
    .line 21077
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

    .line 21016
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->getSerializedSize()I

    .line 21017
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_13

    .line 21018
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 21020
    :cond_13
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->callId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 21021
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->callId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 21020
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 21023
    :cond_28
    const/4 v0, 0x0

    :goto_29
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->format_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_44

    .line 21024
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->format_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 21023
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 21026
    :cond_44
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_4f

    .line 21027
    iget-wide v1, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->startOffset_:J

    invoke-virtual {p1, v4, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 21029
    :cond_4f
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_5b

    .line 21030
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/grandcentral/api2/Api2$ApiFetchRecordingRequest;->endOffset_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 21032
    :cond_5b
    return-void
.end method
