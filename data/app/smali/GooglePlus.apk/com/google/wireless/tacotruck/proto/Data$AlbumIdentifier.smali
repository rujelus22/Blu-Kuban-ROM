.class public final Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifierOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlbumIdentifier"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;,
        Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

.field private static final serialVersionUID:J


# instance fields
.field private albumId_:J

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private ownerId_:Ljava/lang/Object;

.field private type_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 14047
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    .line 14048
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->initFields()V

    .line 14049
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 13577
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 13704
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->memoizedIsInitialized:B

    .line 13727
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->memoizedSerializedSize:I

    .line 13578
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13572
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;-><init>(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 13579
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 13704
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->memoizedIsInitialized:B

    .line 13727
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->memoizedSerializedSize:I

    .line 13579
    return-void
.end method

.method static synthetic access$18502(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13572
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->type_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;

    return-object p1
.end method

.method static synthetic access$18602(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13572
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->ownerId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$18702(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13572
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->albumId_:J

    return-wide p1
.end method

.method static synthetic access$18802(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13572
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;
    .registers 1

    .prologue
    .line 13583
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    return-object v0
.end method

.method private getOwnerIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 13678
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->ownerId_:Ljava/lang/Object;

    .line 13679
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 13680
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13682
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->ownerId_:Ljava/lang/Object;

    .line 13685
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

.method private initFields()V
    .registers 3

    .prologue
    .line 13700
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;->FROM_YOUR_CIRCLES:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->type_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;

    .line 13701
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->ownerId_:Ljava/lang/Object;

    .line 13702
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->albumId_:J

    .line 13703
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;
    .registers 1

    .prologue
    .line 13823
    #calls: Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->access$18300()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 13826
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlbumId()J
    .registers 3

    .prologue
    .line 13696
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->albumId_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13572
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;
    .registers 2

    .prologue
    .line 13587
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 13664
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->ownerId_:Ljava/lang/Object;

    .line 13665
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 13666
    check-cast v1, Ljava/lang/String;

    .line 13674
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 13668
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 13670
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 13671
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 13672
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->ownerId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 13674
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 13729
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->memoizedSerializedSize:I

    .line 13730
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 13746
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 13732
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 13733
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1b

    .line 13734
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->type_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 13737
    :cond_1b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2a

    .line 13738
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->getOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13741
    :cond_2a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_39

    .line 13742
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->albumId_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 13745
    :cond_39
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->memoizedSerializedSize:I

    move v1, v0

    .line 13746
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;
    .registers 2

    .prologue
    .line 13654
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->type_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;

    return-object v0
.end method

.method public hasAlbumId()Z
    .registers 3

    .prologue
    .line 13693
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->bitField0_:I

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

.method public hasOwnerId()Z
    .registers 3

    .prologue
    .line 13661
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 13651
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->bitField0_:I

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

    .line 13706
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->memoizedIsInitialized:B

    .line 13707
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 13710
    :goto_8
    return v1

    .line 13707
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 13709
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 13572
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;
    .registers 2

    .prologue
    .line 13824
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 13572
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;
    .registers 2

    .prologue
    .line 13828
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Builder;

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
    .line 13753
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

    .line 13715
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->getSerializedSize()I

    .line 13716
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_14

    .line 13717
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->type_:Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier$Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 13719
    :cond_14
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_21

    .line 13720
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->getOwnerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 13722
    :cond_21
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 13723
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;->albumId_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 13725
    :cond_2e
    return-void
.end method
