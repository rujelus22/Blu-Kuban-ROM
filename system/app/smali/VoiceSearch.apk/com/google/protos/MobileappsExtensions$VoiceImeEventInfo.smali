.class public final Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VoiceImeEventInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;,
        Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;,
        Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;,
        Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;,
        Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;


# instance fields
.field private action_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

.field private appIdentityType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

.field private bitField0_:I

.field private dialogType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

.field private errorType_:I

.field private index_:I

.field private inputLanguage_:Ljava/lang/Object;

.field private inputLength_:I

.field private inputSelectionBegin_:I

.field private inputSelectionEnd_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private nBestChooseAfterValue_:Ljava/lang/Object;

.field private nBestChooseBeforeValue_:Ljava/lang/Object;

.field private nBestChooseReplacedPhraseLength_:I

.field private sessionIdRequestId_:Ljava/lang/Object;

.field private textModificationActionType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 11593
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 12973
    new-instance v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;-><init>(Z)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->defaultInstance:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    .line 12974
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->defaultInstance:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->initFields()V

    .line 12975
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

    .line 11473
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 12104
    iput-byte v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->memoizedIsInitialized:B

    .line 12163
    iput v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->memoizedSerializedSize:I

    .line 11474
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->initFields()V

    .line 11475
    const/4 v2, 0x0

    .line 11477
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 11478
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_11f

    .line 11479
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 11480
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_124

    .line 11485
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_d

    .line 11487
    const/4 v0, 0x1

    goto :goto_d

    .line 11482
    :sswitch_1e
    const/4 v0, 0x1

    .line 11483
    goto :goto_d

    .line 11492
    :sswitch_20
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 11493
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    move-result-object v5

    .line 11494
    .local v5, value:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;
    if-eqz v5, :cond_d

    .line 11495
    iget v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    .line 11496
    iput-object v5, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->action_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;
    :try_end_32
    .catchall {:try_start_f .. :try_end_32} :catchall_39
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_32} :catch_33
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_32} :catch_51

    goto :goto_d

    .line 11584
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v5           #value:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;
    :catch_33
    move-exception v1

    .line 11585
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_34
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_39

    .line 11590
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_39
    move-exception v6

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->makeExtensionsImmutable()V

    throw v6

    .line 11501
    .restart local v4       #tag:I
    :sswitch_3e
    :try_start_3e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 11502
    .restart local v3       #rawValue:I
    invoke-static {v3}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    move-result-object v5

    .line 11503
    .local v5, value:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;
    if-eqz v5, :cond_d

    .line 11504
    iget v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    .line 11505
    iput-object v5, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->dialogType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;
    :try_end_50
    .catchall {:try_start_3e .. :try_end_50} :catchall_39
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3e .. :try_end_50} :catch_33
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_50} :catch_51

    goto :goto_d

    .line 11586
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v5           #value:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;
    :catch_51
    move-exception v1

    .line 11587
    .local v1, e:Ljava/io/IOException;
    :try_start_52
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_60
    .catchall {:try_start_52 .. :try_end_60} :catchall_39

    .line 11510
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_60
    :try_start_60
    iget v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    .line 11511
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->errorType_:I

    goto :goto_d

    .line 11515
    :sswitch_6d
    iget v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    .line 11516
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->sessionIdRequestId_:Ljava/lang/Object;

    goto :goto_d

    .line 11520
    :sswitch_7a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 11521
    .restart local v3       #rawValue:I
    invoke-static {v3}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    move-result-object v5

    .line 11522
    .local v5, value:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;
    if-eqz v5, :cond_d

    .line 11523
    iget v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    .line 11524
    iput-object v5, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->textModificationActionType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    goto :goto_d

    .line 11529
    .end local v3           #rawValue:I
    .end local v5           #value:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;
    :sswitch_8d
    iget v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    or-int/lit8 v6, v6, 0x20

    iput v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    .line 11530
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputSelectionBegin_:I

    goto/16 :goto_d

    .line 11534
    :sswitch_9b
    iget v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    or-int/lit8 v6, v6, 0x40

    iput v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    .line 11535
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputSelectionEnd_:I

    goto/16 :goto_d

    .line 11539
    :sswitch_a9
    iget v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    or-int/lit16 v6, v6, 0x80

    iput v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    .line 11540
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputLength_:I

    goto/16 :goto_d

    .line 11544
    :sswitch_b7
    iget v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    or-int/lit16 v6, v6, 0x100

    iput v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    .line 11545
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->index_:I

    goto/16 :goto_d

    .line 11549
    :sswitch_c5
    iget v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    or-int/lit16 v6, v6, 0x200

    iput v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    .line 11550
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->timestamp_:J

    goto/16 :goto_d

    .line 11554
    :sswitch_d3
    iget v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    or-int/lit16 v6, v6, 0x400

    iput v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    .line 11555
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputLanguage_:Ljava/lang/Object;

    goto/16 :goto_d

    .line 11559
    :sswitch_e1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 11560
    .restart local v3       #rawValue:I
    invoke-static {v3}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    move-result-object v5

    .line 11561
    .local v5, value:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;
    if-eqz v5, :cond_d

    .line 11562
    iget v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    or-int/lit16 v6, v6, 0x800

    iput v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    .line 11563
    iput-object v5, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->appIdentityType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    goto/16 :goto_d

    .line 11568
    .end local v3           #rawValue:I
    .end local v5           #value:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;
    :sswitch_f5
    iget v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    or-int/lit16 v6, v6, 0x1000

    iput v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    .line 11569
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseBeforeValue_:Ljava/lang/Object;

    goto/16 :goto_d

    .line 11573
    :sswitch_103
    iget v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    or-int/lit16 v6, v6, 0x2000

    iput v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    .line 11574
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseAfterValue_:Ljava/lang/Object;

    goto/16 :goto_d

    .line 11578
    :sswitch_111
    iget v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    or-int/lit16 v6, v6, 0x4000

    iput v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    .line 11579
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseReplacedPhraseLength_:I
    :try_end_11d
    .catchall {:try_start_60 .. :try_end_11d} :catchall_39
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_60 .. :try_end_11d} :catch_33
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_11d} :catch_51

    goto/16 :goto_d

    .line 11590
    .end local v4           #tag:I
    :cond_11f
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->makeExtensionsImmutable()V

    .line 11592
    return-void

    .line 11480
    nop

    :sswitch_data_124
    .sparse-switch
        0x0 -> :sswitch_1e
        0x8 -> :sswitch_20
        0x10 -> :sswitch_3e
        0x18 -> :sswitch_60
        0x22 -> :sswitch_6d
        0x28 -> :sswitch_7a
        0x30 -> :sswitch_8d
        0x38 -> :sswitch_9b
        0x40 -> :sswitch_a9
        0x48 -> :sswitch_b7
        0x50 -> :sswitch_c5
        0x5a -> :sswitch_d3
        0x60 -> :sswitch_e1
        0x6a -> :sswitch_f5
        0x72 -> :sswitch_103
        0x78 -> :sswitch_111
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/MobileappsExtensions$1;)V
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
    .line 11451
    invoke-direct {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 11456
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 12104
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->memoizedIsInitialized:B

    .line 12163
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->memoizedSerializedSize:I

    .line 11458
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11451
    invoke-direct {p0, p1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 11459
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 12104
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->memoizedIsInitialized:B

    .line 12163
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->memoizedSerializedSize:I

    .line 11459
    return-void
.end method

.method static synthetic access$12902(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11451
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->action_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    return-object p1
.end method

.method static synthetic access$13002(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11451
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->dialogType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    return-object p1
.end method

.method static synthetic access$13102(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11451
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->errorType_:I

    return p1
.end method

.method static synthetic access$13200(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 11451
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->sessionIdRequestId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$13202(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11451
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->sessionIdRequestId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$13302(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11451
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->textModificationActionType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    return-object p1
.end method

.method static synthetic access$13402(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11451
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputSelectionBegin_:I

    return p1
.end method

.method static synthetic access$13502(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11451
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputSelectionEnd_:I

    return p1
.end method

.method static synthetic access$13602(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11451
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputLength_:I

    return p1
.end method

.method static synthetic access$13702(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11451
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->index_:I

    return p1
.end method

.method static synthetic access$13802(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11451
    iput-wide p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$13900(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 11451
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputLanguage_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$13902(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11451
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputLanguage_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14002(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11451
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->appIdentityType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    return-object p1
.end method

.method static synthetic access$14100(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 11451
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseBeforeValue_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$14102(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11451
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseBeforeValue_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14200(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 11451
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseAfterValue_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$14202(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11451
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseAfterValue_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14302(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11451
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseReplacedPhraseLength_:I

    return p1
.end method

.method static synthetic access$14402(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11451
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;
    .registers 1

    .prologue
    .line 11463
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->defaultInstance:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    return-object v0
.end method

.method private initFields()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 12088
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->DIALOG_SHOWN:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->action_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    .line 12089
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;->VOICE_WARNING_KEYBOARD:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->dialogType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    .line 12090
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->errorType_:I

    .line 12091
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->sessionIdRequestId_:Ljava/lang/Object;

    .line 12092
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;->VOICE_INSERTION:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->textModificationActionType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    .line 12093
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputSelectionBegin_:I

    .line 12094
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputSelectionEnd_:I

    .line 12095
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputLength_:I

    .line 12096
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->index_:I

    .line 12097
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->timestamp_:J

    .line 12098
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputLanguage_:Ljava/lang/Object;

    .line 12099
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;->UNKNOWN_APP:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->appIdentityType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    .line 12100
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseBeforeValue_:Ljava/lang/Object;

    .line 12101
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseAfterValue_:Ljava/lang/Object;

    .line 12102
    iput v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseReplacedPhraseLength_:I

    .line 12103
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .registers 1

    .prologue
    .line 12292
    #calls: Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->create()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->access$12700()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 12295
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAction()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;
    .registers 2

    .prologue
    .line 11852
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->action_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    return-object v0
.end method

.method public getAppIdentityType()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;
    .registers 2

    .prologue
    .line 12008
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->appIdentityType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 11451
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;
    .registers 2

    .prologue
    .line 11467
    sget-object v0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->defaultInstance:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;

    return-object v0
.end method

.method public getDialogType()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;
    .registers 2

    .prologue
    .line 11862
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->dialogType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    return-object v0
.end method

.method public getErrorType()I
    .registers 2

    .prologue
    .line 11872
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->errorType_:I

    return v0
.end method

.method public getIndex()I
    .registers 2

    .prologue
    .line 11955
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->index_:I

    return v0
.end method

.method public getInputLanguageBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 11990
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputLanguage_:Ljava/lang/Object;

    .line 11991
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 11992
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11994
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputLanguage_:Ljava/lang/Object;

    .line 11997
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

.method public getInputLength()I
    .registers 2

    .prologue
    .line 11945
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputLength_:I

    return v0
.end method

.method public getInputSelectionBegin()I
    .registers 2

    .prologue
    .line 11925
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputSelectionBegin_:I

    return v0
.end method

.method public getInputSelectionEnd()I
    .registers 2

    .prologue
    .line 11935
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputSelectionEnd_:I

    return v0
.end method

.method public getNBestChooseAfterValueBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 12066
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseAfterValue_:Ljava/lang/Object;

    .line 12067
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 12068
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 12070
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseAfterValue_:Ljava/lang/Object;

    .line 12073
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

.method public getNBestChooseBeforeValueBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 12033
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseBeforeValue_:Ljava/lang/Object;

    .line 12034
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 12035
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 12037
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseBeforeValue_:Ljava/lang/Object;

    .line 12040
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

.method public getNBestChooseReplacedPhraseLength()I
    .registers 2

    .prologue
    .line 12084
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseReplacedPhraseLength_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 12165
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->memoizedSerializedSize:I

    .line 12166
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 12230
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 12168
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 12169
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1e

    .line 12170
    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->action_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 12173
    :cond_1e
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2f

    .line 12174
    iget-object v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->dialogType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    invoke-virtual {v2}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 12177
    :cond_2f
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3d

    .line 12178
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->errorType_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 12181
    :cond_3d
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4c

    .line 12182
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getSessionIdRequestIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 12185
    :cond_4c
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_60

    .line 12186
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->textModificationActionType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    invoke-virtual {v3}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 12189
    :cond_60
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_70

    .line 12190
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputSelectionBegin_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 12193
    :cond_70
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_80

    .line 12194
    const/4 v2, 0x7

    iget v3, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputSelectionEnd_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 12197
    :cond_80
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8f

    .line 12198
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputLength_:I

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 12201
    :cond_8f
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_a0

    .line 12202
    const/16 v2, 0x9

    iget v3, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->index_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 12205
    :cond_a0
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_b1

    .line 12206
    const/16 v2, 0xa

    iget-wide v3, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->timestamp_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 12209
    :cond_b1
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_c4

    .line 12210
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getInputLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 12213
    :cond_c4
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_d9

    .line 12214
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->appIdentityType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    invoke-virtual {v3}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 12217
    :cond_d9
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_ec

    .line 12218
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getNBestChooseBeforeValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 12221
    :cond_ec
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_ff

    .line 12222
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getNBestChooseAfterValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 12225
    :cond_ff
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v2, v2, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_110

    .line 12226
    const/16 v2, 0xf

    iget v3, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseReplacedPhraseLength_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 12229
    :cond_110
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->memoizedSerializedSize:I

    move v1, v0

    .line 12230
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_b
.end method

.method public getSessionIdRequestIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 11897
    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->sessionIdRequestId_:Ljava/lang/Object;

    .line 11898
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 11899
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11901
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->sessionIdRequestId_:Ljava/lang/Object;

    .line 11904
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

.method public getTextModificationActionType()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;
    .registers 2

    .prologue
    .line 11915
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->textModificationActionType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 11965
    iget-wide v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->timestamp_:J

    return-wide v0
.end method

.method public hasAction()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 11849
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasAppIdentityType()Z
    .registers 3

    .prologue
    .line 12005
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasDialogType()Z
    .registers 3

    .prologue
    .line 11859
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

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

.method public hasErrorType()Z
    .registers 3

    .prologue
    .line 11869
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

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

.method public hasIndex()Z
    .registers 3

    .prologue
    .line 11952
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasInputLanguage()Z
    .registers 3

    .prologue
    .line 11972
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasInputLength()Z
    .registers 3

    .prologue
    .line 11942
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasInputSelectionBegin()Z
    .registers 3

    .prologue
    .line 11922
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

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

.method public hasInputSelectionEnd()Z
    .registers 3

    .prologue
    .line 11932
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

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

.method public hasNBestChooseAfterValue()Z
    .registers 3

    .prologue
    .line 12048
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasNBestChooseBeforeValue()Z
    .registers 3

    .prologue
    .line 12015
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasNBestChooseReplacedPhraseLength()Z
    .registers 3

    .prologue
    .line 12081
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasSessionIdRequestId()Z
    .registers 3

    .prologue
    .line 11879
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

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

.method public hasTextModificationActionType()Z
    .registers 3

    .prologue
    .line 11912
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

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

.method public hasTimestamp()Z
    .registers 3

    .prologue
    .line 11962
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 12106
    iget-byte v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->memoizedIsInitialized:B

    .line 12107
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 12110
    :goto_8
    return v1

    .line 12107
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 12109
    :cond_b
    iput-byte v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 11451
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->newBuilderForType()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .registers 2

    .prologue
    .line 12293
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->newBuilder()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 11451
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->toBuilder()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;
    .registers 2

    .prologue
    .line 12297
    invoke-static {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->newBuilder(Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;)Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$Builder;

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
    .line 12236
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

    .line 12115
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getSerializedSize()I

    .line 12116
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_17

    .line 12117
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->action_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$ActionType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 12119
    :cond_17
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_26

    .line 12120
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->dialogType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;

    invoke-virtual {v0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$DialogType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 12122
    :cond_26
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_32

    .line 12123
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->errorType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 12125
    :cond_32
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3f

    .line 12126
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getSessionIdRequestIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 12128
    :cond_3f
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_51

    .line 12129
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->textModificationActionType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$TextModificationActionType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 12131
    :cond_51
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5f

    .line 12132
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputSelectionBegin_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 12134
    :cond_5f
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6d

    .line 12135
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputSelectionEnd_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 12137
    :cond_6d
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7a

    .line 12138
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->inputLength_:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 12140
    :cond_7a
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_89

    .line 12141
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->index_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 12143
    :cond_89
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_98

    .line 12144
    const/16 v0, 0xa

    iget-wide v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->timestamp_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 12146
    :cond_98
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a9

    .line 12147
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getInputLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 12149
    :cond_a9
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_bc

    .line 12150
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->appIdentityType_:Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo$AppIdentityType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 12152
    :cond_bc
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_cd

    .line 12153
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getNBestChooseBeforeValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 12155
    :cond_cd
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_de

    .line 12156
    const/16 v0, 0xe

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->getNBestChooseAfterValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 12158
    :cond_de
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_ed

    .line 12159
    const/16 v0, 0xf

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$VoiceImeEventInfo;->nBestChooseReplacedPhraseLength_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 12161
    :cond_ed
    return-void
.end method
