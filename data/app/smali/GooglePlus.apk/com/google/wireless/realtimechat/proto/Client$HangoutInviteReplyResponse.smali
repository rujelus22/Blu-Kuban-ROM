.class public final Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HangoutInviteReplyResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private inviteObsolete_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private requestError_:Ljava/lang/Object;

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 45321
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    .line 45322
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->initFields()V

    .line 45323
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 44907
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 44978
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->memoizedIsInitialized:B

    .line 45001
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->memoizedSerializedSize:I

    .line 44908
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44902
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 44909
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 44978
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->memoizedIsInitialized:B

    .line 45001
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->memoizedSerializedSize:I

    .line 44909
    return-void
.end method

.method static synthetic access$62502(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44902
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object p1
.end method

.method static synthetic access$62602(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44902
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->requestError_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$62702(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44902
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->inviteObsolete_:Z

    return p1
.end method

.method static synthetic access$62802(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44902
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;
    .registers 1

    .prologue
    .line 44913
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    return-object v0
.end method

.method private getRequestErrorBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 44952
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->requestError_:Ljava/lang/Object;

    .line 44953
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 44954
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 44956
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->requestError_:Ljava/lang/Object;

    .line 44959
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
    .line 44974
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 44975
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->requestError_:Ljava/lang/Object;

    .line 44976
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->inviteObsolete_:Z

    .line 44977
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;
    .registers 1

    .prologue
    .line 45097
    #calls: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->access$62300()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 45100
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 44902
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;
    .registers 2

    .prologue
    .line 44917
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    return-object v0
.end method

.method public getInviteObsolete()Z
    .registers 2

    .prologue
    .line 44970
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->inviteObsolete_:Z

    return v0
.end method

.method public getRequestError()Ljava/lang/String;
    .registers 5

    .prologue
    .line 44938
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->requestError_:Ljava/lang/Object;

    .line 44939
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 44940
    check-cast v1, Ljava/lang/String;

    .line 44948
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 44942
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 44944
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 44945
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 44946
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->requestError_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 44948
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 45003
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->memoizedSerializedSize:I

    .line 45004
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 45020
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 45006
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 45007
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1b

    .line 45008
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 45011
    :cond_1b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2a

    .line 45012
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->getRequestErrorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 45015
    :cond_2a
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_39

    .line 45016
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->inviteObsolete_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 45019
    :cond_39
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 45020
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 44928
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public hasInviteObsolete()Z
    .registers 3

    .prologue
    .line 44967
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->bitField0_:I

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

.method public hasRequestError()Z
    .registers 3

    .prologue
    .line 44935
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->bitField0_:I

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

    .line 44925
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->bitField0_:I

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

    .line 44980
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->memoizedIsInitialized:B

    .line 44981
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 44984
    :goto_8
    return v1

    .line 44981
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 44983
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 44902
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;
    .registers 2

    .prologue
    .line 45098
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 44902
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;
    .registers 2

    .prologue
    .line 45102
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

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
    .line 45027
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

    .line 44989
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->getSerializedSize()I

    .line 44990
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 44991
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 44993
    :cond_14
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_21

    .line 44994
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->getRequestErrorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 44996
    :cond_21
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 44997
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->inviteObsolete_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 44999
    :cond_2e
    return-void
.end method
