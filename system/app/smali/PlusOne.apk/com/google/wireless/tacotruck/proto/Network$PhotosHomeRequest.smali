.class public final Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhotosHomeRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private maxCoverCountPerSection_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39002
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;

    .line 39003
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->initFields()V

    .line 39004
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 38738
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 38765
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->memoizedIsInitialized:B

    .line 38782
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->memoizedSerializedSize:I

    .line 38739
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38733
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 38740
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 38765
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->memoizedIsInitialized:B

    .line 38782
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->memoizedSerializedSize:I

    .line 38740
    return-void
.end method

.method static synthetic access$54202(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38733
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->maxCoverCountPerSection_:I

    return p1
.end method

.method static synthetic access$54302(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38733
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;
    .registers 1

    .prologue
    .line 38744
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 38763
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->maxCoverCountPerSection_:I

    .line 38764
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;
    .registers 1

    .prologue
    .line 38870
    #calls: Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->access$54000()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 38733
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;
    .registers 2

    .prologue
    .line 38748
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;

    return-object v0
.end method

.method public getMaxCoverCountPerSection()I
    .registers 2

    .prologue
    .line 38759
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->maxCoverCountPerSection_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 38784
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->memoizedSerializedSize:I

    .line 38785
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 38793
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 38787
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 38788
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_16

    .line 38789
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->maxCoverCountPerSection_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 38792
    :cond_16
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 38793
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasMaxCoverCountPerSection()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 38756
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->bitField0_:I

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

    .line 38767
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->memoizedIsInitialized:B

    .line 38768
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 38771
    :goto_8
    return v1

    .line 38768
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 38770
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->memoizedIsInitialized:B

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
    .line 38800
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

    .line 38776
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->getSerializedSize()I

    .line 38777
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_f

    .line 38778
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->maxCoverCountPerSection_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 38780
    :cond_f
    return-void
.end method
