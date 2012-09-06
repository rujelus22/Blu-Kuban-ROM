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
    .line 46867
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 47013
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->clientAssignedId_:Ljava/lang/Object;

    .line 47049
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->picasaPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    .line 47092
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->thumbnailBytes_:Lcom/google/protobuf/ByteString;

    .line 47116
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;->PHOTO:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->mediaType_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    .line 46868
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->maybeForceBuilderInitialization()V

    .line 46869
    return-void
.end method

.method static synthetic access$65200()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    .registers 1

    .prologue
    .line 46862
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    .registers 1

    .prologue
    .line 46874
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 46872
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 46862
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;
    .registers 3

    .prologue
    .line 46899
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v0

    .line 46900
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 46901
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 46903
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 46862
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;
    .registers 6

    .prologue
    .line 46917
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;-><init>(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 46918
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$MediaReference;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    .line 46919
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 46920
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 46921
    or-int/lit8 v2, v2, 0x1

    .line 46923
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->clientAssignedId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->clientAssignedId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->access$65402(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46924
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 46925
    or-int/lit8 v2, v2, 0x2

    .line 46927
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->picasaPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->picasaPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->access$65502(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    .line 46928
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 46929
    or-int/lit8 v2, v2, 0x4

    .line 46931
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->thumbnailBytes_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->thumbnailBytes_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->access$65602(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 46932
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 46933
    or-int/lit8 v2, v2, 0x8

    .line 46935
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->mediaType_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->mediaType_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->access$65702(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    .line 46936
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->access$65802(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;I)I

    .line 46937
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 46862
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 46862
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    .registers 2

    .prologue
    .line 46878
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 46879
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->clientAssignedId_:Ljava/lang/Object;

    .line 46880
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    .line 46881
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->picasaPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    .line 46882
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    .line 46883
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->thumbnailBytes_:Lcom/google/protobuf/ByteString;

    .line 46884
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    .line 46885
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;->PHOTO:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->mediaType_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    .line 46886
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    .line 46887
    return-object p0
.end method

.method public clearClientAssignedId()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    .registers 2

    .prologue
    .line 47037
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    .line 47038
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->getClientAssignedId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->clientAssignedId_:Ljava/lang/Object;

    .line 47040
    return-object p0
.end method

.method public clearMediaType()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    .registers 2

    .prologue
    .line 47133
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    .line 47134
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;->PHOTO:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->mediaType_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    .line 47136
    return-object p0
.end method

.method public clearPicasaPhotoId()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    .registers 2

    .prologue
    .line 47085
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->picasaPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    .line 47087
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    .line 47088
    return-object p0
.end method

.method public clearThumbnailBytes()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    .registers 2

    .prologue
    .line 47109
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    .line 47110
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->getThumbnailBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->thumbnailBytes_:Lcom/google/protobuf/ByteString;

    .line 47112
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 46862
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 46862
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    .registers 3

    .prologue
    .line 46891
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
    .line 46862
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientAssignedId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 47018
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->clientAssignedId_:Ljava/lang/Object;

    .line 47019
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 47020
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 47021
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->clientAssignedId_:Ljava/lang/Object;

    .line 47024
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
    .line 46862
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 46862
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;
    .registers 2

    .prologue
    .line 46895
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v0

    return-object v0
.end method

.method public getMediaType()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;
    .registers 2

    .prologue
    .line 47121
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->mediaType_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    return-object v0
.end method

.method public getPicasaPhotoId()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;
    .registers 2

    .prologue
    .line 47054
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->picasaPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    return-object v0
.end method

.method public getThumbnailBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 47097
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->thumbnailBytes_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasClientAssignedId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 47015
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
    .line 47118
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
    .line 47051
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
    .line 47094
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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 46958
    const/4 v0, 0x1

    return v0
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
    .line 46862
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 46862
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$MediaReference;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

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
    .line 46862
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
    .line 46966
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 46967
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_58

    .line 46972
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 46974
    :sswitch_d
    return-object p0

    .line 46979
    :sswitch_e
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    .line 46980
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->clientAssignedId_:Ljava/lang/Object;

    goto :goto_0

    .line 46984
    :sswitch_1b
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;

    move-result-object v1

    .line 46985
    .local v1, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->hasPicasaPhotoId()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 46986
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->getPicasaPhotoId()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;

    .line 46988
    :cond_2c
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 46989
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->setPicasaPhotoId(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    goto :goto_0

    .line 46993
    .end local v1           #subBuilder:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;
    :sswitch_37
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    .line 46994
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->thumbnailBytes_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 46998
    :sswitch_44
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 46999
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    move-result-object v3

    .line 47000
    .local v3, value:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;
    if-eqz v3, :cond_0

    .line 47001
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    .line 47002
    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->mediaType_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    goto :goto_0

    .line 46967
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
    .line 46941
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 46954
    :cond_6
    :goto_6
    return-object p0

    .line 46942
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->hasClientAssignedId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 46943
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->getClientAssignedId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->setClientAssignedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    .line 46945
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->hasPicasaPhotoId()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 46946
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->getPicasaPhotoId()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->mergePicasaPhotoId(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    .line 46948
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->hasThumbnailBytes()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 46949
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->getThumbnailBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->setThumbnailBytes(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    .line 46951
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->hasMediaType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 46952
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference;->getMediaType()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->setMediaType(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;

    goto :goto_6
.end method

.method public mergePicasaPhotoId(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 47073
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->picasaPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 47075
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->picasaPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->picasaPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    .line 47081
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    .line 47082
    return-object p0

    .line 47078
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->picasaPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    goto :goto_1f
.end method

.method public setClientAssignedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 47028
    if-nez p1, :cond_8

    .line 47029
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 47031
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    .line 47032
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->clientAssignedId_:Ljava/lang/Object;

    .line 47034
    return-object p0
.end method

.method public setMediaType(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 47124
    if-nez p1, :cond_8

    .line 47125
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 47127
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    .line 47128
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->mediaType_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$MediaType;

    .line 47130
    return-object p0
.end method

.method public setPicasaPhotoId(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 47067
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->picasaPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    .line 47069
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    .line 47070
    return-object p0
.end method

.method public setPicasaPhotoId(Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 47057
    if-nez p1, :cond_8

    .line 47058
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 47060
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->picasaPhotoId_:Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;

    .line 47062
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    .line 47063
    return-object p0
.end method

.method public setThumbnailBytes(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 47100
    if-nez p1, :cond_8

    .line 47101
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 47103
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->bitField0_:I

    .line 47104
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$MediaReference$Builder;->thumbnailBytes_:Lcom/google/protobuf/ByteString;

    .line 47106
    return-object p0
.end method
