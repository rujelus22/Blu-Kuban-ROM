.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetPhotoOrderRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;

.field private static final serialVersionUID:J


# instance fields
.field private albumIdentifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 7837
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;

    .line 7838
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;->initFields()V

    .line 7839
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 7547
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 7574
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;->memoizedIsInitialized:B

    .line 7591
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;->memoizedSerializedSize:I

    .line 7548
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7542
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 7549
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7574
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;->memoizedIsInitialized:B

    .line 7591
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;->memoizedSerializedSize:I

    .line 7549
    return-void
.end method

.method static synthetic access$10002(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7542
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;->bitField0_:I

    return p1
.end method

.method static synthetic access$9902(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7542
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;->albumIdentifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;
    .registers 1

    .prologue
    .line 7553
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 7572
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;->albumIdentifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    .line 7573
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;
    .registers 1

    .prologue
    .line 7679
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->access$9700()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 7682
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlbumIdentifier()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;
    .registers 2

    .prologue
    .line 7568
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;->albumIdentifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 7542
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;
    .registers 2

    .prologue
    .line 7557
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 7593
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;->memoizedSerializedSize:I

    .line 7594
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 7602
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 7596
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 7597
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_16

    .line 7598
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;->albumIdentifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 7601
    :cond_16
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 7602
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasAlbumIdentifier()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 7565
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;->bitField0_:I

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

    .line 7576
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;->memoizedIsInitialized:B

    .line 7577
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 7580
    :goto_8
    return v1

    .line 7577
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 7579
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 7542
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;
    .registers 2

    .prologue
    .line 7680
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 7542
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;
    .registers 2

    .prologue
    .line 7684
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest$Builder;

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
    .line 7609
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 7585
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;->getSerializedSize()I

    .line 7586
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_f

    .line 7587
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderRequest;->albumIdentifier_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7589
    :cond_f
    return-void
.end method
