.class public final Lcom/google/wireless/tacotruck/proto/Network$MediaReference;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$MediaReferenceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaReference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;,
        Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;,
        Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoIdOrBuilder;,
        Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private clientAssignedId_:Ljava/lang/Object;

.field private mediaType_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private picasaPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

.field private thumbnailBytes_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 46050
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    .line 46051
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->initFields()V

    .line 46052
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 45079
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 45636
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->memoizedIsInitialized:B

    .line 45662
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->memoizedSerializedSize:I

    .line 45080
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45074
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;-><init>(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 45081
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 45636
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->memoizedIsInitialized:B

    .line 45662
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->memoizedSerializedSize:I

    .line 45081
    return-void
.end method

.method static synthetic access$64002(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45074
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->clientAssignedId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$64102(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45074
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->picasaPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    return-object p1
.end method

.method static synthetic access$64202(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45074
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->thumbnailBytes_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$64302(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45074
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->mediaType_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    return-object p1
.end method

.method static synthetic access$64402(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45074
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->bitField0_:I

    return p1
.end method

.method private getClientAssignedIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 45589
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->clientAssignedId_:Ljava/lang/Object;

    .line 45590
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 45591
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 45593
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->clientAssignedId_:Ljava/lang/Object;

    .line 45596
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;
    .registers 1

    .prologue
    .line 45085
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 45631
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->clientAssignedId_:Ljava/lang/Object;

    .line 45632
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->picasaPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    .line 45633
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->thumbnailBytes_:Lcom/google/protobuf/ByteString;

    .line 45634
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;->PHOTO:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->mediaType_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    .line 45635
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    .registers 1

    .prologue
    .line 45762
    #calls: Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->access$63800()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 45765
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClientAssignedId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 45575
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->clientAssignedId_:Ljava/lang/Object;

    .line 45576
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 45577
    check-cast v1, Ljava/lang/String;

    .line 45585
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 45579
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 45581
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 45582
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 45583
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->clientAssignedId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 45585
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 45074
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;
    .registers 2

    .prologue
    .line 45089
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    return-object v0
.end method

.method public getMediaType()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;
    .registers 2

    .prologue
    .line 45627
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->mediaType_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    return-object v0
.end method

.method public getPicasaPhotoId()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;
    .registers 2

    .prologue
    .line 45607
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->picasaPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 45664
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->memoizedSerializedSize:I

    .line 45665
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 45685
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 45667
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 45668
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 45669
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->getClientAssignedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 45672
    :cond_1a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_27

    .line 45673
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->picasaPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 45676
    :cond_27
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_35

    .line 45677
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->thumbnailBytes_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 45680
    :cond_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_48

    .line 45681
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->mediaType_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;->getNumber()I

    move-result v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 45684
    :cond_48
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->memoizedSerializedSize:I

    move v1, v0

    .line 45685
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getThumbnailBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 45617
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->thumbnailBytes_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasClientAssignedId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 45572
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasMediaType()Z
    .registers 3

    .prologue
    .line 45624
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->bitField0_:I

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

.method public hasPicasaPhotoId()Z
    .registers 3

    .prologue
    .line 45604
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->bitField0_:I

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

.method public hasThumbnailBytes()Z
    .registers 3

    .prologue
    .line 45614
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->bitField0_:I

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

    .line 45638
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->memoizedIsInitialized:B

    .line 45639
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 45642
    :goto_8
    return v1

    .line 45639
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 45641
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->memoizedIsInitialized:B

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
    .line 45692
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

    .line 45647
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->getSerializedSize()I

    .line 45648
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 45649
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->getClientAssignedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 45651
    :cond_13
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1e

    .line 45652
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->picasaPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 45654
    :cond_1e
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2a

    .line 45655
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->thumbnailBytes_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 45657
    :cond_2a
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3b

    .line 45658
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->mediaType_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 45660
    :cond_3b
    return-void
.end method
