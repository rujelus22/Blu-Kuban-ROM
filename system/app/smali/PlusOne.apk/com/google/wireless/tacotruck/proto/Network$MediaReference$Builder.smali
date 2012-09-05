.class public final Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$MediaReferenceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$MediaReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$MediaReference;",
        "Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$MediaReferenceOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientAssignedId_:Ljava/lang/Object;

.field private mediaType_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

.field private picasaPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

.field private thumbnailBytes_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 45774
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 45920
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->clientAssignedId_:Ljava/lang/Object;

    .line 45956
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->picasaPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    .line 45999
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->thumbnailBytes_:Lcom/google/protobuf/ByteString;

    .line 46023
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;->PHOTO:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->mediaType_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    .line 45775
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->maybeForceBuilderInitialization()V

    .line 45776
    return-void
.end method

.method static synthetic access$63800()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    .registers 1

    .prologue
    .line 45769
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    .registers 1

    .prologue
    .line 45781
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 45779
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;
    .registers 3

    .prologue
    .line 45806
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v0

    .line 45807
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 45808
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 45810
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 45769
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;
    .registers 6

    .prologue
    .line 45824
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;-><init>(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 45825
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    .line 45826
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 45827
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 45828
    or-int/lit8 v2, v2, 0x1

    .line 45830
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->clientAssignedId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->clientAssignedId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->access$64002(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45831
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 45832
    or-int/lit8 v2, v2, 0x2

    .line 45834
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->picasaPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->picasaPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->access$64102(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    .line 45835
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 45836
    or-int/lit8 v2, v2, 0x4

    .line 45838
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->thumbnailBytes_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->thumbnailBytes_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->access$64202(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 45839
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 45840
    or-int/lit8 v2, v2, 0x8

    .line 45842
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->mediaType_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->mediaType_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->access$64302(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    .line 45843
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->access$64402(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;I)I

    .line 45844
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 45769
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 45769
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    .registers 2

    .prologue
    .line 45785
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 45786
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->clientAssignedId_:Ljava/lang/Object;

    .line 45787
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    .line 45788
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->picasaPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    .line 45789
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    .line 45790
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->thumbnailBytes_:Lcom/google/protobuf/ByteString;

    .line 45791
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    .line 45792
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;->PHOTO:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->mediaType_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    .line 45793
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    .line 45794
    return-object p0
.end method

.method public clearClientAssignedId()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    .registers 2

    .prologue
    .line 45944
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    .line 45945
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->getClientAssignedId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->clientAssignedId_:Ljava/lang/Object;

    .line 45947
    return-object p0
.end method

.method public clearMediaType()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    .registers 2

    .prologue
    .line 46040
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    .line 46041
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;->PHOTO:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->mediaType_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    .line 46043
    return-object p0
.end method

.method public clearPicasaPhotoId()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    .registers 2

    .prologue
    .line 45992
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->picasaPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    .line 45994
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    .line 45995
    return-object p0
.end method

.method public clearThumbnailBytes()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    .registers 2

    .prologue
    .line 46016
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    .line 46017
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->getThumbnailBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->thumbnailBytes_:Lcom/google/protobuf/ByteString;

    .line 46019
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 45769
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 45769
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    .registers 3

    .prologue
    .line 45798
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 45769
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientAssignedId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 45925
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->clientAssignedId_:Ljava/lang/Object;

    .line 45926
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 45927
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 45928
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->clientAssignedId_:Ljava/lang/Object;

    .line 45931
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 45769
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 45769
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;
    .registers 2

    .prologue
    .line 45802
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v0

    return-object v0
.end method

.method public getMediaType()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;
    .registers 2

    .prologue
    .line 46028
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->mediaType_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    return-object v0
.end method

.method public getPicasaPhotoId()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;
    .registers 2

    .prologue
    .line 45961
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->picasaPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    return-object v0
.end method

.method public getThumbnailBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 46004
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->thumbnailBytes_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasClientAssignedId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 45922
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasMediaType()Z
    .registers 3

    .prologue
    .line 46025
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

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

.method public hasPicasaPhotoId()Z
    .registers 3

    .prologue
    .line 45958
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

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

.method public hasThumbnailBytes()Z
    .registers 3

    .prologue
    .line 46001
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

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

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45769
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45769
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45873
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 45874
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_58

    .line 45879
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 45881
    :sswitch_d
    return-object p0

    .line 45886
    :sswitch_e
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    .line 45887
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->clientAssignedId_:Ljava/lang/Object;

    goto :goto_0

    .line 45891
    :sswitch_1b
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;

    move-result-object v1

    .line 45892
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->hasPicasaPhotoId()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 45893
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->getPicasaPhotoId()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;

    .line 45895
    :cond_2c
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 45896
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->setPicasaPhotoId(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    goto :goto_0

    .line 45900
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;
    :sswitch_37
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    .line 45901
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->thumbnailBytes_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 45905
    :sswitch_44
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 45906
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    move-result-object v3

    .line 45907
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;
    if-eqz v3, :cond_0

    .line 45908
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    .line 45909
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->mediaType_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    goto :goto_0

    .line 45874
    nop

    :sswitch_data_58
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_37
        0x20 -> :sswitch_44
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 45848
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 45861
    :cond_6
    :goto_6
    return-object p0

    .line 45849
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->hasClientAssignedId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 45850
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->getClientAssignedId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->setClientAssignedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    .line 45852
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->hasPicasaPhotoId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 45853
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->getPicasaPhotoId()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->mergePicasaPhotoId(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    .line 45855
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->hasThumbnailBytes()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 45856
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->getThumbnailBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->setThumbnailBytes(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    .line 45858
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->hasMediaType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 45859
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->getMediaType()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->setMediaType(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    goto :goto_6
.end method

.method public mergePicasaPhotoId(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 45980
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->picasaPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 45982
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->picasaPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->picasaPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    .line 45988
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    .line 45989
    return-object p0

    .line 45985
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->picasaPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    goto :goto_1f
.end method

.method public setClientAssignedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 45935
    if-nez p1, :cond_8

    .line 45936
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 45938
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    .line 45939
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->clientAssignedId_:Ljava/lang/Object;

    .line 45941
    return-object p0
.end method

.method public setMediaType(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 46031
    if-nez p1, :cond_8

    .line 46032
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 46034
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    .line 46035
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->mediaType_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    .line 46037
    return-object p0
.end method

.method public setPicasaPhotoId(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 45974
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->picasaPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    .line 45976
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    .line 45977
    return-object p0
.end method

.method public setPicasaPhotoId(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 45964
    if-nez p1, :cond_8

    .line 45965
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 45967
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->picasaPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    .line 45969
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    .line 45970
    return-object p0
.end method

.method public setThumbnailBytes(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 46007
    if-nez p1, :cond_8

    .line 46008
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 46010
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    .line 46011
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->thumbnailBytes_:Lcom/google/protobuf/ByteString;

    .line 46013
    return-object p0
.end method
