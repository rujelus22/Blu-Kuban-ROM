.class public final Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroupOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobilePhotoGroup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private photo_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 19823
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;

    .line 19824
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->initFields()V

    .line 19825
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 19462
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 19499
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->memoizedIsInitialized:B

    .line 19522
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->memoizedSerializedSize:I

    .line 19463
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19457
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;-><init>(Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 19464
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19499
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->memoizedIsInitialized:B

    .line 19522
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->memoizedSerializedSize:I

    .line 19464
    return-void
.end method

.method static synthetic access$26200(Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19457
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->photo_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$26202(Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19457
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->photo_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;
    .registers 1

    .prologue
    .line 19468
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 19497
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->photo_:Ljava/util/List;

    .line 19498
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;
    .registers 1

    .prologue
    .line 19610
    #calls: Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->access$26000()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 19613
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 19457
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;
    .registers 2

    .prologue
    .line 19472
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;

    return-object v0
.end method

.method public getPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 3
    .parameter "index"

    .prologue
    .line 19489
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->photo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public getPhotoCount()I
    .registers 2

    .prologue
    .line 19486
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->photo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhotoList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19479
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->photo_:Ljava/util/List;

    return-object v0
.end method

.method public getPhotoOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 19493
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->photo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoOrBuilder;

    return-object v0
.end method

.method public getPhotoOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19483
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->photo_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 19524
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->memoizedSerializedSize:I

    .line 19525
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    move v2, v1

    .line 19533
    .end local v1           #size:I
    .local v2, size:I
    :goto_6
    return v2

    .line 19527
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_7
    const/4 v1, 0x0

    .line 19528
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->photo_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 19529
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->photo_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 19528
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 19532
    :cond_22
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->memoizedSerializedSize:I

    move v2, v1

    .line 19533
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 19501
    iget-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->memoizedIsInitialized:B

    .line 19502
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_c

    if-ne v1, v2, :cond_a

    .line 19511
    :goto_9
    return v2

    :cond_a
    move v2, v3

    .line 19502
    goto :goto_9

    .line 19504
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->getPhotoCount()I

    move-result v4

    if-ge v0, v4, :cond_24

    .line 19505
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->getPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_21

    .line 19506
    iput-byte v3, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->memoizedIsInitialized:B

    move v2, v3

    .line 19507
    goto :goto_9

    .line 19504
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 19510
    :cond_24
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 19457
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;
    .registers 2

    .prologue
    .line 19611
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 19457
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;
    .registers 2

    .prologue
    .line 19615
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup$Builder;

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
    .line 19540
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
    .line 19516
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->getSerializedSize()I

    .line 19517
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->photo_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 19518
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;->photo_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 19517
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 19520
    :cond_1b
    return-void
.end method
