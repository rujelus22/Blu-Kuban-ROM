.class public final Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HangoutInviteKeepAliveResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

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
    .line 44121
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    .line 44122
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->initFields()V

    .line 44123
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 43760
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 43820
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->memoizedIsInitialized:B

    .line 43840
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->memoizedSerializedSize:I

    .line 43761
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43755
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 43762
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 43820
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->memoizedIsInitialized:B

    .line 43840
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->memoizedSerializedSize:I

    .line 43762
    return-void
.end method

.method static synthetic access$60902(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43755
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object p1
.end method

.method static synthetic access$61002(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43755
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->requestError_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$61102(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43755
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;
    .registers 1

    .prologue
    .line 43766
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    return-object v0
.end method

.method private getRequestErrorBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 43805
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->requestError_:Ljava/lang/Object;

    .line 43806
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 43807
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 43809
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->requestError_:Ljava/lang/Object;

    .line 43812
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
    .line 43817
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 43818
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->requestError_:Ljava/lang/Object;

    .line 43819
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;
    .registers 1

    .prologue
    .line 43932
    #calls: Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->access$60700()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 43935
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 43755
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;
    .registers 2

    .prologue
    .line 43770
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;

    return-object v0
.end method

.method public getRequestError()Ljava/lang/String;
    .registers 5

    .prologue
    .line 43791
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->requestError_:Ljava/lang/Object;

    .line 43792
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 43793
    check-cast v1, Ljava/lang/String;

    .line 43801
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 43795
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 43797
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 43798
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 43799
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->requestError_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 43801
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 43842
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->memoizedSerializedSize:I

    .line 43843
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 43855
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 43845
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 43846
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1b

    .line 43847
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 43850
    :cond_1b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2a

    .line 43851
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->getRequestErrorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 43854
    :cond_2a
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 43855
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 43781
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public hasRequestError()Z
    .registers 3

    .prologue
    .line 43788
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->bitField0_:I

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

    .line 43778
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->bitField0_:I

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

    .line 43822
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->memoizedIsInitialized:B

    .line 43823
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 43826
    :goto_8
    return v1

    .line 43823
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 43825
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 43755
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;
    .registers 2

    .prologue
    .line 43933
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 43755
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;
    .registers 2

    .prologue
    .line 43937
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse$Builder;

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
    .line 43862
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

    .line 43831
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->getSerializedSize()I

    .line 43832
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 43833
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 43835
    :cond_14
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_21

    .line 43836
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutInviteKeepAliveResponse;->getRequestErrorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 43838
    :cond_21
    return-void
.end method
