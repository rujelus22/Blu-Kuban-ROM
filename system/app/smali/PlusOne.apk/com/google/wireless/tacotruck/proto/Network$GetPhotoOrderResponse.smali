.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetPhotoOrderResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;

.field private static final serialVersionUID:J


# instance fields
.field private albumEntityVersion_:J

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private photoOrder_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 7922
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;

    .line 7923
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->initFields()V

    .line 7924
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 7517
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 7566
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->memoizedIsInitialized:B

    .line 7586
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->memoizedSerializedSize:I

    .line 7518
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7512
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 7519
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7566
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->memoizedIsInitialized:B

    .line 7586
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->memoizedSerializedSize:I

    .line 7519
    return-void
.end method

.method static synthetic access$10000(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 7512
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->photoOrder_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$10002(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7512
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->photoOrder_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10102(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7512
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->albumEntityVersion_:J

    return-wide p1
.end method

.method static synthetic access$10202(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7512
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;
    .registers 1

    .prologue
    .line 7523
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 7563
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->photoOrder_:Ljava/util/List;

    .line 7564
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->albumEntityVersion_:J

    .line 7565
    return-void
.end method


# virtual methods
.method public getAlbumEntityVersion()J
    .registers 3

    .prologue
    .line 7559
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->albumEntityVersion_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7512
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;
    .registers 2

    .prologue
    .line 7527
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;

    return-object v0
.end method

.method public getPhotoOrder(I)Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;
    .registers 3
    .parameter "index"

    .prologue
    .line 7545
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->photoOrder_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;

    return-object v0
.end method

.method public getPhotoOrderCount()I
    .registers 2

    .prologue
    .line 7542
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->photoOrder_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhotoOrderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7535
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->photoOrder_:Ljava/util/List;

    return-object v0
.end method

.method public getPhotoOrderOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Network$PhotoOrderOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 7549
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->photoOrder_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoOrderOrBuilder;

    return-object v0
.end method

.method public getPhotoOrderOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Network$PhotoOrderOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7539
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->photoOrder_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 7588
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->memoizedSerializedSize:I

    .line 7589
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    move v2, v1

    .line 7601
    .end local v1           #size:I
    .local v2, size:I
    :goto_7
    return v2

    .line 7591
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_8
    const/4 v1, 0x0

    .line 7592
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->photoOrder_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 7593
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->photoOrder_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 7592
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 7596
    :cond_22
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_30

    .line 7597
    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->albumEntityVersion_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 7600
    :cond_30
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 7601
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_7
.end method

.method public hasAlbumEntityVersion()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 7556
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 7608
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
    const/4 v2, 0x1

    .line 7577
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->getSerializedSize()I

    .line 7578
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->photoOrder_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 7579
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->photoOrder_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7578
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 7581
    :cond_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_27

    .line 7582
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponse;->albumEntityVersion_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 7584
    :cond_27
    return-void
.end method
