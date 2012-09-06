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
    .line 43334
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    .line 43335
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->initFields()V

    .line 43336
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 42883
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 42976
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->memoizedIsInitialized:B

    .line 42999
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->memoizedSerializedSize:I

    .line 42884
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42878
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 42885
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 42976
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->memoizedIsInitialized:B

    .line 42999
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->memoizedSerializedSize:I

    .line 42885
    return-void
.end method

.method static synthetic access$59602(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42878
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object p1
.end method

.method static synthetic access$59702(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42878
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->inviteId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$59802(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42878
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->requestError_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$59902(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42878
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;
    .registers 1

    .prologue
    .line 42889
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    return-object v0
.end method

.method private getInviteIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 42928
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->inviteId_:Ljava/lang/Object;

    .line 42929
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 42930
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 42932
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->inviteId_:Ljava/lang/Object;

    .line 42935
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
    .line 42960
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->requestError_:Ljava/lang/Object;

    .line 42961
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 42962
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 42964
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->requestError_:Ljava/lang/Object;

    .line 42967
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
    .line 42972
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 42973
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->inviteId_:Ljava/lang/Object;

    .line 42974
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->requestError_:Ljava/lang/Object;

    .line 42975
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    .registers 1

    .prologue
    .line 43095
    #calls: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;->access$59400()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 43098
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
    .line 42878
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;
    .registers 2

    .prologue
    .line 42893
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;

    return-object v0
.end method

.method public getInviteId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 42914
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->inviteId_:Ljava/lang/Object;

    .line 42915
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 42916
    check-cast v1, Ljava/lang/String;

    .line 42924
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 42918
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 42920
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 42921
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 42922
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->inviteId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 42924
    goto :goto_8
.end method

.method public getRequestError()Ljava/lang/String;
    .registers 5

    .prologue
    .line 42946
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->requestError_:Ljava/lang/Object;

    .line 42947
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 42948
    check-cast v1, Ljava/lang/String;

    .line 42956
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 42950
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 42952
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 42953
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 42954
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->requestError_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 42956
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 43001
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->memoizedSerializedSize:I

    .line 43002
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 43018
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 43004
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 43005
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1b

    .line 43006
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 43009
    :cond_1b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2a

    .line 43010
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getInviteIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 43013
    :cond_2a
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3b

    .line 43014
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getRequestErrorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 43017
    :cond_3b
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 43018
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 42904
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public hasInviteId()Z
    .registers 3

    .prologue
    .line 42911
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
    .line 42943
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

    .line 42901
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

    .line 42978
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->memoizedIsInitialized:B

    .line 42979
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 42982
    :goto_8
    return v1

    .line 42979
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 42981
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 42878
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    .registers 2

    .prologue
    .line 43096
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 42878
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;
    .registers 2

    .prologue
    .line 43100
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse$Builder;

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
    .line 43025
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

    .line 42987
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getSerializedSize()I

    .line 42988
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 42989
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 42991
    :cond_14
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_21

    .line 42992
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getInviteIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 42994
    :cond_21
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_30

    .line 42995
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteResponse;->getRequestErrorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 42997
    :cond_30
    return-void
.end method
