.class public final Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CreatePhotoCommentRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private commentId_:Ljava/lang/Object;

.field private comment_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private ownerGaiaId_:J

.field private photoId_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 21800
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;

    .line 21801
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->initFields()V

    .line 21802
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 21303
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 21407
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->memoizedIsInitialized:B

    .line 21433
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->memoizedSerializedSize:I

    .line 21304
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21298
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 21305
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21407
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->memoizedIsInitialized:B

    .line 21433
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->memoizedSerializedSize:I

    .line 21305
    return-void
.end method

.method static synthetic access$29102(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21298
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->photoId_:J

    return-wide p1
.end method

.method static synthetic access$29202(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21298
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->ownerGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$29302(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21298
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->comment_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$29402(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21298
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->commentId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$29502(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21298
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->bitField0_:I

    return p1
.end method

.method private getCommentBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 21358
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->comment_:Ljava/lang/Object;

    .line 21359
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 21360
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 21362
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->comment_:Ljava/lang/Object;

    .line 21365
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
    .line 21390
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->commentId_:Ljava/lang/Object;

    .line 21391
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 21392
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 21394
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->commentId_:Ljava/lang/Object;

    .line 21397
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;
    .registers 1

    .prologue
    .line 21309
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 21402
    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->photoId_:J

    .line 21403
    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->ownerGaiaId_:J

    .line 21404
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->comment_:Ljava/lang/Object;

    .line 21405
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->commentId_:Ljava/lang/Object;

    .line 21406
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;
    .registers 1

    .prologue
    .line 21533
    #calls: Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->access$28900()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 21536
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .registers 5

    .prologue
    .line 21344
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->comment_:Ljava/lang/Object;

    .line 21345
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 21346
    check-cast v1, Ljava/lang/String;

    .line 21354
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 21348
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 21350
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 21351
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 21352
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->comment_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 21354
    goto :goto_8
.end method

.method public getCommentId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 21376
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->commentId_:Ljava/lang/Object;

    .line 21377
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 21378
    check-cast v1, Ljava/lang/String;

    .line 21386
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 21380
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 21382
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 21383
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 21384
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->commentId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 21386
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 21298
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;
    .registers 2

    .prologue
    .line 21313
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;

    return-object v0
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 21334
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPhotoId()J
    .registers 3

    .prologue
    .line 21324
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->photoId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 21435
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->memoizedSerializedSize:I

    .line 21436
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 21456
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 21438
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 21439
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_18

    .line 21440
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->photoId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 21443
    :cond_18
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_25

    .line 21444
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->ownerGaiaId_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 21447
    :cond_25
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_35

    .line 21448
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->getCommentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 21451
    :cond_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_46

    .line 21452
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->getCommentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 21455
    :cond_46
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 21456
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public hasComment()Z
    .registers 3

    .prologue
    .line 21341
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->bitField0_:I

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

.method public hasCommentId()Z
    .registers 3

    .prologue
    .line 21373
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->bitField0_:I

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

.method public hasOwnerGaiaId()Z
    .registers 3

    .prologue
    .line 21331
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->bitField0_:I

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

    .line 21321
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->bitField0_:I

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

    .line 21409
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->memoizedIsInitialized:B

    .line 21410
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 21413
    :goto_8
    return v1

    .line 21410
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 21412
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 21298
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;
    .registers 2

    .prologue
    .line 21534
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 21298
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;
    .registers 2

    .prologue
    .line 21538
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;)Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;

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
    .line 21463
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

    .line 21418
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->getSerializedSize()I

    .line 21419
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_11

    .line 21420
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->photoId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 21422
    :cond_11
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1c

    .line 21423
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->ownerGaiaId_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 21425
    :cond_1c
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2a

    .line 21426
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->getCommentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 21428
    :cond_2a
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_39

    .line 21429
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->getCommentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 21431
    :cond_39
    return-void
.end method
