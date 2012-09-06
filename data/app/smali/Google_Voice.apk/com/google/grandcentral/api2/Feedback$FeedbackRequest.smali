.class public final Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Feedback.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Feedback$FeedbackRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Feedback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FeedbackRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;
    }
.end annotation


# static fields
.field public static final APP_PLATFORM_FIELD_NUMBER:I = 0x1

.field public static final APP_VERSION_FIELD_NUMBER:I = 0x2

.field public static final CALL_QUALITY_FIELD_NUMBER:I = 0x4

.field public static final COMMENTS_FIELD_NUMBER:I = 0x5

.field public static final LOGS_FIELD_NUMBER:I = 0x6

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIP_STACK_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;


# instance fields
.field private appPlatform_:Ljava/lang/Object;

.field private appVersion_:Ljava/lang/Object;

.field private bitField0_:I

.field private callQuality_:I

.field private comments_:Ljava/lang/Object;

.field private logs_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private sipStack_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 129
    new-instance v0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 902
    new-instance v0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->defaultInstance:Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;

    .line 903
    sget-object v0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->defaultInstance:Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->initFields()V

    .line 904
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

    .line 70
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 328
    iput-byte v4, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->memoizedIsInitialized:B

    .line 368
    iput v4, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->memoizedSerializedSize:I

    .line 71
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->initFields()V

    .line 72
    const/4 v2, 0x0

    .line 74
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 75
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_88

    .line 76
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 77
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_8c

    .line 82
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 84
    const/4 v0, 0x1

    goto :goto_d

    .line 79
    :sswitch_1e
    const/4 v0, 0x1

    .line 80
    goto :goto_d

    .line 89
    :sswitch_20
    iget v4, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->bitField0_:I

    .line 90
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->appPlatform_:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 120
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 121
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 126
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->makeExtensionsImmutable()V

    throw v4

    .line 94
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->bitField0_:I

    .line 95
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->appVersion_:Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 122
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 123
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

    .line 99
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_54
    :try_start_54
    iget v4, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->bitField0_:I

    .line 100
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->sipStack_:Ljava/lang/Object;

    goto :goto_d

    .line 104
    :sswitch_61
    iget v4, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->bitField0_:I

    .line 105
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->callQuality_:I

    goto :goto_d

    .line 109
    :sswitch_6e
    iget v4, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->bitField0_:I

    .line 110
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->comments_:Ljava/lang/Object;

    goto :goto_d

    .line 114
    :sswitch_7b
    iget v4, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->bitField0_:I

    .line 115
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->logs_:Ljava/lang/Object;
    :try_end_87
    .catchall {:try_start_54 .. :try_end_87} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_54 .. :try_end_87} :catch_2d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_87} :catch_45

    goto :goto_d

    .line 126
    .end local v3           #tag:I
    :cond_88
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->makeExtensionsImmutable()V

    .line 128
    return-void

    .line 77
    :sswitch_data_8c
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x12 -> :sswitch_38
        0x1a -> :sswitch_54
        0x20 -> :sswitch_61
        0x2a -> :sswitch_6e
        0x32 -> :sswitch_7b
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/grandcentral/api2/Feedback$1;)V
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
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 53
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 328
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->memoizedIsInitialized:B

    .line 368
    iput v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->memoizedSerializedSize:I

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Feedback$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 56
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 328
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->memoizedIsInitialized:B

    .line 368
    iput v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->memoizedSerializedSize:I

    .line 56
    return-void
.end method

.method static synthetic access$300(Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->appPlatform_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->appPlatform_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->appVersion_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->appVersion_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->sipStack_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->sipStack_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->callQuality_:I

    return p1
.end method

.method static synthetic access$700(Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->comments_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->comments_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->logs_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->logs_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->defaultInstance:Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 321
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->appPlatform_:Ljava/lang/Object;

    .line 322
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->appVersion_:Ljava/lang/Object;

    .line 323
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->sipStack_:Ljava/lang/Object;

    .line 324
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->callQuality_:I

    .line 325
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->comments_:Ljava/lang/Object;

    .line 326
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->logs_:Ljava/lang/Object;

    .line 327
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;
    .registers 1

    .prologue
    .line 461
    #calls: Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->create()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->access$100()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;)Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 464
    invoke-static {}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->newBuilder()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;)Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 441
    sget-object v0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 447
    sget-object v0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 411
    sget-object v0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 417
    sget-object v0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 452
    sget-object v0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 458
    sget-object v0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 431
    sget-object v0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 437
    sget-object v0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 421
    sget-object v0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 427
    sget-object v0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;

    return-object v0
.end method


# virtual methods
.method public getAppPlatform()Ljava/lang/String;
    .registers 5

    .prologue
    .line 152
    iget-object v1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->appPlatform_:Ljava/lang/Object;

    .line 153
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 154
    check-cast v1, Ljava/lang/String;

    .line 162
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 156
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 158
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 160
    iput-object v2, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->appPlatform_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 162
    goto :goto_8
.end method

.method public getAppPlatformBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 167
    iget-object v1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->appPlatform_:Ljava/lang/Object;

    .line 168
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 169
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 171
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->appPlatform_:Ljava/lang/Object;

    .line 174
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

.method public getAppVersion()Ljava/lang/String;
    .registers 5

    .prologue
    .line 185
    iget-object v1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->appVersion_:Ljava/lang/Object;

    .line 186
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 187
    check-cast v1, Ljava/lang/String;

    .line 195
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 189
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 191
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 193
    iput-object v2, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->appVersion_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 195
    goto :goto_8
.end method

.method public getAppVersionBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 200
    iget-object v1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->appVersion_:Ljava/lang/Object;

    .line 201
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 202
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 204
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->appVersion_:Ljava/lang/Object;

    .line 207
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

.method public getCallQuality()I
    .registers 2

    .prologue
    .line 251
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->callQuality_:I

    return v0
.end method

.method public getComments()Ljava/lang/String;
    .registers 5

    .prologue
    .line 261
    iget-object v1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->comments_:Ljava/lang/Object;

    .line 262
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 263
    check-cast v1, Ljava/lang/String;

    .line 271
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 265
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 267
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 269
    iput-object v2, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->comments_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 271
    goto :goto_8
.end method

.method public getCommentsBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 276
    iget-object v1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->comments_:Ljava/lang/Object;

    .line 277
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 278
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 280
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->comments_:Ljava/lang/Object;

    .line 283
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

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;
    .registers 2

    .prologue
    .line 64
    sget-object v0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->defaultInstance:Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;

    move-result-object v0

    return-object v0
.end method

.method public getLogs()Ljava/lang/String;
    .registers 5

    .prologue
    .line 294
    iget-object v1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->logs_:Ljava/lang/Object;

    .line 295
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 296
    check-cast v1, Ljava/lang/String;

    .line 304
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 298
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 300
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 302
    iput-object v2, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->logs_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 304
    goto :goto_8
.end method

.method public getLogsBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 309
    iget-object v1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->logs_:Ljava/lang/Object;

    .line 310
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 311
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 313
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->logs_:Ljava/lang/Object;

    .line 316
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
            "Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    sget-object v0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 370
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->memoizedSerializedSize:I

    .line 371
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 399
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 373
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 374
    iget v2, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 375
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->getAppPlatformBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 378
    :cond_1a
    iget v2, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 379
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->getAppVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 382
    :cond_29
    iget v2, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_39

    .line 383
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->getSipStackBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 386
    :cond_39
    iget v2, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_48

    .line 387
    iget v2, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->callQuality_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 390
    :cond_48
    iget v2, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5a

    .line 391
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->getCommentsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 394
    :cond_5a
    iget v2, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6c

    .line 395
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->getLogsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 398
    :cond_6c
    iput v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 399
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getSipStack()Ljava/lang/String;
    .registers 5

    .prologue
    .line 218
    iget-object v1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->sipStack_:Ljava/lang/Object;

    .line 219
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 220
    check-cast v1, Ljava/lang/String;

    .line 228
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 222
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 224
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 226
    iput-object v2, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->sipStack_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 228
    goto :goto_8
.end method

.method public getSipStackBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 233
    iget-object v1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->sipStack_:Ljava/lang/Object;

    .line 234
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 235
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 237
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->sipStack_:Ljava/lang/Object;

    .line 240
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

.method public hasAppPlatform()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 149
    iget v1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasAppVersion()Z
    .registers 3

    .prologue
    .line 182
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->bitField0_:I

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

.method public hasCallQuality()Z
    .registers 3

    .prologue
    .line 248
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->bitField0_:I

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

.method public hasComments()Z
    .registers 3

    .prologue
    .line 258
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->bitField0_:I

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

.method public hasLogs()Z
    .registers 3

    .prologue
    .line 291
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->bitField0_:I

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

.method public hasSipStack()Z
    .registers 3

    .prologue
    .line 215
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->bitField0_:I

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

    .line 330
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->memoizedIsInitialized:B

    .line 331
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 342
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 331
    goto :goto_9

    .line 333
    :cond_c
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->hasAppPlatform()Z

    move-result v3

    if-nez v3, :cond_16

    .line 334
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 335
    goto :goto_9

    .line 337
    :cond_16
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->hasAppVersion()Z

    move-result v3

    if-nez v3, :cond_20

    .line 338
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 339
    goto :goto_9

    .line 341
    :cond_20
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;
    .registers 2

    .prologue
    .line 462
    invoke-static {}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->newBuilder()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->newBuilderForType()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;
    .registers 2

    .prologue
    .line 466
    invoke-static {p0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->newBuilder(Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;)Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->toBuilder()Lcom/google/grandcentral/api2/Feedback$FeedbackRequest$Builder;

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
    .line 405
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

    .line 347
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->getSerializedSize()I

    .line 348
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 349
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->getAppPlatformBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 351
    :cond_13
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 352
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->getAppVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 354
    :cond_20
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 355
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->getSipStackBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 357
    :cond_2e
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3b

    .line 358
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->callQuality_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 360
    :cond_3b
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4b

    .line 361
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->getCommentsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 363
    :cond_4b
    iget v0, p0, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5b

    .line 364
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Feedback$FeedbackRequest;->getLogsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 366
    :cond_5b
    return-void
.end method
