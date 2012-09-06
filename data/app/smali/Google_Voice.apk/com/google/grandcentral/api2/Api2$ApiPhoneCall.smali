.class public final Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiPhoneCallOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiPhoneCall"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;,
        Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;,
        Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$CoarseType;,
        Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;,
        Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Type;
    }
.end annotation


# static fields
.field public static final COARSE_TYPE_FIELD_NUMBER:I = 0xd

.field public static final CONTACT_FIELD_NUMBER:I = 0x4

.field public static final DID_FIELD_NUMBER:I = 0x3

.field public static final DISPLAYABLE_COST_FIELD_NUMBER:I = 0xb

.field public static final DURATION_FIELD_NUMBER:I = 0x9

.field public static final ECID_FIELD_NUMBER:I = 0x8

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final MESSAGE_TEXT_FIELD_NUMBER:I = 0xa

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECORDING_URL_FIELD_NUMBER:I = 0xc

.field public static final START_TIME_FIELD_NUMBER:I = 0x2

.field public static final STATUS_FIELD_NUMBER:I = 0x6

.field public static final TRANSCRIPT_FIELD_NUMBER:I = 0x7

.field public static final TRANSCRIPT_STATUS_FIELD_NUMBER:I = 0xe

.field public static final TYPE_FIELD_NUMBER:I = 0x5

.field private static final defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;


# instance fields
.field private bitField0_:I

.field private coarseType_:I

.field private contact_:Lcom/google/grandcentral/api2/Api2$ApiContact;

.field private did_:Ljava/lang/Object;

.field private displayableCost_:Ljava/lang/Object;

.field private duration_:F

.field private ecid_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private messageText_:Ljava/lang/Object;

.field private recordingUrl_:Ljava/lang/Object;

.field private startTime_:J

.field private status_:I

.field private transcriptStatus_:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

.field private transcript_:Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 17776
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->PARSER:Lcom/google/protobuf/Parser;

    .line 19335
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;-><init>(Z)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    .line 19336
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->initFields()V

    .line 19337
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 12
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 17657
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 18340
    iput-byte v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->memoizedIsInitialized:B

    .line 18426
    iput v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->memoizedSerializedSize:I

    .line 17658
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->initFields()V

    .line 17659
    const/4 v2, 0x0

    .line 17661
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 17662
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_140

    .line 17663
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 17664
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_144

    .line 17669
    invoke-virtual {p0, p1, p2, v5}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_d

    .line 17671
    const/4 v0, 0x1

    goto :goto_d

    .line 17666
    :sswitch_1e
    const/4 v0, 0x1

    .line 17667
    goto :goto_d

    .line 17676
    :sswitch_20
    iget v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    .line 17677
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->id_:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 17767
    .end local v5           #tag:I
    :catch_2d
    move-exception v1

    .line 17768
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 17773
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v7

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->makeExtensionsImmutable()V

    throw v7

    .line 17681
    .restart local v5       #tag:I
    :sswitch_38
    :try_start_38
    iget v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    .line 17682
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->startTime_:J
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 17769
    .end local v5           #tag:I
    :catch_45
    move-exception v1

    .line 17770
    .local v1, e:Ljava/io/IOException;
    :try_start_46
    new-instance v7, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_33

    .line 17686
    .end local v1           #e:Ljava/io/IOException;
    .restart local v5       #tag:I
    :sswitch_54
    :try_start_54
    iget v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    .line 17687
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->did_:Ljava/lang/Object;

    goto :goto_d

    .line 17691
    :sswitch_61
    const/4 v4, 0x0

    .line 17692
    .local v4, subBuilder:Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;
    iget v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    and-int/lit8 v7, v7, 0x8

    const/16 v8, 0x8

    if-ne v7, v8, :cond_70

    .line 17693
    iget-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->contact_:Lcom/google/grandcentral/api2/Api2$ApiContact;

    invoke-virtual {v7}, Lcom/google/grandcentral/api2/Api2$ApiContact;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    move-result-object v4

    .line 17695
    :cond_70
    sget-object v7, Lcom/google/grandcentral/api2/Api2$ApiContact;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/grandcentral/api2/Api2$ApiContact;

    iput-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->contact_:Lcom/google/grandcentral/api2/Api2$ApiContact;

    .line 17696
    if-eqz v4, :cond_87

    .line 17697
    iget-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->contact_:Lcom/google/grandcentral/api2/Api2$ApiContact;

    invoke-virtual {v4, v7}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiContact;)Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;

    .line 17698
    invoke-virtual {v4}, Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiContact;

    move-result-object v7

    iput-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->contact_:Lcom/google/grandcentral/api2/Api2$ApiContact;

    .line 17700
    :cond_87
    iget v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    goto :goto_d

    .line 17704
    .end local v4           #subBuilder:Lcom/google/grandcentral/api2/Api2$ApiContact$Builder;
    :sswitch_8e
    iget v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    .line 17705
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v7

    iput v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->type_:I

    goto/16 :goto_d

    .line 17709
    :sswitch_9c
    iget v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    or-int/lit8 v7, v7, 0x20

    iput v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    .line 17710
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v7

    iput v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->status_:I

    goto/16 :goto_d

    .line 17714
    :sswitch_aa
    const/4 v4, 0x0

    .line 17715
    .local v4, subBuilder:Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;
    iget v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    and-int/lit8 v7, v7, 0x40

    const/16 v8, 0x40

    if-ne v7, v8, :cond_b9

    .line 17716
    iget-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->transcript_:Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    invoke-virtual {v7}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;

    move-result-object v4

    .line 17718
    :cond_b9
    sget-object v7, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    iput-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->transcript_:Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    .line 17719
    if-eqz v4, :cond_d0

    .line 17720
    iget-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->transcript_:Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    invoke-virtual {v4, v7}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;

    .line 17721
    invoke-virtual {v4}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    move-result-object v7

    iput-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->transcript_:Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    .line 17723
    :cond_d0
    iget v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    or-int/lit8 v7, v7, 0x40

    iput v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    goto/16 :goto_d

    .line 17727
    .end local v4           #subBuilder:Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple$Builder;
    :sswitch_d8
    iget v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    or-int/lit16 v7, v7, 0x80

    iput v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    .line 17728
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->ecid_:Ljava/lang/Object;

    goto/16 :goto_d

    .line 17732
    :sswitch_e6
    iget v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    or-int/lit16 v7, v7, 0x100

    iput v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    .line 17733
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v7

    iput v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->duration_:F

    goto/16 :goto_d

    .line 17737
    :sswitch_f4
    iget v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    or-int/lit16 v7, v7, 0x200

    iput v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    .line 17738
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->messageText_:Ljava/lang/Object;

    goto/16 :goto_d

    .line 17742
    :sswitch_102
    iget v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    or-int/lit16 v7, v7, 0x400

    iput v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    .line 17743
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->displayableCost_:Ljava/lang/Object;

    goto/16 :goto_d

    .line 17747
    :sswitch_110
    iget v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    or-int/lit16 v7, v7, 0x800

    iput v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    .line 17748
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->recordingUrl_:Ljava/lang/Object;

    goto/16 :goto_d

    .line 17752
    :sswitch_11e
    iget v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    or-int/lit16 v7, v7, 0x1000

    iput v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    .line 17753
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v7

    iput v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->coarseType_:I

    goto/16 :goto_d

    .line 17757
    :sswitch_12c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 17758
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;->valueOf(I)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    move-result-object v6

    .line 17759
    .local v6, value:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;
    if-eqz v6, :cond_d

    .line 17760
    iget v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    or-int/lit16 v7, v7, 0x2000

    iput v7, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    .line 17761
    iput-object v6, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->transcriptStatus_:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;
    :try_end_13e
    .catchall {:try_start_54 .. :try_end_13e} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_54 .. :try_end_13e} :catch_2d
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_13e} :catch_45

    goto/16 :goto_d

    .line 17773
    .end local v3           #rawValue:I
    .end local v5           #tag:I
    .end local v6           #value:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;
    :cond_140
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->makeExtensionsImmutable()V

    .line 17775
    return-void

    .line 17664
    :sswitch_data_144
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x10 -> :sswitch_38
        0x1a -> :sswitch_54
        0x22 -> :sswitch_61
        0x28 -> :sswitch_8e
        0x30 -> :sswitch_9c
        0x3a -> :sswitch_aa
        0x42 -> :sswitch_d8
        0x4d -> :sswitch_e6
        0x52 -> :sswitch_f4
        0x5a -> :sswitch_102
        0x62 -> :sswitch_110
        0x68 -> :sswitch_11e
        0x70 -> :sswitch_12c
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
    .line 17635
    invoke-direct {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 17640
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 18340
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->memoizedIsInitialized:B

    .line 18426
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->memoizedSerializedSize:I

    .line 17642
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17635
    invoke-direct {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 17643
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 18340
    iput-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->memoizedIsInitialized:B

    .line 18426
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->memoizedSerializedSize:I

    .line 17643
    return-void
.end method

.method static synthetic access$21500(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17635
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$21502(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17635
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$21602(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17635
    iput-wide p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->startTime_:J

    return-wide p1
.end method

.method static synthetic access$21700(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17635
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->did_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$21702(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17635
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->did_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$21802(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;Lcom/google/grandcentral/api2/Api2$ApiContact;)Lcom/google/grandcentral/api2/Api2$ApiContact;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17635
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->contact_:Lcom/google/grandcentral/api2/Api2$ApiContact;

    return-object p1
.end method

.method static synthetic access$21902(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17635
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->type_:I

    return p1
.end method

.method static synthetic access$22002(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17635
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->status_:I

    return p1
.end method

.method static synthetic access$22102(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;)Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17635
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->transcript_:Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    return-object p1
.end method

.method static synthetic access$22200(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17635
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->ecid_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$22202(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17635
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->ecid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$22302(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17635
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->duration_:F

    return p1
.end method

.method static synthetic access$22400(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17635
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->messageText_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$22402(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17635
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->messageText_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$22500(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17635
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->displayableCost_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$22502(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17635
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->displayableCost_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$22600(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17635
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->recordingUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$22602(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17635
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->recordingUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$22702(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17635
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->coarseType_:I

    return p1
.end method

.method static synthetic access$22802(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17635
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->transcriptStatus_:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    return-object p1
.end method

.method static synthetic access$22902(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17635
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;
    .registers 1

    .prologue
    .line 17647
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    return-object v0
.end method

.method private initFields()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 18325
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->id_:Ljava/lang/Object;

    .line 18326
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->startTime_:J

    .line 18327
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->did_:Ljava/lang/Object;

    .line 18328
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiContact;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiContact;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->contact_:Lcom/google/grandcentral/api2/Api2$ApiContact;

    .line 18329
    iput v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->type_:I

    .line 18330
    iput v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->status_:I

    .line 18331
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->transcript_:Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    .line 18332
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->ecid_:Ljava/lang/Object;

    .line 18333
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->duration_:F

    .line 18334
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->messageText_:Ljava/lang/Object;

    .line 18335
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->displayableCost_:Ljava/lang/Object;

    .line 18336
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->recordingUrl_:Ljava/lang/Object;

    .line 18337
    iput v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->coarseType_:I

    .line 18338
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;->NOT_RECEIVED:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->transcriptStatus_:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    .line 18339
    return-void
.end method

.method public static newBuilder()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 1

    .prologue
    .line 18551
    #calls: Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->access$21300()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 18554
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18531
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18537
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 18501
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 18507
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18542
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18548
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18521
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18527
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 18511
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 18517
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    return-object v0
.end method


# virtual methods
.method public getCoarseType()I
    .registers 2

    .prologue
    .line 18311
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->coarseType_:I

    return v0
.end method

.method public getContact()Lcom/google/grandcentral/api2/Api2$ApiContact;
    .registers 2

    .prologue
    .line 18129
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->contact_:Lcom/google/grandcentral/api2/Api2$ApiContact;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;
    .registers 2

    .prologue
    .line 17651
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->defaultInstance:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 17635
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;

    move-result-object v0

    return-object v0
.end method

.method public getDid()Ljava/lang/String;
    .registers 5

    .prologue
    .line 18096
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->did_:Ljava/lang/Object;

    .line 18097
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 18098
    check-cast v1, Ljava/lang/String;

    .line 18106
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 18100
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 18102
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 18103
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 18104
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->did_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 18106
    goto :goto_8
.end method

.method public getDidBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 18111
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->did_:Ljava/lang/Object;

    .line 18112
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 18113
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18115
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->did_:Ljava/lang/Object;

    .line 18118
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

.method public getDisplayableCost()Ljava/lang/String;
    .registers 5

    .prologue
    .line 18245
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->displayableCost_:Ljava/lang/Object;

    .line 18246
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 18247
    check-cast v1, Ljava/lang/String;

    .line 18255
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 18249
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 18251
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 18252
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 18253
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->displayableCost_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 18255
    goto :goto_8
.end method

.method public getDisplayableCostBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 18260
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->displayableCost_:Ljava/lang/Object;

    .line 18261
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 18262
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18264
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->displayableCost_:Ljava/lang/Object;

    .line 18267
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

.method public getDuration()F
    .registers 2

    .prologue
    .line 18202
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->duration_:F

    return v0
.end method

.method public getEcid()Ljava/lang/String;
    .registers 5

    .prologue
    .line 18169
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->ecid_:Ljava/lang/Object;

    .line 18170
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 18171
    check-cast v1, Ljava/lang/String;

    .line 18179
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 18173
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 18175
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 18176
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 18177
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->ecid_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 18179
    goto :goto_8
.end method

.method public getEcidBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 18184
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->ecid_:Ljava/lang/Object;

    .line 18185
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 18186
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18188
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->ecid_:Ljava/lang/Object;

    .line 18191
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

.method public getId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 18053
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->id_:Ljava/lang/Object;

    .line 18054
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 18055
    check-cast v1, Ljava/lang/String;

    .line 18063
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 18057
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 18059
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 18060
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 18061
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->id_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 18063
    goto :goto_8
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 18068
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->id_:Ljava/lang/Object;

    .line 18069
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 18070
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18072
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->id_:Ljava/lang/Object;

    .line 18075
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

.method public getMessageText()Ljava/lang/String;
    .registers 5

    .prologue
    .line 18212
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->messageText_:Ljava/lang/Object;

    .line 18213
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 18214
    check-cast v1, Ljava/lang/String;

    .line 18222
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 18216
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 18218
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 18219
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 18220
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->messageText_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 18222
    goto :goto_8
.end method

.method public getMessageTextBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 18227
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->messageText_:Ljava/lang/Object;

    .line 18228
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 18229
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18231
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->messageText_:Ljava/lang/Object;

    .line 18234
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
            "Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17788
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRecordingUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 18278
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->recordingUrl_:Ljava/lang/Object;

    .line 18279
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 18280
    check-cast v1, Ljava/lang/String;

    .line 18288
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 18282
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 18284
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 18285
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 18286
    iput-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->recordingUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 18288
    goto :goto_8
.end method

.method public getRecordingUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 18293
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->recordingUrl_:Ljava/lang/Object;

    .line 18294
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 18295
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18297
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->recordingUrl_:Ljava/lang/Object;

    .line 18300
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

    .line 18428
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->memoizedSerializedSize:I

    .line 18429
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 18489
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 18431
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 18432
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 18433
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 18436
    :cond_1c
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 18437
    iget-wide v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->startTime_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 18440
    :cond_29
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_39

    .line 18441
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getDidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 18444
    :cond_39
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_46

    .line 18445
    iget-object v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->contact_:Lcom/google/grandcentral/api2/Api2$ApiContact;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 18448
    :cond_46
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_56

    .line 18449
    const/4 v2, 0x5

    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->type_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 18452
    :cond_56
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_66

    .line 18453
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->status_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 18456
    :cond_66
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_76

    .line 18457
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->transcript_:Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 18460
    :cond_76
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_87

    .line 18461
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getEcidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 18464
    :cond_87
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_98

    .line 18465
    const/16 v2, 0x9

    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->duration_:F

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 18468
    :cond_98
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_ab

    .line 18469
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getMessageTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 18472
    :cond_ab
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_be

    .line 18473
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getDisplayableCostBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 18476
    :cond_be
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_d1

    .line 18477
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getRecordingUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 18480
    :cond_d1
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_e2

    .line 18481
    const/16 v2, 0xd

    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->coarseType_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 18484
    :cond_e2
    iget v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    and-int/lit16 v2, v2, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_f7

    .line 18485
    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->transcriptStatus_:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 18488
    :cond_f7
    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->memoizedSerializedSize:I

    move v1, v0

    .line 18489
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_b
.end method

.method public getStartTime()J
    .registers 3

    .prologue
    .line 18086
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->startTime_:J

    return-wide v0
.end method

.method public getStatus()I
    .registers 2

    .prologue
    .line 18149
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->status_:I

    return v0
.end method

.method public getTranscript()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;
    .registers 2

    .prologue
    .line 18159
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->transcript_:Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    return-object v0
.end method

.method public getTranscriptStatus()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;
    .registers 2

    .prologue
    .line 18321
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->transcriptStatus_:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 18139
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->type_:I

    return v0
.end method

.method public hasCoarseType()Z
    .registers 3

    .prologue
    .line 18308
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

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

.method public hasContact()Z
    .registers 3

    .prologue
    .line 18126
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

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

.method public hasDid()Z
    .registers 3

    .prologue
    .line 18093
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

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

.method public hasDisplayableCost()Z
    .registers 3

    .prologue
    .line 18242
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

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

.method public hasDuration()Z
    .registers 3

    .prologue
    .line 18199
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

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

.method public hasEcid()Z
    .registers 3

    .prologue
    .line 18166
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 18050
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasMessageText()Z
    .registers 3

    .prologue
    .line 18209
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

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

.method public hasRecordingUrl()Z
    .registers 3

    .prologue
    .line 18275
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

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

.method public hasStartTime()Z
    .registers 3

    .prologue
    .line 18083
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

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
    .line 18146
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

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

.method public hasTranscript()Z
    .registers 3

    .prologue
    .line 18156
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

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

.method public hasTranscriptStatus()Z
    .registers 3

    .prologue
    .line 18318
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    .line 18136
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

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

    .line 18342
    iget-byte v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->memoizedIsInitialized:B

    .line 18343
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_d

    if-ne v0, v1, :cond_b

    :goto_9
    move v2, v1

    .line 18376
    :goto_a
    return v2

    :cond_b
    move v1, v2

    .line 18343
    goto :goto_9

    .line 18345
    :cond_d
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->hasId()Z

    move-result v3

    if-nez v3, :cond_16

    .line 18346
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->memoizedIsInitialized:B

    goto :goto_a

    .line 18349
    :cond_16
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->hasStartTime()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 18350
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->memoizedIsInitialized:B

    goto :goto_a

    .line 18353
    :cond_1f
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->hasDid()Z

    move-result v3

    if-nez v3, :cond_28

    .line 18354
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->memoizedIsInitialized:B

    goto :goto_a

    .line 18357
    :cond_28
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->hasContact()Z

    move-result v3

    if-nez v3, :cond_31

    .line 18358
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->memoizedIsInitialized:B

    goto :goto_a

    .line 18361
    :cond_31
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->hasType()Z

    move-result v3

    if-nez v3, :cond_3a

    .line 18362
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->memoizedIsInitialized:B

    goto :goto_a

    .line 18365
    :cond_3a
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->hasStatus()Z

    move-result v3

    if-nez v3, :cond_43

    .line 18366
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->memoizedIsInitialized:B

    goto :goto_a

    .line 18369
    :cond_43
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->hasTranscript()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 18370
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getTranscript()Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_56

    .line 18371
    iput-byte v2, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->memoizedIsInitialized:B

    goto :goto_a

    .line 18375
    :cond_56
    iput-byte v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->memoizedIsInitialized:B

    move v2, v1

    .line 18376
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 2

    .prologue
    .line 18552
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->newBuilder()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 17635
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->newBuilderForType()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;
    .registers 2

    .prologue
    .line 18556
    invoke-static {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 17635
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->toBuilder()Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Builder;

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
    .line 18495
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

    .line 18381
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getSerializedSize()I

    .line 18382
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 18383
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 18385
    :cond_15
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 18386
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->startTime_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 18388
    :cond_20
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 18389
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getDidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 18391
    :cond_2e
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_39

    .line 18392
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->contact_:Lcom/google/grandcentral/api2/Api2$ApiContact;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 18394
    :cond_39
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_47

    .line 18395
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 18397
    :cond_47
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_55

    .line 18398
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->status_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 18400
    :cond_55
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_63

    .line 18401
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->transcript_:Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimple;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 18403
    :cond_63
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_72

    .line 18404
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getEcidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 18406
    :cond_72
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_81

    .line 18407
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->duration_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 18409
    :cond_81
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_92

    .line 18410
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getMessageTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 18412
    :cond_92
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a3

    .line 18413
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getDisplayableCostBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 18415
    :cond_a3
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_b4

    .line 18416
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->getRecordingUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 18418
    :cond_b4
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_c3

    .line 18419
    const/16 v0, 0xd

    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->coarseType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 18421
    :cond_c3
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_d6

    .line 18422
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;->transcriptStatus_:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$TranscriptStatus;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 18424
    :cond_d6
    return-void
.end method
