.class public final Lcom/google/protos/speech/service/ClientReportProto$ClientReport;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "ClientReportProto.java"

# interfaces
.implements Lcom/google/protos/speech/service/ClientReportProto$ClientReportOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/ClientReportProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientReport"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;,
        Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage",
        "<",
        "Lcom/google/protos/speech/service/ClientReportProto$ClientReport;",
        ">;",
        "Lcom/google/protos/speech/service/ClientReportProto$ClientReportOrBuilder;"
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/ClientReportProto$ClientReport;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/ClientReportProto$ClientReport;


# instance fields
.field private bitField0_:I

.field private clientPerceivedRequestStatus_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

.field private clientSideError_:I

.field private inProgressResultLatencyMs_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private recognitionQualityInfo_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

.field private requestAckLatencyMs_:I

.field private selectedNbestIndex_:I

.field private totalLatencyMs_:I

.field private userPerceivedLatencyMs_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 193
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->PARSER:Lcom/google/protobuf/Parser;

    .line 861
    new-instance v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->defaultInstance:Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    .line 862
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->defaultInstance:Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    invoke-direct {v0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->initFields()V

    .line 863
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

    .line 112
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 361
    iput-byte v7, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->memoizedIsInitialized:B

    .line 407
    iput v7, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->memoizedSerializedSize:I

    .line 113
    invoke-direct {p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->initFields()V

    .line 114
    const/4 v2, 0x0

    .line 116
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 117
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_ca

    .line 118
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 119
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_ce

    .line 124
    invoke-virtual {p0, p1, p2, v5}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_d

    .line 126
    const/4 v0, 0x1

    goto :goto_d

    .line 121
    :sswitch_1e
    const/4 v0, 0x1

    .line 122
    goto :goto_d

    .line 131
    :sswitch_20
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 132
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->valueOf(I)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    move-result-object v6

    .line 133
    .local v6, value:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;
    if-eqz v6, :cond_d

    .line 134
    iget v7, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    .line 135
    iput-object v6, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->clientPerceivedRequestStatus_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;
    :try_end_32
    .catchall {:try_start_f .. :try_end_32} :catchall_39
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_32} :catch_33
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_32} :catch_4b

    goto :goto_d

    .line 184
    .end local v3           #rawValue:I
    .end local v5           #tag:I
    .end local v6           #value:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;
    :catch_33
    move-exception v1

    .line 185
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_34
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_39

    .line 190
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_39
    move-exception v7

    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->makeExtensionsImmutable()V

    throw v7

    .line 140
    .restart local v5       #tag:I
    :sswitch_3e
    :try_start_3e
    iget v7, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    .line 141
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->clientSideError_:I
    :try_end_4a
    .catchall {:try_start_3e .. :try_end_4a} :catchall_39
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3e .. :try_end_4a} :catch_33
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_4a} :catch_4b

    goto :goto_d

    .line 186
    .end local v5           #tag:I
    :catch_4b
    move-exception v1

    .line 187
    .local v1, e:Ljava/io/IOException;
    :try_start_4c
    new-instance v7, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_5a
    .catchall {:try_start_4c .. :try_end_5a} :catchall_39

    .line 145
    .end local v1           #e:Ljava/io/IOException;
    .restart local v5       #tag:I
    :sswitch_5a
    :try_start_5a
    iget v7, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    .line 146
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->requestAckLatencyMs_:I

    goto :goto_d

    .line 150
    :sswitch_67
    iget v7, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    .line 151
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->userPerceivedLatencyMs_:I

    goto :goto_d

    .line 155
    :sswitch_74
    iget v7, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    .line 156
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->selectedNbestIndex_:I

    goto :goto_d

    .line 160
    :sswitch_81
    iget v7, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    or-int/lit8 v7, v7, 0x20

    iput v7, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    .line 161
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->totalLatencyMs_:I

    goto :goto_d

    .line 165
    :sswitch_8e
    iget v7, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    or-int/lit8 v7, v7, 0x40

    iput v7, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    .line 166
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->inProgressResultLatencyMs_:I

    goto/16 :goto_d

    .line 170
    :sswitch_9c
    const/4 v4, 0x0

    .line 171
    .local v4, subBuilder:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    iget v7, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit16 v7, v7, 0x80

    const/16 v8, 0x80

    if-ne v7, v8, :cond_ab

    .line 172
    iget-object v7, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->recognitionQualityInfo_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    invoke-virtual {v7}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->toBuilder()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    move-result-object v4

    .line 174
    :cond_ab
    sget-object v7, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    iput-object v7, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->recognitionQualityInfo_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    .line 175
    if-eqz v4, :cond_c2

    .line 176
    iget-object v7, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->recognitionQualityInfo_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    invoke-virtual {v4, v7}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;

    .line 177
    invoke-virtual {v4}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;->buildPartial()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->recognitionQualityInfo_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    .line 179
    :cond_c2
    iget v7, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    or-int/lit16 v7, v7, 0x80

    iput v7, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I
    :try_end_c8
    .catchall {:try_start_5a .. :try_end_c8} :catchall_39
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5a .. :try_end_c8} :catch_33
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_c8} :catch_4b

    goto/16 :goto_d

    .line 190
    .end local v4           #subBuilder:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$Builder;
    .end local v5           #tag:I
    :cond_ca
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->makeExtensionsImmutable()V

    .line 192
    return-void

    .line 119
    :sswitch_data_ce
    .sparse-switch
        0x0 -> :sswitch_1e
        0x8 -> :sswitch_20
        0x10 -> :sswitch_3e
        0x18 -> :sswitch_5a
        0x20 -> :sswitch_67
        0x28 -> :sswitch_74
        0x30 -> :sswitch_81
        0x38 -> :sswitch_8e
        0x62 -> :sswitch_9c
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/speech/service/ClientReportProto$1;)V
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
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder",
            "<",
            "Lcom/google/protos/speech/service/ClientReportProto$ClientReport;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .local p1, builder:Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder<Lcom/google/protos/speech/service/ClientReportProto$ClientReport;*>;"
    const/4 v0, -0x1

    .line 95
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    .line 361
    iput-byte v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->memoizedIsInitialized:B

    .line 407
    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->memoizedSerializedSize:I

    .line 97
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;Lcom/google/protos/speech/service/ClientReportProto$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 98
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 361
    iput-byte v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->memoizedIsInitialized:B

    .line 407
    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->memoizedSerializedSize:I

    .line 98
    return-void
.end method

.method static synthetic access$1002(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;)Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->recognitionQualityInfo_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    return p1
.end method

.method static synthetic access$302(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->clientPerceivedRequestStatus_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->clientSideError_:I

    return p1
.end method

.method static synthetic access$502(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->requestAckLatencyMs_:I

    return p1
.end method

.method static synthetic access$602(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->userPerceivedLatencyMs_:I

    return p1
.end method

.method static synthetic access$702(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->selectedNbestIndex_:I

    return p1
.end method

.method static synthetic access$802(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->totalLatencyMs_:I

    return p1
.end method

.method static synthetic access$902(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->inProgressResultLatencyMs_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$ClientReport;
    .registers 1

    .prologue
    .line 102
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->defaultInstance:Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 352
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->NO_CLIENT_ERROR:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->clientPerceivedRequestStatus_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    .line 353
    iput v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->clientSideError_:I

    .line 354
    iput v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->requestAckLatencyMs_:I

    .line 355
    iput v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->userPerceivedLatencyMs_:I

    .line 356
    iput v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->selectedNbestIndex_:I

    .line 357
    iput v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->totalLatencyMs_:I

    .line 358
    iput v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->inProgressResultLatencyMs_:I

    .line 359
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;->getDefaultInstance()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->recognitionQualityInfo_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    .line 360
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    .registers 1

    .prologue
    .line 509
    #calls: Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->create()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->access$100()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 512
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->newBuilder()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;->mergeFrom(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClientPerceivedRequestStatus()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->clientPerceivedRequestStatus_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    return-object v0
.end method

.method public getClientSideError()I
    .registers 2

    .prologue
    .line 288
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->clientSideError_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->getDefaultInstanceForType()Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/ClientReportProto$ClientReport;
    .registers 2

    .prologue
    .line 106
    sget-object v0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->defaultInstance:Lcom/google/protos/speech/service/ClientReportProto$ClientReport;

    return-object v0
.end method

.method public getInProgressResultLatencyMs()I
    .registers 2

    .prologue
    .line 338
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->inProgressResultLatencyMs_:I

    return v0
.end method

.method public getRecognitionQualityInfo()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;
    .registers 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->recognitionQualityInfo_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    return-object v0
.end method

.method public getRequestAckLatencyMs()I
    .registers 2

    .prologue
    .line 298
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->requestAckLatencyMs_:I

    return v0
.end method

.method public getSelectedNbestIndex()I
    .registers 2

    .prologue
    .line 318
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->selectedNbestIndex_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 409
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->memoizedSerializedSize:I

    .line 410
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 447
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 412
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 413
    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 414
    iget-object v2, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->clientPerceivedRequestStatus_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    invoke-virtual {v2}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 417
    :cond_1c
    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 418
    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->clientSideError_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 421
    :cond_29
    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_37

    .line 422
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->requestAckLatencyMs_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 425
    :cond_37
    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_46

    .line 426
    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->userPerceivedLatencyMs_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 429
    :cond_46
    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_56

    .line 430
    const/4 v2, 0x5

    iget v3, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->selectedNbestIndex_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 433
    :cond_56
    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_66

    .line 434
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->totalLatencyMs_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 437
    :cond_66
    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_76

    .line 438
    const/4 v2, 0x7

    iget v3, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->inProgressResultLatencyMs_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 441
    :cond_76
    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_87

    .line 442
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->recognitionQualityInfo_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 445
    :cond_87
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->extensionsSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 446
    iput v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->memoizedSerializedSize:I

    move v1, v0

    .line 447
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_9
.end method

.method public getTotalLatencyMs()I
    .registers 2

    .prologue
    .line 328
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->totalLatencyMs_:I

    return v0
.end method

.method public getUserPerceivedLatencyMs()I
    .registers 2

    .prologue
    .line 308
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->userPerceivedLatencyMs_:I

    return v0
.end method

.method public hasClientPerceivedRequestStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 275
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasClientSideError()Z
    .registers 3

    .prologue
    .line 285
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

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

.method public hasInProgressResultLatencyMs()Z
    .registers 3

    .prologue
    .line 335
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

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

.method public hasRecognitionQualityInfo()Z
    .registers 3

    .prologue
    .line 345
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

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

.method public hasRequestAckLatencyMs()Z
    .registers 3

    .prologue
    .line 295
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

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

.method public hasSelectedNbestIndex()Z
    .registers 3

    .prologue
    .line 315
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

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

.method public hasTotalLatencyMs()Z
    .registers 3

    .prologue
    .line 325
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

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

.method public hasUserPerceivedLatencyMs()Z
    .registers 3

    .prologue
    .line 305
    iget v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 363
    iget-byte v0, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->memoizedIsInitialized:B

    .line 364
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 371
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 364
    goto :goto_9

    .line 366
    :cond_c
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->extensionsAreInitialized()Z

    move-result v3

    if-nez v3, :cond_16

    .line 367
    iput-byte v2, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->memoizedIsInitialized:B

    move v1, v2

    .line 368
    goto :goto_9

    .line 370
    :cond_16
    iput-byte v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->newBuilderForType()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    .registers 2

    .prologue
    .line 510
    invoke-static {}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->newBuilder()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->toBuilder()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;
    .registers 2

    .prologue
    .line 514
    invoke-static {p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->newBuilder(Lcom/google/protos/speech/service/ClientReportProto$ClientReport;)Lcom/google/protos/speech/service/ClientReportProto$ClientReport$Builder;

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
    .line 453
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 8
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 376
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->getSerializedSize()I

    .line 378
    invoke-virtual {p0}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->newExtensionWriter()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 380
    .local v0, extensionWriter:Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;,"Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<Lcom/google/protos/speech/service/ClientReportProto$ClientReport;>.ExtensionWriter;"
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1b

    .line 381
    iget-object v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->clientPerceivedRequestStatus_:Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;

    invoke-virtual {v1}, Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 383
    :cond_1b
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_26

    .line 384
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->clientSideError_:I

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 386
    :cond_26
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_32

    .line 387
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->requestAckLatencyMs_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 389
    :cond_32
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3f

    .line 390
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->userPerceivedLatencyMs_:I

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 392
    :cond_3f
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4d

    .line 393
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->selectedNbestIndex_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 395
    :cond_4d
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5b

    .line 396
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->totalLatencyMs_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 398
    :cond_5b
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_69

    .line 399
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->inProgressResultLatencyMs_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 401
    :cond_69
    invoke-virtual {v0, v5, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 402
    iget v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_79

    .line 403
    iget-object v1, p0, Lcom/google/protos/speech/service/ClientReportProto$ClientReport;->recognitionQualityInfo_:Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 405
    :cond_79
    return-void
.end method
