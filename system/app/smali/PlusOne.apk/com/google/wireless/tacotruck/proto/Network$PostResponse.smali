.class public final Lcom/google/wireless/tacotruck/proto/Network$PostResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PostResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PostResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PostResponse;

.field private static final serialVersionUID:J


# instance fields
.field private activityId_:Ljava/lang/Object;

.field private albumId_:J

.field private bitField0_:I

.field private commentId_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 13627
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PostResponse;

    .line 13628
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PostResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->initFields()V

    .line 13629
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 13183
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 13276
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->memoizedIsInitialized:B

    .line 13299
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->memoizedSerializedSize:I

    .line 13184
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13178
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 13185
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 13276
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->memoizedIsInitialized:B

    .line 13299
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->memoizedSerializedSize:I

    .line 13185
    return-void
.end method

.method static synthetic access$17402(Lcom/google/wireless/tacotruck/proto/Network$PostResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13178
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->activityId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$17502(Lcom/google/wireless/tacotruck/proto/Network$PostResponse;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13178
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->albumId_:J

    return-wide p1
.end method

.method static synthetic access$17602(Lcom/google/wireless/tacotruck/proto/Network$PostResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13178
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->commentId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$17702(Lcom/google/wireless/tacotruck/proto/Network$PostResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13178
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->bitField0_:I

    return p1
.end method

.method private getActivityIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 13218
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->activityId_:Ljava/lang/Object;

    .line 13219
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 13220
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13222
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->activityId_:Ljava/lang/Object;

    .line 13225
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

.method private getCommentIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 13260
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->commentId_:Ljava/lang/Object;

    .line 13261
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 13262
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13264
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->commentId_:Ljava/lang/Object;

    .line 13267
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PostResponse;
    .registers 1

    .prologue
    .line 13189
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PostResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 13272
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->activityId_:Ljava/lang/Object;

    .line 13273
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->albumId_:J

    .line 13274
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->commentId_:Ljava/lang/Object;

    .line 13275
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;
    .registers 1

    .prologue
    .line 13395
    #calls: Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->access$17200()Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$PostResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13331
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$PostResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;->access$17100(Lcom/google/wireless/tacotruck/proto/Network$PostResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PostResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActivityId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 13204
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->activityId_:Ljava/lang/Object;

    .line 13205
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 13206
    check-cast v1, Ljava/lang/String;

    .line 13214
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 13208
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 13210
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 13211
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 13212
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->activityId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 13214
    goto :goto_8
.end method

.method public getAlbumId()J
    .registers 3

    .prologue
    .line 13236
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->albumId_:J

    return-wide v0
.end method

.method public getCommentId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 13246
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->commentId_:Ljava/lang/Object;

    .line 13247
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 13248
    check-cast v1, Ljava/lang/String;

    .line 13256
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 13250
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 13252
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 13253
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 13254
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->commentId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 13256
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13178
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PostResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PostResponse;
    .registers 2

    .prologue
    .line 13193
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PostResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 13301
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->memoizedSerializedSize:I

    .line 13302
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 13318
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 13304
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 13305
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 13306
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->getActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13309
    :cond_19
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 13310
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->albumId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 13313
    :cond_26
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_37

    .line 13314
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->getCommentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13317
    :cond_37
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 13318
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasActivityId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 13201
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasAlbumId()Z
    .registers 3

    .prologue
    .line 13233
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->bitField0_:I

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

.method public hasCommentId()Z
    .registers 3

    .prologue
    .line 13243
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 13278
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->memoizedIsInitialized:B

    .line 13279
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 13282
    :goto_8
    return v1

    .line 13279
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 13281
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->memoizedIsInitialized:B

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
    .line 13325
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

    .line 13287
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->getSerializedSize()I

    .line 13288
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 13289
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->getActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 13291
    :cond_12
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 13292
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->albumId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 13294
    :cond_1d
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2c

    .line 13295
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PostResponse;->getCommentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 13297
    :cond_2c
    return-void
.end method
