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
    .line 51735
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;

    .line 51736
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->initFields()V

    .line 51737
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 51433
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 51460
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->memoizedIsInitialized:B

    .line 51483
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->memoizedSerializedSize:I

    .line 51434
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51428
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 51435
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 51460
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->memoizedIsInitialized:B

    .line 51483
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->memoizedSerializedSize:I

    .line 51435
    return-void
.end method

.method static synthetic access$73002(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51428
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    return-object p1
.end method

.method static synthetic access$73102(Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51428
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;
    .registers 1

    .prologue
    .line 51439
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 51458
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 51459
    return-void
.end method


# virtual methods
.method public getAlbum()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .registers 2

    .prologue
    .line 51454
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 51428
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;
    .registers 2

    .prologue
    .line 51443
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 51485
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->memoizedSerializedSize:I

    .line 51486
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 51494
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 51488
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 51489
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_16

    .line 51490
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 51493
    :cond_16
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 51494
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasAlbum()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 51451
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->bitField0_:I

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
    .line 51501
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

    .line 51477
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->getSerializedSize()I

    .line 51478
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_f

    .line 51479
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$EditPhotoAlbumResponse;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 51481
    :cond_f
    return-void
.end method
