.class public final Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PlusEventItem.java"

# interfaces
.implements Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbumOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/embeds/PlusEventItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlusEventAlbum"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;

.field private static final serialVersionUID:J


# instance fields
.field private albumId_:Ljava/lang/Object;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private unnamedShapeCount_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 4736
    new-instance v0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;-><init>(Z)V

    sput-object v0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->defaultInstance:Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;

    .line 4737
    sget-object v0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->defaultInstance:Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;

    invoke-direct {v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->initFields()V

    .line 4738
    return-void
.end method

.method private constructor <init>(Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 4382
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 4442
    iput-byte v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->memoizedIsInitialized:B

    .line 4462
    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->memoizedSerializedSize:I

    .line 4383
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;Lcom/google/protos/embeds/PlusEventItem$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4377
    invoke-direct {p0, p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;-><init>(Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 4384
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4442
    iput-byte v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->memoizedIsInitialized:B

    .line 4462
    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->memoizedSerializedSize:I

    .line 4384
    return-void
.end method

.method static synthetic access$5802(Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4377
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->albumId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5902(Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4377
    iput p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->unnamedShapeCount_:I

    return p1
.end method

.method static synthetic access$6002(Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4377
    iput p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->bitField0_:I

    return p1
.end method

.method private getAlbumIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4417
    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->albumId_:Ljava/lang/Object;

    .line 4418
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4419
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4421
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->albumId_:Ljava/lang/Object;

    .line 4424
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

.method public static getDefaultInstance()Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;
    .registers 1

    .prologue
    .line 4388
    sget-object v0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->defaultInstance:Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 4439
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->albumId_:Ljava/lang/Object;

    .line 4440
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->unnamedShapeCount_:I

    .line 4441
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;
    .registers 1

    .prologue
    .line 4554
    #calls: Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->create()Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->access$5600()Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;)Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 4557
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->newBuilder()Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;->mergeFrom(Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;)Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlbumId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4403
    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->albumId_:Ljava/lang/Object;

    .line 4404
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 4405
    check-cast v1, Ljava/lang/String;

    .line 4413
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 4407
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4409
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4410
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4411
    iput-object v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->albumId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 4413
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4377
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->getDefaultInstanceForType()Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;
    .registers 2

    .prologue
    .line 4392
    sget-object v0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->defaultInstance:Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4464
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->memoizedSerializedSize:I

    .line 4465
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 4477
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 4467
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 4468
    iget v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 4469
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->getAlbumIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4472
    :cond_19
    iget v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 4473
    iget v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->unnamedShapeCount_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 4476
    :cond_26
    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->memoizedSerializedSize:I

    move v1, v0

    .line 4477
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getUnnamedShapeCount()I
    .registers 2

    .prologue
    .line 4435
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->unnamedShapeCount_:I

    return v0
.end method

.method public hasAlbumId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 4400
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasUnnamedShapeCount()Z
    .registers 3

    .prologue
    .line 4432
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->bitField0_:I

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

    .line 4444
    iget-byte v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->memoizedIsInitialized:B

    .line 4445
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 4448
    :goto_8
    return v1

    .line 4445
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 4447
    :cond_b
    iput-byte v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4377
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->newBuilderForType()Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;
    .registers 2

    .prologue
    .line 4555
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->newBuilder()Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4377
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->toBuilder()Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;
    .registers 2

    .prologue
    .line 4559
    invoke-static {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->newBuilder(Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;)Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum$Builder;

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
    .line 4484
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

    .line 4453
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->getSerializedSize()I

    .line 4454
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 4455
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->getAlbumIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4457
    :cond_12
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 4458
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventAlbum;->unnamedShapeCount_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4460
    :cond_1d
    return-void
.end method
