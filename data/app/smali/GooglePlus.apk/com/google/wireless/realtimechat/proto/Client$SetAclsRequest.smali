.class public final Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetAclsRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;,
        Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

.field private static final serialVersionUID:J


# instance fields
.field private acl_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private senderId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 33544
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    .line 33545
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->initFields()V

    .line 33546
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 33136
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 33243
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->memoizedIsInitialized:B

    .line 33263
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->memoizedSerializedSize:I

    .line 33137
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33131
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;-><init>(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 33138
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 33243
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->memoizedIsInitialized:B

    .line 33263
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->memoizedSerializedSize:I

    .line 33138
    return-void
.end method

.method static synthetic access$46302(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33131
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->acl_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    return-object p1
.end method

.method static synthetic access$46402(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33131
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->senderId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$46502(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33131
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;
    .registers 1

    .prologue
    .line 33142
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    return-object v0
.end method

.method private getSenderIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 33228
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->senderId_:Ljava/lang/Object;

    .line 33229
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 33230
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 33232
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->senderId_:Ljava/lang/Object;

    .line 33235
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
    .line 33240
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->EVERYONE:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->acl_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    .line 33241
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->senderId_:Ljava/lang/Object;

    .line 33242
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;
    .registers 1

    .prologue
    .line 33355
    #calls: Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->access$46100()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 33358
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAcl()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;
    .registers 2

    .prologue
    .line 33204
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->acl_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 33131
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;
    .registers 2

    .prologue
    .line 33146
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 33214
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->senderId_:Ljava/lang/Object;

    .line 33215
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 33216
    check-cast v1, Ljava/lang/String;

    .line 33224
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 33218
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 33220
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 33221
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 33222
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->senderId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 33224
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 33265
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->memoizedSerializedSize:I

    .line 33266
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 33278
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 33268
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 33269
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1b

    .line 33270
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->acl_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 33273
    :cond_1b
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2a

    .line 33274
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->getSenderIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 33277
    :cond_2a
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 33278
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasAcl()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 33201
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasSenderId()Z
    .registers 3

    .prologue
    .line 33211
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->bitField0_:I

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

    .line 33245
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->memoizedIsInitialized:B

    .line 33246
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 33249
    :goto_8
    return v1

    .line 33246
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 33248
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 33131
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;
    .registers 2

    .prologue
    .line 33356
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 33131
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;
    .registers 2

    .prologue
    .line 33360
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Builder;

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
    .line 33285
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

    .line 33254
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->getSerializedSize()I

    .line 33255
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 33256
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->acl_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 33258
    :cond_14
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_21

    .line 33259
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest;->getSenderIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 33261
    :cond_21
    return-void
.end method
