.class public final Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UploadPhotoResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

.field private static final serialVersionUID:J


# instance fields
.field private album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 46141
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    .line 46142
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->initFields()V

    .line 46143
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 45748
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 45786
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->memoizedIsInitialized:B

    .line 45818
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->memoizedSerializedSize:I

    .line 45749
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45743
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 45750
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 45786
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->memoizedIsInitialized:B

    .line 45818
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->memoizedSerializedSize:I

    .line 45750
    return-void
.end method

.method static synthetic access$64102(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45743
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object p1
.end method

.method static synthetic access$64202(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45743
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    return-object p1
.end method

.method static synthetic access$64302(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45743
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;
    .registers 1

    .prologue
    .line 45754
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 45783
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    .line 45784
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    .line 45785
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;
    .registers 1

    .prologue
    .line 45910
    #calls: Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->access$63900()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 45913
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 45846
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;->access$63800(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlbum()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
    .registers 2

    .prologue
    .line 45779
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 45743
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;
    .registers 2

    .prologue
    .line 45758
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;

    return-object v0
.end method

.method public getPhoto()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 2

    .prologue
    .line 45769
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 45820
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->memoizedSerializedSize:I

    .line 45821
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 45833
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 45823
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 45824
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 45825
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 45828
    :cond_17
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_24

    .line 45829
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 45832
    :cond_24
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 45833
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasAlbum()Z
    .registers 3

    .prologue
    .line 45776
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->bitField0_:I

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

.method public hasPhoto()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 45766
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->bitField0_:I

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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45788
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->memoizedIsInitialized:B

    .line 45789
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 45804
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 45789
    goto :goto_9

    .line 45791
    :cond_c
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->hasPhoto()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 45792
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->getPhoto()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_20

    .line 45793
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->memoizedIsInitialized:B

    move v1, v2

    .line 45794
    goto :goto_9

    .line 45797
    :cond_20
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->hasAlbum()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 45798
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->getAlbum()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_34

    .line 45799
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->memoizedIsInitialized:B

    move v1, v2

    .line 45800
    goto :goto_9

    .line 45803
    :cond_34
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 45743
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;
    .registers 2

    .prologue
    .line 45911
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 45743
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;
    .registers 2

    .prologue
    .line 45915
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;)Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse$Builder;

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
    .line 45840
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

    .line 45809
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->getSerializedSize()I

    .line 45810
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 45811
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->photo_:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 45813
    :cond_10
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1b

    .line 45814
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoResponse;->album_:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 45816
    :cond_1b
    return-void
.end method
