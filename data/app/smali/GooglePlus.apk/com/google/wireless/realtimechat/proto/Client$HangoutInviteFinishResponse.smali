.class public final Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HangoutInviteFinishResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private requestError_:Ljava/lang/Object;

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 46216
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    .line 46217
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->initFields()V

    .line 46218
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 45855
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 45915
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->memoizedIsInitialized:B

    .line 45935
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->memoizedSerializedSize:I

    .line 45856
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45850
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 45857
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 45915
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->memoizedIsInitialized:B

    .line 45935
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->memoizedSerializedSize:I

    .line 45857
    return-void
.end method

.method static synthetic access$63902(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45850
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object p1
.end method

.method static synthetic access$64002(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45850
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->requestError_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$64102(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45850
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;
    .registers 1

    .prologue
    .line 45861
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    return-object v0
.end method

.method private getRequestErrorBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 45900
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->requestError_:Ljava/lang/Object;

    .line 45901
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 45902
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 45904
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->requestError_:Ljava/lang/Object;

    .line 45907
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
    .line 45912
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 45913
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->requestError_:Ljava/lang/Object;

    .line 45914
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;
    .registers 1

    .prologue
    .line 46027
    #calls: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->access$63700()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 46030
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 45850
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;
    .registers 2

    .prologue
    .line 45865
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;

    return-object v0
.end method

.method public getRequestError()Ljava/lang/String;
    .registers 5

    .prologue
    .line 45886
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->requestError_:Ljava/lang/Object;

    .line 45887
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 45888
    check-cast v1, Ljava/lang/String;

    .line 45896
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 45890
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 45892
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 45893
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 45894
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->requestError_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 45896
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 45937
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->memoizedSerializedSize:I

    .line 45938
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 45950
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 45940
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 45941
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1b

    .line 45942
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 45945
    :cond_1b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2a

    .line 45946
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->getRequestErrorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 45949
    :cond_2a
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 45950
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 45876
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public hasRequestError()Z
    .registers 3

    .prologue
    .line 45883
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->bitField0_:I

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

    .line 45873
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->bitField0_:I

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

    .line 45917
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->memoizedIsInitialized:B

    .line 45918
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 45921
    :goto_8
    return v1

    .line 45918
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 45920
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 45850
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;
    .registers 2

    .prologue
    .line 46028
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 45850
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;
    .registers 2

    .prologue
    .line 46032
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse$Builder;

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
    .line 45957
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

    .line 45926
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->getSerializedSize()I

    .line 45927
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 45928
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 45930
    :cond_14
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_21

    .line 45931
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteFinishResponse;->getRequestErrorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 45933
    :cond_21
    return-void
.end method
