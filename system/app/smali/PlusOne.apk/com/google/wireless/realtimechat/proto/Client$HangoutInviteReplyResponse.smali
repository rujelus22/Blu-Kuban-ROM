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
    .line 45216
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    .line 45217
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->initFields()V

    .line 45218
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 44802
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 44873
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->memoizedIsInitialized:B

    .line 44896
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->memoizedSerializedSize:I

    .line 44803
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44797
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 44804
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 44873
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->memoizedIsInitialized:B

    .line 44896
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->memoizedSerializedSize:I

    .line 44804
    return-void
.end method

.method static synthetic access$62402(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44797
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object p1
.end method

.method static synthetic access$62502(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44797
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->requestError_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$62602(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44797
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->inviteObsolete_:Z

    return p1
.end method

.method static synthetic access$62702(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44797
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;
    .registers 1

    .prologue
    .line 44808
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    return-object v0
.end method

.method private getRequestErrorBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 44847
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->requestError_:Ljava/lang/Object;

    .line 44848
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 44849
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 44851
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->requestError_:Ljava/lang/Object;

    .line 44854
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
    .line 44869
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 44870
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->requestError_:Ljava/lang/Object;

    .line 44871
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->inviteObsolete_:Z

    .line 44872
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;
    .registers 1

    .prologue
    .line 44992
    #calls: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;->access$62200()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 44995
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
    .line 44797
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;
    .registers 2

    .prologue
    .line 44812
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;

    return-object v0
.end method

.method public getInviteObsolete()Z
    .registers 2

    .prologue
    .line 44865
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->inviteObsolete_:Z

    return v0
.end method

.method public getRequestError()Ljava/lang/String;
    .registers 5

    .prologue
    .line 44833
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->requestError_:Ljava/lang/Object;

    .line 44834
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 44835
    check-cast v1, Ljava/lang/String;

    .line 44843
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 44837
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 44839
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 44840
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 44841
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->requestError_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 44843
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 44898
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->memoizedSerializedSize:I

    .line 44899
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 44915
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 44901
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 44902
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1b

    .line 44903
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 44906
    :cond_1b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2a

    .line 44907
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->getRequestErrorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 44910
    :cond_2a
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_39

    .line 44911
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->inviteObsolete_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 44914
    :cond_39
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 44915
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 44823
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public hasInviteObsolete()Z
    .registers 3

    .prologue
    .line 44862
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
    .line 44830
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

    .line 44820
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

    .line 44875
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->memoizedIsInitialized:B

    .line 44876
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 44879
    :goto_8
    return v1

    .line 44876
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 44878
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->memoizedIsInitialized:B

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
    .line 44922
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

    .line 44884
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->getSerializedSize()I

    .line 44885
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 44886
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 44888
    :cond_14
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_21

    .line 44889
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->getRequestErrorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 44891
    :cond_21
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 44892
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteReplyResponse;->inviteObsolete_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 44894
    :cond_2e
    return-void
.end method
