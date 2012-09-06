.class public final Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetProfilePhotoResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

.field private static final serialVersionUID:J


# instance fields
.field private albumId_:J

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 45060
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

    .line 45061
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->initFields()V

    .line 45062
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 44796
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 44823
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->memoizedIsInitialized:B

    .line 44840
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->memoizedSerializedSize:I

    .line 44797
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44791
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 44798
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 44823
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->memoizedIsInitialized:B

    .line 44840
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->memoizedSerializedSize:I

    .line 44798
    return-void
.end method

.method static synthetic access$62702(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44791
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->albumId_:J

    return-wide p1
.end method

.method static synthetic access$62802(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44791
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;
    .registers 1

    .prologue
    .line 44802
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 44821
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->albumId_:J

    .line 44822
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;
    .registers 1

    .prologue
    .line 44928
    #calls: Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->access$62500()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 44931
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 44864
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;->access$62400(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlbumId()J
    .registers 3

    .prologue
    .line 44817
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->albumId_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 44791
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;
    .registers 2

    .prologue
    .line 44806
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 44842
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->memoizedSerializedSize:I

    .line 44843
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 44851
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 44845
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 44846
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_16

    .line 44847
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->albumId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 44850
    :cond_16
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 44851
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasAlbumId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 44814
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->bitField0_:I

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

    .line 44825
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->memoizedIsInitialized:B

    .line 44826
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 44829
    :goto_8
    return v1

    .line 44826
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 44828
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 44791
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;
    .registers 2

    .prologue
    .line 44929
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 44791
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;
    .registers 2

    .prologue
    .line 44933
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;)Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse$Builder;

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
    .line 44858
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
    const/4 v2, 0x1

    .line 44834
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->getSerializedSize()I

    .line 44835
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_f

    .line 44836
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetProfilePhotoResponse;->albumId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 44838
    :cond_f
    return-void
.end method
