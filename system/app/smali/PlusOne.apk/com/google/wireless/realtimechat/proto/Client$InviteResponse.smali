.class public final Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$InviteResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InviteResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private participantError_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;",
            ">;"
        }
    .end annotation
.end field

.field private requestError_:Ljava/lang/Object;

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 20118
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    .line 20119
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->initFields()V

    .line 20120
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 19563
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 19656
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->memoizedIsInitialized:B

    .line 19682
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->memoizedSerializedSize:I

    .line 19564
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19558
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 19565
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19656
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->memoizedIsInitialized:B

    .line 19682
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->memoizedSerializedSize:I

    .line 19565
    return-void
.end method

.method static synthetic access$26502(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19558
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object p1
.end method

.method static synthetic access$26602(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19558
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$26702(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19558
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->requestError_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$26800(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19558
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->participantError_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$26802(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19558
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->participantError_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$26902(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19558
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;
    .registers 1

    .prologue
    .line 19569
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    return-object v0
.end method

.method private getRequestErrorBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 19618
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->requestError_:Ljava/lang/Object;

    .line 19619
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 19620
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 19622
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->requestError_:Ljava/lang/Object;

    .line 19625
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

.method private initFields()V
    .registers 3

    .prologue
    .line 19651
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 19652
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->timestamp_:J

    .line 19653
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->requestError_:Ljava/lang/Object;

    .line 19654
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->participantError_:Ljava/util/List;

    .line 19655
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;
    .registers 1

    .prologue
    .line 19782
    #calls: Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->access$26300()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 19785
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$InviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 19558
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;
    .registers 2

    .prologue
    .line 19573
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;

    return-object v0
.end method

.method public getParticipantError(I)Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;
    .registers 3
    .parameter "index"

    .prologue
    .line 19643
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->participantError_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;

    return-object v0
.end method

.method public getParticipantErrorCount()I
    .registers 2

    .prologue
    .line 19640
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->participantError_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getParticipantErrorList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19633
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->participantError_:Ljava/util/List;

    return-object v0
.end method

.method public getParticipantErrorOrBuilder(I)Lcom/google/wireless/realtimechat/proto/Client$ParticipantErrorOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 19647
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->participantError_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$ParticipantErrorOrBuilder;

    return-object v0
.end method

.method public getParticipantErrorOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Client$ParticipantErrorOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19637
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->participantError_:Ljava/util/List;

    return-object v0
.end method

.method public getRequestError()Ljava/lang/String;
    .registers 5

    .prologue
    .line 19604
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->requestError_:Ljava/lang/Object;

    .line 19605
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 19606
    check-cast v1, Ljava/lang/String;

    .line 19614
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 19608
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 19610
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 19611
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 19612
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->requestError_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 19614
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 19684
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->memoizedSerializedSize:I

    .line 19685
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_9

    move v2, v1

    .line 19705
    .end local v1           #size:I
    .local v2, size:I
    :goto_8
    return v2

    .line 19687
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_9
    const/4 v1, 0x0

    .line 19688
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1b

    .line 19689
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 19692
    :cond_1b
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_28

    .line 19693
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->timestamp_:J

    invoke-static {v5, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 19696
    :cond_28
    const/4 v0, 0x0

    .local v0, i:I
    :goto_29
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->participantError_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_42

    .line 19697
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->participantError_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 19696
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 19700
    :cond_42
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_53

    .line 19701
    const/4 v3, 0x5

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->getRequestErrorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 19704
    :cond_53
    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 19705
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_8
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 19584
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 19594
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->timestamp_:J

    return-wide v0
.end method

.method public hasRequestError()Z
    .registers 3

    .prologue
    .line 19601
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 19581
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasTimestamp()Z
    .registers 3

    .prologue
    .line 19591
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 19658
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->memoizedIsInitialized:B

    .line 19659
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 19662
    :goto_8
    return v1

    .line 19659
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 19661
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 19712
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
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 19667
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->getSerializedSize()I

    .line 19668
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_14

    .line 19669
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 19671
    :cond_14
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1f

    .line 19672
    iget-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->timestamp_:J

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 19674
    :cond_1f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_20
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->participantError_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 19675
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->participantError_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 19674
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 19677
    :cond_37
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_46

    .line 19678
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$InviteResponse;->getRequestErrorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 19680
    :cond_46
    return-void
.end method
