.class public final Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EditPhotoAlbumResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;

.field private static final serialVersionUID:J


# instance fields
.field private album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 52885
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;

    .line 52886
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->initFields()V

    .line 52887
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 52583
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 52610
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->memoizedIsInitialized:B

    .line 52633
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->memoizedSerializedSize:I

    .line 52584
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52578
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 52585
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 52610
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->memoizedIsInitialized:B

    .line 52633
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->memoizedSerializedSize:I

    .line 52585
    return-void
.end method

.method static synthetic access$74502(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52578
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    return-object p1
.end method

.method static synthetic access$74602(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52578
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;
    .registers 1

    .prologue
    .line 52589
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 52608
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 52609
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;
    .registers 1

    .prologue
    .line 52721
    #calls: Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->access$74300()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;)Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 52724
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;)Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlbum()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .registers 2

    .prologue
    .line 52604
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 52578
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;
    .registers 2

    .prologue
    .line 52593
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 52635
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->memoizedSerializedSize:I

    .line 52636
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 52644
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 52638
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 52639
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_16

    .line 52640
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52643
    :cond_16
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 52644
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasAlbum()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 52601
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 52612
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->memoizedIsInitialized:B

    .line 52613
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 52622
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 52613
    goto :goto_9

    .line 52615
    :cond_c
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->hasAlbum()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 52616
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->getAlbum()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_20

    .line 52617
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->memoizedIsInitialized:B

    move v1, v2

    .line 52618
    goto :goto_9

    .line 52621
    :cond_20
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 52578
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;
    .registers 2

    .prologue
    .line 52722
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 52578
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;
    .registers 2

    .prologue
    .line 52726
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;)Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;

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
    .line 52651
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

    .line 52627
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->getSerializedSize()I

    .line 52628
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_f

    .line 52629
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 52631
    :cond_f
    return-void
.end method
