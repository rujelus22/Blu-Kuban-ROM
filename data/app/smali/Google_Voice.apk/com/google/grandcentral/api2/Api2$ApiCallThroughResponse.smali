.class public final Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiCallThroughResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;
    }
.end annotation


# static fields
.field public static final ACCESS_NUMBER_FIELD_NUMBER:I = 0x2

.field public static final ACCESS_NUMBER_IS_SHADOW_NUMBER_FIELD_NUMBER:I = 0x5

.field public static final CALL_COST_FIELD_NUMBER:I = 0x3

.field public static final NORMALIZED_OUTGOING_NUMBER_FIELD_NUMBER:I = 0x6

.field public static final OUTGOING_NUMBER_WAS_GV_FIELD_NUMBER:I = 0x4

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;


# instance fields
.field private accessNumberIsShadowNumber_:Z

.field private accessNumber_:Ljava/lang/Object;

.field private bitField0_:I

.field private callCost_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private normalizedOutgoingNumber_:Ljava/lang/Object;

.field private outgoingNumberWasGv_:Z

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 25608
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 26240
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;

    .line 26241
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->initFields()V

    .line 26242
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

    .line 25541
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 25738
    iput-byte v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->memoizedIsInitialized:B

    .line 25782
    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->memoizedSerializedSize:I

    .line 25542
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->initFields()V

    .line 25543
    const/4 v2, 0x0

    .line 25545
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 25546
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_a9

    .line 25547
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 25548
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_ae

    .line 25553
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_d

    .line 25555
    const/4 v0, 0x1

    goto :goto_d

    .line 25550
    :sswitch_1e
    const/4 v0, 0x1

    .line 25551
    goto :goto_d

    .line 25560
    :sswitch_20
    const/4 v3, 0x0

    .line 25561
    .local v3, subBuilder:Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2e

    .line 25562
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {v5}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v3

    .line 25564
    :cond_2e
    sget-object v5, Lcom/google/grandcentral/api2/Api2$ApiStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/grandcentral/api2/Api2$ApiStatus;

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 25565
    if-eqz v3, :cond_45

    .line 25566
    iget-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {v3, v5}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    .line 25567
    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 25569
    :cond_45
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->bitField0_:I
    :try_end_4b
    .catchall {:try_start_f .. :try_end_4b} :catchall_52
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_4b} :catch_4c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_4b} :catch_64

    goto :goto_d

    .line 25599
    .end local v3           #subBuilder:Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;
    .end local v4           #tag:I
    :catch_4c
    move-exception v1

    .line 25600
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_4d
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_52

    .line 25605
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_52
    move-exception v5

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->makeExtensionsImmutable()V

    throw v5

    .line 25573
    .restart local v4       #tag:I
    :sswitch_57
    :try_start_57
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->bitField0_:I

    .line 25574
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->accessNumber_:Ljava/lang/Object;
    :try_end_63
    .catchall {:try_start_57 .. :try_end_63} :catchall_52
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_57 .. :try_end_63} :catch_4c
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_63} :catch_64

    goto :goto_d

    .line 25601
    .end local v4           #tag:I
    :catch_64
    move-exception v1

    .line 25602
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

    .line 25578
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_73
    :try_start_73
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->bitField0_:I

    .line 25579
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->callCost_:I

    goto :goto_d

    .line 25583
    :sswitch_80
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->bitField0_:I

    .line 25584
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->outgoingNumberWasGv_:Z

    goto :goto_d

    .line 25588
    :sswitch_8d
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->bitField0_:I

    .line 25589
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->accessNumberIsShadowNumber_:Z

    goto/16 :goto_d

    .line 25593
    :sswitch_9b
    iget v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->bitField0_:I

    .line 25594
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->normalizedOutgoingNumber_:Ljava/lang/Object;
    :try_end_a7
    .catchall {:try_start_73 .. :try_end_a7} :catchall_52
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_73 .. :try_end_a7} :catch_4c
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_a7} :catch_64

    goto/16 :goto_d

    .line 25605
    .end local v4           #tag:I
    :cond_a9
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->makeExtensionsImmutable()V

    .line 25607
    return-void

    .line 25548
    nop

    :sswitch_data_ae
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x12 -> :sswitch_57
        0x18 -> :sswitch_73
        0x20 -> :sswitch_80
        0x28 -> :sswitch_8d
        0x32 -> :sswitch_9b
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
    .line 25519
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 25524
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 25738
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->memoizedIsInitialized:B

    .line 25782
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->memoizedSerializedSize:I

    .line 25526
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25519
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 25527
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 25738
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->memoizedIsInitialized:B

    .line 25782
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->memoizedSerializedSize:I

    .line 25527
    return-void
.end method

.method static synthetic access$30802(Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25519
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object p1
.end method

.method static synthetic access$30900(Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25519
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->accessNumber_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$30902(Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25519
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->accessNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$31002(Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25519
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->callCost_:I

    return p1
.end method

.method static synthetic access$31102(Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25519
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->outgoingNumberWasGv_:Z

    return p1
.end method

.method static synthetic access$31202(Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25519
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->accessNumberIsShadowNumber_:Z

    return p1
.end method

.method static synthetic access$31300(Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25519
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->normalizedOutgoingNumber_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$31302(Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25519
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->normalizedOutgoingNumber_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$31402(Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25519
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;
    .registers 1

    .prologue
    .line 25531
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 25731
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 25732
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->accessNumber_:Ljava/lang/Object;

    .line 25733
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->callCost_:I

    .line 25734
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->outgoingNumberWasGv_:Z

    .line 25735
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->accessNumberIsShadowNumber_:Z

    .line 25736
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->normalizedOutgoingNumber_:Ljava/lang/Object;

    .line 25737
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;
    .registers 1

    .prologue
    .line 25875
    #calls: Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->access$30600()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 25878
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25855
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25861
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 25825
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 25831
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25866
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25872
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25845
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25851
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 25835
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 25841
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;

    return-object v0
.end method


# virtual methods
.method public getAccessNumber()Ljava/lang/String;
    .registers 5

    .prologue
    .line 25641
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->accessNumber_:Ljava/lang/Object;

    .line 25642
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 25643
    check-cast v1, Ljava/lang/String;

    .line 25651
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 25645
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 25647
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 25648
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 25649
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->accessNumber_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 25651
    goto :goto_8
.end method

.method public getAccessNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 25656
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->accessNumber_:Ljava/lang/Object;

    .line 25657
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 25658
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 25660
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->accessNumber_:Ljava/lang/Object;

    .line 25663
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

.method public getAccessNumberIsShadowNumber()Z
    .registers 2

    .prologue
    .line 25694
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->accessNumberIsShadowNumber_:Z

    return v0
.end method

.method public getCallCost()I
    .registers 2

    .prologue
    .line 25674
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->callCost_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;
    .registers 2

    .prologue
    .line 25535
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 25519
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;

    move-result-object v0

    return-object v0
.end method

.method public getNormalizedOutgoingNumber()Ljava/lang/String;
    .registers 5

    .prologue
    .line 25704
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->normalizedOutgoingNumber_:Ljava/lang/Object;

    .line 25705
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 25706
    check-cast v1, Ljava/lang/String;

    .line 25714
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 25708
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 25710
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 25711
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 25712
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->normalizedOutgoingNumber_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 25714
    goto :goto_8
.end method

.method public getNormalizedOutgoingNumberBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 25719
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->normalizedOutgoingNumber_:Ljava/lang/Object;

    .line 25720
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 25721
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 25723
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->normalizedOutgoingNumber_:Ljava/lang/Object;

    .line 25726
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

.method public getOutgoingNumberWasGv()Z
    .registers 2

    .prologue
    .line 25684
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->outgoingNumberWasGv_:Z

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25620
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 25784
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->memoizedSerializedSize:I

    .line 25785
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 25813
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 25787
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 25788
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 25789
    iget-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 25792
    :cond_18
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_27

    .line 25793
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->getAccessNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 25796
    :cond_27
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_35

    .line 25797
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->callCost_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 25800
    :cond_35
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_44

    .line 25801
    iget-boolean v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->outgoingNumberWasGv_:Z

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 25804
    :cond_44
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_54

    .line 25805
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->accessNumberIsShadowNumber_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 25808
    :cond_54
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_66

    .line 25809
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->getNormalizedOutgoingNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 25812
    :cond_66
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 25813
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 25631
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public hasAccessNumber()Z
    .registers 3

    .prologue
    .line 25638
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->bitField0_:I

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

.method public hasAccessNumberIsShadowNumber()Z
    .registers 3

    .prologue
    .line 25691
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->bitField0_:I

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

.method public hasCallCost()Z
    .registers 3

    .prologue
    .line 25671
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->bitField0_:I

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

.method public hasNormalizedOutgoingNumber()Z
    .registers 3

    .prologue
    .line 25701
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->bitField0_:I

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

.method public hasOutgoingNumberWasGv()Z
    .registers 3

    .prologue
    .line 25681
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 25628
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->bitField0_:I

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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 25740
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->memoizedIsInitialized:B

    .line 25741
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_d

    if-ne v0, v1, :cond_b

    :goto_9
    move v2, v1

    .line 25756
    :goto_a
    return v2

    :cond_b
    move v1, v2

    .line 25741
    goto :goto_9

    .line 25743
    :cond_d
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->hasStatus()Z

    move-result v3

    if-nez v3, :cond_16

    .line 25744
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 25747
    :cond_16
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->hasAccessNumber()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 25748
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 25751
    :cond_1f
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2c

    .line 25752
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->memoizedIsInitialized:B

    goto :goto_a

    .line 25755
    :cond_2c
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->memoizedIsInitialized:B

    move v2, v1

    .line 25756
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;
    .registers 2

    .prologue
    .line 25876
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 25519
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;
    .registers 2

    .prologue
    .line 25880
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;)Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 25519
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse$Builder;

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
    .line 25819
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

    .line 25761
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->getSerializedSize()I

    .line 25762
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 25763
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 25765
    :cond_11
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1e

    .line 25766
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->getAccessNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 25768
    :cond_1e
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2a

    .line 25769
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->callCost_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 25771
    :cond_2a
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_37

    .line 25772
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->outgoingNumberWasGv_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 25774
    :cond_37
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_45

    .line 25775
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->accessNumberIsShadowNumber_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 25777
    :cond_45
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_55

    .line 25778
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiCallThroughResponse;->getNormalizedOutgoingNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 25780
    :cond_55
    return-void
.end method
