.class public final Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiConversationLabelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiConversationLabel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;
    }
.end annotation


# static fields
.field public static final LABEL_FIELD_NUMBER:I = 0x1

.field public static final LAST_MODIFIED_TIMESTAMP_FIELD_NUMBER:I = 0x5

.field public static final NAME_FIELD_NUMBER:I = 0x4

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOTAL_COUNT_FIELD_NUMBER:I = 0x2

.field public static final UNREAD_COUNT_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;


# instance fields
.field private bitField0_:I

.field private label_:Ljava/lang/Object;

.field private lastModifiedTimestamp_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private totalCount_:I

.field private unreadCount_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 918
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->PARSER:Lcom/google/protobuf/Parser;

    .line 1480
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    .line 1481
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->initFields()V

    .line 1482
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

    .line 864
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1037
    iput-byte v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->memoizedIsInitialized:B

    .line 1078
    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->memoizedSerializedSize:I

    .line 865
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->initFields()V

    .line 866
    const/4 v2, 0x0

    .line 868
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 869
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_7b

    .line 870
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 871
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_80

    .line 876
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 878
    const/4 v0, 0x1

    goto :goto_d

    .line 873
    :sswitch_1e
    const/4 v0, 0x1

    .line 874
    goto :goto_d

    .line 883
    :sswitch_20
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->bitField0_:I

    .line 884
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->label_:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 909
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 910
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 915
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->makeExtensionsImmutable()V

    throw v4

    .line 888
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->bitField0_:I

    .line 889
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result v4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->totalCount_:I
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 911
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 912
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

    .line 893
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_54
    :try_start_54
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->bitField0_:I

    .line 894
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result v4

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->unreadCount_:I

    goto :goto_d

    .line 898
    :sswitch_61
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->bitField0_:I

    .line 899
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->name_:Ljava/lang/Object;

    goto :goto_d

    .line 903
    :sswitch_6e
    iget v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->bitField0_:I

    .line 904
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->lastModifiedTimestamp_:J
    :try_end_7a
    .catchall {:try_start_54 .. :try_end_7a} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_54 .. :try_end_7a} :catch_2d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_7a} :catch_45

    goto :goto_d

    .line 915
    .end local v3           #tag:I
    :cond_7b
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->makeExtensionsImmutable()V

    .line 917
    return-void

    .line 871
    nop

    :sswitch_data_80
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x15 -> :sswitch_38
        0x1d -> :sswitch_54
        0x22 -> :sswitch_61
        0x28 -> :sswitch_6e
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
    .line 842
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 847
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1037
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->memoizedIsInitialized:B

    .line 1078
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->memoizedSerializedSize:I

    .line 849
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 842
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 850
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1037
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->memoizedIsInitialized:B

    .line 1078
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->memoizedSerializedSize:I

    .line 850
    return-void
.end method

.method static synthetic access$1200(Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 842
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->label_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 842
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->label_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 842
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->totalCount_:I

    return p1
.end method

.method static synthetic access$1402(Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 842
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->unreadCount_:I

    return p1
.end method

.method static synthetic access$1500(Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 842
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 842
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 842
    iput-wide p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->lastModifiedTimestamp_:J

    return-wide p1
.end method

.method static synthetic access$1702(Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 842
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;
    .registers 1

    .prologue
    .line 854
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1031
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->label_:Ljava/lang/Object;

    .line 1032
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->totalCount_:I

    .line 1033
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->unreadCount_:I

    .line 1034
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->name_:Ljava/lang/Object;

    .line 1035
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->lastModifiedTimestamp_:J

    .line 1036
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;
    .registers 1

    .prologue
    .line 1167
    #calls: Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->access$1000()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 1170
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1147
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1153
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1117
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1123
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1158
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1164
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1137
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1143
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1127
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1133
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;
    .registers 2

    .prologue
    .line 858
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 842
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 5

    .prologue
    .line 941
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->label_:Ljava/lang/Object;

    .line 942
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 943
    check-cast v1, Ljava/lang/String;

    .line 951
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 945
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 947
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 948
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 949
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->label_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 951
    goto :goto_8
.end method

.method public getLabelBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 956
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->label_:Ljava/lang/Object;

    .line 957
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 958
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 960
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->label_:Ljava/lang/Object;

    .line 963
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

.method public getLastModifiedTimestamp()J
    .registers 3

    .prologue
    .line 1027
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->lastModifiedTimestamp_:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 994
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->name_:Ljava/lang/Object;

    .line 995
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 996
    check-cast v1, Ljava/lang/String;

    .line 1004
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 998
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1000
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1001
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1002
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->name_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1004
    goto :goto_8
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1009
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->name_:Ljava/lang/Object;

    .line 1010
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1011
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1013
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->name_:Ljava/lang/Object;

    .line 1016
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
            "Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 930
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1080
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->memoizedSerializedSize:I

    .line 1081
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 1105
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 1083
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 1084
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 1085
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1088
    :cond_1a
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_27

    .line 1089
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->totalCount_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1092
    :cond_27
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_35

    .line 1093
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->unreadCount_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1096
    :cond_35
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_46

    .line 1097
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1100
    :cond_46
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_56

    .line 1101
    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->lastModifiedTimestamp_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1104
    :cond_56
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->memoizedSerializedSize:I

    move v1, v0

    .line 1105
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getTotalCount()I
    .registers 2

    .prologue
    .line 974
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->totalCount_:I

    return v0
.end method

.method public getUnreadCount()I
    .registers 2

    .prologue
    .line 984
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->unreadCount_:I

    return v0
.end method

.method public hasLabel()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 938
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->bitField0_:I

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
    .line 1024
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->bitField0_:I

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

.method public hasName()Z
    .registers 3

    .prologue
    .line 991
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->bitField0_:I

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

.method public hasTotalCount()Z
    .registers 3

    .prologue
    .line 971
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->bitField0_:I

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

.method public hasUnreadCount()Z
    .registers 3

    .prologue
    .line 981
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->bitField0_:I

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

    .line 1039
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->memoizedIsInitialized:B

    .line 1040
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_d

    if-ne v0, v1, :cond_b

    :goto_9
    move v2, v1

    .line 1055
    :goto_a
    return v2

    :cond_b
    move v1, v2

    .line 1040
    goto :goto_9

    .line 1042
    :cond_d
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->hasLabel()Z

    move-result v3

    if-nez v3, :cond_16

    .line 1043
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->memoizedIsInitialized:B

    goto :goto_a

    .line 1046
    :cond_16
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->hasTotalCount()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 1047
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->memoizedIsInitialized:B

    goto :goto_a

    .line 1050
    :cond_1f
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->hasUnreadCount()Z

    move-result v3

    if-nez v3, :cond_28

    .line 1051
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->memoizedIsInitialized:B

    goto :goto_a

    .line 1054
    :cond_28
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->memoizedIsInitialized:B

    move v2, v1

    .line 1055
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;
    .registers 2

    .prologue
    .line 1168
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 842
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;
    .registers 2

    .prologue
    .line 1172
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 842
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

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
    .line 1111
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

    .line 1060
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->getSerializedSize()I

    .line 1061
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 1062
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1064
    :cond_13
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1e

    .line 1065
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->totalCount_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32(II)V

    .line 1067
    :cond_1e
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2a

    .line 1068
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->unreadCount_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32(II)V

    .line 1070
    :cond_2a
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_39

    .line 1071
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1073
    :cond_39
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_47

    .line 1074
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->lastModifiedTimestamp_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1076
    :cond_47
    return-void
.end method
