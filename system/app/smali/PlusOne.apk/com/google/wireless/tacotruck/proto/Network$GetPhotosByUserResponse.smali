.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetPhotosByUserResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;

.field private static final serialVersionUID:J


# instance fields
.field private accountVersion_:J

.field private bitField0_:I

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

.field private resumeToken_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 18008
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;

    .line 18009
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->initFields()V

    .line 18010
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 17501
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 17583
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->memoizedIsInitialized:B

    .line 17612
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->memoizedSerializedSize:I

    .line 17502
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17496
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 17503
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 17583
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->memoizedIsInitialized:B

    .line 17612
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->memoizedSerializedSize:I

    .line 17503
    return-void
.end method

.method static synthetic access$23800(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17496
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->photo_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$23802(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17496
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->photo_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$23902(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17496
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->resumeToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$24002(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17496
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->accountVersion_:J

    return-wide p1
.end method

.method static synthetic access$24102(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17496
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;
    .registers 1

    .prologue
    .line 17507
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;

    return-object v0
.end method

.method private getResumeTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 17557
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->resumeToken_:Ljava/lang/Object;

    .line 17558
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 17559
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 17561
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->resumeToken_:Ljava/lang/Object;

    .line 17564
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
    .line 17579
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->photo_:Ljava/util/List;

    .line 17580
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->resumeToken_:Ljava/lang/Object;

    .line 17581
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->accountVersion_:J

    .line 17582
    return-void
.end method


# virtual methods
.method public getAccountVersion()J
    .registers 3

    .prologue
    .line 17575
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->accountVersion_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 17496
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;
    .registers 2

    .prologue
    .line 17511
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;

    return-object v0
.end method

.method public getPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 3
    .parameter "index"

    .prologue
    .line 17529
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->photo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public getPhotoCount()I
    .registers 2

    .prologue
    .line 17526
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->photo_:Ljava/util/List;

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
    .line 17519
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->photo_:Ljava/util/List;

    return-object v0
.end method

.method public getPhotoOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 17533
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->photo_:Ljava/util/List;

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
    .line 17523
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->photo_:Ljava/util/List;

    return-object v0
.end method

.method public getResumeToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 17543
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->resumeToken_:Ljava/lang/Object;

    .line 17544
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 17545
    check-cast v1, Ljava/lang/String;

    .line 17553
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 17547
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 17549
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 17550
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 17551
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->resumeToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 17553
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 17614
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->memoizedSerializedSize:I

    .line 17615
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_9

    move v2, v1

    .line 17631
    .end local v1           #size:I
    .local v2, size:I
    :goto_8
    return v2

    .line 17617
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_9
    const/4 v1, 0x0

    .line 17618
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->photo_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_23

    .line 17619
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->photo_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 17618
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 17622
    :cond_23
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_32

    .line 17623
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->getResumeTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 17626
    :cond_32
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_40

    .line 17627
    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->accountVersion_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 17630
    :cond_40
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 17631
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_8
.end method

.method public hasAccountVersion()Z
    .registers 3

    .prologue
    .line 17572
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->bitField0_:I

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

.method public hasResumeToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 17540
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->bitField0_:I

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
    .line 17638
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
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 17600
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->getSerializedSize()I

    .line 17601
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->photo_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 17602
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->photo_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 17601
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 17604
    :cond_1c
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_29

    .line 17605
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->getResumeTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 17607
    :cond_29
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_35

    .line 17608
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByUserResponse;->accountVersion_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 17610
    :cond_35
    return-void
.end method
