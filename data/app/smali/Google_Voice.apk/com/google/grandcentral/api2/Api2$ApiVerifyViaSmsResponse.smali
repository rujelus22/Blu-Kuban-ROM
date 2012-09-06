.class public final Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiVerifyViaSmsResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final SMS_DESTINATION_FIELD_NUMBER:I = 0x2

.field public static final STATUS_FIELD_NUMBER:I = 0x1

.field public static final VERIFICATION_TOKEN_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private smsDestination_:Ljava/lang/Object;

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

.field private verificationToken_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27762
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 28258
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;

    .line 28259
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->initFields()V

    .line 28260
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
    const/4 v5, -0x1

    .line 27710
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 27859
    iput-byte v5, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->memoizedIsInitialized:B

    .line 27898
    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->memoizedSerializedSize:I

    .line 27711
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->initFields()V

    .line 27712
    const/4 v2, 0x0

    .line 27714
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 27715
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_80

    .line 27716
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 27717
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_84

    .line 27722
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_d

    .line 27724
    const/4 v0, 0x1

    goto :goto_d

    .line 27719
    :sswitch_1e
    const/4 v0, 0x1

    .line 27720
    goto :goto_d

    .line 27729
    :sswitch_20
    const/4 v3, 0x0

    .line 27730
    .local v3, subBuilder:Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2e

    .line 27731
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {v5}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v3

    .line 27733
    :cond_2e
    sget-object v5, Lcom/google/grandcentral/api2/Api2$ApiStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/grandcentral/api2/Api2$ApiStatus;

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 27734
    if-eqz v3, :cond_45

    .line 27735
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {v3, v5}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    .line 27736
    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 27738
    :cond_45
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->bitField0_:I
    :try_end_4b
    .catchall {:try_start_f .. :try_end_4b} :catchall_52
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_4b} :catch_4c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_4b} :catch_64

    goto :goto_d

    .line 27753
    .end local v3           #subBuilder:Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    .end local v4           #tag:I
    :catch_4c
    move-exception v1

    .line 27754
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_4d
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_52

    .line 27759
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_52
    move-exception v5

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->makeExtensionsImmutable()V

    throw v5

    .line 27742
    .restart local v4       #tag:I
    :sswitch_57
    :try_start_57
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->bitField0_:I

    .line 27743
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->smsDestination_:Ljava/lang/Object;
    :try_end_63
    .catchall {:try_start_57 .. :try_end_63} :catchall_52
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_57 .. :try_end_63} :catch_4c
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_63} :catch_64

    goto :goto_d

    .line 27755
    .end local v4           #tag:I
    :catch_64
    move-exception v1

    .line 27756
    .local v1, e:Ljava/io/IOException;
    :try_start_65
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_73
    .catchall {:try_start_65 .. :try_end_73} :catchall_52

    .line 27747
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_73
    :try_start_73
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->bitField0_:I

    .line 27748
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->verificationToken_:Ljava/lang/Object;
    :try_end_7f
    .catchall {:try_start_73 .. :try_end_7f} :catchall_52
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_73 .. :try_end_7f} :catch_4c
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_7f} :catch_64

    goto :goto_d

    .line 27759
    .end local v4           #tag:I
    :cond_80
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->makeExtensionsImmutable()V

    .line 27761
    return-void

    .line 27717
    :sswitch_data_84
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x12 -> :sswitch_57
        0x1a -> :sswitch_73
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
    .line 27688
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 27693
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 27859
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->memoizedIsInitialized:B

    .line 27898
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->memoizedSerializedSize:I

    .line 27695
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27688
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 27696
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 27859
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->memoizedIsInitialized:B

    .line 27898
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->memoizedSerializedSize:I

    .line 27696
    return-void
.end method

.method static synthetic access$33602(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27688
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object p1
.end method

.method static synthetic access$33700(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27688
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->smsDestination_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$33702(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27688
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->smsDestination_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$33800(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27688
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->verificationToken_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$33802(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27688
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->verificationToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$33902(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27688
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;
    .registers 1

    .prologue
    .line 27700
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 27855
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 27856
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->smsDestination_:Ljava/lang/Object;

    .line 27857
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->verificationToken_:Ljava/lang/Object;

    .line 27858
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;
    .registers 1

    .prologue
    .line 27979
    #calls: Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->access$33400()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 27982
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27959
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27965
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 27929
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 27935
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27970
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27976
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27949
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27955
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 27939
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 27945
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;
    .registers 2

    .prologue
    .line 27704
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 27688
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;

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
            "Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27774
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 27900
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->memoizedSerializedSize:I

    .line 27901
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 27917
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 27903
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 27904
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 27905
    iget-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 27908
    :cond_17
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 27909
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->getSmsDestinationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 27912
    :cond_26
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_37

    .line 27913
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->getVerificationTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 27916
    :cond_37
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 27917
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getSmsDestination()Ljava/lang/String;
    .registers 5

    .prologue
    .line 27795
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->smsDestination_:Ljava/lang/Object;

    .line 27796
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 27797
    check-cast v1, Ljava/lang/String;

    .line 27805
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 27799
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 27801
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 27802
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 27803
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->smsDestination_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 27805
    goto :goto_8
.end method

.method public getSmsDestinationBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 27810
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->smsDestination_:Ljava/lang/Object;

    .line 27811
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 27812
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 27814
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->smsDestination_:Ljava/lang/Object;

    .line 27817
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

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 27785
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public getVerificationToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 27828
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->verificationToken_:Ljava/lang/Object;

    .line 27829
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 27830
    check-cast v1, Ljava/lang/String;

    .line 27838
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 27832
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 27834
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 27835
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 27836
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->verificationToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 27838
    goto :goto_8
.end method

.method public getVerificationTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 27843
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->verificationToken_:Ljava/lang/Object;

    .line 27844
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 27845
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 27847
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->verificationToken_:Ljava/lang/Object;

    .line 27850
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

.method public hasSmsDestination()Z
    .registers 3

    .prologue
    .line 27792
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->bitField0_:I

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

    .line 27782
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasVerificationToken()Z
    .registers 3

    .prologue
    .line 27825
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->bitField0_:I

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

    .line 27861
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->memoizedIsInitialized:B

    .line 27862
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_d

    if-ne v0, v1, :cond_b

    :goto_9
    move v2, v1

    .line 27881
    :goto_a
    return v2

    :cond_b
    move v1, v2

    .line 27862
    goto :goto_9

    .line 27864
    :cond_d
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->hasStatus()Z

    move-result v3

    if-nez v3, :cond_16

    .line 27865
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 27868
    :cond_16
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->hasSmsDestination()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 27869
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 27872
    :cond_1f
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->hasVerificationToken()Z

    move-result v3

    if-nez v3, :cond_28

    .line 27873
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 27876
    :cond_28
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_35

    .line 27877
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 27880
    :cond_35
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->memoizedIsInitialized:B

    move v2, v1

    .line 27881
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;
    .registers 2

    .prologue
    .line 27980
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 27688
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;
    .registers 2

    .prologue
    .line 27984
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;)Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 27688
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse$Builder;

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
    .line 27923
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
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 27886
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->getSerializedSize()I

    .line 27887
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 27888
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 27890
    :cond_10
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 27891
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->getSmsDestinationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 27893
    :cond_1d
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2c

    .line 27894
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVerifyViaSmsResponse;->getVerificationTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 27896
    :cond_2c
    return-void
.end method
