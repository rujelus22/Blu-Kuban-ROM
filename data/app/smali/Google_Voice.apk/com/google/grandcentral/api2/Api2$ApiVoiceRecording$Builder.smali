.class public final Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiVoiceRecordingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;",
        "Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiVoiceRecordingOrBuilder;"
    }
.end annotation


# instance fields
.field private audioBytes_:Lcom/google/protobuf/ByteString;

.field private bitField0_:I

.field private bytesRemaining_:J

.field private callId_:Ljava/lang/Object;

.field private chunkSize_:J

.field private endOffset_:J

.field private format_:I

.field private size_:J

.field private startOffset_:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 21920
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 22078
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->callId_:Ljava/lang/Object;

    .line 22131
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->audioBytes_:Lcom/google/protobuf/ByteString;

    .line 21921
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->maybeForceBuilderInitialization()V

    .line 21922
    return-void
.end method

.method static synthetic access$25700()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;
    .registers 1

    .prologue
    .line 21915
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;
    .registers 1

    .prologue
    .line 21927
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 21925
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;
    .registers 3

    .prologue
    .line 21960
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    move-result-object v0

    .line 21961
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 21962
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 21964
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 21915
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;
    .registers 6

    .prologue
    .line 21968
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 21969
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    .line 21970
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 21971
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 21972
    or-int/lit8 v2, v2, 0x1

    .line 21974
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->callId_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->callId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->access$25902(Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21975
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 21976
    or-int/lit8 v2, v2, 0x2

    .line 21978
    :cond_1c
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->audioBytes_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->audioBytes_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->access$26002(Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 21979
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 21980
    or-int/lit8 v2, v2, 0x4

    .line 21982
    :cond_28
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->format_:I

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->format_:I
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->access$26102(Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;I)I

    .line 21983
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 21984
    or-int/lit8 v2, v2, 0x8

    .line 21986
    :cond_35
    iget-wide v3, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->size_:J

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->size_:J
    invoke-static {v1, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->access$26202(Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;J)J

    .line 21987
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 21988
    or-int/lit8 v2, v2, 0x10

    .line 21990
    :cond_42
    iget-wide v3, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->chunkSize_:J

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->chunkSize_:J
    invoke-static {v1, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->access$26302(Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;J)J

    .line 21991
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4f

    .line 21992
    or-int/lit8 v2, v2, 0x20

    .line 21994
    :cond_4f
    iget-wide v3, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->startOffset_:J

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->startOffset_:J
    invoke-static {v1, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->access$26402(Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;J)J

    .line 21995
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5c

    .line 21996
    or-int/lit8 v2, v2, 0x40

    .line 21998
    :cond_5c
    iget-wide v3, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->endOffset_:J

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->endOffset_:J
    invoke-static {v1, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->access$26502(Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;J)J

    .line 21999
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_69

    .line 22000
    or-int/lit16 v2, v2, 0x80

    .line 22002
    :cond_69
    iget-wide v3, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bytesRemaining_:J

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bytesRemaining_:J
    invoke-static {v1, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->access$26602(Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;J)J

    .line 22003
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->access$26702(Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;I)I

    .line 22004
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 21915
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 21931
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 21932
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->callId_:Ljava/lang/Object;

    .line 21933
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    .line 21934
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->audioBytes_:Lcom/google/protobuf/ByteString;

    .line 21935
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    .line 21936
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->format_:I

    .line 21937
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    .line 21938
    iput-wide v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->size_:J

    .line 21939
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    .line 21940
    iput-wide v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->chunkSize_:J

    .line 21941
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    .line 21942
    iput-wide v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->startOffset_:J

    .line 21943
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    .line 21944
    iput-wide v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->endOffset_:J

    .line 21945
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    .line 21946
    iput-wide v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bytesRemaining_:J

    .line 21947
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    .line 21948
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 21915
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 21915
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAudioBytes()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;
    .registers 2

    .prologue
    .line 22148
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    .line 22149
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->getAudioBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->audioBytes_:Lcom/google/protobuf/ByteString;

    .line 22151
    return-object p0
.end method

.method public clearBytesRemaining()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;
    .registers 3

    .prologue
    .line 22274
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    .line 22275
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bytesRemaining_:J

    .line 22277
    return-object p0
.end method

.method public clearCallId()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;
    .registers 2

    .prologue
    .line 22114
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    .line 22115
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->getCallId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->callId_:Ljava/lang/Object;

    .line 22117
    return-object p0
.end method

.method public clearChunkSize()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;
    .registers 3

    .prologue
    .line 22211
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    .line 22212
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->chunkSize_:J

    .line 22214
    return-object p0
.end method

.method public clearEndOffset()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;
    .registers 3

    .prologue
    .line 22253
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    .line 22254
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->endOffset_:J

    .line 22256
    return-object p0
.end method

.method public clearFormat()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;
    .registers 2

    .prologue
    .line 22169
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    .line 22170
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->format_:I

    .line 22172
    return-object p0
.end method

.method public clearSize()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;
    .registers 3

    .prologue
    .line 22190
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    .line 22191
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->size_:J

    .line 22193
    return-object p0
.end method

.method public clearStartOffset()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;
    .registers 3

    .prologue
    .line 22232
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    .line 22233
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->startOffset_:J

    .line 22235
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;
    .registers 3

    .prologue
    .line 21952
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 21915
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 21915
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 21915
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 21915
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAudioBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 22136
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->audioBytes_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getBytesRemaining()J
    .registers 3

    .prologue
    .line 22265
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bytesRemaining_:J

    return-wide v0
.end method

.method public getCallId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 22083
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->callId_:Ljava/lang/Object;

    .line 22084
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 22085
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 22086
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->callId_:Ljava/lang/Object;

    .line 22089
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getCallIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 22094
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->callId_:Ljava/lang/Object;

    .line 22095
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 22096
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 22098
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->callId_:Ljava/lang/Object;

    .line 22101
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

.method public getChunkSize()J
    .registers 3

    .prologue
    .line 22202
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->chunkSize_:J

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;
    .registers 2

    .prologue
    .line 21956
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 21915
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 21915
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    move-result-object v0

    return-object v0
.end method

.method public getEndOffset()J
    .registers 3

    .prologue
    .line 22244
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->endOffset_:J

    return-wide v0
.end method

.method public getFormat()I
    .registers 2

    .prologue
    .line 22160
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->format_:I

    return v0
.end method

.method public getSize()J
    .registers 3

    .prologue
    .line 22181
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->size_:J

    return-wide v0
.end method

.method public getStartOffset()J
    .registers 3

    .prologue
    .line 22223
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->startOffset_:J

    return-wide v0
.end method

.method public hasAudioBytes()Z
    .registers 3

    .prologue
    .line 22133
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

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

.method public hasBytesRemaining()Z
    .registers 3

    .prologue
    .line 22262
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

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

.method public hasCallId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 22080
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasChunkSize()Z
    .registers 3

    .prologue
    .line 22199
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

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

.method public hasEndOffset()Z
    .registers 3

    .prologue
    .line 22241
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

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

.method public hasFormat()Z
    .registers 3

    .prologue
    .line 22157
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

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

.method public hasSize()Z
    .registers 3

    .prologue
    .line 22178
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

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

.method public hasStartOffset()Z
    .registers 3

    .prologue
    .line 22220
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

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
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 22039
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->hasCallId()Z

    move-result v1

    if-nez v1, :cond_8

    .line 22055
    :cond_7
    :goto_7
    return v0

    .line 22043
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->hasAudioBytes()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 22047
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->hasFormat()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 22051
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->hasSize()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 22055
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 22008
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 22035
    :cond_6
    :goto_6
    return-object p0

    .line 22009
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->hasCallId()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 22010
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    .line 22011
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->callId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->access$25900(Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->callId_:Ljava/lang/Object;

    .line 22014
    :cond_19
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->hasAudioBytes()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 22015
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->getAudioBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->setAudioBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;

    .line 22017
    :cond_26
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->hasFormat()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 22018
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->getFormat()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->setFormat(I)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;

    .line 22020
    :cond_33
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->hasSize()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 22021
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->getSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->setSize(J)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;

    .line 22023
    :cond_40
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->hasChunkSize()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 22024
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->getChunkSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->setChunkSize(J)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;

    .line 22026
    :cond_4d
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->hasStartOffset()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 22027
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->getStartOffset()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->setStartOffset(J)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;

    .line 22029
    :cond_5a
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->hasEndOffset()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 22030
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->getEndOffset()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->setEndOffset(J)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;

    .line 22032
    :cond_67
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->hasBytesRemaining()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22033
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->getBytesRemaining()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->setBytesRemaining(J)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22062
    const/4 v2, 0x0

    .line 22064
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 22069
    if-eqz v2, :cond_10

    .line 22070
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;

    .line 22073
    :cond_10
    return-object p0

    .line 22065
    :catch_11
    move-exception v1

    .line 22066
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    move-object v2, v0

    .line 22067
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 22069
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 22070
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;

    :cond_21
    throw v3
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21915
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 21915
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording;)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21915
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAudioBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 22139
    if-nez p1, :cond_8

    .line 22140
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22142
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    .line 22143
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->audioBytes_:Lcom/google/protobuf/ByteString;

    .line 22145
    return-object p0
.end method

.method public setBytesRemaining(J)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 22268
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    .line 22269
    iput-wide p1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bytesRemaining_:J

    .line 22271
    return-object p0
.end method

.method public setCallId(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 22105
    if-nez p1, :cond_8

    .line 22106
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22108
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    .line 22109
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->callId_:Ljava/lang/Object;

    .line 22111
    return-object p0
.end method

.method public setCallIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 22121
    if-nez p1, :cond_8

    .line 22122
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22124
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    .line 22125
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->callId_:Ljava/lang/Object;

    .line 22127
    return-object p0
.end method

.method public setChunkSize(J)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 22205
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    .line 22206
    iput-wide p1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->chunkSize_:J

    .line 22208
    return-object p0
.end method

.method public setEndOffset(J)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 22247
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    .line 22248
    iput-wide p1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->endOffset_:J

    .line 22250
    return-object p0
.end method

.method public setFormat(I)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 22163
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    .line 22164
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->format_:I

    .line 22166
    return-object p0
.end method

.method public setSize(J)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 22184
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    .line 22185
    iput-wide p1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->size_:J

    .line 22187
    return-object p0
.end method

.method public setStartOffset(J)Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 22226
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->bitField0_:I

    .line 22227
    iput-wide p1, p0, Lcom/google/grandcentral/api2/Api2$ApiVoiceRecording$Builder;->startOffset_:J

    .line 22229
    return-object p0
.end method
