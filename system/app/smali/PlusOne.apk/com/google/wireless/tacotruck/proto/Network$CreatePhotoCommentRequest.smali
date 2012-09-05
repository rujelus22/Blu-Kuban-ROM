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
    .line 21192
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;

    .line 21193
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->initFields()V

    .line 21194
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 20695
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 20799
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->memoizedIsInitialized:B

    .line 20825
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->memoizedSerializedSize:I

    .line 20696
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20690
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 20697
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 20799
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->memoizedIsInitialized:B

    .line 20825
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->memoizedSerializedSize:I

    .line 20697
    return-void
.end method

.method static synthetic access$28402(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20690
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->photoId_:J

    return-wide p1
.end method

.method static synthetic access$28502(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20690
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->ownerGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$28602(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20690
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->comment_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$28702(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20690
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->commentId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$28802(Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20690
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->bitField0_:I

    return p1
.end method

.method private getCommentBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 20750
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->comment_:Ljava/lang/Object;

    .line 20751
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 20752
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 20754
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->comment_:Ljava/lang/Object;

    .line 20757
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
    .line 20782
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->commentId_:Ljava/lang/Object;

    .line 20783
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 20784
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 20786
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->commentId_:Ljava/lang/Object;

    .line 20789
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
    .line 20701
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 20794
    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->photoId_:J

    .line 20795
    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->ownerGaiaId_:J

    .line 20796
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->comment_:Ljava/lang/Object;

    .line 20797
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->commentId_:Ljava/lang/Object;

    .line 20798
    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .registers 5

    .prologue
    .line 20736
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->comment_:Ljava/lang/Object;

    .line 20737
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 20738
    check-cast v1, Ljava/lang/String;

    .line 20746
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 20740
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 20742
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 20743
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 20744
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->comment_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 20746
    goto :goto_8
.end method

.method public getCommentId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 20768
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->commentId_:Ljava/lang/Object;

    .line 20769
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 20770
    check-cast v1, Ljava/lang/String;

    .line 20778
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 20772
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 20774
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 20775
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 20776
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->commentId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 20778
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20690
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;
    .registers 2

    .prologue
    .line 20705
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;

    return-object v0
.end method

.method public getOwnerGaiaId()J
    .registers 3

    .prologue
    .line 20726
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->ownerGaiaId_:J

    return-wide v0
.end method

.method public getPhotoId()J
    .registers 3

    .prologue
    .line 20716
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->photoId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 20827
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->memoizedSerializedSize:I

    .line 20828
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 20848
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 20830
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 20831
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_18

    .line 20832
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->photoId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 20835
    :cond_18
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_25

    .line 20836
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->ownerGaiaId_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 20839
    :cond_25
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_35

    .line 20840
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->getCommentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 20843
    :cond_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_46

    .line 20844
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->getCommentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 20847
    :cond_46
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 20848
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public hasComment()Z
    .registers 3

    .prologue
    .line 20733
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
    .line 20765
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
    .line 20723
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

    .line 20713
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->bitField0_:I

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
    .line 20855
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

    .line 20810
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->getSerializedSize()I

    .line 20811
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_11

    .line 20812
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->photoId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 20814
    :cond_11
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1c

    .line 20815
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->ownerGaiaId_:J

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 20817
    :cond_1c
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2a

    .line 20818
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->getCommentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 20820
    :cond_2a
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_39

    .line 20821
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePhotoCommentRequest;->getCommentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 20823
    :cond_39
    return-void
.end method
