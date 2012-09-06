.class public final Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeleteAlbumRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;

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
    .line 16963
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;

    .line 16964
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->initFields()V

    .line 16965
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 16699
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 16726
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->memoizedIsInitialized:B

    .line 16743
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->memoizedSerializedSize:I

    .line 16700
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16694
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 16701
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 16726
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->memoizedIsInitialized:B

    .line 16743
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->memoizedSerializedSize:I

    .line 16701
    return-void
.end method

.method static synthetic access$22302(Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16694
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->albumId_:J

    return-wide p1
.end method

.method static synthetic access$22402(Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16694
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;
    .registers 1

    .prologue
    .line 16705
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 16724
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->albumId_:J

    .line 16725
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;
    .registers 1

    .prologue
    .line 16831
    #calls: Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;->access$22100()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;)Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 16834
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;)Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlbumId()J
    .registers 3

    .prologue
    .line 16720
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->albumId_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16694
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;
    .registers 2

    .prologue
    .line 16709
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 16745
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->memoizedSerializedSize:I

    .line 16746
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 16754
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 16748
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 16749
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_16

    .line 16750
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->albumId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 16753
    :cond_16
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 16754
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasAlbumId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 16717
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->bitField0_:I

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

    .line 16728
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->memoizedIsInitialized:B

    .line 16729
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 16732
    :goto_8
    return v1

    .line 16729
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 16731
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 16694
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;
    .registers 2

    .prologue
    .line 16832
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 16694
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;
    .registers 2

    .prologue
    .line 16836
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;)Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest$Builder;

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
    .line 16761
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

    .line 16737
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->getSerializedSize()I

    .line 16738
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_f

    .line 16739
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DeleteAlbumRequest;->albumId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 16741
    :cond_f
    return-void
.end method
