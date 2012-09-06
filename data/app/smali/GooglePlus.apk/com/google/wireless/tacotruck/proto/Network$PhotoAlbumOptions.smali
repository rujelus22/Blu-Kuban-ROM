.class public final Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhotoAlbumOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private maxPreviewCount_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 48051
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    .line 48052
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->initFields()V

    .line 48053
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 47787
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 47814
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->memoizedIsInitialized:B

    .line 47831
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->memoizedSerializedSize:I

    .line 47788
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47782
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 47789
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 47814
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->memoizedIsInitialized:B

    .line 47831
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->memoizedSerializedSize:I

    .line 47789
    return-void
.end method

.method static synthetic access$67302(Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47782
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->maxPreviewCount_:I

    return p1
.end method

.method static synthetic access$67402(Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47782
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;
    .registers 1

    .prologue
    .line 47793
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 47812
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->maxPreviewCount_:I

    .line 47813
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;
    .registers 1

    .prologue
    .line 47919
    #calls: Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->access$67100()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 47922
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 47782
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;
    .registers 2

    .prologue
    .line 47797
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    return-object v0
.end method

.method public getMaxPreviewCount()I
    .registers 2

    .prologue
    .line 47808
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->maxPreviewCount_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 47833
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->memoizedSerializedSize:I

    .line 47834
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 47842
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 47836
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 47837
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_16

    .line 47838
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->maxPreviewCount_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 47841
    :cond_16
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->memoizedSerializedSize:I

    move v1, v0

    .line 47842
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasMaxPreviewCount()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 47805
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->bitField0_:I

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

    .line 47816
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->memoizedIsInitialized:B

    .line 47817
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 47820
    :goto_8
    return v1

    .line 47817
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 47819
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 47782
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;
    .registers 2

    .prologue
    .line 47920
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 47782
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;
    .registers 2

    .prologue
    .line 47924
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;

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
    .line 47849
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

    .line 47825
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->getSerializedSize()I

    .line 47826
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_f

    .line 47827
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->maxPreviewCount_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 47829
    :cond_f
    return-void
.end method
