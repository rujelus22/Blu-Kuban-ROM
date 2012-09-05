.class public final Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetAvatarResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private contentType_:Ljava/lang/Object;

.field private data_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 9284
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;

    .line 9285
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->initFields()V

    .line 9286
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 8927
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 8987
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->memoizedIsInitialized:B

    .line 9007
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->memoizedSerializedSize:I

    .line 8928
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8922
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 8929
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8987
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->memoizedIsInitialized:B

    .line 9007
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->memoizedSerializedSize:I

    .line 8929
    return-void
.end method

.method static synthetic access$12202(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8922
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->data_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$12302(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8922
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->contentType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12402(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8922
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->bitField0_:I

    return p1
.end method

.method private getContentTypeBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 8972
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->contentType_:Ljava/lang/Object;

    .line 8973
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 8974
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8976
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->contentType_:Ljava/lang/Object;

    .line 8979
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;
    .registers 1

    .prologue
    .line 8933
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 8984
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->data_:Lcom/google/protobuf/ByteString;

    .line 8985
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->contentType_:Ljava/lang/Object;

    .line 8986
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;
    .registers 1

    .prologue
    .line 9099
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->access$12000()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9035
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;->access$11900(Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .registers 5

    .prologue
    .line 8958
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->contentType_:Ljava/lang/Object;

    .line 8959
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 8960
    check-cast v1, Ljava/lang/String;

    .line 8968
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 8962
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8964
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 8965
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 8966
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->contentType_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 8968
    goto :goto_8
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 8948
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8922
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;
    .registers 2

    .prologue
    .line 8937
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 9009
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->memoizedSerializedSize:I

    .line 9010
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 9022
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 9012
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 9013
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 9014
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->data_:Lcom/google/protobuf/ByteString;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9017
    :cond_17
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 9018
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->getContentTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9021
    :cond_26
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 9022
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasContentType()Z
    .registers 3

    .prologue
    .line 8955
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->bitField0_:I

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

.method public hasData()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 8945
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->bitField0_:I

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

    .line 8989
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->memoizedIsInitialized:B

    .line 8990
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 8993
    :goto_8
    return v1

    .line 8990
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 8992
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->memoizedIsInitialized:B

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
    .line 9029
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

    .line 8998
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->getSerializedSize()I

    .line 8999
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 9000
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->data_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9002
    :cond_10
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 9003
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->getContentTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9005
    :cond_1d
    return-void
.end method
