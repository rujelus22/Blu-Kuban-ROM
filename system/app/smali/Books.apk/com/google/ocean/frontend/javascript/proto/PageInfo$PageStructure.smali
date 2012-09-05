.class public final Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ocean/frontend/javascript/proto/PageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PageStructure"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;,
        Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;


# instance fields
.field private block_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;",
            ">;"
        }
    .end annotation
.end field

.field private firstWordOffset_:I

.field private hasFirstWordOffset:Z

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1550
    new-instance v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;-><init>(Z)V

    sput-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    .line 1551
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo;->internalForceInit()V

    .line 1552
    sget-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    invoke-direct {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->initFields()V

    .line 1553
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1236
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->block_:Ljava/util/List;

    .line 1249
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->firstWordOffset_:I

    .line 1273
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->memoizedSerializedSize:I

    .line 388
    invoke-direct {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->initFields()V

    .line 389
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ocean/frontend/javascript/proto/PageInfo$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1236
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->block_:Ljava/util/List;

    .line 1249
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->firstWordOffset_:I

    .line 1273
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->memoizedSerializedSize:I

    .line 390
    return-void
.end method

.method static synthetic access$3200(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->block_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 384
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->block_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 384
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->hasFirstWordOffset:Z

    return p1
.end method

.method static synthetic access$3402(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 384
    iput p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->firstWordOffset_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;
    .registers 1

    .prologue
    .line 394
    sget-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 1254
    return-void
.end method

.method public static newBuilder()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;
    .registers 1

    .prologue
    .line 1358
    #calls: Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;->create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;->access$3000()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 1361
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->newBuilder()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;->mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBlockList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->block_:Ljava/util/List;

    return-object v0
.end method

.method public getFirstWordOffset()I
    .registers 2

    .prologue
    .line 1251
    iget v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->firstWordOffset_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 1275
    iget v2, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->memoizedSerializedSize:I

    .line 1276
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    move v3, v2

    .line 1288
    .end local v2           #size:I
    .local v3, size:I
    :goto_6
    return v3

    .line 1278
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_7
    const/4 v2, 0x0

    .line 1279
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->getBlockList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;

    .line 1280
    .local v0, element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;
    const/4 v4, 0x1

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_10

    .line 1283
    .end local v0           #element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;
    :cond_23
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->hasFirstWordOffset()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1284
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->getFirstWordOffset()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 1287
    :cond_33
    iput v2, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->memoizedSerializedSize:I

    move v3, v2

    .line 1288
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_6
.end method

.method public hasFirstWordOffset()Z
    .registers 2

    .prologue
    .line 1250
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->hasFirstWordOffset:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    .line 1256
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->getBlockList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;

    .line 1257
    .local v0, element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;
    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x0

    .line 1259
    .end local v0           #element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;
    :goto_1b
    return v2

    :cond_1c
    const/4 v2, 0x1

    goto :goto_1b
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
    .line 1264
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->getSerializedSize()I

    .line 1265
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->getBlockList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;

    .line 1266
    .local v0, element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeGroup(ILcom/google/protobuf/MessageLite;)V

    goto :goto_b

    .line 1268
    .end local v0           #element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure$Block;
    :cond_1c
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->hasFirstWordOffset()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1269
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->getFirstWordOffset()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1271
    :cond_2a
    return-void
.end method
