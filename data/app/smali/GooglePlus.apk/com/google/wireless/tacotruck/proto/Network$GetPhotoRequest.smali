.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetPhotoRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private focusObfuscatedOwnerId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private ownerGaiaId_:J

.field private photoId_:J

.field private photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 48568
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;

    .line 48569
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->initFields()V

    .line 48570
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 48082
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 48164
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->memoizedIsInitialized:B

    .line 48190
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->memoizedSerializedSize:I

    .line 48083
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48077
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 48084
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 48164
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->memoizedIsInitialized:B

    .line 48190
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->memoizedSerializedSize:I

    .line 48084
    return-void
.end method

.method static synthetic access$67802(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48077
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->photoId_:J

    return-wide p1
.end method

.method static synthetic access$67902(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48077
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->ownerGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$68002(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48077
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$68102(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48077
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object p1
.end method

.method static synthetic access$68202(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48077
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;
    .registers 1

    .prologue
    .line 48088
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;

    return-object v0
.end method

.method private getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 48137
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 48138
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 48139
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 48141
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 48144
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
    const-wide/16 v0, 0x0

    .line 48159
    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->photoId_:J

    .line 48160
    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->ownerGaiaId_:J

    .line 48161
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 48162
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 48163
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    .registers 1

    .prologue
    .line 48290
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->access$67600()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 48293
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 48077
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;
    .registers 2

    .prologue
    .line 48092
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;

    return-object v0
.end method

.method public getFocusObfuscatedOwnerId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 48123
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    .line 48124
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 48125
    check-cast v1, Ljava/lang/String;

    .line 48133
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 48127
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 48129
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 48130
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 48131
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->focusObfuscatedOwnerId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 48133
    goto :goto_8
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 48113
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPhotoId()J
    .registers 3

    .prologue
    .line 48103
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->photoId_:J

    return-wide v0
.end method

.method public getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2

    .prologue
    .line 48155
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 48192
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->memoizedSerializedSize:I

    .line 48193
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 48213
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 48195
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 48196
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_18

    .line 48197
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->photoId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 48200
    :cond_18
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_25

    .line 48201
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->ownerGaiaId_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 48204
    :cond_25
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_35

    .line 48205
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 48208
    :cond_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_44

    .line 48209
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 48212
    :cond_44
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 48213
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public hasFocusObfuscatedOwnerId()Z
    .registers 3

    .prologue
    .line 48120
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->bitField0_:I

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

.method public hasOwnerGaiaId()Z
    .registers 3

    .prologue
    .line 48110
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->bitField0_:I

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

.method public hasPhotoId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 48100
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPhotoOptions()Z
    .registers 3

    .prologue
    .line 48152
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 48166
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->memoizedIsInitialized:B

    .line 48167
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 48170
    :goto_8
    return v1

    .line 48167
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 48169
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 48077
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    .registers 2

    .prologue
    .line 48291
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 48077
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;
    .registers 2

    .prologue
    .line 48295
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest$Builder;

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
    .line 48220
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 48175
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->getSerializedSize()I

    .line 48176
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_11

    .line 48177
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->photoId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 48179
    :cond_11
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1c

    .line 48180
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->ownerGaiaId_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 48182
    :cond_1c
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2a

    .line 48183
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 48185
    :cond_2a
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_37

    .line 48186
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoRequest;->getFocusObfuscatedOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 48188
    :cond_37
    return-void
.end method
