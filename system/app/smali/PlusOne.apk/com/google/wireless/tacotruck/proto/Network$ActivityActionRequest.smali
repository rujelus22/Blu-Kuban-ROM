.class public final Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivityActionRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;,
        Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

.field private static final serialVersionUID:J


# instance fields
.field private activityId_:Ljava/lang/Object;

.field private bitField0_:I

.field private deleteCommentId_:Lcom/google/protobuf/LazyStringList;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private reportCommentId_:Lcom/google/protobuf/LazyStringList;

.field private reverseAction_:Z

.field private type_:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 10821
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    .line 10822
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->initFields()V

    .line 10823
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 10133
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 10296
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->memoizedIsInitialized:B

    .line 10325
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->memoizedSerializedSize:I

    .line 10134
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10128
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 10135
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10296
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->memoizedIsInitialized:B

    .line 10325
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->memoizedSerializedSize:I

    .line 10135
    return-void
.end method

.method static synthetic access$13702(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10128
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    return-object p1
.end method

.method static synthetic access$13802(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10128
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->activityId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$13902(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10128
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->reverseAction_:Z

    return p1
.end method

.method static synthetic access$14000(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 10128
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$14002(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10128
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$14100(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 10128
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$14102(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10128
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$14202(Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10128
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->bitField0_:I

    return p1
.end method

.method private getActivityIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 10240
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->activityId_:Ljava/lang/Object;

    .line 10241
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 10242
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10244
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->activityId_:Ljava/lang/Object;

    .line 10247
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;
    .registers 1

    .prologue
    .line 10139
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 10290
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->DELETE:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    .line 10291
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->activityId_:Ljava/lang/Object;

    .line 10292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->reverseAction_:Z

    .line 10293
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    .line 10294
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    .line 10295
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    .registers 1

    .prologue
    .line 10439
    #calls: Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;->access$13500()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActivityId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 10226
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->activityId_:Ljava/lang/Object;

    .line 10227
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 10228
    check-cast v1, Ljava/lang/String;

    .line 10236
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 10230
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10232
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 10233
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 10234
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->activityId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 10236
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10128
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;
    .registers 2

    .prologue
    .line 10143
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;

    return-object v0
.end method

.method public getDeleteCommentId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 10272
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteCommentIdCount()I
    .registers 2

    .prologue
    .line 10269
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getDeleteCommentIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10266
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getReportCommentId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 10286
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getReportCommentIdCount()I
    .registers 2

    .prologue
    .line 10283
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getReportCommentIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10280
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getReverseAction()Z
    .registers 2

    .prologue
    .line 10258
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->reverseAction_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 10327
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->memoizedSerializedSize:I

    .line 10328
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_9

    move v3, v2

    .line 10362
    .end local v2           #size:I
    .local v3, size:I
    :goto_8
    return v3

    .line 10330
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_9
    const/4 v2, 0x0

    .line 10331
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1b

    .line 10332
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->getNumber()I

    move-result v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 10335
    :cond_1b
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_2a

    .line 10336
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->getActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 10339
    :cond_2a
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_39

    .line 10340
    const/4 v4, 0x3

    iget-boolean v5, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->reverseAction_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 10344
    :cond_39
    const/4 v0, 0x0

    .line 10345
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3b
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_51

    .line 10346
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 10345
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 10349
    :cond_51
    add-int/2addr v2, v0

    .line 10350
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->getDeleteCommentIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 10353
    const/4 v0, 0x0

    .line 10354
    const/4 v1, 0x0

    :goto_5f
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_75

    .line 10355
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 10354
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 10358
    :cond_75
    add-int/2addr v2, v0

    .line 10359
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->getReportCommentIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 10361
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->memoizedSerializedSize:I

    move v3, v2

    .line 10362
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_8
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;
    .registers 2

    .prologue
    .line 10216
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    return-object v0
.end method

.method public hasActivityId()Z
    .registers 3

    .prologue
    .line 10223
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->bitField0_:I

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

.method public hasReverseAction()Z
    .registers 3

    .prologue
    .line 10255
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 10213
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->bitField0_:I

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

    .line 10298
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->memoizedIsInitialized:B

    .line 10299
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 10302
    :goto_8
    return v1

    .line 10299
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 10301
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->memoizedIsInitialized:B

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
    .line 10369
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

    .line 10307
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->getSerializedSize()I

    .line 10308
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_15

    .line 10309
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->type_:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 10311
    :cond_15
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_22

    .line 10312
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->getActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10314
    :cond_22
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2e

    .line 10315
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->reverseAction_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 10317
    :cond_2e
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2f
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_43

    .line 10318
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->deleteCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10317
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 10320
    :cond_43
    const/4 v0, 0x0

    :goto_44
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_59

    .line 10321
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;->reportCommentId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10320
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 10323
    :cond_59
    return-void
.end method
