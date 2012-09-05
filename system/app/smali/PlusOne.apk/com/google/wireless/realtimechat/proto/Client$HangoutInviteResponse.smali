.class public final Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HangoutInviteResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private inviteId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private requestError_:Ljava/lang/Object;

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 43229
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    .line 43230
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->initFields()V

    .line 43231
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 42778
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 42871
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->memoizedIsInitialized:B

    .line 42894
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->memoizedSerializedSize:I

    .line 42779
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42773
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 42780
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 42871
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->memoizedIsInitialized:B

    .line 42894
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->memoizedSerializedSize:I

    .line 42780
    return-void
.end method

.method static synthetic access$59502(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42773
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object p1
.end method

.method static synthetic access$59602(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42773
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->inviteId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$59702(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42773
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->requestError_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$59802(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42773
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;
    .registers 1

    .prologue
    .line 42784
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    return-object v0
.end method

.method private getInviteIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 42823
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->inviteId_:Ljava/lang/Object;

    .line 42824
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 42825
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 42827
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->inviteId_:Ljava/lang/Object;

    .line 42830
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

.method private getRequestErrorBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 42855
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->requestError_:Ljava/lang/Object;

    .line 42856
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 42857
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 42859
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->requestError_:Ljava/lang/Object;

    .line 42862
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
    .registers 2

    .prologue
    .line 42867
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 42868
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->inviteId_:Ljava/lang/Object;

    .line 42869
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->requestError_:Ljava/lang/Object;

    .line 42870
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    .registers 1

    .prologue
    .line 42990
    #calls: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->access$59300()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 42993
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 42773
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;
    .registers 2

    .prologue
    .line 42788
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    return-object v0
.end method

.method public getInviteId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 42809
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->inviteId_:Ljava/lang/Object;

    .line 42810
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 42811
    check-cast v1, Ljava/lang/String;

    .line 42819
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 42813
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 42815
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 42816
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 42817
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->inviteId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 42819
    goto :goto_8
.end method

.method public getRequestError()Ljava/lang/String;
    .registers 5

    .prologue
    .line 42841
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->requestError_:Ljava/lang/Object;

    .line 42842
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 42843
    check-cast v1, Ljava/lang/String;

    .line 42851
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 42845
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 42847
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 42848
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 42849
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->requestError_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 42851
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 42896
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->memoizedSerializedSize:I

    .line 42897
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 42913
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 42899
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 42900
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1b

    .line 42901
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 42904
    :cond_1b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2a

    .line 42905
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getInviteIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 42908
    :cond_2a
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3b

    .line 42909
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getRequestErrorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 42912
    :cond_3b
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 42913
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 42799
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public hasInviteId()Z
    .registers 3

    .prologue
    .line 42806
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->bitField0_:I

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

.method public hasRequestError()Z
    .registers 3

    .prologue
    .line 42838
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->bitField0_:I

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

    .line 42796
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 42873
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->memoizedIsInitialized:B

    .line 42874
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 42877
    :goto_8
    return v1

    .line 42874
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 42876
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->memoizedIsInitialized:B

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
    .line 42920
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

    .line 42882
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getSerializedSize()I

    .line 42883
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 42884
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 42886
    :cond_14
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_21

    .line 42887
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getInviteIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 42889
    :cond_21
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_30

    .line 42890
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getRequestErrorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 42892
    :cond_30
    return-void
.end method
