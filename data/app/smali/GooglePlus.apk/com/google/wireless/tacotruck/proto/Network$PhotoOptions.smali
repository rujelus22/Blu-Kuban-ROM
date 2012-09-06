.class public final Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PhotoOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhotoOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private maxCommentCount_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private returnComments_:Z

.field private returnDownloadability_:Z

.field private returnImageUrls_:Z

.field private returnPlusOnes_:Z

.field private returnShapes_:Z

.field private returnVideoUrls_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 47768
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 47769
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->initFields()V

    .line 47770
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 47186
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 47279
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->memoizedIsInitialized:B

    .line 47314
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->memoizedSerializedSize:I

    .line 47187
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47181
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 47188
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 47279
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->memoizedIsInitialized:B

    .line 47314
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->memoizedSerializedSize:I

    .line 47188
    return-void
.end method

.method static synthetic access$66202(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47181
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnImageUrls_:Z

    return p1
.end method

.method static synthetic access$66302(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47181
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnComments_:Z

    return p1
.end method

.method static synthetic access$66402(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47181
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnShapes_:Z

    return p1
.end method

.method static synthetic access$66502(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47181
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnVideoUrls_:Z

    return p1
.end method

.method static synthetic access$66602(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47181
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnPlusOnes_:Z

    return p1
.end method

.method static synthetic access$66702(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47181
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->maxCommentCount_:I

    return p1
.end method

.method static synthetic access$66802(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47181
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnDownloadability_:Z

    return p1
.end method

.method static synthetic access$66902(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47181
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 1

    .prologue
    .line 47192
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 47271
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnImageUrls_:Z

    .line 47272
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnComments_:Z

    .line 47273
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnShapes_:Z

    .line 47274
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnVideoUrls_:Z

    .line 47275
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnPlusOnes_:Z

    .line 47276
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->maxCommentCount_:I

    .line 47277
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnDownloadability_:Z

    .line 47278
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 1

    .prologue
    .line 47426
    #calls: Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->access$66000()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 47429
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 47181
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2

    .prologue
    .line 47196
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object v0
.end method

.method public getMaxCommentCount()I
    .registers 2

    .prologue
    .line 47257
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->maxCommentCount_:I

    return v0
.end method

.method public getReturnComments()Z
    .registers 2

    .prologue
    .line 47217
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnComments_:Z

    return v0
.end method

.method public getReturnDownloadability()Z
    .registers 2

    .prologue
    .line 47267
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnDownloadability_:Z

    return v0
.end method

.method public getReturnImageUrls()Z
    .registers 2

    .prologue
    .line 47207
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnImageUrls_:Z

    return v0
.end method

.method public getReturnPlusOnes()Z
    .registers 2

    .prologue
    .line 47247
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnPlusOnes_:Z

    return v0
.end method

.method public getReturnShapes()Z
    .registers 2

    .prologue
    .line 47227
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnShapes_:Z

    return v0
.end method

.method public getReturnVideoUrls()Z
    .registers 2

    .prologue
    .line 47237
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnVideoUrls_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 47316
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->memoizedSerializedSize:I

    .line 47317
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 47349
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 47319
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 47320
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 47321
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnImageUrls_:Z

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 47324
    :cond_18
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_25

    .line 47325
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnComments_:Z

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 47328
    :cond_25
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_33

    .line 47329
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnShapes_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 47332
    :cond_33
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_42

    .line 47333
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnVideoUrls_:Z

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 47336
    :cond_42
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_52

    .line 47337
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnPlusOnes_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 47340
    :cond_52
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_62

    .line 47341
    const/4 v2, 0x6

    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->maxCommentCount_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 47344
    :cond_62
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_72

    .line 47345
    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnDownloadability_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 47348
    :cond_72
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->memoizedSerializedSize:I

    move v1, v0

    .line 47349
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public hasMaxCommentCount()Z
    .registers 3

    .prologue
    .line 47254
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasReturnComments()Z
    .registers 3

    .prologue
    .line 47214
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

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

.method public hasReturnDownloadability()Z
    .registers 3

    .prologue
    .line 47264
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasReturnImageUrls()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 47204
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasReturnPlusOnes()Z
    .registers 3

    .prologue
    .line 47244
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasReturnShapes()Z
    .registers 3

    .prologue
    .line 47224
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

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

.method public hasReturnVideoUrls()Z
    .registers 3

    .prologue
    .line 47234
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

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

    .line 47281
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->memoizedIsInitialized:B

    .line 47282
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 47285
    :goto_8
    return v1

    .line 47282
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 47284
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 47181
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 2

    .prologue
    .line 47427
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 47181
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;
    .registers 2

    .prologue
    .line 47431
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions$Builder;

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
    .line 47356
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 47290
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getSerializedSize()I

    .line 47291
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 47292
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnImageUrls_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 47294
    :cond_11
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1c

    .line 47295
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnComments_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 47297
    :cond_1c
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_28

    .line 47298
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnShapes_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 47300
    :cond_28
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_35

    .line 47301
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnVideoUrls_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 47303
    :cond_35
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_43

    .line 47304
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnPlusOnes_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 47306
    :cond_43
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_51

    .line 47307
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->maxCommentCount_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 47309
    :cond_51
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_5f

    .line 47310
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->returnDownloadability_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 47312
    :cond_5f
    return-void
.end method
