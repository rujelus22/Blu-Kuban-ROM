.class public final Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Event.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GoogleVoiceDialerEventInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;,
        Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;,
        Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;
    }
.end annotation


# static fields
.field public static final ACTION_FIELD_NUMBER:I = 0x1

.field public static final COUNT_FIELD_NUMBER:I = 0x5

.field public static final DURATION_FIELD_NUMBER:I = 0x3

.field public static final LABEL_FIELD_NUMBER:I = 0x4

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final POSITION_FIELD_NUMBER:I = 0x2

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x6

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;


# instance fields
.field private action_:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

.field private bitField0_:I

.field private count_:J

.field private duration_:J

.field private label_:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private position_:J

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 127
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 992
    new-instance v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->defaultInstance:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;

    .line 993
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->defaultInstance:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->initFields()V

    .line 994
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
    const/4 v6, -0x1

    .line 60
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 590
    iput-byte v6, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->memoizedIsInitialized:B

    .line 626
    iput v6, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->memoizedSerializedSize:I

    .line 61
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->initFields()V

    .line 62
    const/4 v2, 0x0

    .line 64
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 65
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_95

    .line 66
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 67
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_9a

    .line 72
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_d

    .line 74
    const/4 v0, 0x1

    goto :goto_d

    .line 69
    :sswitch_1e
    const/4 v0, 0x1

    .line 70
    goto :goto_d

    .line 79
    :sswitch_20
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 80
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->valueOf(I)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    move-result-object v5

    .line 81
    .local v5, value:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;
    if-eqz v5, :cond_d

    .line 82
    iget v6, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->bitField0_:I

    .line 83
    iput-object v5, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->action_:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;
    :try_end_32
    .catchall {:try_start_f .. :try_end_32} :catchall_39
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_32} :catch_33
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_32} :catch_4b

    goto :goto_d

    .line 118
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v5           #value:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;
    :catch_33
    move-exception v1

    .line 119
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_34
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_39

    .line 124
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_39
    move-exception v6

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->makeExtensionsImmutable()V

    throw v6

    .line 88
    .restart local v4       #tag:I
    :sswitch_3e
    :try_start_3e
    iget v6, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->bitField0_:I

    .line 89
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->position_:J
    :try_end_4a
    .catchall {:try_start_3e .. :try_end_4a} :catchall_39
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3e .. :try_end_4a} :catch_33
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_4a} :catch_4b

    goto :goto_d

    .line 120
    .end local v4           #tag:I
    :catch_4b
    move-exception v1

    .line 121
    .local v1, e:Ljava/io/IOException;
    :try_start_4c
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_5a
    .catchall {:try_start_4c .. :try_end_5a} :catchall_39

    .line 93
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_5a
    :try_start_5a
    iget v6, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->bitField0_:I

    .line 94
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->duration_:J

    goto :goto_d

    .line 98
    :sswitch_67
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 99
    .restart local v3       #rawValue:I
    invoke-static {v3}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->valueOf(I)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    move-result-object v5

    .line 100
    .local v5, value:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;
    if-eqz v5, :cond_d

    .line 101
    iget v6, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->bitField0_:I

    .line 102
    iput-object v5, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->label_:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    goto :goto_d

    .line 107
    .end local v3           #rawValue:I
    .end local v5           #value:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;
    :sswitch_7a
    iget v6, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->bitField0_:I

    .line 108
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->count_:J

    goto :goto_d

    .line 112
    :sswitch_87
    iget v6, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->bitField0_:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->bitField0_:I

    .line 113
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->timestamp_:J
    :try_end_93
    .catchall {:try_start_5a .. :try_end_93} :catchall_39
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5a .. :try_end_93} :catch_33
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_93} :catch_4b

    goto/16 :goto_d

    .line 124
    .end local v4           #tag:I
    :cond_95
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->makeExtensionsImmutable()V

    .line 126
    return-void

    .line 67
    nop

    :sswitch_data_9a
    .sparse-switch
        0x0 -> :sswitch_1e
        0x8 -> :sswitch_20
        0x10 -> :sswitch_3e
        0x18 -> :sswitch_5a
        0x20 -> :sswitch_67
        0x28 -> :sswitch_7a
        0x30 -> :sswitch_87
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/grandcentral/api2/Event$1;)V
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
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 43
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 590
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->memoizedIsInitialized:B

    .line 626
    iput v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->memoizedSerializedSize:I

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Event$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 46
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 590
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->memoizedIsInitialized:B

    .line 626
    iput v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->memoizedSerializedSize:I

    .line 46
    return-void
.end method

.method static synthetic access$302(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->action_:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->position_:J

    return-wide p1
.end method

.method static synthetic access$502(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->duration_:J

    return-wide p1
.end method

.method static synthetic access$602(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->label_:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->count_:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$902(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->defaultInstance:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;

    return-object v0
.end method

.method private initFields()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 583
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->FIRST_STARTUP:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->action_:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    .line 584
    iput-wide v1, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->position_:J

    .line 585
    iput-wide v1, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->duration_:J

    .line 586
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->INBOX:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->label_:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    .line 587
    iput-wide v1, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->count_:J

    .line 588
    iput-wide v1, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->timestamp_:J

    .line 589
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;
    .registers 1

    .prologue
    .line 719
    #calls: Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->create()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->access$100()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 722
    invoke-static {}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->newBuilder()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 699
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 705
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 669
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 675
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 710
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 716
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 689
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 695
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 679
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 685
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;

    return-object v0
.end method


# virtual methods
.method public getAction()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;
    .registers 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->action_:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    return-object v0
.end method

.method public getCount()J
    .registers 3

    .prologue
    .line 569
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->count_:J

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;
    .registers 2

    .prologue
    .line 54
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->defaultInstance:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 549
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->duration_:J

    return-wide v0
.end method

.method public getLabel()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;
    .registers 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->label_:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    sget-object v0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPosition()J
    .registers 3

    .prologue
    .line 539
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->position_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 628
    iget v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->memoizedSerializedSize:I

    .line 629
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 657
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 631
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 632
    iget v2, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 633
    iget-object v2, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->action_:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 636
    :cond_1c
    iget v2, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 637
    iget-wide v2, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->position_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 640
    :cond_29
    iget v2, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_37

    .line 641
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->duration_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 644
    :cond_37
    iget v2, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4a

    .line 645
    iget-object v2, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->label_:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->getNumber()I

    move-result v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 648
    :cond_4a
    iget v2, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5a

    .line 649
    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->count_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 652
    :cond_5a
    iget v2, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6a

    .line 653
    const/4 v2, 0x6

    iget-wide v3, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->timestamp_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 656
    :cond_6a
    iput v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->memoizedSerializedSize:I

    move v1, v0

    .line 657
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 579
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->timestamp_:J

    return-wide v0
.end method

.method public hasAction()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 526
    iget v1, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasCount()Z
    .registers 3

    .prologue
    .line 566
    iget v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->bitField0_:I

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

.method public hasDuration()Z
    .registers 3

    .prologue
    .line 546
    iget v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->bitField0_:I

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

.method public hasLabel()Z
    .registers 3

    .prologue
    .line 556
    iget v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->bitField0_:I

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

.method public hasPosition()Z
    .registers 3

    .prologue
    .line 536
    iget v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->bitField0_:I

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

.method public hasTimestamp()Z
    .registers 3

    .prologue
    .line 576
    iget v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 592
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->memoizedIsInitialized:B

    .line 593
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 600
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 593
    goto :goto_9

    .line 595
    :cond_c
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->hasAction()Z

    move-result v3

    if-nez v3, :cond_16

    .line 596
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->memoizedIsInitialized:B

    move v1, v2

    .line 597
    goto :goto_9

    .line 599
    :cond_16
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;
    .registers 2

    .prologue
    .line 720
    invoke-static {}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->newBuilder()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->newBuilderForType()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;
    .registers 2

    .prologue
    .line 724
    invoke-static {p0}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->newBuilder(Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;)Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->toBuilder()Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Builder;

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
    .line 663
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

    .line 605
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->getSerializedSize()I

    .line 606
    iget v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 607
    iget-object v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->action_:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$ActionType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 609
    :cond_15
    iget v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 610
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->position_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 612
    :cond_20
    iget v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2c

    .line 613
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->duration_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 615
    :cond_2c
    iget v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3d

    .line 616
    iget-object v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->label_:Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo$Label;->getNumber()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 618
    :cond_3d
    iget v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4b

    .line 619
    const/4 v0, 0x5

    iget-wide v1, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->count_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 621
    :cond_4b
    iget v0, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_59

    .line 622
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/google/grandcentral/api2/Event$GoogleVoiceDialerEventInfo;->timestamp_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 624
    :cond_59
    return-void
.end method
